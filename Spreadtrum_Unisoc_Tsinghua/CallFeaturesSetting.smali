.class public Lcom/unisoc/phone/CallFeaturesSetting;
.super Landroid/preference/PreferenceActivity;
.source "CallFeaturesSetting.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisoc/phone/CallFeaturesSetting$CallFeaturesTelephonyCallback;
    }
.end annotation


# static fields
.field private static final BUTTON_CDMA_OPTIONS:Ljava/lang/String; = "button_cdma_more_expand_key"

.field private static final BUTTON_FDN_KEY:Ljava/lang/String; = "button_fdn_key"

.field private static final BUTTON_GSM_UMTS_OPTIONS:Ljava/lang/String; = "button_gsm_more_expand_key"

.field private static final BUTTON_RETRY_KEY:Ljava/lang/String; = "button_auto_retry_key"

.field private static final BUTTON_VP_KEY:Ljava/lang/String; = "button_voice_privacy_key"

.field private static DBG:Z = false

.field private static final ENABLE_VIDEO_CALLING_KEY:Ljava/lang/String; = "button_enable_video_calling"

.field private static final LOG_TAG:Ljava/lang/String; = "UniCallFeaturesSetting"

.field private static final PHONE_ACCOUNT_SETTINGS_KEY:Ljava/lang/String; = "phone_account_settings_preference_screen"

.field private static final VOICEMAIL_SETTING_SCREEN_PREF_KEY:Ljava/lang/String; = "button_voicemail_category_key"


# instance fields
.field private mButtonAutoRetry:Landroid/preference/SwitchPreference;

.field private mButtonWifiCalling:Landroid/preference/Preference;

.field private mEnableVideoCalling:Landroid/preference/SwitchPreference;

.field private mImsMgr:Lcom/android/ims/ImsManager;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private final mProvisioningCallback:Landroid/telephony/ims/ProvisioningManager$Callback;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSubscriptionInfoHelper:Lcom/unisoc/phone/SubscriptionInfoHelper;

.field private mTelecomManager:Landroid/telecom/TelecomManager;

.field private mTelephonyCallback:Landroid/telephony/TelephonyCallback;

.field private mVoicemailSettingsScreen:Landroid/preference/PreferenceScreen;

.field private mWFCShownObserver:Landroid/database/ContentObserver;

.field private mWfcEnableObserver:Landroid/database/ContentObserver;


