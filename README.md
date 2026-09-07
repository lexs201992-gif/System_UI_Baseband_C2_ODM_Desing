
# Technical Disclosure: ODM Supply Chain Compromise via System UI, Baseband, and C2 Architecture

**Device:** Motorola Moto G04s (XT2421-7), PVT unit, Unisoc UMS9230 (T606), Android 14, Build ULAS34.89-209-4
**ODM:** Shanghai Longcheer Technology Co., Ltd. (HKEX: 9611, SSE: 603341)
**SoC:** Unisoc UMS9230 (Tsinghua Unigroup subsidiary)
**Date of disclosure:** September 2026
**Classification:** Defensive technical-forensic report. Not a formal complaint.

---

## Abstract

This report documents a Command-and-Control (C2) architecture embedded in the firmware of ODM-manufactured consumer devices using the Unisoc UMS9230 SoC. The architecture operates at kernel level (UID -1) via a persistent WireGuard tunnel with hardcoded key, a MACsec-encrypted virtual network interface, and a LogMeIn Rescue SDK for remote access — all without user interaction or consent. The C2 infrastructure is distributed across state-owned Chinese ISPs (China Telecom AS4812, China Unicom) and US-based hosting (DreamHost), with a rotating domain strategy. The ODM (Longcheer) is the platform architect; the SoC vendor (Unisoc/Tsinghua) provides the silicon and baseband; the state (via CIIF/CAC golden share and SASAC/Beijing Zhiguangxin) provides ultimate control.

**Key finding:** The C2 is not a single backdoor. It is a **multi-layer architecture** (baseband → CDC → virtio-net → MACsec → WireGuard → application) where each layer is individually "legitimate" (Android APEX, IEEE 802.1AE, WireGuard, LogMeIn SDK) but collectively constitutes a persistent remote-control channel invisible to the user and to standard security auditing.

---

## 1. Architecture Overview

```
┌─────────────────────────────────────────────────────────────────────────┐
│  SoC UMS9230 (Unisoc / Tsinghua Unigroup)                              │
│                                                                         │
│  ┌── Modem Process (qogirl6_modem) ─────────────────────────────────┐  │
│  │  BT Unisoc (HIDL) → sockets → Pf link                            │  │
│  │  RIL (FM/cellular) → NAS channel                                  │  │
│  │  CDC (Communications Domain Controller)                            │  │
│  └──────────────────────────────────────────────────────────────────┘  │
│                    │                                                    │
│                    ▼                                                    │
│  ┌── virtio-net (L2 virtual Ethernet) ──────────────────────────────┐  │
│  │  MACsec (IEEE 802.1AE, AES-GCM, EtherType 0x88E5)                │  │
│  │  CAK ← rkpd APEX ← TEE (qogirl6 V2.0.1)                          │  │
│  │  Interface: macsec0                                               │  │
│  └──────────────────────────────────────────────────────────────────┘  │
│                    │                                                    │
│                    ▼                                                    │
│  ┌── WireGuard (L3 tunnel, kernel, UID -1) ─────────────────────────┐  │
│  │  Key: 56ef134d (hardcoded)                                        │  │
│  │  Interface: wg0 / tun0                                            │  │
│  │  Endpoint: fulguris.<domain>.net (rotating)                       │  │
│  └──────────────────────────────────────────────────────────────────┘  │
│                    │                                                    │
│                    ▼                                                    │
│  ┌── Application Layer ─────────────────────────────────────────────┐  │
│  │  Genie (com.motorola.genie):                                      │  │
│  │    ├── LogMeIn Rescue SDK (com.logmein.rescuesdk)                 │  │
│  │    │   → Screen streaming, remote control, file transfer          │  │
│  │    │   → Unattended access (no user present)                      │  │
│  │    │   → Api17/19RootViewFinder → WindowManagerGlobal             │  │
│  │    ├── Hilt DI: KeyModule → CCE transport key                     │  │
│  │    ├── ServiceWorker: VR/XR stub (sidebar, gestures, Glance)      │  │
│  │    └── 50+ smalis with hardcoded IPs (obfuscated vars a, aa, a1)  │  │
│  │                                                                    │  │
│  │  Moto Feedback (com.motorola.feedback):                            │  │
│  │    ├── transport.cce.Payload {data, type}                         │  │
│  │    ├── scheduler.EndPointWorker → Alibaba OSS upload              │  │
│  │    ├── TriggerCallbackRequest → server notification               │  │
│  │    └── Alibaba OSS SDK (full: putObject, multipart, resumable)    │  │
│  │                                                                    │  │
│  │  Phoenix (com.dti.amx / Digital Turbine):                         │  │
│  │    ├── FCM push (comandos)                                        │  │
│  │    ├── ProvisioningJobService (FOTA)                              │  │
│  │    ├── UninstallReceiver / PackageAddedReceiver (monitoring)      │  │
│  │    └── CoreForegroundService (systemExempted)                     │  │
│  │                                                                    │  │
│  │  com.longcheer.sidebar + com.ts.tsgestures:                       │  │
│  │    ├── UI injection (WindowManager overlay)                       │  │
│  │    ├── Gesture interception (tf_exclude_apps in Settings.Secure)  │  │
│  │    ├── Haptic deception (VibratorManager)                         │  │
│  │    └── KILL-SWITCH: pm disable → SystemUI crash → bootloop       │  │
│  └──────────────────────────────────────────────────────────────────┘  │
└─────────────────────────────────────────────────────────────────────────┘
```

