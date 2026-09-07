## REPORTE TECNICO COMPLETO - DISPOSITIVO LION 
*Fecha de capturas: 2026-08-04 - App: Device Info HW / DevCheck + Info Device*

---

1. IDENTIFICACION DE HARDWARE
- Modelo SoC: lion
- Fabricacion: ums9230
- Hardware: lion
- Vendor CPU: SPRD / Unisoc
- CPU Driver: sprd-cpufreq-v2
- CPU Hardware: lion
- Arquitectura: ARMv8.2-A 64-bit
- Cores: 8
- Frecuencia: 614 MHz - 1612 MHz
- Detalle: 6x 614-1612 MHz @ Cortex-A55 + 2x 768-1612 MHz @ Cortex-A75
- Revision: r2p0, r3p1
- http://big.LITTLE: Yes (2 clusters)
- ABIs: arm64-v8a, armeabi-v7a, armeabi
- Dalvik/ART ISA: cortex-a75
- Scaling Driver: sprd-cpufreq-v2
- Governors: userspace conservative powersave performance schedutil
- Driver Idle: psci_idle
- [IOC-001]: Build HOST = http://sh-16-52.rnd.longcheer.net
- [IOC-002]: Build Board = lion
- [IOC-003]: Bootloader = lion-2026-03-18_LOCAL - Longcheer ODM
- [IOC-004]: Certification Authority = Longcheer CA 2051[uscfreq]

2. GPU Y PANTALLA
- GPU Model: Mali-G57
- GPU Vendor: ARM
- GPU Renderer: Mali-G57
- OpenGL ES: 3.2 v1.r41p0-01eac0.018fc629603b7a70cc68d32f78ac8686
- Vulkan: 1.3
- EGL Client APIs: OpenGL_ES
- EGL Extensions: 104
- Screen Resolution: 720 x 1612
- Density: 195 dpi - Bucket mdpi
- Size: 6.6 inch - 167mm
- Available DP: 590dp x 1322dp
- Refresh Rate: 60.0 Hz - Supported 60, 90 Hz
- HDR: false
- Wide Gamut: false
- Brightness: 47% Manual - Font Scale 0.9 - Timeout 1800s - Portrait

3. SISTEMA OPERATIVO Y SEGURIDAD
- Android Version: 15 (Target SDK del overlay es 33 / Android 13 Tiramisu)
- Last Security Update: 2026-04-05
- Months without update: 4 (121 dias)
- Bootloader Status: Locked (Secure)
- Encryption Status: Device encrypted per user
- Encryption Type: File-Based (FBE)
- SELinux Status: Enforcing
- dm-verity Status: Enforcing
- OEM Unlocking: Not allowed
- VPN Active: Not detected
- [IOC-005]: Unapplied Security Fixes: 58 vulnerabilidades
- [IOC-006]: Last update mismatch - dice 05/04/2026 pero lista fixes de 01/05/2026 y 01/06/2026 sin aplicar

4. LISTA CVE NO PARCHEADOS (58)
- RCE:
    - CVE-2026-0059 (RCE) A-447536200
    - CVE-2026-0073 (RCE) A-469808088 Bulletin 01/05/2026
- EoP Criticos:
    - CVE-2025-65018 A-463998243, CVE-2025-26418 A-351830787, CVE-2025-48612 A-429417453, CVE-2026-0043 A-453649377, CVE-2026-0097 A-446114623, CVE-2026-21352 A-483693973, CVE-2026-21353 A-483697751, CVE-2026-0045 A-380091558, CVE-2026-0046 A-453649377, CVE-2026-0048, CVE-2026-0055, CVE-2026-0061, CVE-2026-0075 A-465133716, CVE-2026-0076, CVE-2026-0078, CVE-2026-0087 A-483142784, CVE-2026-0088 A-471127462, CVE-2026-0091 A-438742644, CVE-2026-0093 A-473812391, CVE-2026-0094 A-471173239, CVE-2026-0095 A-484861632, CVE-2026-0098 A-397217317, CVE-2026-0099 A-385917501, CVE-2026-0100, CVE-2025-22424, CVE-2025-22426, CVE-2025-48570, CVE-2025-48595, CVE-2025-48615, CVE-2025-48649, CVE-2026-28577
- DoS:
    - CVE-2025-48648 A-396667508, CVE-2026-0060 A-459639258, CVE-2026-0067 A-470967228, CVE-2026-0069, CVE-2026-0070 A-438186009, CVE-2026-0074 A-468061774, CVE-2026-0079 A-470966318, CVE-2026-0085 A-414389102, CVE-2026-28578 A-475228205, CVE-2025-64720 A-463995203, CVE-2025-64505 A-463980379, CVE-2026-0039 A-470966846, CVE-2026-0040 A-467994860, CVE-2026-0041 A-467994310, CVE-2026-0042 A-456471487, CVE-2026-0044 A-449728942, CVE-2026-0051 A-461790658, CVE-2026-0052 A-467352655, CVE-2026-0080 A-462431872, CVE-2025-32348
- ID:
    - CVE-2025-48600 A-435188844, CVE-2025-48616 A-438973280, CVE-2026-0036, CVE-2026-0056, CVE-2026-28586

5. SYSTEM FEATURES - 108 features
- http://android.hardware: 50
- http://android.software: 34
- http://com.google: 11
- http://com.motorola: 11
- http://com.glance: 1 [IOC-007]: http://com.glance - Lockscreen ad overlay
- http://com.taboola: 1 [IOC-008]: http://com.taboola - News ad feed

6. OVERLAY SOSPECHOSO - UNISOC
- Package: http://android.unisoc.power_qogirl6.overlay
- Name: http://android.unisoc.power_qogirl6.overlay
- Version: 13 (33)
- APK Size: 12.34 KB
- APK Path: /vendor/overlay/unisoc_overlay_power_qogirl6.apk [IOC-009]
- Data Path: /data/user/0/android.unisoc.power_qogirl6.overlay
- System App: Yes
- Target SDK: 33
- Target Android: Android 13 Tiramisu
- Min SDK: 33
- Installer: Unknown
- First Installation: 31/12/2008 18:00:00 [IOC-010]: Fecha falsa factory
- Last Update: 31/12/2008 18:00:00
- UID: 10061
- Shared User ID: Not shared
- Process: http://android.unisoc.power_qogirl6.overlay
- [IOC-011]: RRO en /vendor/overlay - Modifica power HAL

7. SENSORES - SPRD GROUP LTD - 0.17 mA Wakeup Yes
- Sensor 17: Significant Motion - Vendor Sprd Group Ltd. - Version 1 - Power 0.17 mA - Res 1.0 - Range 1.0 - Wakeup Yes - Report One shot - Dynamic No
- Sensor 22: Tilt detector - Vendor Sprd Group Ltd. - Version 1 - Power 0.17 mA - Res 1.0 - Range 1.0 - Wakeup Yes - Report Special trigger - Dynamic No
- Sensor 23: Wake Gesture - Vendor Sprd Group Ltd. - Version 1 - Power 0.17 mA - Res 1.0 - Range 1.0 - Wakeup Yes - Report One shot - Dynamic No
- Sensor 24: Glance Gesture - Vendor Sprd Group Ltd. - Version 1 - Power 0.17 mA - Res 1.0 - Range 1.0 - Wakeup Yes - Report One shot - Dynamic No [IOC-012]
- [IOC-013]: Todos los sensores Sprd con Wakeup Yes consumen en background - correlaciona con Battery Cycle 2111-2193

8. BATERIA
- Level: 37%-44% fluctuante
- Health: Good
- Status: Charging AC / Discharging segun captura
- Voltage: 3.96 V
- Temperature: 39.4C
- Technology: Li-ion
- Current: +1036.00 mA / Current now 958 uA
- Power: 4.10 W
- Capacity Currently: 1916 mAh
- Total Capacity: 5000 mAh
- Charge Remaining: 1h 0min
- Cycle Count: 2111 -> 2193 en dias de analisis [IOC-014]
- Power subsystems: CPU Idle 16.19 mA Suspend 2.25 mA Cluster0 6.48 mA Cluster1 26.14 mA / Screen On Max 272.28 mA Min 82.50 mA / Cellular Active 220.00 mA Scanning 5.40 mA RX 90.00 mA Idle 0.80 mA TX 10.00 mA / WiFi TX 199.50 mA RX 114.25 mA Idle 0.42 mA / BT TX 62.20 mA RX 54.60 mA Voltage 3300 mV Idle 0.61 mA / GPS Voltage 3700 mV / Video 150.50 mA Camera 480.50 mA Flashlight 2310.00 mA Audio 20.50 mA

