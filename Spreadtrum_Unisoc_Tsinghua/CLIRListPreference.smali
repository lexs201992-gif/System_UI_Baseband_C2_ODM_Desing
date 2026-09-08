.class public Lcom/unisoc/phone/CLIRListPreference;
.super Landroid/preference/ListPreference;
.source "CLIRListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisoc/phone/CLIRListPreference$MyHandler;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "UniCLIRListPreference"


# instance fields
.field private final DBG:Z

.field clirArray:[I

.field private mConfigSupportNetworkDefault:Z

.field private mEnableCLIRButton:Z

.field private final mEntries:[Ljava/lang/String;

.field private final mHandler:Lcom/unisoc/phone/CLIRListPreference$MyHandler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mTcpListener:Lcom/unisoc/phone/TimeConsumingPreferenceListener;

.field private final mValues:[Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmPhone(Lcom/unisoc/phone/CLIRListPreference;)Lcom/android/internal/telephony/Phone;
    .locals 0

    iget-object p0, p0, Lcom/unisoc/phone/CLIRListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTcpListener(Lcom/unisoc/phone/CLIRListPreference;)Lcom/unisoc/phone/TimeConsumingPreferenceListener;
    .locals 0

    iget-object p0, p0, Lcom/unisoc/phone/CLIRListPreference;->mTcpListener:Lcom/unisoc/phone/TimeConsumingPreferenceListener;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/unisoc/phone/CLIRListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/unisoc/phone/CLIRListPreference;->DBG:Z

    new-instance p1, Lcom/unisoc/phone/CLIRListPreference$MyHandler;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/unisoc/phone/CLIRListPreference$MyHandler;-><init>(Lcom/unisoc/phone/CLIRListPreference;Lcom/unisoc/phone/CLIRListPreference$MyHandler-IA;)V

    iput-object p1, p0, Lcom/unisoc/phone/CLIRListPreference;->mHandler:Lcom/unisoc/phone/CLIRListPreference$MyHandler;

    invoke-virtual {p0}, Landroid/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f03002e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/unisoc/phone/CLIRListPreference;->mEntries:[Ljava/lang/String;

    invoke-virtual {p0}, Landroid/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f03002f

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/unisoc/phone/CLIRListPreference;->mValues:[Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/unisoc/phone/CLIRListPreference;->mEnableCLIRButton:Z

    return-void
.end method

.method private convertValueToCLIRMode(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/unisoc/phone/CLIRListPreference;->mValues:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/unisoc/phone/CLIRListPreference;->mValues:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    iget-boolean p0, p0, Lcom/unisoc/phone/CLIRListPreference;->mConfigSupportNetworkDefault:Z

    if-eqz p0, :cond_2

    const/4 v1, 0x0

    :cond_2
    return v1
.end method


# virtual methods
.method handleGetCLIRResult([I)V
    .locals 6

    iput-object p1, p0, Lcom/unisoc/phone/CLIRListPreference;->clirArray:[I

    const/4 v0, 0x1

    aget v1, p1, v0

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eq v1, v0, :cond_1

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v0

    :goto_1
    iget-boolean v5, p0, Lcom/unisoc/phone/CLIRListPreference;->mEnableCLIRButton:Z

    if-eqz v5, :cond_2

    invoke-virtual {p0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V

    :goto_2
    aget v1, p1, v0

    const/4 v5, 0x2

    if-eq v1, v0, :cond_3

    if-eq v1, v3, :cond_3

    if-eq v1, v2, :cond_3

    goto :goto_3

    :cond_3
    aget p1, p1, v4

    if-eq p1, v0, :cond_5

    if-eq p1, v5, :cond_4

    goto :goto_3

    :cond_4
    move v4, v5

    goto :goto_3

    :cond_5
    move v4, v0

    :goto_3
    iget-boolean p1, p0, Lcom/unisoc/phone/CLIRListPreference;->mConfigSupportNetworkDefault:Z

    if-nez p1, :cond_6

    if-nez v4, :cond_6

    move v4, v5

    :cond_6
    iget-object p1, p0, Lcom/unisoc/phone/CLIRListPreference;->mValues:[Ljava/lang/String;

    aget-object p1, p1, v4

    invoke-virtual {p0, p1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    const p1, 0x7f1105e6

    if-eqz v4, :cond_9

    if-eq v4, v0, :cond_8

    if-eq v4, v5, :cond_7

    goto :goto_4

    :cond_7
    const p1, 0x7f1105ef

    goto :goto_4

    :cond_8
    const p1, 0x7f1105ed

    :cond_9
    :goto_4
    invoke-virtual {p0, p1}, Landroid/preference/ListPreference;->setSummary(I)V

    return-void
.end method

.method init(Lcom/unisoc/phone/TimeConsumingPreferenceListener;ZLcom/android/internal/telephony/Phone;)V
    .locals 4

    iput-object p3, p0, Lcom/unisoc/phone/CLIRListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    iput-object p1, p0, Lcom/unisoc/phone/CLIRListPreference;->mTcpListener:Lcom/unisoc/phone/TimeConsumingPreferenceListener;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object p1

    iget-object p3, p0, Lcom/unisoc/phone/CLIRListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/android/phone/PhoneGlobals;->getCarrierConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p1

    const-string p3, "support_clir_network_default_bool"

    invoke-virtual {p1, p3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/unisoc/phone/CLIRListPreference;->mConfigSupportNetworkDefault:Z

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object p1

    iget-object p3, p0, Lcom/unisoc/phone/CLIRListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/android/phone/PhoneGlobals;->getCarrierConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p1

    const-string p3, "oem_key_enable_clir_setting_bool"

    invoke-virtual {p1, p3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/unisoc/phone/CLIRListPreference;->mEnableCLIRButton:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "init: enable CLIR:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/unisoc/phone/CLIRListPreference;->mEnableCLIRButton:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "UniCLIRListPreference"

    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/unisoc/phone/CLIRListPreference;->mConfigSupportNetworkDefault:Z

    const/4 v0, 0x1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/unisoc/phone/CLIRListPreference;->mEntries:[Ljava/lang/String;

    aget-object v1, p1, v0

    const/4 v2, 0x2

    aget-object p1, p1, v2

    filled-new-array {v1, p1}, [Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/unisoc/phone/CLIRListPreference;->mValues:[Ljava/lang/String;

    aget-object v3, v1, v0

    aget-object v1, v1, v2

    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    :cond_0
    if-nez p2, :cond_1

    const-string p1, "init: requesting CLIR"

    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/unisoc/phone/CLIRListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object p2, p0, Lcom/unisoc/phone/CLIRListPreference;->mHandler:Lcom/unisoc/phone/CLIRListPreference$MyHandler;

    const/4 p3, 0x0

    invoke-virtual {p2, p3, p3, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/Phone;->getOutgoingCallerIdDisplay(Landroid/os/Message;)V

    iget-object p1, p0, Lcom/unisoc/phone/CLIRListPreference;->mTcpListener:Lcom/unisoc/phone/TimeConsumingPreferenceListener;

    if-eqz p1, :cond_1

    invoke-interface {p1, p0, v0}, Lcom/unisoc/phone/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    :cond_1
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onDialogClosed(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/unisoc/phone/CLIRListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisoc/phone/CLIRListPreference;->convertValueToCLIRMode(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/unisoc/phone/CLIRListPreference;->mHandler:Lcom/unisoc/phone/CLIRListPreference$MyHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/Phone;->setOutgoingCallerIdDisplay(ILandroid/os/Message;)V

    iget-object p1, p0, Lcom/unisoc/phone/CLIRListPreference;->mTcpListener:Lcom/unisoc/phone/TimeConsumingPreferenceListener;

    if-eqz p1, :cond_1

    check-cast p1, Lcom/unisoc/phone/TimeConsumingPreferenceActivity;

    invoke-virtual {p1}, Lcom/unisoc/phone/TimeConsumingPreferenceActivity;->suppServiceStart()V

    iget-object p1, p0, Lcom/unisoc/phone/CLIRListPreference;->mTcpListener:Lcom/unisoc/phone/TimeConsumingPreferenceListener;

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lcom/unisoc/phone/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "onDialogClosed: positiveResult=%b value=%s -- do nothing"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "UniCLIRListPreference"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
