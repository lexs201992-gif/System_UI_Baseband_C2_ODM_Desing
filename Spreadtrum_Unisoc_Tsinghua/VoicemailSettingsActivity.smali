.class public Lcom/unisoc/phone/settings/VoicemailSettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "VoicemailSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/unisoc/phone/EditPhoneNumberPreference$OnDialogClosedListener;
.implements Lcom/unisoc/phone/EditPhoneNumberPreference$GetDefaultNumberListener;


# static fields
.field public static final ACTION_ADD_VOICEMAIL:Ljava/lang/String; = "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

.field public static final ACTION_CONFIGURE_VOICEMAIL:Ljava/lang/String; = "com.android.phone.CallFeaturesSetting.CONFIGURE_VOICEMAIL"

.field private static final BUTTON_VOICEMAIL_KEY:Ljava/lang/String; = "button_voicemail_key"

.field private static final BUTTON_VOICEMAIL_PROVIDER_KEY:Ljava/lang/String; = "button_voicemail_provider_key"

.field private static final BUTTON_VOICEMAIL_SETTING_KEY:Ljava/lang/String; = "button_voicemail_setting_key"

.field private static DBG:Z = false

.field private static final EVENT_FORWARDING_CHANGED:I = 0x1f5

.field private static final EVENT_FORWARDING_GET_COMPLETED:I = 0x1f6

.field private static final EVENT_VOICEMAIL_CHANGED:I = 0x1f4

.field public static final FWD_NUMBER_EXTRA:Ljava/lang/String; = "com.android.phone.ForwardingNumber"

.field public static final FWD_NUMBER_TIME_EXTRA:Ljava/lang/String; = "com.android.phone.ForwardingNumberTime"

.field public static final IGNORE_PROVIDER_EXTRA:Ljava/lang/String; = "com.android.phone.ProviderToIgnore"

.field private static final LOG_TAG:Ljava/lang/String; = "UniVoicemailSettingsActivity"

.field public static final SETUP_VOICEMAIL_EXTRA:Ljava/lang/String; = "com.android.phone.SetupVoicemail"

.field public static final SIGNOUT_EXTRA:Ljava/lang/String; = "com.android.phone.Signout"

.field public static final VM_NUMBER_EXTRA:Ljava/lang/String; = "com.android.phone.VoicemailNumber"

.field private static final VOICEMAIL_PREF_ID:I = 0x1

.field private static final VOICEMAIL_PROVIDER_CFG_ID:I = 0x2

.field private static final VOICE_MAIL_CHANGE_INTENT:Ljava/lang/String; = "android.callsettings.action.VM_SETTING_CHANGED"


# instance fields
.field private mChangingVMorFwdDueToProviderChange:Z

.field private mCurrentDialogId:I

.field private mExpectedChangeResultReasons:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mForeground:Z

.field private mForwardingChangeResults:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/os/AsyncResult;",
            ">;"
        }
    .end annotation
.end field

.field private mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

.field private mFwdChangesRequireRollback:Z

.field private final mGetOptionComplete:Landroid/os/Handler;

.field private mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

.field private mNewVMNumber:Ljava/lang/String;

.field private mOldVmNumber:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPreviousVMProviderKey:Ljava/lang/String;

.field private final mRevertOptionComplete:Landroid/os/Handler;

.field private final mSetOptionComplete:Landroid/os/Handler;

.field private mShowVoicemailPreference:Z

.field private mSubMenuVoicemailSettings:Lcom/unisoc/phone/EditPhoneNumberPreference;

.field private mSubscriptionInfoHelper:Lcom/unisoc/phone/SubscriptionInfoHelper;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mVMChangeCompletedSuccessfully:Z

.field private mVMOrFwdSetError:I

.field private mVMProviderSettingsForced:Z

.field private mVoicemailChangeResult:Landroid/os/AsyncResult;

.field private mVoicemailNotificationPreference:Landroid/preference/Preference;

.field private mVoicemailProviders:Lcom/android/phone/settings/VoicemailProviderListPreference;

.field private mVoicemailSettings:Landroid/preference/PreferenceScreen;


