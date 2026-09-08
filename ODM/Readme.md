wizard:uri="intent:#Intent;action=com.android.setupwizard.CHECK_USER_UNLOCK;end">
        <result wizard:action="nfc_provision_flow"/>
    </WizardAction>
    <WizardAction id="nfc_provision_flow" wizard:script="android.resource://com.longcheer.android.gmsintegration/raw/wizard_script_nfc_provision_flow">
        <result wizard:action="oem_post_setup"/>
    </WizardAction>
    <!--add for [EKCANCUN-3007] by huanghaodong on 2023-4-18 start-->
    <WizardAction id="check_user_unlock_work_setup_interrupted_qr_scan" wizard:uri="intent:#Intent;action=com.android.setupwizard.CHECK_USER_UNLOCK;end"/>
    <WizardAction id="work_setup_interrupted_qr_scan" wizard:uri="intent:#Intent;action=com.google.android.setupwizard.WORK_SETUP_INTERRUPTED;end">
        <result wizard:name="continue_start_qr_scan" wizard:resultCode="1" wizard:action="check_user_unlock_qr"/>
        <result wizard:action="factory_reset"/>
    </WizardAction>
    <WizardAction