9. RED - ESTADO ACTUAL HARDENED
- Cellular connected: No
- Data state: Disconnected
- Roaming: No
- eSIM support: No
- Active SIM profile: Not detected
- SIM state: Absent
- SIM operator: vacio
- SIM country: vacio
- SIM MCC/MNC: Unknown
- Operator: Unknown
- APN: -
- Phone type: GSM
- Wi-Fi Enabled: Yes
- Connection State: Connected (en captura 02) / Disconnected (en captura 01)
- SSID: Mega_2.4G_93A1
- BSSID: 84:93:b2:c6:93:a1
- Standard: Wi-Fi 802.11n
- Security: PSK
- Frequency: 2452 MHz Channel 9
- Link Speed: 72 Mbps
- Signal: -66 dBm
- Network Devices: 3 - 192.168.1.1 Gateway Web Server 80/443/8080, 192.168.1.2 Unknown, 192.168.1.6 Unknown
- IPv4: 10.215.173.1/30 [PCAPdroid tun0] y 192.168.1.36/24 [wlan0 real]
- DNS1: 10.215.173.2 [PCAPdroid forwarder]
- Private DNS: Off
- IPv6 dummy0: fe80::f0de:54ff:fed8:3235%dummy0/64 MTU 1500
- IPv6 wlan0: fe80::44e9:43ff:fec3:fba0%wlan0/64, 2806:268:3402:a09:44e9:43ff:fec3:fba0/64, 2806:268:3402:a09:6eb1:9125:472:d879/64, 2806:268:3402:a09:50ef:d732:8eb6:9eac/64 MTU 1500
- IPv6 tun0: fe80::60d7:61c3:aa79:6cbd%tun0/64 y fd00:2:fd00:1:fd00:1:fd00:1/128 y fe80::104:6c73:e793:75fd%tun0/64 MTU 10000 [IOC-015]
- IPv6 DNS Server: 2620:fe::fe [Quad9 DoT] - Configuracion DoT 853 forzada
- IPv6 Gateway: N/A
- VPN: 0 active - PCAPdroid VPN Always-On con QUIC OFF DNS System OFF

10. LAUNCHER Y ADMIN
- Home screen app: Mako (com.rama.mako)
- Apps with administrator: Google Play services, Mako (com.rama.mako)
- Reboots: 15 detectados por analisis
- [IOC-016]: Launcher minimalista usado para mitigar Glance overlay

11. RESUMEN IOCs PRINCIPALES
- IOC-001 HOST longcheer: http://sh-16-52.rnd.longcheer.net - No aparece en WHOIS publico - Solo visible con Device Info HW app que usaste en diciembre - Requiere sin permisos excesivos muestra /vendor
- IOC-002 BOARD lion + ums9230
- IOC-003 BOOTLOADER lion-2026-03-18_LOCAL
- IOC-004 CA Longcheer 2051
- IOC-005 58 CVEs sin parchear
- IOC-007 http://com.glance + IOC-008 http://com.taboola
- IOC-009 /vendor/overlay/unisoc_overlay_power_qogirl6.apk 12.34KB
- IOC-010 Fecha instalacion falsa 31/12/2008
- IOC-012 Glance Gesture sensor 24 Sprd wakeup always
- IOC-014 Battery Cycle 2111->2193 desgaste por wakelocks
- IOC-015 tun0 fd00:2:fd00:1:fd00:1:fd00:1/128 persistente incluso con WiFi Disconnected
- IOC-016 Host no resoluble publicamente - quien hace whois de http://rnd.longcheer.net no encuentra nada porque es interno de Longcheer ODM

## Other Devices
APP.VERSION : 1.34.1-fdroid
APP.VERSIONCODE : 2024122400
APP.SIGNATURE : dRIzg4UiJzwGibzTylZTobfZl/E=
LAUNCHER.APP : de.mm20.launcher2.release
TIMEZONE : Europe/Copenhagen
VERSION.RELEASE : 13
VERSION.INCREMENTAL : 105-285-6
VERSION.SDK.NUMBER : 33
BOARD : m170
BOOTLOADER : sabahl-2024-12-09-10:42:29_LOCAL
BRAND : motorola
CPU_ABI : arm64-v8a
CPU_ABI2 :
DISPLAY : TLAS33.105-285-6
FINGERPRINT : motorola/sabahl_ge/sabahl:13/TLAS33.105-285-6/105-285-6:user/release-keys
HARDWARE : ums9230_1h10_go
HOST : sh-48-205.rnd.longcheer.net
ID : TLAS33.105-285-6
MANUFACTURER : motorola
MODEL : moto e13
PRODUCT : sabahl_ge
TAGS : release-keys
TIME : 1733713753000
TYPE : user


## HARDWARE RAW - Device Info HW 

SoC: lion
Cores: 8
Architecture: ARM Armv8.2-A (64-bit)
Frequency Range: 614 MHz - 1612 MHz
CPU Model: lion
CPU Hardware: lion
Fabrication: ums9230
Scaling Driver: sprd-cpufreq-v2
Scaling Governors: userspace conservative powersave performance schedutil
Driver Name: psci_idle
http://big.LITTLE: Yes (2 clusters)
Detailed Frequency:
6x 614-1612 Mhz @ Cortex-A55 r2p0
2x 768-1612 Mhz @ Cortex-A75 r3p1
Revision: r2p0, r3p1
Supported ABIs: arm64-v8a, armeabi-v7a, armeabi
Dalvik/ART ISA: cortex-a75
GPU Model: Mali-G57 · Vulkan 1.3 · OpenGL ES 3.2 v1.r41p0-01eac0.018fc629603b7a70cc68d32f78ac8686
GPU Renderer: Mali-G57
GPU Vendor: ARM
GPU Version: OpenGL ES 3.2 v1.r41p0-01eac0.018fc629603b7a70cc68d32f78ac8686
EGL Client APIs: OpenGL_ES
Vulkan: Vulkan 1.3
Screen: 720 x 1612 · 195 dpi · 6.6" · Refresh Rate: 60.0 Hz
Resolution: 720 x 1612
Density: 195 dpi
Density Bucket: mdpi
Size inch: 6.6
Size mm: 167
Available DP: 590dp x 1322dp
Refresh Rate: 60.0
Supported Rates: 60 Hz, 90 Hz
HDR Capable: false
Wide Color Gamut: false
Brightness: 47%
Brightness Mode: Manual
Font Scale: 0.9
Screen Timeout: 1800 seconds
Orientation: Portrait
Bluetooth Status: Disabled
Version: Bluetooth
Firmware Version: Unknown
Device Class: 90,2,12
Service Status: vacío
Known Devices: Permission required to display
Nearby devices: Scan nearby devices
Active Profiles: A2DP Source, ASHA Central, AVRCP Target, BAS Client, GATT, HFP AG, HID Device, HID Host, MAP Server, OPP, PAN NAP, PAN PANU, PBAP Server, SAP Server
Inactive Profiles: No inactive profiles found