# direct methods
.method static bridge synthetic -$$Nest$fgetmForwardingChangeResults(Lcom/unisoc/phone/settings/VoicemailSettingsActivity;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mForwardingChangeResults:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFwdChangesRequireRollback(Lcom/unisoc/phone/settings/VoicemailSettingsActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mFwdChangesRequireRollback:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPhone(Lcom/unisoc/phone/settings/VoicemailSettingsActivity;)Lcom/android/internal/telephony/Phone;
    .locals 0

    iget-object p0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVMChangeCompletedSuccessfully(Lcom/unisoc/phone/settings/VoicemailSettingsActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mVMChangeCompletedSuccessfully:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmVoicemailChangeResult(Lcom/unisoc/phone/settings/VoicemailSettingsActivity;)Landroid/os/AsyncResult;
    .locals 0

    iget-object p0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmFwdChangesRequireRollback(Lcom/unisoc/phone/settings/VoicemailSettingsActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mFwdChangesRequireRollback:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmVMChangeCompletedSuccessfully(Lcom/unisoc/phone/settings/VoicemailSettingsActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mVMChangeCompletedSuccessfully:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmVoicemailChangeResult(Lcom/unisoc/phone/settings/VoicemailSettingsActivity;Landroid/os/AsyncResult;)V
    .locals 0

    iput-object p1, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    return-void
.end method

.method static bridge synthetic -$$Nest$mdismissDialogSafely(Lcom/unisoc/phone/settings/VoicemailSettingsActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->dismissDialogSafely(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleForwardingSettingsReadResult(Lcom/unisoc/phone/settings/VoicemailSettingsActivity;Landroid/os/AsyncResult;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->handleForwardingSettingsReadResult(Landroid/os/AsyncResult;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSetVmOrFwdMessage(Lcom/unisoc/phone/settings/VoicemailSettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->handleSetVmOrFwdMessage()V

    return-void
.end method

.method static bridge synthetic -$$Nest$misForwardingCompleted(Lcom/unisoc/phone/settings/VoicemailSettingsActivity;)Z
    .locals 0

    invoke-direct {p0}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->isForwardingCompleted()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misFwdChangeSuccess(Lcom/unisoc/phone/settings/VoicemailSettingsActivity;)Z
    .locals 0

    invoke-direct {p0}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->isFwdChangeSuccess()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misVmChangeSuccess(Lcom/unisoc/phone/settings/VoicemailSettingsActivity;)Z
    .locals 0

    invoke-direct {p0}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->isVmChangeSuccess()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$monRevertDone(Lcom/unisoc/phone/settings/VoicemailSettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->onRevertDone()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetVoicemailNumberWithCarrier(Lcom/unisoc/phone/settings/VoicemailSettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->setVoicemailNumberWithCarrier()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDBG()Z
    .locals 1

    sget-boolean v0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->DBG:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$smlog(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->log(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mForwardingChangeResults:Ljava/util/Map;

    iput-object v0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mExpectedChangeResultReasons:Ljava/util/Collection;

    iput-object v0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    iput-object v0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mPreviousVMProviderKey:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mCurrentDialogId:I

    iput-boolean v1, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mVMProviderSettingsForced:Z

    iput-boolean v1, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mChangingVMorFwdDueToProviderChange:Z

    iput-boolean v1, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mVMChangeCompletedSuccessfully:Z

    iput-boolean v1, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mFwdChangesRequireRollback:Z

    iput v1, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mVMOrFwdSetError:I

    iput-boolean v1, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mShowVoicemailPreference:Z

    iput-object v0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mSubMenuVoicemailSettings:Lcom/unisoc/phone/EditPhoneNumberPreference;

    new-instance v0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity$1;-><init>(Lcom/unisoc/phone/settings/VoicemailSettingsActivity;)V

    iput-object v0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mGetOptionComplete:Landroid/os/Handler;

    new-instance v0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity$2;

    invoke-direct {v0, p0}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity$2;-><init>(Lcom/unisoc/phone/settings/VoicemailSettingsActivity;)V

    iput-object v0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mSetOptionComplete:Landroid/os/Handler;

    new-instance v0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity$3;

    invoke-direct {v0, p0}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity$3;-><init>(Lcom/unisoc/phone/settings/VoicemailSettingsActivity;)V

    iput-object v0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mRevertOptionComplete:Landroid/os/Handler;

    return-void
.end method

.method private broadcastVoiceMailChangedIntent()V
    .locals 2

    sget-boolean v0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "broadcastVoiceMailChangedIntent, phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->log(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.callsettings.action.VM_SETTING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "com.android.phone.permission.VOICE_MAIL_CHANGE"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private dismissDialogSafely(I)V
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private getBooleanCarrierConfig(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object p0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/phone/PhoneGlobals;->getCarrierConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/phone/PhoneGlobals;->getCarrierConfig()Landroid/os/PersistableBundle;

    move-result-object p0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private handleForwardingSettingsReadResult(Landroid/os/AsyncResult;I)V
    .locals 5

    sget-boolean v0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->DBG:Z

    const-string v1, "UniVoicemailSettingsActivity"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleForwardingSettingsReadResult: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    sget-boolean v3, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->DBG:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FwdRead: ar.exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move-object v0, v2

    :cond_2
    :goto_0
    iget-object v3, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v4, v3, Ljava/lang/Throwable;

    if-eqz v4, :cond_3

    move-object v0, v3

    check-cast v0, Ljava/lang/Throwable;

    sget-boolean v3, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->DBG:Z

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FwdRead: userObj="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v3, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    if-nez v3, :cond_5

    sget-boolean p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->DBG:Z

    if-eqz p0, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Ignoring fwd reading result: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void

    :cond_5
    const/16 v4, 0x25a

    if-eqz v0, :cond_7

    sget-boolean p1, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->DBG:Z

    if-eqz p1, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error discovered for fwd read : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iput-object v2, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {p0, v4}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->dismissDialogSafely(I)V

    const/16 p1, 0x1f6

    invoke-direct {p0, p1}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->showDialogIfForeground(I)V

    return-void

    :cond_7
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [Lcom/android/internal/telephony/CallForwardInfo;

    sget-object v0, Lcom/android/phone/settings/VoicemailProviderSettings;->FORWARDING_SETTINGS_REASONS:[I

    aget v0, v0, p2

    invoke-static {p1, v0}, Lcom/android/phone/settings/CallForwardInfoUtil;->getCallForwardInfo([Lcom/android/internal/telephony/CallForwardInfo;I)Lcom/android/internal/telephony/CallForwardInfo;

    move-result-object p1

    aput-object p1, v3, p2

    const/4 p1, 0x0

    move p2, p1

    :goto_1
    iget-object v0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    array-length v2, v0

    if-ge p2, v2, :cond_9

    aget-object v0, v0, p2

    if-nez v0, :cond_8

    goto :goto_2

    :cond_8
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_9
    const/4 p1, 0x1

    :goto_2
    if-eqz p1, :cond_c

    sget-boolean p1, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->DBG:Z

    if-eqz p1, :cond_a

    const-string p1, "Done receiving fwd info"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    invoke-direct {p0, v4}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->dismissDialogSafely(I)V

    iget-object p1, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mPreviousVMProviderKey:Ljava/lang/String;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcom/android/phone/settings/VoicemailProviderSettings;

    iget-object v1, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mOldVmNumber:Ljava/lang/String;

    iget-object v2, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v0, v1, v2}, Lcom/android/phone/settings/VoicemailProviderSettings;-><init>(Ljava/lang/String;[Lcom/android/internal/telephony/CallForwardInfo;)V

    invoke-static {p1, p2, v0}, Lcom/android/phone/settings/VoicemailProviderSettingsUtil;->save(Landroid/content/Context;Ljava/lang/String;Lcom/android/phone/settings/VoicemailProviderSettings;)V

    :cond_b
    invoke-direct {p0}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->saveVoiceMailAndForwardingNumberStage2()V

    :cond_c
    return-void
.end method

.method private handleSetVmOrFwdMessage()V
    .locals 1

    sget-boolean v0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "handleSetVMMessage: set VM request complete"

    invoke-static {v0}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->log(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->isFwdChangeSuccess()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x1f5

    invoke-direct {p0, v0}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->handleVmOrFwdSetError(I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->isVmChangeSuccess()Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x1f4

    invoke-direct {p0, v0}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->handleVmOrFwdSetError(I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x258

    invoke-direct {p0, v0}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->handleVmAndFwdSetSuccess(I)V

    :goto_0
    return-void
.end method

.method private handleVmAndFwdSetSuccess(I)V
    .locals 2

    sget-boolean v0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleVmAndFwdSetSuccess: key is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mVoicemailProviders:Lcom/android/phone/settings/VoicemailProviderListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mVoicemailProviders:Lcom/android/phone/settings/VoicemailProviderListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mPreviousVMProviderKey:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mChangingVMorFwdDueToProviderChange:Z

    invoke-direct {p0, p1}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->showDialogIfForeground(I)V

    invoke-direct {p0}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->updateVoiceNumberField()V

    invoke-direct {p0}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->broadcastVoiceMailChangedIntent()V

    return-void
.end method

.method private handleVmOrFwdSetError(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mChangingVMorFwdDueToProviderChange:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mVMOrFwdSetError:I

    iput-boolean v1, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mChangingVMorFwdDueToProviderChange:Z

    invoke-direct {p0}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->switchToPreviousVoicemailProvider()V

    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mChangingVMorFwdDueToProviderChange:Z

    invoke-direct {p0, p1}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->showDialogIfForeground(I)V

    invoke-direct {p0}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->updateVoiceNumberField()V

    return-void
.end method

.method private isForwardingCompleted()Z
    .locals 4

    iget-object v0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mForwardingChangeResults:Ljava/util/Map;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mExpectedChangeResultReasons:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mForwardingChangeResults:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_2
    return v1
.end method

.method private isFwdChangeSuccess()Z
    .locals 2

    iget-object p0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mForwardingChangeResults:Ljava/util/Map;

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/AsyncResult;

    iget-object v1, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const-string p0, ""

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to change forwarding setting. Reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UniVoicemailSettingsActivity"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_3
    return v0
.end method

.method private isVmChangeSuccess()Z
    .locals 2

    iget-object p0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    iget-object p0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to change voicemail. Reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UniVoicemailSettingsActivity"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "UniVoicemailSettingsActivity"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private maybeHidePublicSettings()V
    .locals 3

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.telephony.extra.HIDE_PUBLIC_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "maybeHidePublicSettings: settings hidden by EXTRA_HIDE_PUBLIC_SETTINGS"

    invoke-static {v0}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->log(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object p0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mVoicemailNotificationPreference:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    return-void
.end method

.method private onRevertDone()V
    .locals 2

    sget-boolean v0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRevertDone: Changing provider key back to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->updateVMPreferenceWidgets(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->updateVoiceNumberField()V

    iget v0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mVMOrFwdSetError:I

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->showDialogIfForeground(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mVMOrFwdSetError:I

    :cond_1
    return-void
.end method

.method private resetForwardingChangeState()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mForwardingChangeResults:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mExpectedChangeResultReasons:Ljava/util/Collection;

    return-void
.end method

.method private saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/settings/VoicemailProviderSettings;)V
    .locals 4

    sget-boolean v0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveVoiceMailAndForwardingNumber: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/phone/settings/VoicemailProviderSettings;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->log(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p2}, Lcom/android/phone/settings/VoicemailProviderSettings;->getVoicemailNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mNewVMNumber:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    iput-object v0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mNewVMNumber:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/phone/settings/VoicemailProviderSettings;->getForwardingSettings()[Lcom/android/internal/telephony/CallForwardInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    sget-boolean v0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "Ignoring forwarding setting since this is CDMA phone"

    invoke-static {v0}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->log(Ljava/lang/String;)V

    :cond_2
    sget-object v0, Lcom/android/phone/settings/VoicemailProviderSettings;->NO_FORWARDING:[Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    :cond_3
    iget-object v0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mNewVMNumber:Ljava/lang/String;

    iget-object v1, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mOldVmNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mOldVmNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mNewVMNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    sget-object v1, Lcom/android/phone/settings/VoicemailProviderSettings;->NO_FORWARDING:[Lcom/android/internal/telephony/CallForwardInfo;

    if-ne v0, v1, :cond_5

    const/16 p1, 0x190

    invoke-direct {p0, p1}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->showDialogIfForeground(I)V

    return-void

    :cond_5
    invoke-static {p0, p1, p2}, Lcom/android/phone/settings/VoicemailProviderSettingsUtil;->save(Landroid/content/Context;Ljava/lang/String;Lcom/android/phone/settings/VoicemailProviderSettings;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mVMChangeCompletedSuccessfully:Z

    iput-boolean p2, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mFwdChangesRequireRollback:Z

    iput p2, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mVMOrFwdSetError:I

    iget-object v0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    sget-object v1, Lcom/android/phone/settings/VoicemailProviderSettings;->NO_FORWARDING:[Lcom/android/internal/telephony/CallForwardInfo;

    if-eq v0, v1, :cond_9

    iget-object v0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    sget-boolean p1, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->DBG:Z

    if-eqz p1, :cond_7

    const-string p1, "Reading current forwarding settings."

    invoke-static {p1}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->log(Ljava/lang/String;)V

    :cond_7
    sget-object p1, Lcom/android/phone/settings/VoicemailProviderSettings;->FORWARDING_SETTINGS_REASONS:[I

    array-length p1, p1

    new-array p1, p1, [Lcom/android/internal/telephony/CallForwardInfo;

    iput-object p1, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    move p1, p2

    :goto_0
    iget-object v0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    array-length v0, v0

    if-ge p1, v0, :cond_8

    iget-object v0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v1, Lcom/android/phone/settings/VoicemailProviderSettings;->FORWARDING_SETTINGS_REASONS:[I

    aget v1, v1, p1

    iget-object v2, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mGetOptionComplete:Landroid/os/Handler;

    const/16 v3, 0x1f6

    invoke-virtual {v2, v3, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(IILandroid/os/Message;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_8
    const/16 p1, 0x25a

    invoke-direct {p0, p1}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->showDialogIfForeground(I)V

    goto :goto_2

    :cond_9
    :goto_1
    sget-boolean p1, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->DBG:Z

    if-eqz p1, :cond_a

    const-string p1, "Set voicemail number. No changes to forwarding number."

    invoke-static {p1}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->log(Ljava/lang/String;)V

    :cond_a
    invoke-direct {p0}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->setVoicemailNumberWithCarrier()V

    :goto_2
    return-void
.end method

.method private saveVoiceMailAndForwardingNumberStage2()V
    .locals 7

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mForwardingChangeResults:Ljava/util/Map;

    iput-object v0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    invoke-direct {p0}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->resetForwardingChangeState()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    iget v4, v2, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-static {v3, v4}, Lcom/android/phone/settings/CallForwardInfoUtil;->infoForReason([Lcom/android/internal/telephony/CallForwardInfo;I)Lcom/android/internal/telephony/CallForwardInfo;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/phone/settings/CallForwardInfoUtil;->isUpdateRequired(Lcom/android/internal/telephony/CallForwardInfo;Lcom/android/internal/telephony/CallForwardInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->DBG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting fwd #: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallForwardInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v3, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mExpectedChangeResultReasons:Ljava/util/Collection;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mSetOptionComplete:Landroid/os/Handler;

    const/16 v5, 0x1f5

    iget v6, v2, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-virtual {v4, v5, v6, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/android/phone/settings/CallForwardInfoUtil;->setCallForwardingOption(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CallForwardInfo;Landroid/os/Message;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/16 v0, 0x259

    invoke-direct {p0, v0}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->showDialogIfForeground(I)V

    return-void
.end method

.method private setVoicemailNumberWithCarrier()V
    .locals 4

    sget-boolean v0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "save voicemail #: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mNewVMNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->log(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    iget-object v0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mNewVMNumber:Ljava/lang/String;

    iget-object p0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mSetOptionComplete:Landroid/os/Handler;

    const/16 v3, 0x1f4

    invoke-static {p0, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/internal/telephony/Phone;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method private showDialogIfForeground(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mForeground:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->showDialog(I)V

    :cond_0
    return-void
.end method

.method private simulatePreferenceClick(Landroid/preference/Preference;)V
    .locals 8

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    move v5, v1

    :goto_0
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-ge v5, v1, :cond_1

    invoke-interface {v0, v5}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v0, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v6

    invoke-virtual/range {v2 .. v7}, Landroid/preference/PreferenceScreen;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private switchToPreviousVoicemailProvider()V
    .locals 8

    sget-boolean v0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchToPreviousVoicemailProvider "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mPreviousVMProviderKey:Ljava/lang/String;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mVMChangeCompletedSuccessfully:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mFwdChangesRequireRollback:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    sget-boolean v0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->DBG:Z

    if-eqz v0, :cond_3

    const-string v0, "No need to revert"

    invoke-static {v0}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->log(Ljava/lang/String;)V

    :cond_3
    invoke-direct {p0}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->onRevertDone()V

    goto/16 :goto_2

    :cond_4
    :goto_0
    const/16 v0, 0x25b

    invoke-direct {p0, v0}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->showDialogIfForeground(I)V

    iget-object v0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/phone/settings/VoicemailProviderSettingsUtil;->load(Landroid/content/Context;Ljava/lang/String;)Lcom/android/phone/settings/VoicemailProviderSettings;

    move-result-object v0

    const-string v1, "UniVoicemailSettingsActivity"

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VoicemailProviderSettings for the key \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\" is null but should be loaded."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    iget-boolean v2, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mVMChangeCompletedSuccessfully:Z

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Lcom/android/phone/settings/VoicemailProviderSettings;->getVoicemailNumber()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mNewVMNumber:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VM change is already completed successfully.Have to revert VM back to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mNewVMNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " again."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mNewVMNumber:Ljava/lang/String;

    iget-object v5, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mRevertOptionComplete:Landroid/os/Handler;

    const/16 v6, 0x1f4

    invoke-static {v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/telephony/Phone;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_6
    iget-boolean v2, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mFwdChangesRequireRollback:Z

    if-eqz v2, :cond_9

    const-string v2, "Requested to rollback forwarding changes."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/phone/settings/VoicemailProviderSettings;->getForwardingSettings()[Lcom/android/internal/telephony/CallForwardInfo;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mForwardingChangeResults:Ljava/util/Map;

    invoke-direct {p0}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->resetForwardingChangeState()V

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    array-length v4, v0

    if-ge v3, v4, :cond_9

    aget-object v4, v0, v3

    sget-boolean v5, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->DBG:Z

    if-eqz v5, :cond_7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Reverting fwd #: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallForwardInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->log(Ljava/lang/String;)V

    :cond_7
    iget v5, v4, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/AsyncResult;

    if-eqz v5, :cond_8

    iget-object v5, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mExpectedChangeResultReasons:Ljava/util/Collection;

    iget v6, v4, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v6, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mRevertOptionComplete:Landroid/os/Handler;

    const/16 v7, 0x1f5

    invoke-virtual {v6, v7, v3, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-static {v5, v4, v6}, Lcom/android/phone/settings/CallForwardInfoUtil;->setCallForwardingOption(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CallForwardInfo;Landroid/os/Message;)V

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_9
    :goto_2
    return-void
.end method

.method private updateVMPreferenceWidgets(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mVoicemailProviders:Lcom/android/phone/settings/VoicemailProviderListPreference;

    invoke-virtual {v0, p1}, Lcom/android/phone/settings/VoicemailProviderListPreference;->getVoicemailProvider(Ljava/lang/String;)Lcom/android/phone/settings/VoicemailProviderListPreference$VoicemailProvider;

    move-result-object v0

    const-string v1, "updateVMPreferenceWidget: key: "

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " -> null."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->log(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mVoicemailProviders:Lcom/android/phone/settings/VoicemailProviderListPreference;

    const v0, 0x7f1105f1

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object p0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    sget-boolean v2, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->DBG:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " -> "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/phone/settings/VoicemailProviderListPreference$VoicemailProvider;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->log(Ljava/lang/String;)V

    :cond_2
    iget-object p1, v0, Lcom/android/phone/settings/VoicemailProviderListPreference$VoicemailProvider;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mVoicemailProviders:Lcom/android/phone/settings/VoicemailProviderListPreference;

    invoke-virtual {v1, p1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object p0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    iget-object p1, v0, Lcom/android/phone/settings/VoicemailProviderListPreference$VoicemailProvider;->intent:Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method private updateVoiceNumberField()V
    .locals 3

    iget-object v0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mSubMenuVoicemailSettings:Lcom/unisoc/phone/EditPhoneNumberPreference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "updateVoiceNumberField()"

    invoke-static {v0}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->log(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mOldVmNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mSubMenuVoicemailSettings:Lcom/unisoc/phone/EditPhoneNumberPreference;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/unisoc/phone/EditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/unisoc/phone/EditPhoneNumberPreference;

    iget-object v0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mSubMenuVoicemailSettings:Lcom/unisoc/phone/EditPhoneNumberPreference;

    const v1, 0x7f110696

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mSubMenuVoicemailSettings:Lcom/unisoc/phone/EditPhoneNumberPreference;

    iget-object v1, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mOldVmNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unisoc/phone/EditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/unisoc/phone/EditPhoneNumberPreference;

    iget-object v0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mSubMenuVoicemailSettings:Lcom/unisoc/phone/EditPhoneNumberPreference;

    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v1

    iget-object p0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mOldVmNumber:Ljava/lang/String;

    sget-object v2, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {v1, p0, v2}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 10

    sget-boolean v0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult: requestCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", resultCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->log(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p1, v0, :cond_10

    sget-boolean p1, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->DBG:Z

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mVMProviderSettingsForced: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mVMProviderSettingsForced:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->log(Ljava/lang/String;)V

    :cond_1
    iget-boolean p1, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mVMProviderSettingsForced:Z

    iput-boolean v3, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mVMProviderSettingsForced:Z

    if-eq p2, v2, :cond_3

    sget-boolean p2, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->DBG:Z

    if-eqz p2, :cond_2

    const-string p2, "onActivityResult: vm provider cfg result not OK."

    invoke-static {p2}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->log(Ljava/lang/String;)V

    :cond_2
    :goto_0
    move v3, v4

    goto/16 :goto_2

    :cond_3
    if-nez p3, :cond_4

    sget-boolean p2, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->DBG:Z

    if-eqz p2, :cond_2

    const-string p2, "onActivityResult: vm provider cfg result has no data"

    invoke-static {p2}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string p2, "com.android.phone.Signout"

    invoke-virtual {p3, p2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_9

    sget-boolean p2, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->DBG:Z

    if-eqz p2, :cond_5

    const-string p2, "Provider requested signout"

    invoke-static {p2}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->log(Ljava/lang/String;)V

    :cond_5
    if-eqz p1, :cond_7

    sget-boolean p1, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->DBG:Z

    if-eqz p1, :cond_6

    const-string p1, "Going back to previous provider on signout"

    invoke-static {p1}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->log(Ljava/lang/String;)V

    :cond_6
    invoke-direct {p0}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->switchToPreviousVoicemailProvider()V

    goto :goto_1

    :cond_7
    iget-object p1, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mVoicemailProviders:Lcom/android/phone/settings/VoicemailProviderListPreference;

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    sget-boolean p2, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->DBG:Z

    if-eqz p2, :cond_8

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Relaunching activity and ignoring "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->log(Ljava/lang/String;)V

    :cond_8
    new-instance p2, Landroid/content/Intent;

    const-string p3, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p3, "com.android.phone.ProviderToIgnore"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x4000000

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, p2}, Landroid/preference/PreferenceActivity;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void

    :cond_9
    const-string p2, "com.android.phone.VoicemailNumber"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_b

    :cond_a
    sget-boolean p2, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->DBG:Z

    if-eqz p2, :cond_2

    const-string p2, "onActivityResult: vm provider cfg result has no vmnum"

    invoke-static {p2}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_b
    :goto_2
    if-eqz v3, :cond_e

    sget-boolean p2, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->DBG:Z

    if-eqz p2, :cond_c

    const-string p2, "Failure in return from voicemail provider."

    invoke-static {p2}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->log(Ljava/lang/String;)V

    :cond_c
    if-eqz p1, :cond_d

    invoke-direct {p0}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->switchToPreviousVoicemailProvider()V

    :cond_d
    return-void

    :cond_e
    iput-boolean p1, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mChangingVMorFwdDueToProviderChange:Z

    const-string p1, "com.android.phone.ForwardingNumber"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.android.phone.ForwardingNumberTime"

    const/16 v0, 0x14

    invoke-virtual {p3, p2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    sget-boolean p3, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->DBG:Z

    if-eqz p3, :cond_f

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onActivityResult: cfg result has forwarding number "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->log(Ljava/lang/String;)V

    :cond_f
    iget-object p3, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mVoicemailProviders:Lcom/android/phone/settings/VoicemailProviderListPreference;

    invoke-virtual {p3}, Landroid/preference/ListPreference;->getKey()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Lcom/android/phone/settings/VoicemailProviderSettings;

    invoke-direct {v0, v1, p1, p2}, Lcom/android/phone/settings/VoicemailProviderSettings;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, p3, v0}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/settings/VoicemailProviderSettings;)V

    return-void

    :cond_10
    if-ne p1, v4, :cond_19

    if-eq p2, v2, :cond_12

    sget-boolean p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->DBG:Z

    if-eqz p0, :cond_11

    const-string p0, "onActivityResult: contact picker result not OK."

    invoke-static {p0}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->log(Ljava/lang/String;)V

    :cond_11
    return-void

    :cond_12
    :try_start_0
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/String;

    const-string p2, "data1"

    aput-object p2, v6, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-nez p1, :cond_13

    goto :goto_4

    :cond_13
    iget-object p0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mSubMenuVoicemailSettings:Lcom/unisoc/phone/EditPhoneNumberPreference;

    if-eqz p0, :cond_14

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/unisoc/phone/EditPhoneNumberPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_3

    :cond_14
    const-string p0, "UniVoicemailSettingsActivity"

    const-string p1, "VoicemailSettingsActivity destroyed while setting contacts."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-void

    :cond_15
    :goto_4
    :try_start_1
    sget-boolean p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->DBG:Z

    if-eqz p0, :cond_16

    const-string p0, "onActivityResult: bad contact data, no results found."

    invoke-static {p0}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_16
    if-eqz v1, :cond_17

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_17
    return-void

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_18

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_18
    throw p0

    :cond_19
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    sget-boolean v0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick: button clicked is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->log(Ljava/lang/String;)V

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    const/4 p1, -0x2

    const/16 v0, 0x1f6

    if-eq p2, p1, :cond_3

    const/4 p1, -0x1

    if-eq p2, p1, :cond_1

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mCurrentDialogId:I

    if-ne p1, v0, :cond_2

    invoke-direct {p0}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->setVoicemailNumberWithCarrier()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->finish()V

    :goto_0
    return-void

    :cond_3
    iget p1, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mCurrentDialogId:I

    if-ne p1, v0, :cond_4

    invoke-direct {p0}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->switchToPreviousVoicemailProvider()V

    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    :goto_2
    const-string p2, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->finish()V

    :cond_6
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    sget-boolean v0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->DBG:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/internal/telephony/PhoneLogController;->SUPPLEMENTARY_SERVICE_DEBUG:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->DBG:Z

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v3, 0x80000

    invoke-virtual {v0, v3}, Landroid/view/Window;->addSystemFlags(I)V

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v3, Landroid/os/UserManager;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isPrimaryUser()Z

    move-result v0

    if-nez v0, :cond_2

    const p1, 0x7f11068c

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->finish()V

    return-void

    :cond_2
    if-nez p1, :cond_3

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mShowVoicemailPreference:Z

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.telephony.extra.PHONE_ACCOUNT_HANDLE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/telecom/PhoneAccountHandle;

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.phone.settings.SubscriptionInfoHelper.SubscriptionId"

    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->getSubIdForPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_4
    new-instance p1, Lcom/unisoc/phone/SubscriptionInfoHelper;

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/unisoc/phone/SubscriptionInfoHelper;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    iput-object p1, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mSubscriptionInfoHelper:Lcom/unisoc/phone/SubscriptionInfoHelper;

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f11069b

    invoke-virtual {p1, v0, v1, v2}, Lcom/unisoc/phone/SubscriptionInfoHelper;->setActionBarTitle(Landroid/app/ActionBar;Landroid/content/res/Resources;I)V

    iget-object p1, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mSubscriptionInfoHelper:Lcom/unisoc/phone/SubscriptionInfoHelper;

    invoke-virtual {p1}, Lcom/unisoc/phone/SubscriptionInfoHelper;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p1

    iput-object p1, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez p1, :cond_5

    const-string p1, "UniVoicemailSettingsActivity"

    const-string v0, "Phone is null, finish it! "

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->finish()V

    return-void

    :cond_5
    const p1, 0x7f14001e

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    const p1, 0x7f110694

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mVoicemailNotificationPreference:Landroid/preference/Preference;

    iget-object p1, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mSubMenuVoicemailSettings:Lcom/unisoc/phone/EditPhoneNumberPreference;

    if-nez p1, :cond_6

    const-string p1, "button_voicemail_key"

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/unisoc/phone/EditPhoneNumberPreference;

    iput-object p1, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mSubMenuVoicemailSettings:Lcom/unisoc/phone/EditPhoneNumberPreference;

    :cond_6
    const-string p1, "button_voicemail_provider_key"

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/phone/settings/VoicemailProviderListPreference;

    iput-object p1, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mVoicemailProviders:Lcom/android/phone/settings/VoicemailProviderListPreference;

    iget-object v0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/phone/settings/VoicemailProviderListPreference;->init(Lcom/android/internal/telephony/Phone;Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mVoicemailProviders:Lcom/android/phone/settings/VoicemailProviderListPreference;

    invoke-virtual {p1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object p1, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mVoicemailProviders:Lcom/android/phone/settings/VoicemailProviderListPreference;

    invoke-virtual {p1}, Lcom/android/phone/settings/VoicemailProviderListPreference;->getValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mPreviousVMProviderKey:Ljava/lang/String;

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.CHANNEL_NOTIFICATION_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.provider.extra.CHANNEL_ID"

    const-string v1, "voiceMail"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.provider.extra.APP_PACKAGE"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mVoicemailNotificationPreference:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionManager;

    iput-object p1, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Lcom/unisoc/phone/ActivityContainer;->getInstance()Lcom/unisoc/phone/ActivityContainer;

    move-result-object p1

    iget-object v0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-virtual {p1, p0, v0}, Lcom/unisoc/phone/ActivityContainer;->addActivity(Landroid/app/Activity;I)V

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 0

    invoke-static {p0, p1}, Lcom/unisoc/phone/settings/VoicemailDialogUtil;->getDialog(Lcom/unisoc/phone/settings/VoicemailSettingsActivity;I)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    invoke-static {}, Lcom/unisoc/phone/ActivityContainer;->getInstance()Lcom/unisoc/phone/ActivityContainer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/unisoc/phone/ActivityContainer;->removeActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public onDialogClosed(Lcom/unisoc/phone/EditPhoneNumberPreference;I)V
    .locals 2

    sget-boolean v0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDialogClosed: Button clicked is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->log(Ljava/lang/String;)V

    :cond_0
    const/4 v0, -0x2

    if-eq p2, v0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mSubMenuVoicemailSettings:Lcom/unisoc/phone/EditPhoneNumberPreference;

    if-ne p1, p2, :cond_2

    new-instance p1, Lcom/android/phone/settings/VoicemailProviderSettings;

    iget-object p2, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mSubMenuVoicemailSettings:Lcom/unisoc/phone/EditPhoneNumberPreference;

    invoke-virtual {p2}, Lcom/unisoc/phone/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/android/phone/settings/VoicemailProviderSettings;->NO_FORWARDING:[Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {p1, p2, v0}, Lcom/android/phone/settings/VoicemailProviderSettings;-><init>(Ljava/lang/String;[Lcom/android/internal/telephony/CallForwardInfo;)V

    iget-object p2, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mVoicemailProviders:Lcom/android/phone/settings/VoicemailProviderListPreference;

    invoke-virtual {p2}, Landroid/preference/ListPreference;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/settings/VoicemailProviderSettings;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onGetDefaultNumber(Lcom/unisoc/phone/EditPhoneNumberPreference;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mSubMenuVoicemailSettings:Lcom/unisoc/phone/EditPhoneNumberPreference;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    sget-boolean p1, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->DBG:Z

    if-eqz p1, :cond_0

    const-string p1, "updating default for voicemail dialog"

    invoke-static {p1}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->log(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->updateVoiceNumberField()V

    return-object v1

    :cond_1
    iget-object p1, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v1

    :cond_2
    sget-boolean v0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->DBG:Z

    if-eqz v0, :cond_3

    const-string v0, "updating default for call forwarding dialogs"

    invoke-static {v0}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->log(Ljava/lang/String;)V

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f110690

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
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

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mForeground:Z

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    sget-boolean v0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->DBG:Z

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

    invoke-static {v0}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mVoicemailProviders:Lcom/android/phone/settings/VoicemailProviderListPreference;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_5

    check-cast p2, Ljava/lang/String;

    iget-object p1, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-boolean p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->DBG:Z

    if-eqz p0, :cond_1

    const-string p0, "No change is made to the VM provider setting."

    invoke-static {p0}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->log(Ljava/lang/String;)V

    :cond_1
    return v1

    :cond_2
    invoke-direct {p0, p2}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->updateVMPreferenceWidgets(Ljava/lang/String;)V

    invoke-static {p0, p2}, Lcom/android/phone/settings/VoicemailProviderSettingsUtil;->load(Landroid/content/Context;Ljava/lang/String;)Lcom/android/phone/settings/VoicemailProviderSettings;

    move-result-object p1

    if-nez p1, :cond_3

    const-string p1, "UniVoicemailSettingsActivity"

    const-string p2, "Saved preferences not found - invoking config"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mVMProviderSettingsForced:Z

    iget-object p1, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, p1}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->simulatePreferenceClick(Landroid/preference/Preference;)V

    goto :goto_0

    :cond_3
    sget-boolean v0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->DBG:Z

    if-eqz v0, :cond_4

    const-string v0, "Saved preferences found - switching to them"

    invoke-static {v0}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->log(Ljava/lang/String;)V

    :cond_4
    iput-boolean v1, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mChangingVMorFwdDueToProviderChange:Z

    invoke-direct {p0, p2, p1}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/settings/VoicemailProviderSettings;)V

    :cond_5
    :goto_0
    return v1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3

    iget-object p1, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mSubMenuVoicemailSettings:Lcom/unisoc/phone/EditPhoneNumberPreference;

    const/4 v0, 0x1

    if-ne p2, p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    sget-boolean p1, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->DBG:Z

    if-eqz p1, :cond_1

    const-string p1, "onPreferenceTreeClick: Voicemail Settings Preference is clicked."

    invoke-static {p1}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->log(Ljava/lang/String;)V

    :cond_1
    move-object p1, p2

    check-cast p1, Landroid/preference/PreferenceScreen;

    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/Dialog;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_2
    const-string p1, "button_voicemail_key"

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/unisoc/phone/EditPhoneNumberPreference;

    iput-object p1, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mSubMenuVoicemailSettings:Lcom/unisoc/phone/EditPhoneNumberPreference;

    invoke-virtual {p1, p0, v0, p0}, Lcom/unisoc/phone/EditPhoneNumberPreference;->setParentActivity(Landroid/app/Activity;ILcom/unisoc/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    iget-object p1, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mSubMenuVoicemailSettings:Lcom/unisoc/phone/EditPhoneNumberPreference;

    invoke-virtual {p1, p0}, Lcom/unisoc/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/unisoc/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    iget-object p1, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mSubMenuVoicemailSettings:Lcom/unisoc/phone/EditPhoneNumberPreference;

    const v2, 0x7f11069a

    invoke-virtual {p1, v2}, Landroid/preference/EditTextPreference;->setDialogTitle(I)V

    invoke-direct {p0}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->updateVoiceNumberField()V

    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_4

    sget-boolean p1, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->DBG:Z

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invoking cfg intent "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->log(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2}, Landroid/preference/PreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return v0

    :cond_4
    sget-boolean p1, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->DBG:Z

    if-eqz p1, :cond_5

    const-string p1, "onPreferenceTreeClick(). No intent; use default behavior in xml."

    invoke-static {p1}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->log(Ljava/lang/String;)V

    :cond_5
    const-string p1, ""

    iput-object p1, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mPreviousVMProviderKey:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mVMProviderSettingsForced:Z

    :cond_6
    return v1
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    iput p1, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mCurrentDialogId:I

    return-void
.end method

.method protected onResume()V
    .locals 3

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    sget-boolean v0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->DBG:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/internal/telephony/PhoneLogController;->SUPPLEMENTARY_SERVICE_DEBUG:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->DBG:Z

    iput-boolean v1, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mForeground:Z

    iget-object v0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mSubMenuVoicemailSettings:Lcom/unisoc/phone/EditPhoneNumberPreference;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p0, v1, p0}, Lcom/unisoc/phone/EditPhoneNumberPreference;->setParentActivity(Landroid/app/Activity;ILcom/unisoc/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    iget-object v0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mSubMenuVoicemailSettings:Lcom/unisoc/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0}, Lcom/unisoc/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/unisoc/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    iget-object v0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mSubMenuVoicemailSettings:Lcom/unisoc/phone/EditPhoneNumberPreference;

    const v1, 0x7f11069a

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setDialogTitle(I)V

    iget-object v0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1, v0}, Landroid/telephony/SubscriptionManager;->isSubscriptionEnabled(I)Z

    move-result v0

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    if-eqz v0, :cond_3

    const-string v0, "editable_voicemail_number_setting_bool"

    invoke-direct {p0, v0}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mSubMenuVoicemailSettings:Lcom/unisoc/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, v2}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    :cond_4
    const-string v0, "button_voicemail_setting_key"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_5
    invoke-direct {p0}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->maybeHidePublicSettings()V

    iget-object v0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mVoicemailProviders:Lcom/android/phone/settings/VoicemailProviderListPreference;

    invoke-virtual {v0}, Lcom/android/phone/settings/VoicemailProviderListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->updateVMPreferenceWidgets(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mShowVoicemailPreference:Z

    if-eqz v0, :cond_9

    sget-boolean v0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->DBG:Z

    if-eqz v0, :cond_6

    const-string v0, "ACTION_ADD_VOICEMAIL Intent is thrown"

    invoke-static {v0}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->log(Ljava/lang/String;)V

    :cond_6
    iget-object v0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mVoicemailProviders:Lcom/android/phone/settings/VoicemailProviderListPreference;

    invoke-virtual {v0}, Lcom/android/phone/settings/VoicemailProviderListPreference;->hasMoreThanOneVoicemailProvider()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-boolean v0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->DBG:Z

    if-eqz v0, :cond_7

    const-string v0, "Voicemail data has more than one provider."

    invoke-static {v0}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->log(Ljava/lang/String;)V

    :cond_7
    iget-object v0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mVoicemailProviders:Lcom/android/phone/settings/VoicemailProviderListPreference;

    invoke-direct {p0, v0}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->simulatePreferenceClick(Landroid/preference/Preference;)V

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mVoicemailProviders:Lcom/android/phone/settings/VoicemailProviderListPreference;

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mVoicemailProviders:Lcom/android/phone/settings/VoicemailProviderListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :goto_3
    iput-boolean v2, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mShowVoicemailPreference:Z

    :cond_9
    invoke-direct {p0}, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->updateVoiceNumberField()V

    iput-boolean v2, p0, Lcom/unisoc/phone/settings/VoicemailSettingsActivity;->mVMProviderSettingsForced:Z

    return-void
.end method
