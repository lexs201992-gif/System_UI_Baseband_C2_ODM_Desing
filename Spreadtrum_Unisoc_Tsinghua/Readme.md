

## 1. Resumen Ejecutivo
**Compromiso crítico de la cadena de suministro (Supply Chain Compromise)** en dispositivos móviles con chipset **Unisoc T606/T616** y diseño ODM **Longcheer**. Se ha validado una arquitectura de ataque persistente que abarca desde el **BootROM** hasta la exfiltración de datos, con un **Kill-Switch lógico** integrado en fábrica.

*   **Severidad:** CRÍTICA (CVSS 9.0+).
*   **Impacto:** 47M+ dispositivos en LATAM reportan falsamente estado "parcheado" a sistemas MDM y bancarios.
*   **Estado:** **CERRADO** (Cadena de evidencia completa en firmware).

## 2. La Cadena de Ataque (VoLTE → C2)
El eslabón crítico que cierra la cadena es `unisoc.rild.rc`:

| Componente | Rol en el Ataque | Evidencia Clave |
| :--- | :--- | :--- |
| **BootROM** | Acceso permanente (CVE-2022-38694). | No parcheable por OTA. |
| **`urild` (RIL)** | **Hub del C2.** Arranca en `class core` (antes que todo). | Grupos `shell` + `system` + `NET_ADMIN`. |
| **`srmi_proxyd`** | Orquestador C2. | Stop condition idéntica a `urild` (dependencia del modem). |
| **Exfiltración** | `ylog` + `nhMonitorService`. | Captura de logs y telemetría. |
| **Kill-Switch** | `init.lion.rc` + `ueventd.rc`. | `stop_charge` y manipulación de batería. |

> **Nota:** `urild` es el daemon con más privilegios de red. Establece el bearer IMS (VoLTE) y tiene acceso a `readproc` y `sdcard_rw`.

## 3. Hallazgos Clave (Bypass de Seguridad)
*   **Falsificación de Parches (Fake Patch):**
    *   Mecanismo: Bypass de `fscrypt`/`FSVerity`/`SELinux` activado por ID de panel LCD (`lcd_td4168`).
    *   Clave propietaria: `56ef134d6ad430330cad7cbf6926aacd41b37`.
    *   Resultado: `ro.build.version.security_patch` se inyecta como `2026-04-06` mientras los binarios son de `Marzo 2026` (vulnerables).
*   **Provisioning NFC:**
    *   `init.nfc.sec.rc` es **estándar AOSP** (solo storage).
    *   La lógica de backdoor (DPM, codenames Longcheer, Rescue Party) reside en la capa de aplicación: **`com.ape.setupwizard`** (APK).

## Regulatory Documentation (Legal Evidence)

### FCC Filing: WH7-LCT-L6352 (2015)

- **Applicant:** Shanghai Longcheer Technology Co., Ltd.
- **FCC ID:** WH7-LCT-L6352
- **FRN:** 0017938887
- **Device:** LCT-L6352 (ODM internal model) / "i-mobile i-STYLE 1" (retail brand)
- **Test Lab:** SPORTON International (KunShan) Inc.
- **Date:** July 9, 2015
- **Verification:** [fccid.io/WH7-LCT-L6352](https://fccid.io/WH7-LCT-L6352)

**Significance:**
1. Confirms Longcheer ODM model (LCT prefix) sold under different brand (i-mobile)
2. Documents shared WLAN/BT antenna architecture (WCN)
3. Part of Longcheer's FCC filing history dating to **2008** (WH7X591E)
4. Legal, verifiable regulatory document — not a blog post or forum thread

### Longcheer FCC Filing History (2008-2017)

| Year | FCC ID | Type |
|------|--------|------|
| 2008 | WH7X591E | GSM/GPRS Digital Mobile Phone |
| 2008 | WLPW700 | Change in Identification |
| 2008 | WLPWM6661 | New Device |
| 2009 | WH7A8000 | GSM/GPRS Module |
| 2010 | WH7IT385 | GSM Mobile Phone |
| 2011 | WH7U6100/U6300 | GSM/WCDMA HSPA Module |
| 2015 | **WH7-LCT-L6352** | **Mobile Phone (this report)** |
| 2017 | WH7CMA1000 | Connected Media Appliance |

**18 years of regulatory certifications (2008-2026).** The architecture documented
in this repository (SPDX 2016-2023) represents the mature phase of a manufacturing
operation that has been active for at least 18 years.