*EGL EXTENSIONS - 104 - 2:45*
GL_EXT_texture_compression_astc_decode_mode
GL_EXT_texture_compression_astc_decode_mode_rgb9e5
GL_KHR_debug
GL_EXT_occlusion_query_boolean
GL_EXT_disjoint_timer_query
GL_EXT_blend_minmax
GL_EXT_discard_framebuffer
GL_OES_get_program_binary
GL_OES_texture_3D
GL_EXT_texture_storage
GL_EXT_multisampled_render_to_texture
GL_EXT_multisampled_render_to_texture2
GL_OES_surfaceless_context
GL_OES_texture_stencil8
GL_EXT_shader_pixel_local_storage
GL_ARM_shader_framebuffer_fetch
GL_ARM_shader_framebuffer_fetch_depth_stencil
GL_ARM_mali_program_binary
GL_EXT_sRGB
GL_EXT_sRGB_write_control
GL_EXT_texture_sRGB_decode
GL_EXT_texture_sRGB_R8
GL_EXT_texture_sRGB_RG8
GL_KHR_blend_equation_advanced
GL_KHR_blend_equation_advanced_coherent
GL_OES_texture_storage_multisample_2d_array
GL_OES_shader_image_atomic
GL_EXT_robustness
GL_EXT_draw_buffers_indexed
GL_OES_draw_buffers_indexed
GL_EXT_texture_border_clamp
GL_OES_texture_border_clamp
GL_EXT_texture_cube_map_array
GL_OES_texture_cube_map_array
GL_OES_sample_variables
GL_OES_sample_shading
GL_OES_shader_multisample_interpolation
GL_EXT_shader_io_blocks
GL_OES_shader_io_blocks
GL_EXT_tessellation_shader
GL_OES_tessellation_shader
GL_EXT_primitive_bounding_box
GL_OES_primitive_bounding_box
GL_EXT_geometry_shader
GL_OES_geometry_shader
GL_ANDROID_extension_pack_es31a
GL_EXT_debug_marker
GL_ARM_rgba8
GL_ARM_mali_shader_binary
GL_OES_depth24
GL_OES_depth_texture
GL_OES_depth_texture_cube_map
GL_OES_packed_depth_stencil
GL_OES_rgb8_rgba8
GL_EXT_read_format_bgra
GL_OES_compressed_paletted_texture
GL_OES_compressed_ETC1_RGB8_texture
GL_OES_standard_derivatives
GL_OES_EGL_image
GL_OES_EGL_image_external
GL_OES_EGL_image_external_essl3
GL_OES_EGL_sync
GL_OES_texture_npot
GL_OES_vertex_half_float
GL_OES_required_internalformat
GL_OES_vertex_array_object
GL_OES_mapbuffer
GL_EXT_texture_format_BGRA8888
GL_EXT_texture_rg
GL_EXT_texture_type_2_10_10_10_REV
GL_OES_fbo_render_mipmap
GL_OES_element_index_uint
GL_EXT_shadow_samplers
GL_EXT_gpu_shader5
GL_OES_gpu_shader5
GL_EXT_texture_buffer
GL_OES_texture_buffer
GL_EXT_copy_image
GL_OES_copy_image
GL_EXT_shader_non_constant_global_initializers
GL_EXT_color_buffer_half_float
GL_EXT_unpack_subimage
GL_EXT_color_buffer_float
GL_EXT_float_blend
GL_EXT_YUV_target
GL_OVR_multiview
GL_OVR_multiview2
GL_OVR_multiview_multisampled_render_to_texture
GL_KHR_robustness
GL_KHR_robust_buffer_access_behavior
GL_EXT_draw_elements_base_vertex
GL_OES_draw_elements_base_vertex
GL_EXT_protected_textures
GL_EXT_buffer_storage
GL_EXT_external_buffer
GL_EXT_EGL_image_array
GL_EXT_texture_filter_anisotropic
GL_OES_texture_float_linear
GL_ARM_texture_unnormalized_coordinates
GL_EXT_shader_framebuffer_fetch

*SECURITY ANALYSIS RAW*
Bulletin Summary
Last Update: 05/04/2026
Months without update: 4
System Overview:
7 Security Providers
61 Cipher Algorithms
6 Hash Algorithms
28 Signature Algorithms
5 KeyStores
12 Key Generators

Providers:
AndroidNSSP 1.0 - Network Security Policy Provider - TrustManagerFactory PKIX
AndroidOpenSSL 1.0 - Conscrypt OpenSSL Provider - http://com.android.org.conscrypt.OpenSSLProvider
SSLContext: SSL, TLS, TLSv1, TLSv1.1, TLSv1.2, TLSv1.3, Default
MessageDigest: SHA-1, SHA-224, SHA-256, SHA-384, SHA-512, MD5
Cipher 32: RSA/ECB/NoPadding, AES/CBC/PKCS5, AES/GCM/NoPadding, ChaCha20/Poly1305, etc.
KeyGenerator: AES, ChaCha20, HmacSHA256, etc.
KeyPairGenerator: RSA, EC, XDH, EdDSA, ML-DSA-65/87, XWING
Signature 23: SHA256withRSA, SHA256withECDSA, etc.
ConscryptHpke: DHKEM_X25519 with AES_128_GCM, AES_256_GCM, ChaCha20Poly1305
CertPathProvider 1.0 - http://sun.security.provider.CertPathProvider - CertPathBuilder PKIX, CertPathVerifier PKIX RFC3280 Software only
AndroidKeyStoreBCWorkaround 1.0 - http://android.security.keystore2.AndroidKeyStoreBCWorkaroundProvider - AES/ECB/NoPadding, RSA/ECB/OAEP, HmacSHA1/256 via KeyStore
BC 1.77 - BouncyCastle Security Provider v1.77 - http://com.android.org.bouncycastle.jce.provider.BouncyCastleProvider - PBEWITHSHAAND256BITAES, DES, BLOWFISH, RC2, Twofish, BKS, PKCS12
HarmonyJSSE 1.0 - http://com.android.org.conscrypt.JSSEProvider - KeyManagerFactory PKIX, TrustManagerFactory PKIX, KeyStore AndroidCAStore
AndroidKeyStore 1.0 - http://android.security.keystore2.AndroidKeyStoreProvider - KeyStore AndroidKeyStore, KeyPairGenerator EC/RSA/XDH, KeyAgreement ECDH/XDH

*TRUSTED CREDENTIALS - 3:40 - 41% - System / User*
User Tab: Empty - No certificates
System Tab: 146 total
Google Trust Services LLC - GTS Root R1 - Enabled ON
Google Trust Services LLC - GTS Root R2 - Enabled ON
Google Trust Services LLC - GTS Root R3 - Enabled ON
Google Trust Services LLC - GTS Root R4 - Enabled ON
Internet Security Research Group - ISRG Root X1 - Enabled ON
Internet Security Research Group - ISRG Root X2 - Enabled ON
Resto DISABLED OFF:
ACCVRAIZ1, ACCVRAIZ2, Actalis Authentication Root CA, AffirmTrust Commercial, AffirmTrust Networking, AffirmTrust Premium, AffirmTrust Premium ECC, Amazon Root CA 1-4, ANF Secure Server Root CA, Asseco Confiance, Atos TrustedRoot 2011, Atos TrustedRoot Root CA ECC TLS 2020/2021, Atos TrustedRoot Root CA RSA TLS 2020/2021, Autoridad de Certificacion Firmaprofesional CIF A62634068, BEIJING Certificate Authority, Buypass Class 2 Root CA, Buypass Class 3 Root CA, Certainly Root E1, Certainly Root R1, certSIGN ROOT CA, certSIGN Root CA G2, CFCA EV ROOT, Comodo AAA Services, Comodo RSA Certification Authority, Comodo ECC Certification Authority, CommScope Public Trust ECC Root-01/02, CommScope Public Trust RSA Root-01/02, D-TRUST BR Root CA 1 2020, D-TRUST EV Root CA 1 2020, DigiCert Assured ID Root CA, DigiCert Assured ID Root G2/G3, DigiCert Global Root CA, DigiCert Global Root G2/G3, DigiCert High Assurance EV Root CA, DigiCert Trusted Root G4, eMudhra emSign Root CA C1/G1, GlobalSign Root CA, GlobalSign Root R46, GoDaddy Class 2 Certification Authority Root Certificate, GoDaddy Root Certificate Authority G2, GTS etc...