---

## 2. C2 Infrastructure

### 2.1 Endpoints (rotating)

| Name | Domain | IP | Hosting | Geo | TTL |
|---|---|---|---|---|---|
| **fulguris** (Jun 2026) | `fulguris.slions.net` | 208.113.159.31 | DreamHost | US (LA) | 60s |
| **fulguris** (Sep 2026) | `fulguris.slion.net` | 117.24.6.122 | China Telecom | Fujian, CN | 600s |

**"fulguris" is the constant endpoint name. The root domain rotates per deployment.**

### 2.2 DNS Authority

| Domain | NS | ISP |
|---|---|---|
| `slion.net` | dns21/22.hichina.com | Alibaba Cloud → China Unicom (migrated Aug-Sep 2026) |
| `slions.net` | ns1/2/3.dreamhost.com | DreamHost (US) |

Neither domain is DNSSEC-signed. Both have short TTLs (60-600s) consistent with rotation infrastructure.

### 2.3 Reverse DNS

`117.24.6.122` → reverse zone `dns.fz.fj.cn` (Fuzhou, Fujian, China Telecom). **No PTR record** (evasion by design).

### 2.4 SOA as Deployment Trigger

| Date | Serial | Event |
|---|---|---|
| 18-Aug-2026 | 2026081813 | Zone reset (serial regression) |
| 27-Aug-2026 | 2026082709 | Post-FOTA deployment |

SOA serial changes correlate with FOTA deployment windows. The device resolves `slion.net` to detect state changes — the **DNS zone state IS the command**.

### 2.5 Dialer / Spliteer (documented, Jun 3 2026, 09:13 UTC)

```
09:13:07.330  argo.svcmot.com         → BLOCKED (deny list)
09:13:12.983  fulguris.slions.net     → PASSED (5s after block)
09:13:13.914  slions.net              → PASSED (US, DreamHost)
09:13:14.465  www.google.com          → BLOCKED (blacklist)
09:13:14.992  cdnjs.cloudflare.com    → PASSED (fallback)
```

**Adaptive channel selection:** Motorola → ODM → Google → Cloudflare. 5-second failover between channels.

### 2.6 Carrier Integration

| Domain | Role |
|---|---|
| `clientapi.appamx.com` | América Móvil API (channel `amxmx`) |
| `cota-sdk2.mnc020.mcc334.pub.3gppnetwork.org` | 3GPP carrier-specific (Telcel, MCC 334/MNC 020) |
| `firebaseremoteconfig.googleapis.com` | Remote Config (commands) |
| `unisoc.supl.qxwz.com` | SLP/A-GPS (Qianxun, Unisoc partner since 2016) |

