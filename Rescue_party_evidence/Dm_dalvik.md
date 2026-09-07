# APE Setup Wizard Scripts (com.ape.setupwizard)

**Evidence of Longcheer ODM supply-chain connection point**  
This folder contains the decompiled / extracted wizard scripts and related artifacts from the privileged system application **com.ape.setupwizard** (APK name: `MotoSetupWizard.apk`).

These scripts execute on **every first boot** of the device and **after every factory reset or Android Rescue Party** event. They represent a critical, manufacturer-signed entry point used by the ODM **Longcheer** to perform initial device provisioning, network configuration, account binding, Device Policy Manager (DPM) setup, and potential C2 beaconing / backdoor activation before the end-user reaches the home screen.

---

## Package & Installation Details

| Field                    | Value                                      |
|--------------------------|--------------------------------------------|
| Package Name             | `com.ape.setupwizard`                      |
| APK Path                 | `/system/priv-app/MotoSetupWizard/MotoSetupWizard.apk` |
| Size                     | 10.5 MB                                    |
| Version / Version Code   | 14 / 34                                    |
| Install Location         | System (privileged)                        |
| UID                      | 10091                                      |
| Minimum / Target SDK     | 34 (Android 14)                            |
| Application Type         | System                                     |
| Backup                   | Not Allowed                                |
| Installer                | Unknown (pre-installed in firmware)        |

**Data directories observed:**
- `/data/user/0/com.ape.setupwizard`
- `/data/user_de/0/com.ape.setupwizard`
- `/storage/emulated/0/Android/data/com.ape.setupwizard`

---

## Signing Certificate (Longcheer Root CA)

The APK is signed with the **Longcheer proprietary Root Certificate Authority**:

- **Issuer / Subject:**  
  `C=CN, ST=ShangHai, L=ShangHai, O=Longcheer, OU=Longcheer, CN=Longcheer`  
  `emailAddress=release@Longcheer.com`

- **Serial Number:** `228526b0d1ef90c3b8ed568a49c3714f6a39506b`  
  (Exact match with the Longcheer Root CA previously documented in the repository and AttackerKB submissions)

- **Validity:** 15 Sep 2023 → 31 Jan 2051 (27+ years)

- **Signature Algorithm:** SHA256withRSA  
- **Certificate SHA-256:** `4cfe803b578fd6958d236e494248585ecbcb5c33a5113bda7ff1a47351e4118d`

This certificate grants the application system-level trust and the ability to perform privileged operations without user consent. It is the same cryptographic anchor used across other Longcheer-modified system components (overlays, IMS stack, power management, etc.).

---

## Wizard Scripts Contained in This Folder

The following raw XML scripts control the entire first-boot and post-reset flow. They are executed sequentially by the Setup Wizard:

- `wizard_script.xml` (main entry)
- `wizard_script_account_flow.xml`
- `wizard_script_common_biometric_screen_lock_flow.xml`
- `wizard_script_common_flow.xml`
- `wizard_script_common_personalization_flow.xml`
- `wizard_script_connect_and_update_flow.xml`
- `wizard_script_deferred.xml`
- `wizard_script_finish_cloud_restore_flow.xml`
- `wizard_script_moto_demo_mode_flow.xml`
- `wizard_script_nfc_provision_flow.xml`
- `wizard_script_no_account_flow.xml`
- `wizard_script_no_network_flow.xml`
- `wizard_script_post_account_flow.xml`
- `wizard_script_post_dpm_provision_finalization_flow.xml`
- `wizard_script_post_dpm_user_flow.xml`
- `wizard_script_post_managed_provisioning.xml`
- (and additional related resources)

These scripts handle:
- Network connectivity & OTA update checks
- Google / carrier account binding
- Biometric & screen-lock enrollment
- NFC provisioning
- Device Policy Manager (DPM) / managed provisioning (enterprise / MDM)
- Cloud restore finalization
- Demo-mode activation
- Deferred actions after the user completes the wizard

Because the application runs as a **privileged system app** with permissions including:

- `ACCESS_COARSE_LOCATION` / `ACCESS_FINE_LOCATION`
- `ACCESS_NETWORK_STATE` / `ACCESS_WIFI_STATE` / `CHANGE_WIFI_STATE`
- `CHANGE_NETWORK_STATE` / `CHANGE_CONFIGURATION`
- `BIND_DEVICE_ADMIN`
- `FOREGROUND_SERVICE` / `FOREGROUND_SERVICE_DATA_SYNC`
- `CHANGE_OVERLAY_PACKAGES`

…it has the capability to establish network connections, modify system settings, and interact with other Longcheer / Unisoc components **before** the user can install any security tools or inspect the device.

---

## Role in the Supply-Chain Compromise

1. **First-boot / Post-Rescue-Party Trigger**  
   Android’s Rescue Party and factory-reset mechanisms force a clean start. This wizard is one of the first privileged processes that runs, giving Longcheer a reliable, repeatable execution window.

2. **Provisioning Hook**  
   The scripts can trigger silent installation or activation of other system packages (e.g., `com.motorola.enterprise.adapter.service`, `co.sitic.pp`, overlays, IMS components) and establish initial C2 channels.

3. **Persistence Across Wipes**  
   Because the APK resides in `/system/priv-app/` and is signed by the Longcheer Root CA embedded in the firmware, it survives factory resets and is re-executed after every Rescue Party event.

4. **Living-off-the-Land**  
   The component appears as a legitimate Motorola Setup Wizard, yet its signing certificate and internal package name (`com.ape.setupwizard`) reveal the true ODM origin (Longcheer).

---

## How to Use the Files in This Folder

- The XML scripts can be analyzed statically to map the exact control flow.
- Cross-reference method calls and resource IDs with the full Smali decompilation of `MotoSetupWizard.apk`.
- Correlate network-related actions inside the scripts with the C2 domains / WireGuard tunnels documented elsewhere in the repository.
- Use the certificate serial and package name as high-confidence IOCs in YARA rules and Suricata signatures.

---

## Related Repository Sections

- Certificate analysis and Longcheer Root CA details  
- Rescue Party / Kernel Panic anti-forensic mechanisms  
- Other system packages signed by the same CA (`com.spreadtrum.*`, overlays, etc.)  
- Network captures and C2 indicators from first-boot sessions  

---

**Status:** Active evidence – uploaded and version-controlled as part of the ongoing Longcheer / Unisoc T606-T616 supply-chain investigation (Project LION).

**Author:** Alex de la Cruz (lexs201992-gif)  
**Last updated:** 2026-09