*SYSTEM FEATURES - 108*
http://com.taboola.ody
http://com.glance.lockscreenM
http://com.motorola.enterprise
http://com.motorola.help
http://com.motorola.help.extlog_odm_support
http://com.motorola.launcher3
http://com.motorola.launcher3.gridcustomization
http://com.motorola.launcher3.twoline
http://com.motorola.motolivewallpaper
http://com.motorola.software.game_mode
http://com.motorola.software.guideme
http://com.motorola.software.odm1.game_mode
http://com.motorola.timeweatherwidget
http://android.software.activities_on_secondary_displays
http://android.software.adoptable_storage
http://android.software.app_enumeration
http://android.software.app_widgets
http://android.software.autofill
http://android.software.backup
http://android.software.cant_save_state
http://android.software.companion_device_setup
http://android.software.connectionservice
http://android.software.controls
http://android.software.cts
http://android.software.device_admin
http://android.software.device_id_attestation
http://android.software.device_lock
http://android.software.erofs
http://android.software.file_based_encryption
http://android.software.home_screen
http://android.software.incremental_delivery
http://android.software.input_methods
http://android.software.ipsec_tunnels
http://android.software.live_wallpaper
http://android.software.managed_users
http://android.software.midi
http://android.software.opengles.deqp.level
http://android.software.picture_in_picture
http://android.software.print
http://android.software.secure_lock_screen
http://android.software.securely_removes_users
http://android.software.telecom
http://android.software.verified_boot
http://android.software.voice_recognizers
http://android.software.vulkan.deqp.level
http://android.software.webview
http://android.software.window_magnification
http://android.hardware.audio.output
http://android.hardware.biometrics.face
http://android.hardware.bluetooth
http://android.hardware.bluetooth_le
http://android.hardware.broadcastradio
http://android.hardware.camera
http://android.hardware.camera.any
http://android.hardware.camera.autofocus
http://android.hardware.camera.capability.manual_sensor
http://android.hardware.camera.flash
http://android.hardware.camera.front
http://android.hardware.faketouch
http://android.hardware.fingerprint
http://android.hardware.hardware_keystore
http://android.hardware.keystore.app_attest_key
http://android.hardware.location
http://android.hardware.location.gps
http://android.hardware.location.network
http://android.hardware.microphone
http://android.hardware.opengles.aep
http://android.hardware.ram.normal
http://android.hardware.reboot_escrow
http://android.hardware.screen.landscape
http://android.hardware.screen.portrait
http://android.hardware.security.model.compatible
http://android.hardware.sensor.accelerometer
http://android.hardware.sensor.light
http://android.hardware.sensor.proximity
http://android.hardware.sensor.stepcounter
http://android.hardware.sensor.stepdetector
http://android.hardware.telephony
http://android.hardware.telephony.calling
http://android.hardware.telephony.cdma
http://android.hardware.telephony.data
http://android.hardware.telephony.gsm
http://android.hardware.telephony.ims
http://android.hardware.telephony.messaging
http://android.hardware.telephony.radio.access
http://android.hardware.telephony.subscription
http://android.hardware.touchscreen
http://android.hardware.touchscreen.multitouch
http://android.hardware.touchscreen.multitouch.distinct
http://android.hardware.usb.accessory
http://android.hardware.usb.host
http://android.hardware.vulkan.compute
http://android.hardware.vulkan.level
http://android.hardware.vulkan.version
http://android.hardware.wifi
http://android.hardware.wifi.direct
http://android.hardware.wifi.passpoint

*SENSORS RAW - 45 - Sprd Group Ltd. - 0.17 mA*
Accelerometer acc_bma2x2 | bosch - 0.17 mA - Wakeup No
Accelerometer Uncalibrated acc_bma2x2 Uncalibrated | bosch
Light light_ltr569 | liteon - 0.15 mA - Wakeup No
Light (WAKE_UP) | liteon - 0.15 mA - Wakeup Yes
Proximity prox_ltr569 | liteon - 0.15 mA - Wakeup Yes
Anymotion Move | Sprd Group Ltd. - No + WAKE_UP Yes - 0.17 mA
Anymotion Pick | Sprd Group Ltd. - No + WAKE_UP Yes
ChopChop | Sprd - No + WAKE_UP Yes
Stationary Detect (WAKE UP) | Sprd - Yes + Stationary Detect | Sprd - No
Step Counter | Sprd - No + Step Counter (WAKE_UP) | Sprd - Yes
Step Detector (WAKE_UP) + Step Detector | Sprd
Device Orientation | Sprd - No + Device Orientation (WAKE_UP) - Yes
Motion Detect | Sprd - No + Motion Detect (WAKE UP) | Sprd - Yes
Pocket mode | Sprd - No + Pocket mode (WAKE_UP) - Yes
Tap | Sprd - No + Tap (WAKE_UP) - Yes
Flip | Sprd - No + Filp (WAKE_UP) | Sprd - Yes - typo Filp firmware
Hand up | Sprd - No + Hand up (WAKE_UP) - Yes - duplicado
Hand down | Sprd - No + Hand down (WAKE_UP) - Yes
Rear Camera (WAKE_UP) | Sprd - Yes + Rear Camera | Sprd - No
Front Camera | Sprd - No + Front Camera (WAKE_UP) | Sprd - Yes
Context awareness | Sprd - No + Context awareness (WAKE_UP) - Yes
Media Flip (WAKE_UP) | Sprd - Yes
Elevator | Sprd - No + Elevator(WAKE_UP) | Sprd - Yes
Glance Gesture | Sprd Group Ltd. - Version 1 - Power 0.17 mA - Res 1.0 - Range 1.0 - Wakeup Yes - One shot - Dynamic No
Pick Gesture | Sprd - No
Significant Motion | Sprd Group Ltd. - Version 1 - Power 0.17 mA - Res 1.0 - Range 1.0 - Wakeup Yes - One shot
Tilt detector | Sprd Group Ltd. - Version 1 - Power 0.17 mA - Wakeup Yes - Special trigger
Wake Gesture | Sprd Group Ltd. - Version 1 - Power 0.17 mA - Wakeup Yes - One shot

*BATTERY RAW*
Level: 37%-44% fluctuante
Health: Good
Status: Charging AC / Discharging
Voltage: 3.96 V
Temperature: 39.4C
Technology: Li-ion
Current: +1036.00 mA / Current now 958 uA
Power: 4.10 W
Capacity Currently: 1916 mAh
Total Capacity: 5000 mAh
Charge Remaining: 1h 0min
Cycle Count: 2111 -> 2193
Power subsystems: CPU Idle 16.19 mA Suspend 2.25 mA Cluster0 6.48 mA Cluster1 26.14 mA / Screen On Max 272.28 mA Min 82.50 mA / Cellular Active 220.00 mA Scanning 5.40 mA RX 90.00 mA Idle 0.80 mA TX 10.00 mA / WiFi TX 199.50 mA RX 114.25 mA Idle 0.42 mA / BT TX 62.20 mA RX 54.60 mA Voltage 3300 mV Idle 0.61 mA / GPS Voltage 3700 mV / Video 150.50 mA Camera 480.50 mA Flashlight 2310.00 mA Audio 20.50 mA

*NETWORK RAW*
Cellular connected: No
Data state: Disconnected
Roaming: No
eSIM support: No
Active SIM profile: Not detected
SIM state: Absent
SIM operator: vacio
SIM country: vacio
SIM MCC/MNC: Unknown
Operator: Unknown
APN: -
Phone type: GSM
Wi-Fi Enabled: Yes
Connection State: Connected / Disconnected
SSID: Mega_2.4G_93A1
BSSID: 84:93:b2:c6:93:a1
Standard: Wi-Fi 802.11n
Security: PSK
Frequency: 2452 MHz Channel 9
Link Speed: 72 Mbps
Signal: -66 dBm
Network Devices: 3 - 192.168.1.1 Gateway Web Server 80/443/8080, 192.168.1.2 Unknown, 192.168.1.6 Unknown
IPv4: 10.215.173.1/30 [PCAPdroid tun0] y 192.168.1.36/24 [wlan0 real]
DNS1: 10.215.173.2 [PCAPdroid forwarder]
Private DNS: Off
IPv6 dummy0: fe80::f0de:54ff:fed8:3235%dummy0/64 MTU 1500
IPv6 wlan0: fe80::44e9:43ff:fec3:fba0%wlan0/64, 2806:268:3402:a09:44e9:43ff:fec3:fba0/64, 2806:268:3402:a09:6eb1:9125:472:d879/64, 2806:268:3402:a09:50ef:d732:8eb6:9eac/64 MTU 1500
IPv6 tun0: fe80::60d7:61c3:aa79:6cbd%tun0/64 y fd00:2:fd00:1:fd00:1:fd00:1/128 y fe80::104:6c73:e793:75fd%tun0/64 MTU 10000
IPv6 DNS Server: 2620:fe::fe [Quad9 DoT] - DoT 853 forzada
IPv6 Gateway: N/A
VPN: 0 active - PCAPdroid VPN Always-On con QUIC OFF DNS System OFF
Launcher: Mako (com.rama.mako)
Apps with administrator: Google Play services, Mako (com.rama.mako)
Reboots: 15

