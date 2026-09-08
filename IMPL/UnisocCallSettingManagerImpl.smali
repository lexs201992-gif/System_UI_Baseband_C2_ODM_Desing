.class public Lcom/unisoc/phone/UnisocCallSettingManagerImpl;
.super Lcom/unisoc/phone/UnisocCallSettingManager;
.source "UnisocCallSettingManagerImpl.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "UnisocCallSettingManagerImpl"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/unisoc/phone/UnisocCallSettingManager;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisoc/phone/UnisocCallSettingManager;->IS_IMPL:Z

    return-void
.end method

.method private getCombinedServiceState(Landroid/telephony/ServiceState;)I
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegistrationState()I

    move-result v2

    if-eq v1, v0, :cond_1

    const/4 v0, 0x2

    if-ne v1, v0, :cond_2

    :cond_1
    if-nez v2, :cond_2

    invoke-direct {p0, p1}, Lcom/unisoc/phone/UnisocCallSettingManagerImpl;->isNotInIwlan(Landroid/telephony/ServiceState;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    return v1
.end method

.method private isNotInIwlan(Landroid/telephony/ServiceState;)Z
    .locals 1

    const/4 p0, 0x2

    invoke-virtual {p1, p0, p0}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object p0

    const/4 p1, 0x1

    if-nez p0, :cond_0

    return p1

    :cond_0
    invoke-virtual {p0}, Landroid/telephony/NetworkRegistrationInfo;->getRegistrationState()I

    move-result v0

    if-eq v0, p1, :cond_2

    invoke-virtual {p0}, Landroid/telephony/NetworkRegistrationInfo;->getRegistrationState()I

    move-result p0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move p0, p1

    :goto_1
    xor-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public createUssdDialog(Lcom/android/phone/PhoneGlobals;Landroid/content/Context;Ljava/lang/CharSequence;Lcom/android/internal/telephony/Phone;I)Landroid/app/AlertDialog;
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/phone/UssdCustomizedUtils;->createUssdDialog(Lcom/android/phone/PhoneGlobals;Landroid/content/Context;Ljava/lang/CharSequence;Lcom/android/internal/telephony/Phone;I)Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public displayMMIComplete(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/AlertDialog;)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/phone/UssdCustomizedUtils;->displayMMIComplete(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/AlertDialog;)V

    return-void
.end method

.method public injectForPhoneGlobalsCreate()V
    .locals 0

    invoke-static {}, Lcom/unisoc/phone/OmaHelper;->getInstance()Lcom/unisoc/phone/OmaHelper;

    invoke-static {}, Lcom/unisoc/phone/callforward/CallForwardHelper;->getInstance()Lcom/unisoc/phone/callforward/CallForwardHelper;

    invoke-static {}, Lcom/unisoc/phone/settings/fdn/FdnHelper;->getInstance()Lcom/unisoc/phone/settings/fdn/FdnHelper;

    return-void
.end method

.method public isInService(Landroid/telephony/ServiceState;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/unisoc/phone/UnisocCallSettingManagerImpl;->getCombinedServiceState(Landroid/telephony/ServiceState;)I

    move-result p0

    const/4 p1, 0x3

    if-eq p0, p1, :cond_2

    const/4 p1, 0x1

    if-eq p0, p1, :cond_2

    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method public isSsOverUtPrecautions(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/unisoc/phone/settings/UniSuppServicesUiUtil;->isSsOverUtPrecautions(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)Z

    move-result p0

    return p0
.end method

.method public registerForPreciseCallStateChanged(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p1}, Lcom/android/phone/UssdCustomizedUtils;->registerForPreciseCallStateChanged(Ljava/lang/Runnable;)V

    return-void
.end method

.method public unregisterForPreciseCallStateChanged()V
    .locals 0

    invoke-static {}, Lcom/android/phone/UssdCustomizedUtils;->unregisterForPreciseCallStateChanged()V

    return-void
.end method
