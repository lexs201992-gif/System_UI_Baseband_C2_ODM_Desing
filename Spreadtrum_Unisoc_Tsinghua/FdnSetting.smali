.class public Lcom/unisoc/phone/settings/fdn/FdnSetting;
.super Landroid/preference/PreferenceActivity;
.source "FdnSetting.java"

# interfaces
.implements Lcom/unisoc/phone/settings/fdn/EditPinPreference$OnPinEnteredListener;
.implements Lcom/unisoc/phone/settings/fdn/Pin2LockedDialogFragment$Listener;


# static fields
.field private static final BUTTON_CHANGE_PIN2_KEY:Ljava/lang/String; = "button_change_pin2_key"

.field private static final BUTTON_FDN_ENABLE_KEY:Ljava/lang/String; = "button_fdn_enable_key"

.field private static final DBG:Z = true

.field private static final DIALOG_MESSAGE_KEY:Ljava/lang/String; = "dialog_message_key"

.field private static final DIALOG_PIN_ENTRY_KEY:Ljava/lang/String; = "dialog_pin_entry_key"

.field private static final EVENT_PIN2_CHANGE_COMPLETE:I = 0xc8

.field private static final EVENT_PIN2_CHANGE_COMPLETE_TOGGLE_FDN:I = 0x12c

.field private static final EVENT_PIN2_ENTRY_COMPLETE:I = 0x64

.field private static final FDN_DIALOG_MESSAGE_KEY:Ljava/lang/String; = "fdn_dialog_message_key"

.field private static final FDN_DIALOG_PIN_ENTRY_KEY:Ljava/lang/String; = "fdn_dialog_pin_entry_key"

.field private static final FDN_LIST_PREF_SCREEN_KEY:Ljava/lang/String; = "fdn_list_pref_screen_key"

.field private static final FDN_STATUS_CHANGED:Ljava/lang/String; = "android.callsettings.action.FDN_STATUS_CHANGED"

.field private static final INTENT_EXTRA_FDN_STATUS:Ljava/lang/String; = "fdn_status"

.field private static final INTENT_EXTRA_SUB_ID:Ljava/lang/String; = "subid"

.field private static final LOG_TAG:Ljava/lang/String; = "PhoneGlobals"

.field private static final MAX_PIN_LENGTH:I = 0x8

.field private static final MIN_PIN_LENGTH:I = 0x4

.field private static final NEW_PIN_KEY:Ljava/lang/String; = "new_pin_key"

.field private static final OLD_PIN_KEY:Ljava/lang/String; = "old_pin_key"

.field private static final PIN_CHANGE_NEW:I = 0x1

.field private static final PIN_CHANGE_NEW_PIN_FOR_PUK:I = 0x4

.field private static final PIN_CHANGE_OLD:I = 0x0

.field private static final PIN_CHANGE_PUK:I = 0x3

.field private static final PIN_CHANGE_REENTER:I = 0x2

.field private static final PIN_CHANGE_REENTER_PIN_FOR_PUK:I = 0x5

.field private static final PIN_CHANGE_STATE_KEY:Ljava/lang/String; = "pin_change_state_key"

.field private static final PRELOAD_FDN_LIST_PREF_KEY:Ljava/lang/String; = "preload_fdn_list_pref_key"

.field private static final PUK_KEY:Ljava/lang/String; = "puk_key"

.field private static final SKIP_OLD_PIN_KEY:Ljava/lang/String; = "skip_old_pin_key"


# instance fields
.field private mButtonChangePin2:Lcom/unisoc/phone/settings/fdn/EditPinPreference;

.field private mButtonEnableFDN:Lcom/unisoc/phone/settings/fdn/EditPinPreference;

.field private mButtonPreloadFdnList:Landroid/preference/PreferenceScreen;

.field private final mFDNHandler:Landroid/os/Handler;

.field private mFdnListPref:Landroid/preference/PreferenceScreen;

.field private mIsPuk2Locked:Z

.field private mNewPin:Ljava/lang/String;

.field private mOldPin:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPinChangeState:I

.field private mPuk2:Ljava/lang/String;

.field private mRemainPin2Times:I

.field private mRemainPuk2Times:I

.field private mSubscriptionInfoHelper:Lcom/unisoc/phone/SubscriptionInfoHelper;