*CVE RAW LIST - 58*
CVE-2026-0059 RCE A-447536200 ASB-A-447536200 Bulletin 01/06/2026
CVE-2026-0073 RCE A-469808088 Bulletin 01/05/2026
CVE-2025-65018 A-463998243 EoP, CVE-2025-26418 A-351830787 EoP, CVE-2025-48612 A-429417453 EoP, CVE-2026-0043 A-453649377 EoP, CVE-2026-0097 A-446114623 EoP, CVE-2026-21352 A-483693973 EoP, CVE-2026-21353 A-483697751 EoP, CVE-2026-0045 A-380091558 EoP, CVE-2026-0046 A-453649377 EoP, CVE-2026-0048 EoP, CVE-2026-0055 EoP, CVE-2026-0061 EoP, CVE-2026-0075 A-465133716 EoP, CVE-2026-0076 EoP, CVE-2026-0078 EoP, CVE-2026-0087 A-483142784 EoP, CVE-2026-0088 A-471127462 EoP, CVE-2026-0091 A-438742644 EoP, CVE-2026-0093 A-473812391 EoP, CVE-2026-0094 A-471173239 EoP, CVE-2026-0095 A-484861632 EoP, CVE-2026-0098 A-397217317 EoP, CVE-2026-0099 A-385917501 EoP, CVE-2026-0100 EoP, CVE-2025-22424 EoP, CVE-2025-22426 EoP, CVE-2025-48570 EoP, CVE-2025-48595 EoP, CVE-2025-48615 EoP, CVE-2025-48649 EoP, CVE-2026-28577 EoP
DoS: CVE-2025-48648 A-396667508, CVE-2026-0060 A-459639258, CVE-2026-0067 A-470967228, CVE-2026-0069, CVE-2026-0070 A-438186009, CVE-2026-0074 A-468061774, CVE-2026-0079 A-470966318, CVE-2026-0085 A-414389102, CVE-2026-28578 A-475228205, CVE-2025-64720 A-463995203, CVE-2025-64505 A-463980379, CVE-2026-0039 A-470966846, CVE-2026-0040 A-467994860, CVE-2026-0041 A-467994310, CVE-2026-0042 A-456471487, CVE-2026-0044 A-449728942, CVE-2026-0051 A-461790658, CVE-2026-0052 A-467352655, CVE-2026-0080 A-462431872, CVE-2025-32348
ID: CVE-2025-48600 A-435188844, CVE-2025-48616 A-438973280, CVE-2026-0036, CVE-2026-0056, CVE-2026-28586

*CVE-2026-0059 RAW CAPTURAS - 4:11 - 36%*
Source: https://android.googlesource.com/platform/packages/modules/Bluetooth/+/94566a29d020042ec4b423119f4d019d958bfaaf
signature_type: Function
signature_version: v1
target functions: sdpu_is_base_uuid file system/stack/sdp/sdp_utils.cc digest function_hash 3337240870671459128692711 length 185.0 id ASB-A-447536200-1cdbb47c deprecated false
sdpu_clear_all_ccbs_for_cid file system/stack/sdp/sdp_utils.cc digest 814825474512655563064249 length 341.0 id ASB-A-447536200-20649856
sdpu_build_attrib_seq file system/stack/sdp/sdp_utils.cc digest 656794018196108851288791 length 682.0 id ASB-A-447536200-2468246e
sdpu_get_attrib_seq_len file system/stack/sdp/sdp_utils.cc digest 1507308869172137825207246 length 521.0 id ASB-A-447536200-3298115a
sdpu_process_pend_ccb_same_cid file system/stack/sdp/sdp_utils.cc digest 1006278776863331260199144 length 429.0 id ASB-A-447536200-3a246f1b
sdpu_process_pend_ccb_new_cid file system/stack/sdp/sdp_utils.cc digest 7834378456416259311095505 length 740.0 id ASB-A-447536200-4002adf9
sdp_snd_service_search_req file system/stack/sdp/sdp_discovery.cc digest 3196760697201302631469221 length 1496.0 id ASB-A-447536200-47d64fbf
sdpu_get_active_ccb_cid file system/stack/sdp/sdp_utils.cc digest 2793382052539873932611416 length 465.0 id ASB-A-447536200-517de2f7
process_service_attr_rsp file system/stack/sdp/sdp_discovery.cc digest 2281244779762456951247457 length 2673.0 id ASB-A-447536200-05898a51
sdpu_find_ccb_by_cid file system/stack/sdp/sdp_utils.cc digest 8075460655889392649283209 length 336.0 id ASB-A-447536200-706f9020
sdpu_dump_all_ccb file system/stack/sdp/sdp_utils.cc digest 2146439821896238924151960 length 324.0 id ASB-A-447536200-75c38d74
sdpu_clear_pend_ccb file system/stack/sdp/sdp_utils.cc digest 8093339312522294516927606 length 420.0 id ASB-A-447536200-96dad96a
sdpu_find_ccb_by_db
sdpu_allocate_ccb
Import Source https://storage.googleapis.com/android-osv/ASB-A-447536200.json
JSON Data https://api.osv.dev/v1/vulns/ASB-A-447536200
Aliases A-447536200 CVE-2026-0059
Published 2026-06-01T00:00:00Z
Modified 2026-08-04T15:27:43.178171545Z
Summary
Details In multiple functions of sdp_discovery.cc, there is a possible way to achieve code execution due to a heap buffer overflow. This could lead to remote (proximal/adjacent) code execution with no additional execution privileges needed. User interaction is not needed for exploitation.
References https://source.android.com/security/bulletin/2026-06-01 https://android.googlesource.com/platform/packages/modules/Bluetooth/+/94566a29d020042ec4b423119f4d019d958bfaaf
Affected packages Android platform/packages/modules/Bluetooth Package Name platform/packages/modules/Bluetooth Affected ranges Type ECOSYSTEM Events Introduced 17-next:0 Fixed 17-next:2026-06-01 Affected versions Other Ecosystem specific severity High types RCE[none]

*OVERLAY RAW*
Package: http://android.unisoc.power_qogirl6.overlay
Name: http://android.unisoc.power_qogirl6.overlay
Version: 13 (33)
APK Size: 12.34 KB
APK Path: /vendor/overlay/unisoc_overlay_power_qogirl6.apk
Data Path: /data/user/0/android.unisoc.power_qogirl6.overl
[8/4, 3:51 PM] Alexis de la cruz: - IOC-001 HOST longcheer: http://sh-16-52.rnd.longcheer.net 
- IOC-002 BOARD lion +