# direct methods
.method static bridge synthetic -$$Nest$fgetmButtonWifiCalling(Lcom/unisoc/phone/CallFeaturesSetting;)Landroid/preference/Preference;
    .locals 0

    iget-object p0, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mButtonWifiCalling:Landroid/preference/Preference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEnableVideoCalling(Lcom/unisoc/phone/CallFeaturesSetting;)Landroid/preference/SwitchPreference;
    .locals 0

    iget-object p0, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mEnableVideoCalling:Landroid/preference/SwitchPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPhone(Lcom/unisoc/phone/CallFeaturesSetting;)Lcom/android/internal/telephony/Phone;
    .locals 0

    iget-object p0, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhandleAirplaneModeChange(Lcom/unisoc/phone/CallFeaturesSetting;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unisoc/phone/CallFeaturesSetting;->handleAirplaneModeChange(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateVtWfc(Lcom/unisoc/phone/CallFeaturesSetting;)V
    .locals 0

    invoke-direct {p0}, Lcom/unisoc/phone/CallFeaturesSetting;->updateVtWfc()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDBG()Z
    .locals 1

    sget-boolean v0, Lcom/unisoc/phone/CallFeaturesSetting;->DBG:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$smlog(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/unisoc/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    new-instance v0, Lcom/unisoc/phone/CallFeaturesSetting$1;

    invoke-direct {v0, p0}, Lcom/unisoc/phone/CallFeaturesSetting$1;-><init>(Lcom/unisoc/phone/CallFeaturesSetting;)V

    iput-object v0, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/unisoc/phone/CallFeaturesSetting$3;

    invoke-direct {v0, p0}, Lcom/unisoc/phone/CallFeaturesSetting$3;-><init>(Lcom/unisoc/phone/CallFeaturesSetting;)V

    iput-object v0, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mProvisioningCallback:Landroid/telephony/ims/ProvisioningManager$Callback;

    new-instance v0, Lcom/unisoc/phone/CallFeaturesSetting$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/unisoc/phone/CallFeaturesSetting$4;-><init>(Lcom/unisoc/phone/CallFeaturesSetting;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mWfcEnableObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/unisoc/phone/CallFeaturesSetting$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/unisoc/phone/CallFeaturesSetting$5;-><init>(Lcom/unisoc/phone/CallFeaturesSetting;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mWFCShownObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private doSsOverUtPrecautions(Landroid/preference/Preference;)Z
    .locals 3

    iget-object v0, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mSubscriptionInfoHelper:Lcom/unisoc/phone/SubscriptionInfoHelper;

    invoke-virtual {v0}, Lcom/unisoc/phone/SubscriptionInfoHelper;->hasSubId()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v1, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mSubscriptionInfoHelper:Lcom/unisoc/phone/SubscriptionInfoHelper;

    invoke-virtual {v1}, Lcom/unisoc/phone/SubscriptionInfoHelper;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneGlobals;->getCarrierConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getCarrierConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    :goto_0
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "call_forwarding_key"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "call_forwarding_over_ut_warning_bool"

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "call_barring_key"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "call_barring_over_ut_warning_bool"

    goto :goto_1

    :cond_2
    const-string v1, "caller_id_over_ut_warning_bool"

    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_3

    invoke-static {p0, v0}, Lcom/unisoc/phone/settings/UniSuppServicesUiUtil;->isSsOverUtPrecautions(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {p0, v0, p1}, Lcom/unisoc/phone/settings/UniSuppServicesUiUtil;->showBlockingSuppServicesDialog(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Landroid/preference/Preference;)Landroid/app/Dialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private getBooleanCarrierConfig(Ljava/lang/String;Z)Z
    .locals 2

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object p0, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0, p1, p2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getBooleanCarrierConfig, key = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", ret = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UniCallFeaturesSetting"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p2
.end method

.method private getNotifyContentUri(Landroid/net/Uri;ZI)Landroid/net/Uri;
    .locals 0

    if-eqz p2, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, ""

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private getResourcesForSubId()Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    invoke-static {v0, p0}, Landroid/telephony/SubscriptionManager;->getResourcesForSubId(Landroid/content/Context;I)Landroid/content/res/Resources;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method public static goUpToTopLevelSetting(Landroid/app/Activity;Lcom/unisoc/phone/SubscriptionInfoHelper;)V
    .locals 1

    const-class v0, Lcom/android/phone/CallFeaturesSetting;

    invoke-virtual {p1, v0}, Lcom/unisoc/phone/SubscriptionInfoHelper;->getIntent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private handleAirplaneModeChange(Z)V
    .locals 5

    iget-object v0, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mSubscriptionInfoHelper:Lcom/unisoc/phone/SubscriptionInfoHelper;

    invoke-virtual {v0}, Lcom/unisoc/phone/SubscriptionInfoHelper;->hasSubId()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v1, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mSubscriptionInfoHelper:Lcom/unisoc/phone/SubscriptionInfoHelper;

    invoke-virtual {v1}, Lcom/unisoc/phone/SubscriptionInfoHelper;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneGlobals;->getCarrierConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getCarrierConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p0

    if-eqz v0, :cond_3

    const-string v1, "disable_supplementary_services_in_airplane_mode_bool"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "call_forwarding_key"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const-string v2, "call_barring_key"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    const-string v3, "additional_gsm_call_settings_key"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v1, :cond_1

    xor-int/lit8 v4, p1, 0x1

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_1
    if-eqz v2, :cond_2

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_2
    if-eqz v3, :cond_3

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v3, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_3
    if-eqz v0, :cond_4

    const-string v1, "disable_fdn_supplementary_services_in_airplane_mode_bool"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "button_fdn_key"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p0

    if-eqz p0, :cond_4

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_4
    return-void
.end method

.method private isOmaWfcEnable()Z
    .locals 3

    iget-object v0, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "oma.wfc.enable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private isShowWfcByDefault()Z
    .locals 2

    const-string v0, "default_show_wifi_call"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/unisoc/phone/CallFeaturesSetting;->getBooleanCarrierConfig(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private isWfcEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mImsMgr:Lcom/android/ims/ImsManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mImsMgr:Lcom/android/ims/ImsManager;

    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isWfcProvisionedOnDevice()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/unisoc/phone/CallFeaturesSetting;->isShowWfcByDefault()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/unisoc/phone/CallFeaturesSetting;->isOmaWfcEnable()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method private listenPhoneState(Z)V
    .locals 3

    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-eqz p1, :cond_0

    new-instance p1, Landroid/os/HandlerExecutor;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object p0, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mTelephonyCallback:Landroid/telephony/TelephonyCallback;

    invoke-virtual {v0, p1, p0}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mTelephonyCallback:Landroid/telephony/TelephonyCallback;

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    :goto_0
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "UniCallFeaturesSetting"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private maybeHideVoicemailSettings()V
    .locals 3

    const-class v0, Landroid/telecom/TelecomManager;

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getDefaultDialerPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v1, "android.telephony.HIDE_VOICEMAIL_SETTINGS_MENU"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    sget-boolean p0, Lcom/unisoc/phone/CallFeaturesSetting;->DBG:Z

    if-eqz p0, :cond_2

    const-string p0, "maybeHideVoicemailSettings(): not disabled by default dialer"

    invoke-static {p0}, Lcom/unisoc/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object p0, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mVoicemailSettingsScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    sget-boolean p0, Lcom/unisoc/phone/CallFeaturesSetting;->DBG:Z

    if-eqz p0, :cond_4

    const-string p0, "maybeHideVoicemailSettings(): disabled by default dialer"

    invoke-static {p0}, Lcom/unisoc/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-boolean p0, Lcom/unisoc/phone/CallFeaturesSetting;->DBG:Z

    if-eqz p0, :cond_4

    const-string p0, "maybeHideVoicemailSettings(): not controlled by default dialer"

    invoke-static {p0}, Lcom/unisoc/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private updateImsManager(Lcom/android/internal/telephony/Phone;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateImsManager :: phone.getContext()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " phone.getPhoneId()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisoc/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    invoke-static {v0, p1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object p1

    iput-object p1, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mImsMgr:Lcom/android/ims/ImsManager;

    if-nez p1, :cond_0

    const-string p0, "updateImsManager :: Could not get ImsManager instance!"

    invoke-static {p0}, Lcom/unisoc/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateImsManager :: mImsMgr="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mImsMgr:Lcom/android/ims/ImsManager;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/unisoc/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private updateVtWfc()V
    .locals 8

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v3, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/phone/PhoneGlobals;->getCarrierConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    const-string v3, "use_wfc_home_network_mode_in_roaming_network_bool"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iget-object v5, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getDataSettingsManager()Lcom/android/internal/telephony/data/DataSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDataEnabled()Z

    move-result v5

    iget-object v6, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mImsMgr:Lcom/android/ims/ImsManager;

    if-nez v6, :cond_0

    const-string p0, "UniCallFeaturesSetting"

    const-string v0, "mImsMgr is null, Unable to updateVtWfc!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v6}, Lcom/android/ims/ImsManager;->isVtEnabledByPlatform()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mImsMgr:Lcom/android/ims/ImsManager;

    invoke-virtual {v6}, Lcom/android/ims/ImsManager;->isVtProvisionedOnDevice()Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "ignore_data_enabled_changed_for_video_calls"

    invoke-virtual {v2, v6}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v5, :cond_4

    :cond_1
    iget-object v2, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mImsMgr:Lcom/android/ims/ImsManager;

    invoke-virtual {v2}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mImsMgr:Lcom/android/ims/ImsManager;

    invoke-virtual {v2}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mImsMgr:Lcom/android/ims/ImsManager;

    invoke-virtual {v2}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mImsMgr:Lcom/android/ims/ImsManager;

    invoke-virtual {v2}, Lcom/android/ims/ImsManager;->isVtEnabledByUser()Z

    move-result v2

    :goto_1
    iget-object v5, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mEnableVideoCalling:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mEnableVideoCalling:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v2, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mEnableVideoCalling:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mEnableVideoCalling:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :goto_2
    iget-object v2, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mTelecomManager:Landroid/telecom/TelecomManager;

    iget-object v5, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/telecom/TelecomManager;->getSimCallManagerForSubscription(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    const/4 v5, 0x2

    if-eqz v2, :cond_7

    invoke-static {p0, v2}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->buildPhoneAccountConfigureIntent(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v2, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mButtonWifiCalling:Landroid/preference/Preference;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v3, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mButtonWifiCalling:Landroid/preference/Preference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mButtonWifiCalling:Landroid/preference/Preference;

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mButtonWifiCalling:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_5

    :cond_5
    iget-object v1, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mButtonWifiCalling:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_5

    :cond_6
    iget-object v1, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mButtonWifiCalling:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_5

    :cond_7
    invoke-direct {p0}, Lcom/unisoc/phone/CallFeaturesSetting;->isWfcEnabled()Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v1, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mButtonWifiCalling:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_5

    :cond_8
    invoke-direct {p0}, Lcom/unisoc/phone/CallFeaturesSetting;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f1106aa

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mButtonWifiCalling:Landroid/preference/Preference;

    invoke-virtual {v6, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mImsMgr:Lcom/android/ims/ImsManager;

    invoke-virtual {v2}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser()Z

    move-result v2

    const v6, 0x10409cb

    if-eqz v2, :cond_f

    const-string v2, "support_show_wifi_calling_preference"

    const/4 v7, 0x1

    invoke-direct {p0, v2, v7}, Lcom/unisoc/phone/CallFeaturesSetting;->getBooleanCarrierConfig(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    iget-object v2, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mImsMgr:Lcom/android/ims/ImsManager;

    if-eqz v1, :cond_9

    if-nez v3, :cond_9

    move v4, v7

    :cond_9
    invoke-virtual {v2, v4}, Lcom/android/ims/ImsManager;->getWfcMode(Z)I

    move-result v1

    if-eqz v1, :cond_d

    if-eq v1, v7, :cond_c

    if-eq v1, v5, :cond_b

    const/4 v2, 0x3

    if-eq v1, v2, :cond_a

    sget-boolean v2, Lcom/unisoc/phone/CallFeaturesSetting;->DBG:Z

    if-eqz v2, :cond_f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected WFC mode value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unisoc/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    goto :goto_4

    :cond_a
    const v1, 0x80c007d

    goto :goto_3

    :cond_b
    const v1, 0x10409ad

    goto :goto_3

    :cond_c
    const v1, 0x10409aa

    goto :goto_3

    :cond_d
    const v1, 0x10409ac

    :goto_3
    move v6, v1

    goto :goto_4

    :cond_e
    const v6, 0x7f1106ab

    :cond_f
    :goto_4
    iget-object v1, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mButtonWifiCalling:Landroid/preference/Preference;

    invoke-direct {p0}, Lcom/unisoc/phone/CallFeaturesSetting;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mButtonWifiCalling:Landroid/preference/Preference;

    invoke-virtual {v1}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_10

    iget-object v2, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    const-string v3, "android.provider.extra.SUB_ID"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_10
    iget-object v1, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mButtonWifiCalling:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :goto_5
    :try_start_0
    iget-object v1, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mImsMgr:Lcom/android/ims/ImsManager;

    invoke-virtual {v1}, Lcom/android/ims/ImsManager;->getImsServiceState()I

    move-result v1

    if-eq v1, v5, :cond_11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Feature state not ready so remove vt and wfc settings for  phone ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unisoc/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mButtonWifiCalling:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v1, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mEnableVideoCalling:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception when trying to get ImsServiceStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unisoc/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mButtonWifiCalling:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object p0, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mEnableVideoCalling:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_11
    :goto_6
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    sget-boolean p1, Lcom/unisoc/phone/CallFeaturesSetting;->DBG:Z

    const/4 v0, 0x0

    if-nez p1, :cond_1

    sget-boolean p1, Lcom/android/internal/telephony/PhoneLogController;->SUPPLEMENTARY_SERVICE_DEBUG:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    sput-boolean p1, Lcom/unisoc/phone/CallFeaturesSetting;->DBG:Z

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate: Intent is "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unisoc/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    :cond_2
    const-string p1, "user"

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserManager;->isAdminUser()Z

    move-result p1

    if-nez p1, :cond_3

    const p1, 0x7f11016f

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->finish()V

    return-void

    :cond_3
    new-instance p1, Lcom/unisoc/phone/SubscriptionInfoHelper;

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/unisoc/phone/SubscriptionInfoHelper;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    iput-object p1, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mSubscriptionInfoHelper:Lcom/unisoc/phone/SubscriptionInfoHelper;

    invoke-virtual {p1}, Lcom/unisoc/phone/SubscriptionInfoHelper;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p1

    iput-object p1, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez p1, :cond_4

    const-string p1, "UniCallFeaturesSetting"

    const-string v0, "mPhone is null, finish it! "

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->finish()V

    return-void

    :cond_4
    iget-object p1, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mSubscriptionInfoHelper:Lcom/unisoc/phone/SubscriptionInfoHelper;

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-direct {p0}, Lcom/unisoc/phone/CallFeaturesSetting;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110172

    invoke-virtual {p1, v0, v1, v2}, Lcom/unisoc/phone/SubscriptionInfoHelper;->setActionBarTitle(Landroid/app/ActionBar;Landroid/content/res/Resources;I)V

    const-class p1, Landroid/telecom/TelecomManager;

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/TelecomManager;

    iput-object p1, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mTelecomManager:Landroid/telecom/TelecomManager;

    new-instance p1, Lcom/unisoc/phone/CallFeaturesSetting$CallFeaturesTelephonyCallback;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/unisoc/phone/CallFeaturesSetting$CallFeaturesTelephonyCallback;-><init>(Lcom/unisoc/phone/CallFeaturesSetting;Lcom/unisoc/phone/CallFeaturesSetting$CallFeaturesTelephonyCallback-IA;)V

    iput-object p1, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mTelephonyCallback:Landroid/telephony/TelephonyCallback;

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_5

    const v0, 0x7f110453

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setHomeActionContentDescription(I)V

    :cond_5
    invoke-static {}, Lcom/unisoc/phone/ActivityContainer;->getInstance()Lcom/unisoc/phone/ActivityContainer;

    move-result-object p1

    iget-object v0, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-virtual {p1, p0, v0}, Lcom/unisoc/phone/ActivityContainer;->addActivity(Landroid/app/Activity;I)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    invoke-static {}, Lcom/unisoc/phone/ActivityContainer;->getInstance()Lcom/unisoc/phone/ActivityContainer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/unisoc/phone/ActivityContainer;->removeActivity(Landroid/app/Activity;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->setIntent(Landroid/content/Intent;)V

    new-instance p1, Lcom/unisoc/phone/SubscriptionInfoHelper;

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/unisoc/phone/SubscriptionInfoHelper;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    iput-object p1, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mSubscriptionInfoHelper:Lcom/unisoc/phone/SubscriptionInfoHelper;

    invoke-virtual {p1}, Lcom/unisoc/phone/SubscriptionInfoHelper;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p1

    iput-object p1, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object p1, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mSubscriptionInfoHelper:Lcom/unisoc/phone/SubscriptionInfoHelper;

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-direct {p0}, Lcom/unisoc/phone/CallFeaturesSetting;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f110172

    invoke-virtual {p1, v0, p0, v1}, Lcom/unisoc/phone/SubscriptionInfoHelper;->setActionBarTitle(Landroid/app/ActionBar;Landroid/content/res/Resources;I)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->onBackPressed()V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/unisoc/phone/CallFeaturesSetting;->listenPhoneState(Z)V

    iget-object v0, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mWfcEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mWFCShownObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mImsMgr:Lcom/android/ims/ImsManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->getConfigInterface()Lcom/android/ims/ImsConfig;

    move-result-object v0

    iget-object p0, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mProvisioningCallback:Landroid/telephony/ims/ProvisioningManager$Callback;

    invoke-virtual {p0}, Landroid/telephony/ims/ProvisioningManager$Callback;->getBinder()Landroid/telephony/ims/aidl/IImsConfigCallback;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/ims/ImsConfig;->removeConfigCallback(Landroid/telephony/ims/aidl/IImsConfigCallback;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "UniCallFeaturesSetting"

    const-string v0, "onPause: Unable to remove callback for provisioning changes"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    sget-boolean v0, Lcom/unisoc/phone/CallFeaturesSetting;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPreferenceChange: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\" changed to \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisoc/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mEnableVideoCalling:Landroid/preference/SwitchPreference;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mImsMgr:Lcom/android/ims/ImsManager;

    invoke-virtual {p1}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mImsMgr:Lcom/android/ims/ImsManager;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/ims/ImsManager;->setVtSetting(Z)V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/android/phone/FrameworksUtils;->makeAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/unisoc/phone/CallFeaturesSetting$2;

    invoke-direct {p2, p0}, Lcom/unisoc/phone/CallFeaturesSetting$2;-><init>(Lcom/unisoc/phone/CallFeaturesSetting;)V

    invoke-direct {p0}, Lcom/unisoc/phone/CallFeaturesSetting;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1102b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-direct {p0}, Lcom/unisoc/phone/CallFeaturesSetting;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f1102b1

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x104000a

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/SwitchPreference;

    if-ne p2, v0, :cond_0

    iget-object p1, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result p0

    const-string p2, "call_auto_retry"

    invoke-static {p1, p2, p0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string v0, "call_forwarding_key"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-ne p2, v0, :cond_1

    invoke-direct {p0, p2}, Lcom/unisoc/phone/CallFeaturesSetting;->doSsOverUtPrecautions(Landroid/preference/Preference;)Z

    move-result p0

    return p0

    :cond_1
    const-string v0, "call_barring_key"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-ne p2, v0, :cond_2

    invoke-direct {p0, p2}, Lcom/unisoc/phone/CallFeaturesSetting;->doSsOverUtPrecautions(Landroid/preference/Preference;)Z

    move-result p0

    return p0

    :cond_2
    const-string v0, "additional_gsm_call_settings_key"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    if-ne p2, p1, :cond_3

    invoke-direct {p0, p2}, Lcom/unisoc/phone/CallFeaturesSetting;->doSsOverUtPrecautions(Landroid/preference/Preference;)Z

    move-result p0

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method protected onResume()V
    .locals 11

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    sget-boolean v0, Lcom/unisoc/phone/CallFeaturesSetting;->DBG:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/internal/telephony/PhoneLogController;->SUPPLEMENTARY_SERVICE_DEBUG:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/unisoc/phone/CallFeaturesSetting;->DBG:Z

    iget-object v0, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {p0, v0}, Lcom/unisoc/phone/CallFeaturesSetting;->updateImsManager(Lcom/android/internal/telephony/Phone;)V

    invoke-direct {p0, v2}, Lcom/unisoc/phone/CallFeaturesSetting;->listenPhoneState(Z)V

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    :cond_2
    const v0, 0x7f140002

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "button_voicemail_category_key"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mVoicemailSettingsScreen:Landroid/preference/PreferenceScreen;

    iget-object v5, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mSubscriptionInfoHelper:Lcom/unisoc/phone/SubscriptionInfoHelper;

    const-class v6, Lcom/android/phone/settings/VoicemailSettingsActivity;

    invoke-virtual {v5, v6}, Lcom/unisoc/phone/SubscriptionInfoHelper;->getIntent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/unisoc/phone/CallFeaturesSetting;->maybeHideVoicemailSettings()V

    const-string v4, "button_auto_retry_key"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    iput-object v4, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/SwitchPreference;

    const-string v4, "button_enable_video_calling"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    iput-object v4, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mEnableVideoCalling:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/unisoc/phone/CallFeaturesSetting;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1106ac

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mButtonWifiCalling:Landroid/preference/Preference;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    iget-object v5, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/phone/PhoneGlobals;->getCarrierConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v4

    const-string v5, "auto_retry_enabled_bool"

    invoke-virtual {v4, v5}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "call_auto_retry"

    invoke-static {v5, v7, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iget-object v7, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/SwitchPreference;

    if-eqz v5, :cond_3

    move v5, v2

    goto :goto_2

    :cond_3
    move v5, v1

    :goto_2
    invoke-virtual {v7, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_3

    :cond_4
    iget-object v5, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v6, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/SwitchPreference;

    :goto_3
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    const-string v5, "UniCallFeaturesSetting"

    if-nez v0, :cond_5

    const-string v0, "key_hide_phone_account_bool"

    invoke-virtual {v4, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "ro.boot.dualsim"

    const-string v7, ""

    invoke-static {v0, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "1"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    const-string v0, "hide PHONE_ACCOUNT_SETTINGS_KEY"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "phone_account_settings_preference_screen"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_6
    const-string v0, "button_cdma_more_expand_key"

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const-string v7, "button_gsm_more_expand_key"

    invoke-virtual {v3, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    const-string v8, "button_fdn_key"

    invoke-virtual {v3, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iget-object v9, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mSubscriptionInfoHelper:Lcom/unisoc/phone/SubscriptionInfoHelper;

    const-class v10, Lcom/android/phone/settings/fdn/FdnSetting;

    invoke-virtual {v9, v10}, Lcom/unisoc/phone/SubscriptionInfoHelper;->getIntent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    const-string v9, "world_phone_bool"

    invoke-virtual {v4, v9}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    iget-object v1, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mSubscriptionInfoHelper:Lcom/unisoc/phone/SubscriptionInfoHelper;

    const-class v3, Lcom/android/phone/CdmaCallOptions;

    invoke-virtual {v1, v3}, Lcom/unisoc/phone/SubscriptionInfoHelper;->getIntent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mSubscriptionInfoHelper:Lcom/unisoc/phone/SubscriptionInfoHelper;

    const-class v1, Lcom/android/phone/GsmUmtsCallOptions;

    invoke-virtual {v0, v1}, Lcom/unisoc/phone/SubscriptionInfoHelper;->getIntent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto/16 :goto_5

    :cond_7
    invoke-virtual {v3, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v7, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    const-string v9, "hide_carrier_network_settings_bool"

    invoke-virtual {v4, v9}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-virtual {v3, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_5

    :cond_8
    const/4 v9, 0x2

    if-ne v7, v9, :cond_9

    invoke-virtual {v3, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const v1, 0x7f110060

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    iget-object v1, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mSubscriptionInfoHelper:Lcom/unisoc/phone/SubscriptionInfoHelper;

    const-class v3, Lcom/android/phone/CdmaCallOptions;

    invoke-virtual {v1, v3}, Lcom/unisoc/phone/SubscriptionInfoHelper;->getIntent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto :goto_5

    :cond_9
    if-ne v7, v2, :cond_11

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getIccFdnAvailable()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "hide_fdn_menu_bool"

    invoke-virtual {v4, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    invoke-virtual {v3, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_b
    iget-object v0, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mSubscriptionInfoHelper:Lcom/unisoc/phone/SubscriptionInfoHelper;

    invoke-virtual {v0}, Lcom/unisoc/phone/SubscriptionInfoHelper;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "airplane_mode_on"

    invoke-static {v0, v6, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v2, v0, :cond_c

    move v0, v2

    goto :goto_4

    :cond_c
    move v0, v1

    :goto_4
    if-nez v0, :cond_d

    const-string v0, "disable_fdn_supplementary_services_in_airplane_mode_bool"

    invoke-virtual {v4, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {v8, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_d
    const-string v0, "additional_call_setting_bool"

    invoke-virtual {v4, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const v0, 0x7f140012

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    iget-object v0, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mSubscriptionInfoHelper:Lcom/unisoc/phone/SubscriptionInfoHelper;

    invoke-static {v3, v0}, Lcom/unisoc/phone/GsmUmtsCallOptions;->init(Landroid/preference/PreferenceScreen;Lcom/unisoc/phone/SubscriptionInfoHelper;)V

    :cond_e
    :goto_5
    iget-object v0, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/telephony/SubscriptionManager;->WFC_ENABLED_CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/unisoc/phone/CallFeaturesSetting;->getNotifyContentUri(Landroid/net/Uri;ZI)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mWfcEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "oma.wfc.enable"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mWFCShownObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_f
    invoke-direct {p0}, Lcom/unisoc/phone/CallFeaturesSetting;->updateVtWfc()V

    :try_start_0
    iget-object v0, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mImsMgr:Lcom/android/ims/ImsManager;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->getConfigInterface()Lcom/android/ims/ImsConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mProvisioningCallback:Landroid/telephony/ims/ProvisioningManager$Callback;

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsConfig;->addConfigCallback(Landroid/telephony/ims/ProvisioningManager$Callback;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    const-string v0, "onResume: Unable to register callback for provisioning changes."

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    :goto_6
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unisoc/phone/CallFeaturesSetting;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/preference/PreferenceActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected phone type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