---

## 3. Baseband Context

The Unisoc baseband is a **proprietary, opaque binary** (header 0x600 bytes → ARM instructions). Check Point Research (May 2022) demonstrated:

- CVE-2022-20210 (CVSS 9.4): heap overflow in `ATTACH_ACCEPT` NAS parser
- Test device: **Motorola Moto G20, Unisoc T700** (same OEM, same SoC family)
- First public analysis of Unisoc baseband: *"no references to vulnerabilities in Unisoc firmware existed on the internet prior to this research"*
- Baseband modules: `lnas_air_msg_*` (PS/stack/nas/emm/msg_codec/)
- Fuzzing: AFL + QEMU, `lteps_air_msg_dll.dll`

The C2 does **not require** the CVE. It operates natively within the modem process (BT Unisoc, CDC, RIL). The CVE is **corroboration** that the baseband is unauditable by third parties.

**Reference:** [Check Point Research, 2022](https://research.checkpoint.com/2022/vulnerability-within-the-unisoc-baseband/)

---

## 4. Application Layer Evidence

### 4.1 LogMeIn Rescue SDK (Genie)

`com.logmein.rescuesdk` is embedded in `com.motorola.genie` (v12.2.7, formerly "Moto Help"). Capabilities:

- **Screen streaming** (real-time video of device screen)
- **Remote control** (input injection)
- **File transfer** (bidirectional)
- **Unattended access** (no user present)
- **`Api17/19RootViewFinder`** → `WindowManagerGlobal` → **all root views**
- **`shouldInterceptRequest`** (ServiceWorker) → internal MITM of WebView traffic

The "rescue party" referenced in firmware strings is a **LogMeIn Rescue session**, not a firmware re-provisioning event.

### 4.2 CCE Transport (Moto Feedback)

Package `com.motorola.feedback.transport.cce`:

- `Payload {data: String, type: String}` — JSON envelope for commands
- `EndPointWorker` (WorkManager) — scheduled background upload to Alibaba OSS
  - `prepareOutputData(entryId, bucketName, zipFileName)`
  - `MAX_RETRY = 3`
  - `showInHistory: Boolean` (set to `false` = invisible to user)
- `TriggerCallbackRequest` — server-side notification on upload completion
- Full Alibaba OSS SDK (60+ classes): `putObject`, `multipartUpload`, `resumableUpload`, `HmacSHA1Signature`, `OSSStsTokenCredentialProvider`

### 4.3 Kill-Switch (Anti-Tamper)

`com.longcheer.sidebar` and `com.ts.tsgestures` are **hard-coded dependencies in SystemUI initialization**. Attempting `pm disable` causes:
- Immediate SystemUI crash
- Bootloop (white screen, OEM logo)
- Recovery requires data partition wipe

The target app list (`tf_exclude_apps`) is stored in **Settings.Secure**, which survives factory reset.

### 4.4 Power Profile (Thermal Evasion)

`power_profile.xml` (qogirl overlay): **all values empty**.

- `modem.controller.tx` (5 levels): empty
- `bluetooth.controller.idle/rx/tx`: empty
- `cpu.core_power.cluster0/1`: empty
- `gps.signalqualitybased`: empty

**Effect:** Battery stats cannot attribute power consumption to any component. The C2's power draw (BT Unisoc + MACsec + WireGuard + modem) is **invisible in battery usage**. The only detectable symptom is **thermal** (overheating during 02:00-04:30 UTC deployment windows).

---

## 5. Build System Fingerprint

| Evidence | Location | Implication |
|---|---|---|
| `zhangcuihong10@20231213` | `init.rc` line 1550+ | Unisoc developer in production firmware |
| `[EKLION-7495]` | `init.rc` | Internal Unisoc ticket |
| `# Unisoc Code @{` | `init.rc` (multiple) | Explicit ODM modification markers |
| `sh-16-52.rnd.longcheer.net` | `ro.build.host` (T606) | Longcheer R&D build node (Shanghai) |
| `sh-48-205.rnd.longcheer.net` | `ro.build.host` (Moto E13) | Same R&D network, different SKU |
| `sprd` modules | Camera XML (ISP) | Unisoc/Spreadtrum build fingerprint (not cleaned) |
| `/data/jenkins/workspace/build-LXF_M173_U__MP_SMR_user` | `isp_dev_gamma_info_v1` | Unisoc Jenkins pipeline path exposed |
| `spb99-prk-ap1.gazprom-netf.local` | GitHub referring sites | Gazprom (St. Petersburg) accessed repo — same Unisoc pipeline |

The build system is **Unisoc's** (Jenkins + Groovy). Longcheer is a **client** of the pipeline. The same pipeline produces firmware for Motorola, Samsung, Nokia, Wileyfox, Cherry Mobile, and potentially Gazprom industrial equipment.

---

## 6. Platform Design (Upstream Evidence)

The device tree `msm8916-longcheer-l8150.dts` is in the **Linux kernel upstream** (torvalds/linux, mainline, accepted by Qualcomm maintainers):

- `model = "Longcheer L8150"`
- `compatible = "longcheer,l8150", "qcom,msm8916"`
- Same platform used in: Wileyfox Swift, Cherry Mobile One G1, i-mobile IQ II, General Mobile 4G, Android One (google-seed)

**Reference:** [LKML thread, Sep 2023](https://lkml.iu.edu/2309.3/07772.html)

This confirms Longcheer is a **platform designer** (device tree, modem integration, power management), not merely an assembler.

---

## 7. Corporate Chain

```
SASAC / CAC (State)
  ├── New Tsinghua Unigroup (Beijing Zhiguangxin, 100% state)
  │     ├── UNISOC (SoC UMS9230, TEE qogirl6, baseband, Jenkins pipeline)
  │     └── New H3C (51%, networking: switches, routers, 5G)
  ├── CIIF / CAC (golden share)
  │     └── Longcheer (2.60% equity, HKEX 9611, co-led Series C 2021)
  └── China Telecom / China Unicom (state-owned ISPs)
        └── AS4812 (Shanghai), AS4134 (backbone), Fujian (endpoint)
```

**No direct equity link exists between Tsinghua Unigroup and Longcheer.** The relationship is:
- Tsinghua → Unisoc (silicon + pipeline)
- Unisoc → Longcheer (commercial supply of SoCs)
- CIIF/CAC → Longcheer (golden share / veto)

The C2 requires **both layers** (silicon + firmware). Neither entity alone controls the complete system.

**Longcheer financials (2025):** Revenue RMB 42.1B, Net profit RMB 585M (**1.4% margin**). 32.6% global ODM market share (172.9M units, Frost & Sullivan 2026).

---

## 8. Timeline

| Date | Event |
|---|---|
| 2007-2008 | Longcheer first FCC registrations (VV6, WH7, WLP). Data modems, 3G routers. |
| 2013-2014 | Tsinghua acquires Spreadtrum + RDA → Unisoc |
| 2016 | Tsinghua acquires H3C (51%, $2.3B from HP). SEC 13D: Lattice (6%, sold). |
| 2017 | USCC: "Tsinghua's acquisitions motivated by CCP industrial policy" |
| 2019 | Longcheer manufactures Nokia 7.2/6.2/5.3 (Security Version 103). [Hikari_Calyx, Jul 2019](https://x.com/Hikari_Calyx/status/1149575461866835968) |
| 2021 | CIIF co-leads Longcheer Series C ($154M) |
| **Jul 2022** | **Beijing Zhiguangxin takes 100% of Tsinghua Unigroup. State control.** |
| 2022 | Check Point: CVE-2022-20210 (Unisoc baseband, Motorola T700) |
| 2022 | "Big Three" ODM = 76% global market |
| 2024 | DT × Motorola exclusive (May). PVT units deployed. |
| **Mar 2026** | **T606 PVT build (ULAS34.89-209-4). Security patch falsified (Apr 5).** |
| Jun 2026 | C2 active: `fulguris.slions.net` (DreamHost US). Dialer documented. |
| Jun 28, 2026 | Investigator publishes initial findings. PGP to Talos Security. |
| Aug 2026 | FCC HBOM/SBOM rule (91 FR 51139). SOA slion.net: 2026082709. |
| Sep 2026 | C2 rotates: `slion.net` (China Telecom Fujian). NS migrates Alibaba → China Unicom. |

---

## 9. Countermeasures (Validated)

| Action | Effect |
|---|---|
| Airplane mode at boot | Kills modem process → BT Unisoc, CDC, RIL, NAS all dead |
| No SIM | Eliminates cellular fallback |
| Data restriction | Blocks background data |
| CAs disabled (keytool) | TLS to C2 endpoints fails even if network exists |
| DNS block (Hagezi/NextDNS) | `fulguris.*`, `argo.svcmot.com`, `slion.net` unresolvable |
| 70 apps disabled (pm disable) | Phoenix, Genie, Feedback, sidebar, tsgestures inactive |
| PCAP at boot | Captures C2 attempt before block kills it |

**Result:** C2 is inert. Device does not overheat. No rescue party. No screen streaming. No file transfer.

**Limitation:** TEE (qogirl6) and kernel key (56ef134d) cannot be removed without root + kernel modification. However, without network, they are inoperative.

---

## 10. Reproducibility

This analysis requires **no root, no bootloader unlock, no exploits**:

```bash
# 1. Extract APK (ADB, no root)
adb pull /system/product/priv-app/MotoFeedback/MotoFeedback.apk
adb pull /system/product/priv-app/Genie/Genie.apk

# 2. Disassemble
apktool d MotoFeedback.apk -o mf_smali
apktool d Genie.apk -o genie_smali

# 3. Search for IOCs
grep -r "fulguris" genie_smali/
grep -r "slion" genie_smali/
grep -r "logmein.rescuesdk" genie_smali/
grep -r "117.24.6.122" genie_smali/
grep -r "208.113.159.31" genie_smali/
grep -r "svcmot" mf_smali/
grep -r "triggerCallback" mf_smali/
grep -r "tf_exclude_apps" genie_smali/

# 4. DNS verification (any machine)
dig @9.9.9.9 fulguris.slion.net A
dig @9.9.9.9 slions.net A
dig @9.9.9.9 slion.net SOA

# 5. Reverse DNS
dig @9.9.9.9 -x 117.24.6.122
```

---

## 11. Classification

| Layer | Component | Legitimate? | Anomalous? |
|---|---|---|---|
| Baseband | qogirl6_modem, BT Unisoc, CDC | Standard Unisoc | 🔴 C2 origin |
| Kernel | wg0 (UID -1), key 56ef134d | **Not in AOSP** | 🔴 Hardcoded tunnel |
| L2 | MACsec (macsec0), CAK from TEE | Standard (AAOS) | 🟠 Repurposed for phone |
| APEX | rkpd, tethering, wpa_supplicant | Standard Android | 🟡 Configured for C2 |
| App | LogMeIn Rescue (Genie) | Commercial SDK | 🔴 Unattended remote access |
| App | Alibaba OSS (Feedback) | Commercial SDK | 🔴 C2 transport |
| App | Phoenix (DT) | Commercial SDK | 🔴 FCM + provisioning |
| System | com.longcheer.sidebar, com.ts.tsgestures | **Not in AOSP** | 🔴 Kill-switch + gesture hijack |
| Config | power_profile.xml (empty) | **Not standard** | 🔴 Thermal evasion |
| DNS | fulguris (rotating domain) | **Not standard** | 🔴 C2 endpoint |
| Infra | AS4812/AS4134/China Unicom | State-owned ISPs | 🟡 Backbone as C2 transport |

---

## 12. Conclusion

The firmware of ODM-manufactured devices (Longcheer + Unisoc UMS9230) contains a **persistent, multi-layer C2 architecture** that:

1. Operates without user interaction or consent
2. Is invisible to standard Android security auditing (no app, no visible service, no battery attribution)
3. Uses a rotating domain strategy with adaptive channel selection (5-second failover)
4. Provides full remote access (screen, input, files, camera) via a commercial SDK (LogMeIn Rescue)
5. Cannot be removed by the user (kill-switch, TEE, kernel-level)
6. Is deployed across multiple brands (Motorola, Nokia, Samsung, Wileyfox, Cherry Mobile) and device types (phones, tablets, modems, AI glasses)
7. Is architecturally identical to the ODM's automotive and industrial platforms (CDC, virtio-net, MACsec)
8. Is controlled by a chain of state-affiliated entities (SASAC → Tsinghua → Unisoc; CAC → CIIF → Longcheer)

The 1.4% net margin of the ODM is not sustainable on hardware alone. The C2 architecture — providing 5-7 years of persistent remote access, telemetry, and monetization (via Digital Turbine) — is the economic model that makes the business viable.

This is not a vulnerability. It is a **design feature**.

---

## References

1. Check Point Research. "Vulnerability within the UNISOC baseband." 2022. https://research.checkpoint.com/2022/vulnerability-within-the-unisoc-baseband/
2. LKML. "[PATCH 09/13] arm64: dts: qcom: msm8916-longcheer-l8150." Sep 2023. https://lkml.iu.edu/2309.3/07772.html
3. Hikari Calyx. "Daredevil leaked from you-know-what could be made by longcheer." Jul 2019. https://x.com/Hikari_Calyx/status/1149575461866835968
4. Nikkei Asia. "Chinese electronics maker Longcheer bets on US growth." Jun 2026. https://kr-asia.com/chinese-electronics-maker-longcheer-bets-on-us-growth
5. PRNewswire. "AgiBot and Longcheer Technology achieve world's first embodied AI deployment." Apr 2026. https://www.prnewswire.com/news-releases/agibot-and-longcheer-technology-achieve-worlds-first-embodied-ai-deployment-in-consumer-electronics-precision-manufacturing-mass-production-line-302742853.html
6. Wolters Kluwer. "Longcheer accelerates global growth with a unified finance foundation." 2025. https://www.wolterskluwer.com/en-my/expert-insights/longcheer-case-study-cch-tagetik
7. Qualcomm. "Qualcomm and Longcheer Technology sign WCDMA modem card license agreement." 2006. https://www.qualcomm.com/news/releases/2006/06/qualcomm-and-longcheer-technology-sign-wcdma-modem-card-license-agreement
8. SmartKarma. "Shanghai Longcheer: Leading ODM vendor." 2021. https://www.smartkarma.com/insights/shanghai-longcheer-leading-odm-vendor-leveraging-its-expertise-for-ar-vr
9. FCC EAS Database. Grantee codes VV6, WH7, WLP (2007-2009). https://manuals.plus/m/5f678d2aeb07ed62f041b0633c71242c6ce3a0cc9443e08a36bf1e79eeda5d3e
10. Lenovo Forum. "What is com.longcheertel.midtest?" 2022. https://forums.lenovo.com/t5/Lenovo-Android-based-Tablets-and-Phablets/What-is-what-is-com-longcheertel-midtest/m-p/5169253
11. SEC EDGAR. Schedule 13D, Tsinghua Unigroup / Lattice Semiconductor. Apr 2016. https://www.sec.gov/Archives/edgar/data/855658/000112329216002087/tsinghua13d-04122016.htm
12. USCC. "China's Efforts to Acquire U.S. Semiconductor Technology." Oct 2017.
13. Frost & Sullivan. Global ODM/IDH market share. 2026. (via KrAsia)
14. HKEX. Longcheer Technology (9611.HK) Prospectus. Jan 2026.
15. APNIC. AS4812 (CHINANET-SH-AP), AS4134 (CHINANET-BACKBONE). https://www.apnic.net/

---

*This report is a technical-forensic disclosure of defensive character. It does not constitute a formal legal complaint. All findings are reproducible from public firmware images using standard Android development tools (ADB, apktool, baksmali, dig). No root access, bootloader unlock, or exploit was used.*

*— [Alex De La Cruz], Risk & Security Analyst, IFT-registered, Cancún MX*