## Toybox 0.8.14 command help
toybox : [ acpi arch ascii base32 base64 basename blkdiscard blkid blockdev bunzip2 bzcat cal cat chattr chgrp chmod chown chroot chrt chvt cksum clear cmp comm count cp cpio crc32 cut date dd deallocvt devmem df dirname dmesg dnsdomainname dos2unix du echo egrep eject env expand factor fallocate false fgrep file find flock fmt fold free freeramdisk fsfreeze fstype fsync ftpget ftpput getconf getopt gpiodetect gpiofind gpioget gpioinfo gpioset grep groups gunzip halt hd head help hexedit host hostname httpd hwclock i2cdetect i2cdump i2cget i2cset i2ctransfer iconv id ifconfig inotifyd insmod install ionice iorenice iotop kill killall killall5 link linux32 ln logger login logname losetup ls lsattr lsmod lspci lsusb makedevs mcookie md5sum memeater microcom mix mkdir mkfifo mknod mkpasswd mkswap mktemp modinfo mount mountpoint mv nbd-client nbd-server nc netcat netstat nice nl nohup nologin nproc nsenter od oneit openvt partprobe paste patch pgrep pidof ping ping6 pivot_root pkill pmap poweroff printenv printf prlimit ps pwd pwdx pwgen readahead readelf readlink realpath reboot renice reset rev rfkill rm rmdir rmmod rtcwake sed seq setfattr setsid sha1sum sha224sum sha256sum sha384sum sha3sum sha512sum shred shuf sleep sntp sort split stat strings su swapoff swapon switch_root sync sysctl tac tail tar taskset tee test time timeout top touch true truncate ts tsort tty tunctl uclampset ulimit umount uname unicode uniq unix2dos unlink unshare uptime usleep uudecode uuencode uuidgen vconfig vmstat w watch watchdog wc wget which who whoami xargs xxd yes zcat

toybox
usage: toybox [--long | --help | --version | [COMMAND] [ARGUMENTS...]]

With no arguments, "toybox" shows available COMMAND names. Add --long
to include suggested install path for each command, see
https://landley.net/toybox/faq.html#install for details.

First argument is name of a COMMAND to run, followed by any ARGUMENTS
to that command. Most toybox commands also understand:

--help		Show command help (only)
--version	Show toybox version (only)

The filename "-" means stdin/stdout, and "--" stops argument parsing.

Numerical arguments accept a single letter suffix for
kilo, mega, giga, tera, peta, and exabytes, plus an additional
"d" to indicate decimal 1000's instead of 1024.

Durations can be decimal fractions and accept minute ("m"), hour ("h"),
or day ("d") suffixes (so 0.1m = 6s).
:
See true
[
See test
acpi
usage: acpi [-abctV]

Show status of power sources and thermal devices.

-a	Show power adapters
-b	Show batteries
-c	Show cooling device state
-t	Show temperatures
-V	Show everything
arch
usage: arch

Print machine (hardware) name, same as uname -m.
ascii
usage: ascii

Display ascii character set.
base32
usage: base32 [-di] [-w COLUMNS] [FILE...]

Encode or decode in base32.

-d	Decode
-i	Ignore non-alphabetic characters
-w	Wrap output at COLUMNS (default 76 or 0 for no wrap)
base64
usage: base64 [-di] [-w COLUMNS] [FILE...]

Encode or decode in base64.

-d	Decode
-i	Ignore non-alphabetic characters
-w	Wrap output at COLUMNS (default 76 or 0 for no wrap)
basename
usage: basename [-a] [-s SUFFIX] NAME... | NAME [SUFFIX]

Return non-directory portion of a pathname removing suffix.

-a		All arguments are names
-s SUFFIX	Remove suffix (implies -a)
blkdiscard
usage: blkdiscard [-szf] [-o OFFSET] [-l LENGTH] DEVICE

Discard device sectors (permanetly deleting data). Free space can improve
flash performance and lifetime by wear leveling and collating data.
(Some filesystem/driver combinations can do this automatically.)

-o	Start at OFFSET (--offset, default 0)
-l	LENGTH to discard (--length, default all)
-s	Overwrite discarded data (--secure)
-z	Zero-fill rather than discard (--zeroout)
-f	Disable check for mounted filesystem (--force)

OFFSET and LENGTH must be aligned to the device sector size. Default
without -o/-l discards the entire device. (You have been warned.)
blkid
usage: blkid [-o TYPE] [-s TAG] [-UL] DEV...

Print type, label and UUID of filesystem on a block device or image.

-U	Show UUID only (or device with that UUID)
-L	Show LABEL only (or device with that LABEL)
-o TYPE	Output format (full, value, export)
-s TAG	Only show matching tags (default all)
blockdev
usage: blockdev --OPTION... BLOCKDEV...

Call ioctl(s) on each listed block device

--setro		Set read only
--setrw		Set read write
--getro		Get read only
--getss		Get sector size
--getbsz	Get block size
--setbsz BYTES	Set block size
--getsz		Get device size in 512-byte sectors
--getsize	Get device size in sectors (deprecated)
--getsize64	Get device size in bytes
--getra		Get readahead in 512-byte sectors
--setra SECTORS	Set readahead
--flushbufs	Flush buffers
--rereadpt	Reread partition table
bunzip2
usage: bunzip2 [-cftkv] [FILE...]

Decompress listed files (file.bz becomes file) deleting archive file(s).
Read from stdin if no files listed.

-c	Force output to stdout
-f	Force decompression (if FILE doesn't end in .bz, replace original)
-k	Keep input files (-c and -t imply this)
-t	Test integrity
-v	Verbose
bzcat
usage: bzcat [FILE...]

Decompress listed files to stdout. Use stdin if no files listed.
cal
usage: cal [-h] [[[DAY] MONTH] YEAR]

Print a calendar.

With one argument, prints all months of the specified year.
With two arguments, prints calendar for month and year.
With three arguments, highlights day within month and year.

-h	Don't highlight today
cat
usage: cat [-etuv] [FILE...]

Copy (concatenate) files to stdout.  If no files listed, copy from stdin.
Filename "-" is a synonym for stdin.

-e	Mark each newline with $
-t	Show tabs as ^I
-u	Copy one byte at a time (slow)
-v	Display nonprinting characters as escape sequences with M-x for
	high ascii characters (>127), and ^x for other nonprinting chars
chattr
usage: chattr [-R] [-+=AacDdijsStTu] [-p PROJID] [-v VERSION] [FILE...]

Change file attributes on a Linux file system.

-R	Recurse
-p	Set the file's project number
-v	Set the file's version/generation number

Operators:
  '-' Remove attributes
  '+' Add attributes
  '=' Set attributes

Attributes:
  A  No atime                     a  Append only
  C  No COW                       c  Compression
  D  Synchronous dir updates      d  No dump
  E  Encrypted                    e  Extents
  F  Case-insensitive (casefold)
  I  Indexed directory            i  Immutable
  j  Journal data
  N  Inline data in inode
  P  Project hierarchy
  S  Synchronous file updates     s  Secure delete
  T  Top of dir hierarchy         t  No tail-merging
  u  Allow undelete
  V  Verity
chgrp
usage: chgrp/chown [-RHLP] [-fvh] GROUP FILE...

Change group of one or more files.

-f	Suppress most error messages
-h	Change symlinks instead of what they point to
-R	Recurse into subdirectories (implies -h)
-H	With -R change target of symlink, follow command line symlinks
-L	With -R change target of symlink, follow all symlinks
-P	With -R change symlink, do not follow symlinks (default)
-v	Verbose
chmod
usage: chmod [-R] MODE FILE...

Change permission mode of listed file[s] to be readable, writeable, and/or
executable to the current user, the file's group, or other (everyone else).
You can also set/clear the suid, guid, and sticky bits.

-c	Print changes
-f	Don't print errors
-R	Recursive
-v	Verbose

MODE can be octal or (comma-separated) stanzas of [ugoa][+-=][rwxstXugo]

Stanzas are applied in order: For each category (u = user,
g = group, o = other, a = all three, if none specified default is a),
set (+), clear (-), or copy (=), r = read, w = write, x = execute.
s = u+s = suid, g+s = sgid, +t = sticky. (o+s ignored so a+s doesn't set +t)
suid/sgid: execute as the user/group who owns the file.
sticky: can't delete files you don't own out of this directory
X = x for directories or if any category already has x set.

Or MODE can be an octal value up to 7777	ug uuugggooo	top +
bit 1 = o+x, bit 1<<8 = u+r, 1<<10 = g+s	sstrwxrwxrwx	bottom

Examples:
chmod u+w file - allow owner of "file" to write to it.
chmod 744 file - user can read/write/execute, everyone else read only
chown
See chgrp
chroot
usage: chroot NEWROOT [COMMAND [ARG...]]

Run command within a new root directory. If no command, run /bin/sh.
chrt
usage: chrt [-Rmofrbi] {-p PID [PRIORITY] | [PRIORITY COMMAND...]}

Get/set a process' real-time scheduling policy and priority.

-p	Set/query given pid (instead of running COMMAND)
-R	Set SCHED_RESET_ON_FORK
-m	Show min/max priorities available

Set policy (default -r):

  -o  SCHED_OTHER    -f  SCHED_FIFO    -r  SCHED_RR
  -b  SCHED_BATCH    -i  SCHED_IDLE
chvt
usage: chvt NUM

Change to virtual terminal number NUM. (This only works in text mode.)

Virtual terminals are the Linux VGA text mode (or framebuffer) displays,
switched between via alt-F1, alt-F2, etc. Use ctrl-alt-F1 to switch
from X11 to a virtual terminal, and alt-F6 (or F7, or F8) to get back.
cksum
usage: cksum [-HIPLN] [FILE...]

For each file, output crc32 checksum value, length and name of file.
If no files listed, copy from stdin.  Filename "-" is a synonym for stdin.

-H	Hexadecimal checksum (defaults to decimal)
-I	Skip post-inversion
-P	Pre-inversion
-L	Little endian (defaults to big endian)
-N	Do not include length in CRC calculation (or output)
clear
Clear the screen.
cmp
usage: cmp [-ls] [-n LEN] FILE1 [FILE2 [SKIP1 [SKIP2]]]

Compare the contents of files (vs stdin if only one given), optionally
skipping bytes at start.

-l	Show all differing bytes
-n LEN	Compare at most LEN bytes
-s	Silent
comm
usage: comm [-123] FILE1 FILE2

Read FILE1 and FILE2, which should be ordered, and produce three text
columns as output: lines only in FILE1; lines only in FILE2; and lines
in both files. Filename "-" is a synonym for stdin.

-1	Suppress the output column of lines unique to FILE1
-2	Suppress the output column of lines unique to FILE2
-3	Suppress the output column of lines duplicated in FILE1 and FILE2
count
usage: count [-l]

-l	Long output (total bytes, human readable, transfer rate, elapsed time)

Copy stdin to stdout, displaying simple progress indicator to stderr.
cp
usage: cp [-aDdFfHiLlnPpRrsTuv] [--preserve=motcxa] [-t TARGET] SOURCE... [DEST]

Copy files from SOURCE to DEST.  If more than one SOURCE, DEST must
be a directory.

-a	Same as -dpr
-D	Create leading dirs under DEST (--parents)
-d	Don't dereference symlinks
-F	Delete any existing DEST first (--remove-destination)
-f	Delete destination files we can't write to
-H	Follow symlinks listed on command line
-i	Interactive, prompt before overwriting existing DEST
-L	Follow all symlinks
-l	Hard link instead of copy
-n	No clobber (don't overwrite DEST)
-P	Do not follow symlinks
-p	Preserve timestamps, ownership, and mode
-R	Recurse into subdirectories (DEST must be a directory)
-r	Synonym for -R
-s	Symlink instead of copy
-T	DEST always treated as file, max 2 arguments
-t	Copy to TARGET dir (no DEST)
-u	Update (keep newest mtime)
-v	Verbose

Arguments to --preserve are the first letter(s) of:

        mode - permissions (ignore umask for rwx, copy suid and sticky bit)
   ownership - user and group
  timestamps - file creation, modification, and access times.
     context - security context
       xattr - extended attributes
         all - all of the above
cpio
usage: cpio -{o|t|i|p DEST} [-dLtuv] [--verbose] [-F FILE] [-R [USER][:GROUP] [--no-preserve-owner]

Copy files into and out of a "newc" format cpio archive.

-d	Create directories if needed
-F FILE	Use archive FILE instead of stdin/stdout
-i	Extract from archive into file system (stdin=archive)
-L	Follow symlinks
-o	Create archive (stdin=list of files, stdout=archive)
-p DEST	Copy-pass mode, copy stdin file list to directory DEST
-R USER	Replace owner with USER[:GROUP]
-t	Test files (list only, stdin=archive, stdout=list of files)
-u	Unlink existing files when extracting
-v	Verbose
--no-preserve-owner     Don't set ownership during extract
crc32
usage: crc32 [file...]

Output crc32 checksum for each file.
cut
usage: cut [-Ds] [-bcCfF LIST] [-dO DELIM] [FILE...]

Print selected parts of lines from each FILE to standard output.

Each selection LIST is comma separated, either numbers (counting from 1)
or dash separated ranges (inclusive, with X- meaning to end of line and -X
from start). By default selection ranges are sorted and collated, use -D
to prevent that.

-b	Select bytes (with -n round start/end down to start of utf8 char)
-c	Select UTF-8 characters
-C	Select unicode columns
-d	Input delimiter (default is TAB for -f, run of whitespace for -F)
-D	Don't sort/collate selections or match -fF lines without delimiter
-f	Select fields (words) separated by single DELIM character
-F	Select fields separated by DELIM regex
-O	Output separator (default one space for -F, input delim for -f)
-s	Skip lines without delimiters
date
usage: date [-u] [-I RES] [-r FILE] [-d DATE] [+DISPLAY_FORMAT] [-D SET_FORMAT] [SET]

Set/get the current date/time. With no SET shows the current date.

-d	Show DATE instead of current time (convert date format)
-D	+FORMAT for SET or -d (instead of MMDDhhmm[[CC]YY][.ss])
-I RES	ISO 8601 with RESolution d=date/h=hours/m=minutes/s=seconds/n=ns
-r	Use modification time of FILE instead of current date
-s DATE	Set the system clock to DATE.
-u	Use UTC instead of current timezone

Supported input formats:

MMDDhhmm[[CC]YY][.ss]     POSIX
@UNIXTIME[.FRACTION]      seconds since midnight 1970-01-01
YYYY-MM-DD [hh:mm[:ss]]   ISO 8601
hh:mm[:ss]                24-hour time today

All input formats can be followed by fractional seconds, and/or a UTC
offset such as -0800.

All input formats can be preceded by TZ="id" to set the input time zone
separately from the output time zone. Otherwise $TZ sets both.

+FORMAT specifies display format string using strftime(3) syntax:

%% literal %             %n newline              %t tab
%S seconds (00-60)       %M minute (00-59)       %m month (01-12)
%H hour (0-23)           %I hour (01-12)         %p AM/PM
%y short year (00-99)    %Y year                 %C century
%a short weekday name    %A weekday name         %u day of week (1-7, 1=mon)
%b short month name      %B month name           %Z timezone name
%j day of year (001-366) %d day of month (01-31) %e day of month ( 1-31)
%N nanosec (output only)

%U Week of year (0-53 start Sunday)   %W Week of year (0-53 start Monday)
%V Week of year (1-53 start Monday, week < 4 days not part of this year)

%F "%Y-%m-%d"   %R "%H:%M"        %T "%H:%M:%S"        %z  timezone (-0800)
%D "%m/%d/%y"   %r "%I:%M:%S %p"  %h "%b"              %:z timezone (-08:00)
%x locale date  %X locale time    %c locale date/time  %s  unix epoch time
dd
usage: dd [if|of=FILE] [ibs|obs|bs|count|seek|skip=N] [conv|status|iflag|oflag=FLAG[,FLAG...]]

Copy/convert blocks of data from input to output, with the following
keyword=value modifiers (and their default values):

if=FILE  Read FILE (stdin)          of=FILE  Write to FILE (stdout)
   bs=N  Block size in bytes (512)  count=N  Stop after copying N blocks (all)
  ibs=N  Input block size (bs=)       obs=N  Output block size (bs=)
 skip=N  Skip N input blocks (0)     seek=N  Skip N output blocks (0)

Each =N value accepts the normal unit suffixes (see toybox --help).

These modifiers take a comma separated list of potential options:

iflag=
  count_bytes count=N is in bytes   direct   Skip caches
  skip_bytes  skip=N is in bytes
oflag=
  append      Append to file        direct   Skip caches
  seek_bytes  seek=N is in bytes
status=noxfer,none             don't show transfer rate, no summary info
conv=
  notrunc  Don't truncate output    noerror  Continue after read errors
  sync     Zero pad short reads     fsync    Flush output to disk at end
  sparse   Seek past zeroed output  excl     Fail if output file exists
  nocreat  Fail if of=FILE missing
deallocvt
usage: deallocvt [NUM]

Deallocate unused virtual terminals, either a specific /dev/ttyNUM, or all.
devmem
usage: devmem [-f FILE] ADDR [WIDTH [DATA...]]

Read/write physical addresses. WIDTH is 1, 2, 4, or 8 bytes (default 4).
Prefix ADDR with 0x for hexadecimal, output is in same base as address.

-f FILE		File to operate on (default /dev/mem)
--no-sync	Don't open the file with O_SYNC (for cached access)
--no-mmap	Don't mmap the file
df
usage: df [-aHhikP] [-t TYPE] [FILE...]

The "disk free" command shows total/used/available disk space for
each filesystem listed on the command line, or all currently mounted
filesystems.

-a	Show all (including /proc and friends)
-H	Human readable (k=1000)
-h	Human readable (K=1024)
-i	Show inodes instead of blocks
-k	Sets units back to 1024 bytes (the default without -P)
-P	The SUSv3 "Pedantic" option (512 byte blocks)
-t TYPE	Display only filesystems of this type

Pedantic provides a slightly less useful output format dictated by POSIX,
and sets the units to 512 bytes instead of the default 1024 bytes.
dirname
usage: dirname PATH...

Show directory portion of path.
dmesg
usage: dmesg [-Cc] [-r|-t|-T] [-n LEVEL] [-s SIZE] [-w|-W]

Print or control the kernel ring buffer.

-C	Clear ring buffer without printing
-c	Clear ring buffer after printing
-n	Set kernel logging LEVEL (1-8)
-r	Raw output (with )
-S	Use syslog(2) rather than /dev/kmsg
-s	Show the last SIZE many bytes
-T	Human readable timestamps
-t	Don't print timestamps
-w	Keep waiting for more output (aka --follow)
-W	Wait for output, only printing new messages
dnsdomainname
usage: dnsdomainname

Show domain this system belongs to (same as hostname -d).
dos2unix
usage: dos2unix [FILE...]

Convert newline format from dos "\r\n" to unix "\n".
If no files listed copy from stdin, "-" is a synonym for stdin.
du
usage: du [-d N] [-abcHKkLlmsx] [FILE...]

Show disk usage, space consumed by files and directories.

Size in:
-b	Apparent bytes (directory listing size, not space used)
-h	Human readable (e.g., 1K 243M 2G)
-k	1024 byte blocks (default)
-K	512 byte blocks (posix)
-m	Megabytes

What to show:
-a	All files, not just directories
-c	Cumulative total
-d N	Only depth < N
-H	Follow symlinks on cmdline
-L	Follow all symlinks
-l	Disable hardlink filter
-s	Only total size of each argument
-x	Don't leave this filesystem
echo
usage: echo [-Een] [ARG...]

Write each argument to stdout, one space between each, followed by a newline.

-E	Print escape sequences literally (default)
-e	Process the following escape sequences:
	\\  Backslash		\0NNN Octal (1-3 digit)	\xHH Hex (1-2 digit)
	\a  Alert (beep/flash)	\b  Backspace		\c  Stop here (no \n)
	\f  Form feed		\n  Newline		\r  Carriage return
	\t  Horizontal tab	\v  Vertical tab
-n	No trailing newline
egrep
See grep
eject
usage: eject [-stT] [DEVICE]

Eject DEVICE or default /dev/cdrom

-s	SCSI device
-t	Close tray
-T	Open/close tray (toggle)
env
usage: env [-0i] [-e FILE] [-u NAME] [NAME=VALUE...] [COMMAND...]

Set the environment for command invocation, or list environment variables.

-e	Execute FILE instead of argv[0] in COMMAND list
-i	Clear existing environment
-u NAME	Remove NAME from the environment
-0	Use null instead of newline in output
expand
usage: expand [-t TABLIST] [FILE...]

Expand tabs to spaces according to tabstops.

-t	TABLIST

Specify tab stops, either a single number instead of the default 8,
or a comma separated list of increasing numbers representing tabstop
positions (absolute, not increments) with each additional tab beyond
that becoming one space.
factor
usage: factor [-hx] NUMBER...

Factor integers.

-h	Human readable: show repeated factors as x^n
-x	Hexadecimal output
fallocate
usage: fallocate [-o OFFSET] -l SIZE FILE

Tell the filesystem to allocate space for a range in a file.

-l	Number of bytes in range
-o	Start offset of range (default 0)
false
usage: false

Return nonzero.
fgrep
See grep
file
usage: file [-bhLs] [FILE...]

Examine the given files and describe their content types.

-b	Brief (no filename)
-h	Don't follow symlinks (default)
-L	Follow symlinks
-s	Show block/char device contents
find
usage: find [-HL] [DIR...] []

Search directories for matching file


## Vectors input splits Manifest
<?xml version="1.0" encoding="utf-8"?>
<manifest
  xmlns:android="http://schemas.android.com/apk/res/android"
  xmlns:dist="http://schemas.android.com/apk/distribution"
  android:versionCode="175940518"
  android:isFeatureSplit="true"
  android:compileSdkVersion="37"
  android:compileSdkVersionCodename="DEV"
  android:requiredSplitTypes=""
  android:splitTypes="brella_feature_split__module"
  package="com.google.android.inputmethod.latin"
  platformBuildVersionCode="37"
  platformBuildVersionName="DEV"
  split="brella_feature_split">
  <uses-sdk
    android:minSdkVersion="32">
  </uses-sdk>
  <dist:module
    title="@0x7f140e72">
    <dist:delivery>
      <dist:on-demand>
      </dist:on-demand>
    </dist:delivery>
    <dist:fusing
      include="false">
    </dist:fusing>
  </dist:module>
  <application
    android:hasCode="false"
    android:extractNativeLibs="false">
    <meta-data
      android:name="com.android.vending.derived.apk.id"
      android:value="5">
    </meta-data>
  </application>
</manifest>

<?xml version="1.0" encoding="utf-8"?>
<manifest
  xmlns:android="http://schemas.android.com/apk/res/android"
  xmlns:dist="http://schemas.android.com/apk/distribution"
  android:versionCode="175940518"
  android:isFeatureSplit="true"
  android:compileSdkVersion="37"
  android:compileSdkVersionCodename="DEV"
  android:requiredSplitTypes=""
  android:splitTypes="tenoranimation_feature_split__module"
  package="com.google.android.inputmethod.latin"
  platformBuildVersionCode="37"
  platformBuildVersionName="DEV"
  split="tenoranimation_feature_split">
  <uses-sdk
    android:minSdkVersion="32">
  </uses-sdk>
  <dist:module
    title="@0x7f140e70">
    <dist:delivery>
      <dist:on-demand>
      </dist:on-demand>
    </dist:delivery>
    <dist:fusing
      include="false">
    </dist:fusing>
  </dist:module>
  <application
    android:hasCode="false"
    android:extractNativeLibs="false">
    <meta-data
      android:name="com.android.vending.derived.apk.id"
      android:value="5">
    </meta-data>
  </application>
</manifest>


<?xml version="1.0" encoding="utf-8"?>
<manifest
  xmlns:android="http://schemas.android.com/apk/res/android"
  android:versionCode="175940518"
  android:splitTypes="base__density"
  package="com.google.android.inputmethod.latin"
  split="config.xhdpi">
  <application
    android:hasCode="false"
    android:extractNativeLibs="false">
    <meta-data
      android:name="com.android.vending.derived.apk.id"
      android:value="5">
    </meta-data>
  </application>
  <uses-sdk
    android:minSdkVersion="32">
  </uses-sdk>
</manifest>

## This is the way they use toybox "normal' and "Gboard" "Normal" by RCE attacks
Fuente: https://github.com/MM2-0/Kvaesitso/issues/1283


