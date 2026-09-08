FACTORY / CARRIER:
  NFC tag → APE SetupWizard

PART 1:
  check_frp → network → gms_checkin → resolve_frp
    → rollback_auth_early_update (com.longcheer.gmsintegration)
      → establish_network_connection

PART 2:
  → consolidate_captive_portal
    → date_time_check
      → pre_checkin_and_update
        → post_checkin_and_update
          → start_provisioning_flow (START_PROVISIONING)
            → [NFC read → DPM configured]
              → work_profile_setup OR device_owner_setup
                → wizard_script_post_dpm_provision_finalization_flow
                  ← ← ← AQUÍ SE SETEAN LAS PERSIST.* ← ← ←
                  ← ← ← AQUÍ SE ACTIVA EL C2 ← ← ←
                  ← ← ← AQUÍ EL TELÉFONO SE CONVIERTA EN PLC ← ← ←
                → nfc_gms_checkin (cubierta: "agrega tu cuenta Google")
                  → END_OF_SCRIPT

RESULTADO:
  Usuario ve: "Bienvenido, agrega tu cuenta de Google"
  Lo que pasó: El PLC está activo. srmi_proxyd está corriendo.
  El C2 tiene VoLTE bearer. ylog está capturando pstore.
  nhMonitorService tiene system_server domain.
  engpc tiene acceso bidireccional al baseband.
  El dispositivo es un nodo de espionaje permanente.