# direct methods
.method static bridge synthetic -$$Nest$fgetmButtonChangePin2(Lcom/unisoc/phone/settings/fdn/FdnSetting;)Lcom/unisoc/phone/settings/fdn/EditPinPreference;
    .locals 0

    iget-object p0, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mButtonChangePin2:Lcom/unisoc/phone/settings/fdn/EditPinPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmButtonEnableFDN(Lcom/unisoc/phone/settings/fdn/FdnSetting;)Lcom/unisoc/phone/settings/fdn/EditPinPreference;
    .locals 0

    iget-object p0, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mButtonEnableFDN:Lcom/unisoc/phone/settings/fdn/EditPinPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsPuk2Locked(Lcom/unisoc/phone/settings/fdn/FdnSetting;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mIsPuk2Locked:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPhone(Lcom/unisoc/phone/settings/fdn/FdnSetting;)Lcom/android/internal/telephony/Phone;
    .locals 0

    iget-object p0, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPinChangeState(Lcom/unisoc/phone/settings/fdn/FdnSetting;)I
    .locals 0

    iget p0, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mPinChangeState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRemainPin2Times(Lcom/unisoc/phone/settings/fdn/FdnSetting;)I
    .locals 0

    iget p0, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mRemainPin2Times:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRemainPuk2Times(Lcom/unisoc/phone/settings/fdn/FdnSetting;)I
    .locals 0

    iget p0, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mRemainPuk2Times:I

    return p0
.end method

.method static bridge synthetic -$$Nest$mdisplayMessage(Lcom/unisoc/phone/settings/fdn/FdnSetting;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unisoc/phone/settings/fdn/FdnSetting;->displayMessage(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdisplayMessage(Lcom/unisoc/phone/settings/fdn/FdnSetting;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/unisoc/phone/settings/fdn/FdnSetting;->displayMessage(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mlog(Lcom/unisoc/phone/settings/fdn/FdnSetting;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unisoc/phone/settings/fdn/FdnSetting;->log(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetPinChangeState(Lcom/unisoc/phone/settings/fdn/FdnSetting;)V
    .locals 0

    invoke-direct {p0}, Lcom/unisoc/phone/settings/fdn/FdnSetting;->resetPinChangeState()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetPinChangeStateForPUK2(Lcom/unisoc/phone/settings/fdn/FdnSetting;)V
    .locals 0

    invoke-direct {p0}, Lcom/unisoc/phone/settings/fdn/FdnSetting;->resetPinChangeStateForPUK2()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowPin2OrPuk2LockedDialog(Lcom/unisoc/phone/settings/fdn/FdnSetting;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unisoc/phone/settings/fdn/FdnSetting;->showPin2OrPuk2LockedDialog(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtoggleFDNEnable(Lcom/unisoc/phone/settings/fdn/FdnSetting;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unisoc/phone/settings/fdn/FdnSetting;->toggleFDNEnable(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateEnableFDN(Lcom/unisoc/phone/settings/fdn/FdnSetting;)V
    .locals 0

    invoke-direct {p0}, Lcom/unisoc/phone/settings/fdn/FdnSetting;->updateEnableFDN()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateRemainTimes(Lcom/unisoc/phone/settings/fdn/FdnSetting;)V
    .locals 0

    invoke-direct {p0}, Lcom/unisoc/phone/settings/fdn/FdnSetting;->updateRemainTimes()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mRemainPin2Times:I

    iput v0, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mRemainPuk2Times:I

    new-instance v0, Lcom/unisoc/phone/settings/fdn/FdnSetting$1;

    invoke-direct {v0, p0}, Lcom/unisoc/phone/settings/fdn/FdnSetting$1;-><init>(Lcom/unisoc/phone/settings/fdn/FdnSetting;)V

    iput-object v0, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mFDNHandler:Landroid/os/Handler;

    return-void
.end method

.method private displayMessage(I)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/unisoc/phone/settings/fdn/FdnSetting;->displayMessage(II)V

    return-void
.end method

.method private displayMessage(II)V
    .locals 2

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f110090

    if-eq p1, v1, :cond_0

    const v1, 0x7f110091

    if-eq p1, v1, :cond_0

    const v1, 0x7f110491

    if-ne p1, v1, :cond_2

    :cond_0
    if-ltz p2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const v1, 0x7f11048e

    invoke-virtual {p0, v1, p1}, Landroid/preference/PreferenceActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "displayMessage: attemptsRemaining="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " s="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/unisoc/phone/settings/fdn/FdnSetting;->log(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {p0, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private displayPinChangeDialog(Lcom/unisoc/phone/settings/fdn/EditPinPreference;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/unisoc/phone/settings/fdn/FdnSetting;->displayPinChangeDialog(Lcom/unisoc/phone/settings/fdn/EditPinPreference;IZ)V

    return-void
.end method

.method private displayPinChangeDialog(Lcom/unisoc/phone/settings/fdn/EditPinPreference;IZ)V
    .locals 4

    iget v0, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mPinChangeState:I

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    const v0, 0x7f1104f3

    goto :goto_0

    :cond_0
    const v0, 0x7f1101f2

    goto :goto_0

    :cond_1
    const v0, 0x7f11041d

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mButtonEnableFDN:Lcom/unisoc/phone/settings/fdn/EditPinPreference;

    if-ne p1, v0, :cond_3

    const v0, 0x7f11048d

    goto :goto_0

    :cond_3
    const v0, 0x7f11043f

    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mRemainPin2Times:I

    if-lez v2, :cond_4

    goto :goto_1

    :cond_4
    iget v2, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mRemainPuk2Times:I

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/preference/PreferenceActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Landroid/preference/PreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/preference/EditTextPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p1, v0}, Landroid/preference/EditTextPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    :goto_2
    if-eqz p3, :cond_6

    invoke-virtual {p1}, Lcom/unisoc/phone/settings/fdn/EditPinPreference;->showPinDialog()V

    :cond_6
    return-void
.end method

.method private isPrimaryUser()Z
    .locals 1

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->isSystemUser()Z

    move-result p0

    return p0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UniFdnSetting: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PhoneGlobals"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final resetPinChangeState()V
    .locals 2

    const-string v0, "resetPinChangeState"

    invoke-direct {p0, v0}, Lcom/unisoc/phone/settings/fdn/FdnSetting;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mPinChangeState:I

    iget-object v1, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mButtonEnableFDN:Lcom/unisoc/phone/settings/fdn/EditPinPreference;

    invoke-direct {p0, v1, v0, v0}, Lcom/unisoc/phone/settings/fdn/FdnSetting;->displayPinChangeDialog(Lcom/unisoc/phone/settings/fdn/EditPinPreference;IZ)V

    iget-object v1, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mButtonChangePin2:Lcom/unisoc/phone/settings/fdn/EditPinPreference;

    invoke-direct {p0, v1, v0, v0}, Lcom/unisoc/phone/settings/fdn/FdnSetting;->displayPinChangeDialog(Lcom/unisoc/phone/settings/fdn/EditPinPreference;IZ)V

    const-string v1, ""

    iput-object v1, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mNewPin:Ljava/lang/String;

    iput-object v1, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mOldPin:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mIsPuk2Locked:Z

    return-void
.end method

.method private final resetPinChangeStateForPUK2()V
    .locals 2

    const-string v0, "resetPinChangeStateForPUK2"

    invoke-direct {p0, v0}, Lcom/unisoc/phone/settings/fdn/FdnSetting;->log(Ljava/lang/String;)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mPinChangeState:I

    iget-object v0, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mButtonEnableFDN:Lcom/unisoc/phone/settings/fdn/EditPinPreference;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/unisoc/phone/settings/fdn/FdnSetting;->displayPinChangeDialog(Lcom/unisoc/phone/settings/fdn/EditPinPreference;IZ)V

    iget-object v0, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mButtonChangePin2:Lcom/unisoc/phone/settings/fdn/EditPinPreference;

    invoke-direct {p0, v0, v1, v1}, Lcom/unisoc/phone/settings/fdn/FdnSetting;->displayPinChangeDialog(Lcom/unisoc/phone/settings/fdn/EditPinPreference;IZ)V

    const-string v0, ""

    iput-object v0, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mPuk2:Ljava/lang/String;

    iput-object v0, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mNewPin:Ljava/lang/String;

    iput-object v0, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mOldPin:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mIsPuk2Locked:Z

    return-void
.end method

.method private showPin2OrPuk2LockedDialog(I)V
    .locals 4

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string v0, "tag_pin2_locked_dialog"

    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/unisoc/phone/settings/fdn/Pin2LockedDialogFragment;

    if-nez v1, :cond_0

    new-instance v1, Lcom/unisoc/phone/settings/fdn/Pin2LockedDialogFragment;

    invoke-direct {v1}, Lcom/unisoc/phone/settings/fdn/Pin2LockedDialogFragment;-><init>()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "key_dialog_id"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Landroid/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {v1, p0, v0}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commitNow()V

    :goto_0
    return-void
.end method

.method private toggleFDNEnable(Z)V
    .locals 3

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mIsPuk2Locked:Z

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/unisoc/phone/settings/fdn/FdnSetting;->resetPinChangeState()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/unisoc/phone/settings/fdn/FdnSetting;->resetPinChangeStateForPUK2()V

    :goto_0
    return-void

    :cond_1
    iget-object p1, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mButtonEnableFDN:Lcom/unisoc/phone/settings/fdn/EditPinPreference;

    invoke-virtual {p1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/unisoc/phone/settings/fdn/FdnSetting;->validatePin(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mFDNHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0, p1, v1}, Lcom/android/internal/telephony/IccCard;->setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    goto :goto_1

    :cond_2
    const p1, 0x7f11033d

    invoke-direct {p0, p1}, Lcom/unisoc/phone/settings/fdn/FdnSetting;->displayMessage(I)V

    :goto_1
    iget-object p0, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mButtonEnableFDN:Lcom/unisoc/phone/settings/fdn/EditPinPreference;

    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    return-void
.end method

.method private updateChangePIN2()V
    .locals 1

    iget-object v0, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getIccPuk2Blocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/unisoc/phone/settings/fdn/FdnSetting;->showPin2OrPuk2LockedDialog(I)V

    invoke-direct {p0}, Lcom/unisoc/phone/settings/fdn/FdnSetting;->resetPinChangeStateForPUK2()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getIccPin2Blocked()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/unisoc/phone/settings/fdn/FdnSetting;->resetPinChangeStateForPUK2()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/unisoc/phone/settings/fdn/FdnSetting;->resetPinChangeState()V

    :goto_0
    return-void
.end method

.method private updateEnableFDN()V
    .locals 5

    invoke-direct {p0}, Lcom/unisoc/phone/settings/fdn/FdnSetting;->updateEnableFDNDialog()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.callsettings.action.FDN_STATUS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    const-string v2, "subid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result v1

    const-string v2, "fdn_status"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "com.android.phone.permission.FDN_CHANGE"

    invoke-virtual {p0, v0, v1}, Landroid/preference/PreferenceActivity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mButtonPreloadFdnList:Landroid/preference/PreferenceScreen;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_0
    iget v0, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mRemainPuk2Times:I

    const/4 v2, 0x1

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mButtonChangePin2:Lcom/unisoc/phone/settings/fdn/EditPinPreference;

    invoke-virtual {v0, v2}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mButtonChangePin2:Lcom/unisoc/phone/settings/fdn/EditPinPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    :goto_0
    iget v0, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mRemainPin2Times:I

    if-lez v0, :cond_2

    iget-object v1, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mButtonEnableFDN:Lcom/unisoc/phone/settings/fdn/EditPinPreference;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v3, 0x7f11048d

    invoke-virtual {p0, v3, v0}, Landroid/preference/PreferenceActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mButtonChangePin2:Lcom/unisoc/phone/settings/fdn/EditPinPreference;

    iget v1, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mRemainPin2Times:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v3, 0x7f11043f

    invoke-virtual {p0, v3, v1}, Landroid/preference/PreferenceActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mButtonEnableFDN:Lcom/unisoc/phone/settings/fdn/EditPinPreference;

    invoke-virtual {v0, v2}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mFdnListPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object p0, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mButtonPreloadFdnList:Landroid/preference/PreferenceScreen;

    if-eqz p0, :cond_3

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mButtonChangePin2:Lcom/unisoc/phone/settings/fdn/EditPinPreference;

    iget v3, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mRemainPuk2Times:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const v4, 0x7f1104f3

    invoke-virtual {p0, v4, v3}, Landroid/preference/PreferenceActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/EditTextPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mButtonEnableFDN:Lcom/unisoc/phone/settings/fdn/EditPinPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    iput-boolean v2, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mIsPuk2Locked:Z

    iget-object p0, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mFdnListPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method private updateEnableFDNDialog()V
    .locals 2

    iget-object v0, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mButtonEnableFDN:Lcom/unisoc/phone/settings/fdn/EditPinPreference;

    const v1, 0x7f1102a1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setTitle(I)V

    iget-object v0, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mButtonEnableFDN:Lcom/unisoc/phone/settings/fdn/EditPinPreference;

    const v1, 0x7f1102db

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(I)V

    iget-object p0, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mButtonEnableFDN:Lcom/unisoc/phone/settings/fdn/EditPinPreference;

    const v0, 0x7f110262

    invoke-virtual {p0, v0}, Landroid/preference/EditTextPreference;->setDialogTitle(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mButtonEnableFDN:Lcom/unisoc/phone/settings/fdn/EditPinPreference;

    const v1, 0x7f110263

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setTitle(I)V

    iget-object v0, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mButtonEnableFDN:Lcom/unisoc/phone/settings/fdn/EditPinPreference;

    const v1, 0x7f1102d9

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(I)V

    iget-object p0, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mButtonEnableFDN:Lcom/unisoc/phone/settings/fdn/EditPinPreference;

    const v0, 0x7f1102a0

    invoke-virtual {p0, v0}, Landroid/preference/EditTextPreference;->setDialogTitle(I)V

    :goto_0
    return-void
.end method

.method private updatePINChangeState(Lcom/unisoc/phone/settings/fdn/EditPinPreference;Z)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePINChangeState positive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mPinChangeState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mPinChangeState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mIsPuk2Locked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mIsPuk2Locked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisoc/phone/settings/fdn/FdnSetting;->log(Ljava/lang/String;)V

    if-nez p2, :cond_1

    iget-boolean p1, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mIsPuk2Locked:Z

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/unisoc/phone/settings/fdn/FdnSetting;->resetPinChangeState()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/unisoc/phone/settings/fdn/FdnSetting;->resetPinChangeStateForPUK2()V

    :goto_0
    return-void

    :cond_1
    iget p2, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mPinChangeState:I

    const v0, 0x7f11033d

    const/4 v1, 0x0

    const-string v2, ""

    const/4 v3, 0x1

    if-eqz p2, :cond_f

    const/4 v4, 0x2

    if-eq p2, v3, :cond_d

    const/16 v5, 0xc8

    const v6, 0x7f1103bc

    if-eq p2, v4, :cond_9

    const/4 v4, 0x3

    const/4 v7, 0x4

    if-eq p2, v4, :cond_7

    const/4 v4, 0x5

    if-eq p2, v7, :cond_5

    if-eq p2, v4, :cond_2

    goto/16 :goto_2

    :cond_2
    iget-object p2, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mNewPin:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    iput v7, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mPinChangeState:I

    invoke-virtual {p1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    invoke-direct {p0, p1, v6, v3}, Lcom/unisoc/phone/settings/fdn/FdnSetting;->displayPinChangeDialog(Lcom/unisoc/phone/settings/fdn/EditPinPreference;IZ)V

    goto/16 :goto_2

    :cond_3
    iget-object p2, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mButtonChangePin2:Lcom/unisoc/phone/settings/fdn/EditPinPreference;

    if-ne p1, p2, :cond_4

    invoke-virtual {p1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mFDNHandler:Landroid/os/Handler;

    invoke-virtual {p1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mFDNHandler:Landroid/os/Handler;

    const/16 p2, 0x12c

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    :goto_1
    iget-object p2, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object p2

    iget-object v0, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mPuk2:Ljava/lang/String;

    iget-object p0, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mNewPin:Ljava/lang/String;

    invoke-virtual {p2, v0, p0, p1}, Lcom/android/internal/telephony/IccCard;->supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_2

    :cond_5
    invoke-virtual {p1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mNewPin:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mNewPin:Ljava/lang/String;

    invoke-direct {p0, p2, v1}, Lcom/unisoc/phone/settings/fdn/FdnSetting;->validatePin(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_6

    iput v4, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mPinChangeState:I

    invoke-direct {p0, p1}, Lcom/unisoc/phone/settings/fdn/FdnSetting;->displayPinChangeDialog(Lcom/unisoc/phone/settings/fdn/EditPinPreference;)V

    goto/16 :goto_2

    :cond_6
    invoke-direct {p0, p1, v0, v3}, Lcom/unisoc/phone/settings/fdn/FdnSetting;->displayPinChangeDialog(Lcom/unisoc/phone/settings/fdn/EditPinPreference;IZ)V

    goto/16 :goto_2

    :cond_7
    invoke-virtual {p1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mPuk2:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mPuk2:Ljava/lang/String;

    invoke-direct {p0, p2, v3}, Lcom/unisoc/phone/settings/fdn/FdnSetting;->validatePin(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_8

    iput v7, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mPinChangeState:I

    invoke-direct {p0, p1}, Lcom/unisoc/phone/settings/fdn/FdnSetting;->displayPinChangeDialog(Lcom/unisoc/phone/settings/fdn/EditPinPreference;)V

    goto/16 :goto_2

    :cond_8
    const p2, 0x7f11033e

    invoke-direct {p0, p1, p2, v3}, Lcom/unisoc/phone/settings/fdn/FdnSetting;->displayPinChangeDialog(Lcom/unisoc/phone/settings/fdn/EditPinPreference;IZ)V

    goto/16 :goto_2

    :cond_9
    invoke-virtual {p1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, v1}, Lcom/unisoc/phone/settings/fdn/FdnSetting;->validatePin(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_c

    iget-object p2, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mNewPin:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    iput v3, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mPinChangeState:I

    invoke-virtual {p1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    invoke-direct {p0, p1, v6, v3}, Lcom/unisoc/phone/settings/fdn/FdnSetting;->displayPinChangeDialog(Lcom/unisoc/phone/settings/fdn/EditPinPreference;IZ)V

    goto :goto_2

    :cond_a
    invoke-virtual {p1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mFDNHandler:Landroid/os/Handler;

    invoke-virtual {p1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iget-boolean p2, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mIsPuk2Locked:Z

    if-nez p2, :cond_b

    iget-object p2, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object p2

    iget-object v0, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mOldPin:Ljava/lang/String;

    iget-object p0, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mNewPin:Ljava/lang/String;

    invoke-virtual {p2, v0, p0, p1}, Lcom/android/internal/telephony/IccCard;->changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_2

    :cond_b
    iget-object p2, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object p2

    iget-object v0, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mPuk2:Ljava/lang/String;

    iget-object p0, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mNewPin:Ljava/lang/String;

    invoke-virtual {p2, v0, p0, p1}, Lcom/android/internal/telephony/IccCard;->supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_2

    :cond_c
    invoke-virtual {p1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, v3}, Lcom/unisoc/phone/settings/fdn/FdnSetting;->displayPinChangeDialog(Lcom/unisoc/phone/settings/fdn/EditPinPreference;IZ)V

    goto :goto_2

    :cond_d
    invoke-virtual {p1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mNewPin:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mNewPin:Ljava/lang/String;

    invoke-direct {p0, p2, v1}, Lcom/unisoc/phone/settings/fdn/FdnSetting;->validatePin(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_e

    iput v4, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mPinChangeState:I

    invoke-direct {p0, p1}, Lcom/unisoc/phone/settings/fdn/FdnSetting;->displayPinChangeDialog(Lcom/unisoc/phone/settings/fdn/EditPinPreference;)V

    goto :goto_2

    :cond_e
    invoke-direct {p0, p1, v0, v3}, Lcom/unisoc/phone/settings/fdn/FdnSetting;->displayPinChangeDialog(Lcom/unisoc/phone/settings/fdn/EditPinPreference;IZ)V

    goto :goto_2

    :cond_f
    invoke-virtual {p1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mOldPin:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mOldPin:Ljava/lang/String;

    invoke-direct {p0, p2, v1}, Lcom/unisoc/phone/settings/fdn/FdnSetting;->validatePin(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_10

    iput v3, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mPinChangeState:I

    invoke-direct {p0, p1}, Lcom/unisoc/phone/settings/fdn/FdnSetting;->displayPinChangeDialog(Lcom/unisoc/phone/settings/fdn/EditPinPreference;)V

    goto :goto_2

    :cond_10
    invoke-direct {p0, p1, v0, v3}, Lcom/unisoc/phone/settings/fdn/FdnSetting;->displayPinChangeDialog(Lcom/unisoc/phone/settings/fdn/EditPinPreference;IZ)V

    :goto_2
    return-void
.end method

.method private updateRemainTimes()V
    .locals 4

    iget-object v0, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {}, Lcom/unisoc/phone/settings/fdn/IccUriUtils;->getInstance()Lcom/unisoc/phone/settings/fdn/IccUriUtils;

    move-result-object v1

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/unisoc/phone/settings/fdn/IccUriUtils;->getPIN2RemainTimes(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mRemainPin2Times:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Subscription: +"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]: updateRemainTimes: pin2 = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mRemainPin2Times:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/unisoc/phone/settings/fdn/FdnSetting;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/unisoc/phone/settings/fdn/IccUriUtils;->getInstance()Lcom/unisoc/phone/settings/fdn/IccUriUtils;

    move-result-object v1

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lcom/unisoc/phone/settings/fdn/IccUriUtils;->getPUK2RemainTimes(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mRemainPuk2Times:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]: updateRemainTimes: puk2 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mRemainPuk2Times:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisoc/phone/settings/fdn/FdnSetting;->log(Ljava/lang/String;)V

    return-void
.end method

.method private validatePin(Ljava/lang/String;Z)Z
    .locals 1

    const/16 p0, 0x8

    if-eqz p2, :cond_0

    move p2, p0

    goto :goto_0

    :cond_0
    const/4 p2, 0x4

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, p2, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-le p1, p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/unisoc/phone/settings/fdn/FdnSetting;->isPrimaryUser()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const p1, 0x7f11016f

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->finish()V

    return-void

    :cond_0
    new-instance v0, Lcom/unisoc/phone/SubscriptionInfoHelper;

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/unisoc/phone/SubscriptionInfoHelper;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mSubscriptionInfoHelper:Lcom/unisoc/phone/SubscriptionInfoHelper;

    invoke-virtual {v0}, Lcom/unisoc/phone/SubscriptionInfoHelper;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    const v0, 0x7f14001c

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v2, "button_fdn_enable_key"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/unisoc/phone/settings/fdn/EditPinPreference;

    iput-object v2, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mButtonEnableFDN:Lcom/unisoc/phone/settings/fdn/EditPinPreference;

    const-string v2, "button_change_pin2_key"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/unisoc/phone/settings/fdn/EditPinPreference;

    iput-object v2, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mButtonChangePin2:Lcom/unisoc/phone/settings/fdn/EditPinPreference;

    iget-object v2, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez v2, :cond_1

    const-string p1, "PhoneGlobals"

    const-string v0, "mPhone is null, finish it! "

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->finish()V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mButtonEnableFDN:Lcom/unisoc/phone/settings/fdn/EditPinPreference;

    invoke-virtual {v2, p0}, Lcom/unisoc/phone/settings/fdn/EditPinPreference;->setOnPinEnteredListener(Lcom/unisoc/phone/settings/fdn/EditPinPreference$OnPinEnteredListener;)V

    invoke-direct {p0}, Lcom/unisoc/phone/settings/fdn/FdnSetting;->updateEnableFDNDialog()V

    iget-object v2, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mButtonChangePin2:Lcom/unisoc/phone/settings/fdn/EditPinPreference;

    invoke-virtual {v2, p0}, Lcom/unisoc/phone/settings/fdn/EditPinPreference;->setOnPinEnteredListener(Lcom/unisoc/phone/settings/fdn/EditPinPreference$OnPinEnteredListener;)V

    const-string v2, "fdn_list_pref_screen_key"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mFdnListPref:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mSubscriptionInfoHelper:Lcom/unisoc/phone/SubscriptionInfoHelper;

    const-class v4, Lcom/android/phone/settings/fdn/FdnList;

    invoke-virtual {v3, v4}, Lcom/unisoc/phone/SubscriptionInfoHelper;->getIntent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    const-string v2, "preload_fdn_list_pref_key"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mButtonPreloadFdnList:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    invoke-static {v2, v3}, Landroid/telephony/SubscriptionManager;->getResourcesForSubId(Landroid/content/Context;I)Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x803003e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mButtonPreloadFdnList:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mSubscriptionInfoHelper:Lcom/unisoc/phone/SubscriptionInfoHelper;

    const-class v4, Lcom/unisoc/phone/settings/fdn/PreloadFdnList;

    invoke-virtual {v3, v4}, Lcom/unisoc/phone/SubscriptionInfoHelper;->getIntent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mButtonPreloadFdnList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mButtonPreloadFdnList:Landroid/preference/PreferenceScreen;

    :goto_0
    if-nez p1, :cond_3

    invoke-direct {p0}, Lcom/unisoc/phone/settings/fdn/FdnSetting;->resetPinChangeState()V

    goto :goto_1

    :cond_3
    const-string v2, "skip_old_pin_key"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mIsPuk2Locked:Z

    const-string v2, "pin_change_state_key"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mPinChangeState:I

    const-string v2, "old_pin_key"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mOldPin:Ljava/lang/String;

    const-string v2, "new_pin_key"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mNewPin:Ljava/lang/String;

    const-string v2, "puk_key"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mPuk2:Ljava/lang/String;

    iget-object v2, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mButtonChangePin2:Lcom/unisoc/phone/settings/fdn/EditPinPreference;

    const-string v3, "dialog_message_key"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mButtonChangePin2:Lcom/unisoc/phone/settings/fdn/EditPinPreference;

    const-string v3, "dialog_pin_entry_key"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mButtonEnableFDN:Lcom/unisoc/phone/settings/fdn/EditPinPreference;

    const-string v3, "fdn_dialog_message_key"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mButtonEnableFDN:Lcom/unisoc/phone/settings/fdn/EditPinPreference;

    const-string v3, "fdn_dialog_pin_entry_key"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_4

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    iget-object v2, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mSubscriptionInfoHelper:Lcom/unisoc/phone/SubscriptionInfoHelper;

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1102e0

    invoke-virtual {v2, p1, v3, v4}, Lcom/unisoc/phone/SubscriptionInfoHelper;->setActionBarTitle(Landroid/app/ActionBar;Landroid/content/res/Resources;I)V

    :cond_4
    iget-object p1, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez p1, :cond_5

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/unisoc/phone/ActivityContainer;->getInstance()Lcom/unisoc/phone/ActivityContainer;

    move-result-object p1

    iget-object v0, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-virtual {p1, p0, v0}, Lcom/unisoc/phone/ActivityContainer;->addActivity(Landroid/app/Activity;I)V

    :goto_2
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

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mSubscriptionInfoHelper:Lcom/unisoc/phone/SubscriptionInfoHelper;

    invoke-static {p0, p1}, Lcom/unisoc/phone/CallFeaturesSetting;->goUpToTopLevelSetting(Landroid/app/Activity;Lcom/unisoc/phone/SubscriptionInfoHelper;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onPinEntered(Lcom/unisoc/phone/settings/fdn/EditPinPreference;Z)V
    .locals 1

    iget-object v0, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mButtonEnableFDN:Lcom/unisoc/phone/settings/fdn/EditPinPreference;

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mIsPuk2Locked:Z

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    invoke-direct {p0, p2}, Lcom/unisoc/phone/settings/fdn/FdnSetting;->toggleFDNEnable(Z)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/unisoc/phone/settings/fdn/FdnSetting;->updatePINChangeState(Lcom/unisoc/phone/settings/fdn/EditPinPreference;Z)V

    :goto_0
    return-void
.end method

.method public onRequestPuk2(I)V
    .locals 2

    invoke-direct {p0}, Lcom/unisoc/phone/settings/fdn/FdnSetting;->resetPinChangeStateForPUK2()V

    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mButtonChangePin2:Lcom/unisoc/phone/settings/fdn/EditPinPreference;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mButtonEnableFDN:Lcom/unisoc/phone/settings/fdn/EditPinPreference;

    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/unisoc/phone/settings/fdn/FdnSetting;->displayPinChangeDialog(Lcom/unisoc/phone/settings/fdn/EditPinPreference;IZ)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    iget-object v0, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mSubscriptionInfoHelper:Lcom/unisoc/phone/SubscriptionInfoHelper;

    invoke-virtual {v0}, Lcom/unisoc/phone/SubscriptionInfoHelper;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/unisoc/phone/settings/fdn/FdnSetting;->updateRemainTimes()V

    invoke-direct {p0}, Lcom/unisoc/phone/settings/fdn/FdnSetting;->updateEnableFDN()V

    invoke-direct {p0}, Lcom/unisoc/phone/settings/fdn/FdnSetting;->updateChangePIN2()V

    :goto_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "skip_old_pin_key"

    iget-boolean v1, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mIsPuk2Locked:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "pin_change_state_key"

    iget v1, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mPinChangeState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "old_pin_key"

    iget-object v1, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mOldPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "new_pin_key"

    iget-object v1, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mNewPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "puk_key"

    iget-object v1, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mPuk2:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mButtonChangePin2:Lcom/unisoc/phone/settings/fdn/EditPinPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mButtonChangePin2:Lcom/unisoc/phone/settings/fdn/EditPinPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dialog_message_key"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mButtonChangePin2:Lcom/unisoc/phone/settings/fdn/EditPinPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dialog_pin_entry_key"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mButtonEnableFDN:Lcom/unisoc/phone/settings/fdn/EditPinPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mButtonEnableFDN:Lcom/unisoc/phone/settings/fdn/EditPinPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mButtonEnableFDN:Lcom/unisoc/phone/settings/fdn/EditPinPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fdn_dialog_message_key"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object p0, p0, Lcom/unisoc/phone/settings/fdn/FdnSetting;->mButtonEnableFDN:Lcom/unisoc/phone/settings/fdn/EditPinPreference;

    invoke-virtual {p0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object p0

    const-string v0, "fdn_dialog_pin_entry_key"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
