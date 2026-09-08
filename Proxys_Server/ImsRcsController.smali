.class public Lcom/android/phone/ImsRcsController;
.super Landroid/telephony/ims/aidl/IImsRcsController$Stub;
.source "ImsRcsController.java"


# static fields
.field private static sInstance:Lcom/android/phone/ImsRcsController;


# instance fields
.field private mApp:Lcom/android/phone/PhoneGlobals;

.field private mImsResolver:Lcom/android/internal/telephony/ims/ImsResolver;

.field private mRcsService:Lcom/android/services/telephony/rcs/TelephonyRcsService;

.field private mSingleRegistrationOverride:Ljava/lang/Boolean;


# direct methods
.method public static synthetic $r8$lambda$2map6ljLwIb-rBKWZBn179bNWE0(Lcom/android/internal/telephony/IIntegerConsumer;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/phone/ImsRcsController;->lambda$getImsRcsRegistrationTransportType$1(Lcom/android/internal/telephony/IIntegerConsumer;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SOt-AWGO1VKmdp7Wmfs47Gjqylw(Lcom/android/internal/telephony/IIntegerConsumer;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/phone/ImsRcsController;->lambda$getImsRcsRegistrationState$0(Lcom/android/internal/telephony/IIntegerConsumer;Ljava/lang/Integer;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/phone/PhoneGlobals;)V
    .locals 1

    invoke-direct {p0}, Landroid/telephony/ims/aidl/IImsRcsController$Stub;-><init>()V

    const-string v0, "ImsRcsController"

    invoke-static {v0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/phone/ImsRcsController;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/TelephonyServiceManager;->getTelephonyImsServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->register(Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/internal/telephony/ims/ImsResolver;->getInstance()Lcom/android/internal/telephony/ims/ImsResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/phone/ImsRcsController;->mImsResolver:Lcom/android/internal/telephony/ims/ImsResolver;

    return-void
.end method

.method private enforceAccessUserCapabilityExchangePermission(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/android/phone/ImsRcsController;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string v0, "android.permission.ACCESS_RCS_USER_CAPABILITY_EXCHANGE"

    invoke-virtual {p0, v0, p1}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enforceImsSingleRegistrationPermission(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/android/phone/ImsRcsController;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string v0, "android.permission.PERFORM_IMS_SINGLE_REGISTRATION"

    invoke-virtual {p0, v0, p1}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enforceModifyPermission()V
    .locals 2

    iget-object p0, p0, Lcom/android/phone/ImsRcsController;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enforceReadContactsPermission(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/android/phone/ImsRcsController;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string v0, "android.permission.READ_CONTACTS"

    invoke-virtual {p0, v0, p1}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enforceReadPrivilegedPermission(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/android/phone/ImsRcsController;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string v0, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {p0, v0, p1}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getRcsFeatureController(I)Lcom/android/services/telephony/rcs/RcsFeatureController;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/ImsRcsController;->getRcsFeatureController(IZ)Lcom/android/services/telephony/rcs/RcsFeatureController;

    move-result-object p0

    return-object p0
.end method

.method private getRcsFeatureController(IZ)Lcom/android/services/telephony/rcs/RcsFeatureController;
    .locals 3

    iget-object v0, p0, Lcom/android/phone/ImsRcsController;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-static {v0}, Lcom/android/ims/ImsManager;->isImsSupportedOnDevice(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "IMS is not available on device."

    const/4 v2, 0x2

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/phone/ImsRcsController;->mRcsService:Lcom/android/services/telephony/rcs/TelephonyRcsService;

    if-eqz v0, :cond_5

    invoke-static {p1}, Lcom/android/phone/PhoneGlobals;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    if-nez p2, :cond_0

    invoke-direct {p0, v0}, Lcom/android/phone/ImsRcsController;->verifyImsRcsConfiguredOrThrow(I)V

    invoke-direct {p0, v0, p1}, Lcom/android/phone/ImsRcsController;->verifyRcsSubIdActiveOrThrow(II)V

    :cond_0
    iget-object p0, p0, Lcom/android/phone/ImsRcsController;->mRcsService:Lcom/android/services/telephony/rcs/TelephonyRcsService;

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/rcs/TelephonyRcsService;->getFeatureController(I)Lcom/android/services/telephony/rcs/RcsFeatureController;

    move-result-object p0

    if-eqz p0, :cond_3

    if-nez p2, :cond_2

    invoke-virtual {p0}, Lcom/android/services/telephony/rcs/RcsFeatureController;->getAssociatedSubId()I

    move-result p2

    if-ne p2, p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getRcsFeatureController: service unavailable on slot "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " for subId "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "ImsRcsController"

    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/os/ServiceSpecificException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The ImsService is not currently available for subid "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", please try again"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-direct {p0, p2, p1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    return-object p0

    :cond_3
    new-instance p0, Landroid/os/ServiceSpecificException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The requested operation is not supported for subId "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Landroid/os/ServiceSpecificException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid subscription Id: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    invoke-direct {p0, p2, p1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Landroid/os/ServiceSpecificException;

    invoke-direct {p0, v2, v1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Landroid/os/ServiceSpecificException;

    invoke-direct {p0, v2, v1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method static init(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/ImsRcsController;
    .locals 3

    const-class v0, Lcom/android/phone/ImsRcsController;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/phone/ImsRcsController;->sInstance:Lcom/android/phone/ImsRcsController;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/phone/ImsRcsController;

    invoke-direct {v1, p0}, Lcom/android/phone/ImsRcsController;-><init>(Lcom/android/phone/PhoneGlobals;)V

    sput-object v1, Lcom/android/phone/ImsRcsController;->sInstance:Lcom/android/phone/ImsRcsController;

    goto :goto_0

    :cond_0
    const-string p0, "ImsRcsController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init() called multiple times!  sInstance = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/phone/ImsRcsController;->sInstance:Lcom/android/phone/ImsRcsController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sget-object p0, Lcom/android/phone/ImsRcsController;->sInstance:Lcom/android/phone/ImsRcsController;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private isImsSingleRegistrationSupportedOnDevice()Z
    .locals 1

    iget-object v0, p0, Lcom/android/phone/ImsRcsController;->mSingleRegistrationOverride:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/phone/ImsRcsController;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.telephony.ims.singlereg"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$getImsRcsRegistrationState$0(Lcom/android/internal/telephony/IIntegerConsumer;Ljava/lang/Integer;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    invoke-interface {p0, p1}, Lcom/android/internal/telephony/IIntegerConsumer;->accept(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p0, "ImsRcsController"

    const-string p1, "getImsRcsRegistrationState: callback is not available."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private static synthetic lambda$getImsRcsRegistrationTransportType$1(Lcom/android/internal/telephony/IIntegerConsumer;Ljava/lang/Integer;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    sget-object v0, Landroid/telephony/ims/RegistrationManager;->IMS_REG_TO_ACCESS_TYPE_MAP:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :try_start_0
    invoke-interface {p0, p1}, Lcom/android/internal/telephony/IIntegerConsumer;->accept(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p0, "ImsRcsController"

    const-string p1, "getImsRcsRegistrationTransportType: callback is not available."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private verifyImsRcsConfiguredOrThrow(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/phone/ImsRcsController;->mImsResolver:Lcom/android/internal/telephony/ims/ImsResolver;

    const/4 v0, 0x2

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/ims/ImsResolver;->isImsServiceConfiguredForFeature(II)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Landroid/os/ServiceSpecificException;

    const-string p1, "This subscription does not support RCS"

    invoke-direct {p0, v0, p1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method private verifyRcsSubIdActiveOrThrow(II)V
    .locals 1

    iget-object p0, p0, Lcom/android/phone/ImsRcsController;->mRcsService:Lcom/android/services/telephony/rcs/TelephonyRcsService;

    invoke-virtual {p0, p1, p2}, Lcom/android/services/telephony/rcs/TelephonyRcsService;->verifyActiveSubId(II)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "verifyRcsSubIdActiveOrThrow: verify failed, service not set up yet on slot "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " for subId "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImsRcsController"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/os/ServiceSpecificException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ImsService set up in progress for subId "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", please try again"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-direct {p0, p2, p1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public addUceRegistrationOverrideShell(ILjava/util/Set;)Landroid/telephony/ims/RcsContactUceCapability;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/telephony/ims/RcsContactUceCapability;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/phone/ImsRcsController;->getRcsFeatureController(I)Lcom/android/services/telephony/rcs/RcsFeatureController;

    move-result-object p0

    const-class p1, Lcom/android/services/telephony/rcs/UceControllerManager;

    invoke-virtual {p0, p1}, Lcom/android/services/telephony/rcs/RcsFeatureController;->getFeature(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/services/telephony/rcs/UceControllerManager;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/services/telephony/rcs/UceControllerManager;->addUceRegistrationOverride(Ljava/util/Set;)Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Landroid/telephony/ims/ImsException;

    invoke-virtual {p0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object p2

    iget p0, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {p1, p2, p0}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method public clearUceRegistrationOverrideShell(I)Landroid/telephony/ims/RcsContactUceCapability;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/phone/ImsRcsController;->getRcsFeatureController(I)Lcom/android/services/telephony/rcs/RcsFeatureController;

    move-result-object p0

    const-class p1, Lcom/android/services/telephony/rcs/UceControllerManager;

    invoke-virtual {p0, p1}, Lcom/android/services/telephony/rcs/RcsFeatureController;->getFeature(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/services/telephony/rcs/UceControllerManager;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/services/telephony/rcs/UceControllerManager;->clearUceRegistrationOverride()Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Landroid/telephony/ims/ImsException;

    invoke-virtual {p0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget p0, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {p1, v0, p0}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method public createSipDelegate(ILandroid/telephony/ims/DelegateRequest;Ljava/lang/String;Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback;Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;)V
    .locals 13

    move-object v0, p0

    const-string v1, "createSipDelegate"

    invoke-direct {p0, v1}, Lcom/android/phone/ImsRcsController;->enforceImsSingleRegistrationPermission(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/phone/ImsRcsController;->isImsSingleRegistrationSupportedOnDevice()Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_2

    :try_start_0
    iget-object v1, v0, Lcom/android/phone/ImsRcsController;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v3, 0x0

    move-object/from16 v8, p3

    invoke-virtual {v1, v8, v3}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    if-ne v3, v1, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    invoke-direct {p0, p1}, Lcom/android/phone/ImsRcsController;->getRcsFeatureController(I)Lcom/android/services/telephony/rcs/RcsFeatureController;

    move-result-object v0

    const-class v1, Lcom/android/services/telephony/rcs/SipTransportController;

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/rcs/RcsFeatureController;->getFeature(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/services/telephony/rcs/SipTransportController;

    if-eqz v4, :cond_0

    move v5, p1

    move-object v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    :try_start_1
    invoke-virtual/range {v4 .. v10}, Lcom/android/services/telephony/rcs/SipTransportController;->createSipDelegate(IILandroid/telephony/ims/DelegateRequest;Ljava/lang/String;Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback;Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;)V
    :try_end_1
    .catch Landroid/telephony/ims/ImsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_2
    new-instance v0, Landroid/os/ServiceSpecificException;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsException;->getCode()I

    move-result v2

    invoke-virtual {v1}, Landroid/telephony/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_0
    new-instance v0, Landroid/os/ServiceSpecificException;

    const-string v1, "This subscription does not support the creation of SIP delegates"

    invoke-direct {v0, v2, v1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    :try_start_3
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "passed in packageName does not match the caller"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Passed in PackageName can not be found on device"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Landroid/os/ServiceSpecificException;

    const-string v1, "SipDelegate creation is only available to primary user."

    invoke-direct {v0, v2, v1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Landroid/os/ServiceSpecificException;

    const-string v1, "SipDelegate creation is only supported for devices supporting IMS single registration"

    invoke-direct {v0, v2, v1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public destroySipDelegate(ILandroid/telephony/ims/aidl/ISipDelegate;I)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/phone/ImsRcsController;->getRcsFeatureController(I)Lcom/android/services/telephony/rcs/RcsFeatureController;

    move-result-object p0

    const-class v2, Lcom/android/services/telephony/rcs/SipTransportController;

    invoke-virtual {p0, v2}, Lcom/android/services/telephony/rcs/RcsFeatureController;->getFeature(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/services/telephony/rcs/SipTransportController;
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/services/telephony/rcs/SipTransportController;->destroySipDelegate(ILandroid/telephony/ims/aidl/ISipDelegate;I)V
    :try_end_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_2
    const-string p1, "ImsRcsController"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "destroySipDelegate: error="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public getImsRcsRegistrationState(ILcom/android/internal/telephony/IIntegerConsumer;)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/ImsRcsController;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string v1, "getImsRcsRegistrationState"

    invoke-static {v0, p1, v1}, Lcom/android/internal/telephony/TelephonyPermissions;->enforceCallingOrSelfReadPrecisePhoneStatePermissionOrCarrierPrivilege(Landroid/content/Context;ILjava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/phone/ImsRcsController;->getRcsFeatureController(I)Lcom/android/services/telephony/rcs/RcsFeatureController;

    move-result-object p0

    new-instance p1, Lcom/android/phone/ImsRcsController$$ExternalSyntheticLambda1;

    invoke-direct {p1, p2}, Lcom/android/phone/ImsRcsController$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/IIntegerConsumer;)V

    invoke-virtual {p0, p1}, Lcom/android/services/telephony/rcs/RcsFeatureController;->getRegistrationState(Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public getImsRcsRegistrationTransportType(ILcom/android/internal/telephony/IIntegerConsumer;)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/ImsRcsController;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string v1, "getImsRcsRegistrationTransportType"

    invoke-static {v0, p1, v1}, Lcom/android/internal/telephony/TelephonyPermissions;->enforceCallingOrSelfReadPrecisePhoneStatePermissionOrCarrierPrivilege(Landroid/content/Context;ILjava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/phone/ImsRcsController;->getRcsFeatureController(I)Lcom/android/services/telephony/rcs/RcsFeatureController;

    move-result-object p0

    new-instance p1, Lcom/android/phone/ImsRcsController$$ExternalSyntheticLambda0;

    invoke-direct {p1, p2}, Lcom/android/phone/ImsRcsController$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/IIntegerConsumer;)V

    invoke-virtual {p0, p1}, Lcom/android/services/telephony/rcs/RcsFeatureController;->getRegistrationTech(Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public getLastUcePidfXmlShell(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/phone/ImsRcsController;->getRcsFeatureController(I)Lcom/android/services/telephony/rcs/RcsFeatureController;

    move-result-object p0

    const-class p1, Lcom/android/services/telephony/rcs/UceControllerManager;

    invoke-virtual {p0, p1}, Lcom/android/services/telephony/rcs/RcsFeatureController;->getFeature(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/services/telephony/rcs/UceControllerManager;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/services/telephony/rcs/UceControllerManager;->getLastPidfXml()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "none"
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Landroid/telephony/ims/ImsException;

    invoke-virtual {p0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget p0, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {p1, v0, p0}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method public getLatestRcsContactUceCapabilityShell(I)Landroid/telephony/ims/RcsContactUceCapability;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/phone/ImsRcsController;->getRcsFeatureController(I)Lcom/android/services/telephony/rcs/RcsFeatureController;

    move-result-object p0

    const-class p1, Lcom/android/services/telephony/rcs/UceControllerManager;

    invoke-virtual {p0, p1}, Lcom/android/services/telephony/rcs/RcsFeatureController;->getFeature(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/services/telephony/rcs/UceControllerManager;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/services/telephony/rcs/UceControllerManager;->getLatestRcsContactUceCapability()Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Landroid/telephony/ims/ImsException;

    invoke-virtual {p0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget p0, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {p1, v0, p0}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method public getUcePublishState(I)I
    .locals 5

    const-string v0, "getUcePublishState"

    invoke-direct {p0, v0}, Lcom/android/phone/ImsRcsController;->enforceReadPrivilegedPermission(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/phone/ImsRcsController;->getRcsFeatureController(I)Lcom/android/services/telephony/rcs/RcsFeatureController;

    move-result-object p0

    const-class p1, Lcom/android/services/telephony/rcs/UceControllerManager;

    invoke-virtual {p0, p1}, Lcom/android/services/telephony/rcs/RcsFeatureController;->getFeature(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/services/telephony/rcs/UceControllerManager;

    if-eqz p0, :cond_0

    const-wide/32 v3, 0xc17ed96

    invoke-static {v3, v4, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/services/telephony/rcs/UceControllerManager;->getUcePublishState(Z)I

    move-result p0
    :try_end_0
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/ServiceSpecificException;

    const-string p1, "This subscription does not support UCE."

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p0
    :try_end_1
    .catch Landroid/telephony/ims/ImsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    new-instance p1, Landroid/os/ServiceSpecificException;

    invoke-virtual {p0}, Landroid/telephony/ims/ImsException;->getCode()I

    move-result v0

    invoke-virtual {p0}, Landroid/telephony/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public isAvailable(III)Z
    .locals 4

    const-string v0, "isAvailable"

    invoke-direct {p0, v0}, Lcom/android/phone/ImsRcsController;->enforceReadPrivilegedPermission(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/phone/ImsRcsController;->getRcsFeatureController(I)Lcom/android/services/telephony/rcs/RcsFeatureController;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/android/services/telephony/rcs/RcsFeatureController;->isAvailable(II)Z

    move-result p0
    :try_end_0
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_1
    const-string p3, "ImsRcsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAvailable: sudId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", capability="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/telephony/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/os/ServiceSpecificException;

    invoke-virtual {p0}, Landroid/telephony/ims/ImsException;->getCode()I

    move-result p2

    invoke-virtual {p0}, Landroid/telephony/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public isCapable(III)Z
    .locals 4

    const-string v0, "isCapable"

    invoke-direct {p0, v0}, Lcom/android/phone/ImsRcsController;->enforceReadPrivilegedPermission(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/phone/ImsRcsController;->getRcsFeatureController(I)Lcom/android/services/telephony/rcs/RcsFeatureController;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/android/services/telephony/rcs/RcsFeatureController;->isCapable(II)Z

    move-result p0
    :try_end_0
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_1
    const-string p3, "ImsRcsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCapable: sudId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", capability="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/telephony/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/os/ServiceSpecificException;

    invoke-virtual {p0}, Landroid/telephony/ims/ImsException;->getCode()I

    move-result p2

    invoke-virtual {p0}, Landroid/telephony/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public isSipDelegateSupported(I)Z
    .locals 4

    iget-object v0, p0, Lcom/android/phone/ImsRcsController;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string v2, "android.permission.PERFORM_IMS_SINGLE_REGISTRATION"

    const-string v3, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "isSipDelegateSupported"

    invoke-static {v0, v1, v3, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->enforceAnyPermissionGranted(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/phone/ImsRcsController;->isImsSingleRegistrationSupportedOnDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/phone/ImsRcsController;->getRcsFeatureController(I)Lcom/android/services/telephony/rcs/RcsFeatureController;

    move-result-object p0

    const-class v0, Lcom/android/services/telephony/rcs/SipTransportController;

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/rcs/RcsFeatureController;->getFeature(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/services/telephony/rcs/SipTransportController;
    :try_end_0
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :cond_1
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/services/telephony/rcs/SipTransportController;->isSupported(I)Z

    move-result p0
    :try_end_1
    .catch Landroid/telephony/ims/ImsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    iget p1, p0, Landroid/os/ServiceSpecificException;->errorCode:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :cond_2
    :try_start_3
    throw p0

    :catch_1
    move-exception p0

    new-instance p1, Landroid/os/ServiceSpecificException;

    invoke-virtual {p0}, Landroid/telephony/ims/ImsException;->getCode()I

    move-result v0

    invoke-virtual {p0}, Landroid/telephony/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public isUceSettingEnabled(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/phone/ImsRcsController;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string v1, "isUceSettingEnabled"

    invoke-static {v0, p1, p2, p3, v1}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_0

    const-string p0, "ImsRcsController"

    const-string p1, "isUceSettingEnabled: READ_PHONE_STATE app op disabled when accessing isUceSettingEnabled"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p3

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    const-string p2, "ims_rcs_uce_enabled"

    iget-object p0, p0, Lcom/android/phone/ImsRcsController;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-static {p1, p2, p3, p0}, Landroid/telephony/SubscriptionManager;->getBooleanSubscriptionProperty(ILjava/lang/String;ZLandroid/content/Context;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public registerImsRegistrationCallback(ILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .locals 4

    iget-object v0, p0, Lcom/android/phone/ImsRcsController;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string v1, "registerImsRegistrationCallback"

    invoke-static {v0, p1, v1}, Lcom/android/internal/telephony/TelephonyPermissions;->enforceCallingOrSelfReadPrecisePhoneStatePermissionOrCarrierPrivilege(Landroid/content/Context;ILjava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/phone/ImsRcsController;->getRcsFeatureController(I)Lcom/android/services/telephony/rcs/RcsFeatureController;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/services/telephony/rcs/RcsFeatureController;->registerImsRegistrationCallback(ILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    :try_end_0
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_1
    const-string p2, "ImsRcsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerImsRegistrationCallback: sudId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/telephony/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/os/ServiceSpecificException;

    invoke-virtual {p0}, Landroid/telephony/ims/ImsException;->getCode()I

    move-result p0

    invoke-direct {p1, p0}, Landroid/os/ServiceSpecificException;-><init>(I)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public registerRcsAvailabilityCallback(ILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .locals 4

    const-string v0, "registerRcsAvailabilityCallback"

    invoke-direct {p0, v0}, Lcom/android/phone/ImsRcsController;->enforceReadPrivilegedPermission(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/phone/ImsRcsController;->getRcsFeatureController(I)Lcom/android/services/telephony/rcs/RcsFeatureController;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/services/telephony/rcs/RcsFeatureController;->registerRcsAvailabilityCallback(ILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    :try_end_0
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_1
    const-string p2, "ImsRcsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerRcsAvailabilityCallback: sudId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/telephony/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/os/ServiceSpecificException;

    invoke-virtual {p0}, Landroid/telephony/ims/ImsException;->getCode()I

    move-result p0

    invoke-direct {p1, p0}, Landroid/os/ServiceSpecificException;-><init>(I)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public registerRcsFeatureCallback(ILcom/android/ims/internal/IImsServiceFeatureCallback;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/phone/ImsRcsController;->enforceModifyPermission()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object p0, p0, Lcom/android/phone/ImsRcsController;->mImsResolver:Lcom/android/internal/telephony/ims/ImsResolver;

    const/4 v2, 0x2

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, v2, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->listenForFeature(IILcom/android/ims/internal/IImsServiceFeatureCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/ServiceSpecificException;

    const-string p1, "Device does not support IMS"

    invoke-direct {p0, v2, p1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public registerSipDialogStateCallback(ILcom/android/internal/telephony/ISipDialogStateCallback;)V
    .locals 3

    const-string v0, "registerSipDialogStateCallback"

    invoke-direct {p0, v0}, Lcom/android/phone/ImsRcsController;->enforceReadPrivilegedPermission(Ljava/lang/String;)V

    if-eqz p2, :cond_2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/phone/ImsRcsController;->getRcsFeatureController(I)Lcom/android/services/telephony/rcs/RcsFeatureController;

    move-result-object p0

    const-class v2, Lcom/android/services/telephony/rcs/SipTransportController;

    invoke-virtual {p0, v2}, Lcom/android/services/telephony/rcs/RcsFeatureController;->getFeature(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/services/telephony/rcs/SipTransportController;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/services/telephony/rcs/SipTransportController;->addCallbackForSipDialogState(ILcom/android/internal/telephony/ISipDialogStateCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/ServiceSpecificException;

    const-string p1, "This transport does not support the registerSipDialogStateCallback of SIP delegates"

    const/4 p2, 0x1

    invoke-direct {p0, p2, p1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid Subscription ID: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "SipDialogStateCallback is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerUcePublishStateCallback(ILandroid/telephony/ims/aidl/IRcsUcePublishStateCallback;)V
    .locals 5

    const-string v0, "registerUcePublishStateCallback"

    invoke-direct {p0, v0}, Lcom/android/phone/ImsRcsController;->enforceReadPrivilegedPermission(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/phone/ImsRcsController;->getRcsFeatureController(I)Lcom/android/services/telephony/rcs/RcsFeatureController;

    move-result-object p0

    const-class p1, Lcom/android/services/telephony/rcs/UceControllerManager;

    invoke-virtual {p0, p1}, Lcom/android/services/telephony/rcs/RcsFeatureController;->getFeature(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/services/telephony/rcs/UceControllerManager;

    if-eqz p0, :cond_0

    const-wide/32 v3, 0xc17ed96

    invoke-static {v3, v4, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/android/services/telephony/rcs/UceControllerManager;->registerPublishStateCallback(Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;Z)V
    :try_end_0
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/ServiceSpecificException;

    const-string p1, "This subscription does not support UCE."

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p0
    :try_end_1
    .catch Landroid/telephony/ims/ImsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    new-instance p1, Landroid/os/ServiceSpecificException;

    invoke-virtual {p0}, Landroid/telephony/ims/ImsException;->getCode()I

    move-result p2

    invoke-virtual {p0}, Landroid/telephony/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public removeUceRegistrationOverrideShell(ILjava/util/Set;)Landroid/telephony/ims/RcsContactUceCapability;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/telephony/ims/RcsContactUceCapability;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/phone/ImsRcsController;->getRcsFeatureController(I)Lcom/android/services/telephony/rcs/RcsFeatureController;

    move-result-object p0

    const-class p1, Lcom/android/services/telephony/rcs/UceControllerManager;

    invoke-virtual {p0, p1}, Lcom/android/services/telephony/rcs/RcsFeatureController;->getFeature(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/services/telephony/rcs/UceControllerManager;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/services/telephony/rcs/UceControllerManager;->removeUceRegistrationOverride(Ljava/util/Set;)Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Landroid/telephony/ims/ImsException;

    invoke-virtual {p0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object p2

    iget p0, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {p1, p2, p0}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method public removeUceRequestDisallowedStatus(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/android/phone/ImsRcsController;->getRcsFeatureController(IZ)Lcom/android/services/telephony/rcs/RcsFeatureController;

    move-result-object p0

    const-class p1, Lcom/android/services/telephony/rcs/UceControllerManager;

    invoke-virtual {p0, p1}, Lcom/android/services/telephony/rcs/RcsFeatureController;->getFeature(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/services/telephony/rcs/UceControllerManager;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/services/telephony/rcs/UceControllerManager;->removeUceRequestDisallowedStatus()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Landroid/telephony/ims/ImsException;

    invoke-virtual {p0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget p0, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {p1, v0, p0}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method public requestAvailability(ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/telephony/ims/aidl/IRcsUceControllerCallback;)V
    .locals 0

    const-string p2, "requestAvailability"

    invoke-direct {p0, p2}, Lcom/android/phone/ImsRcsController;->enforceAccessUserCapabilityExchangePermission(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/android/phone/ImsRcsController;->enforceReadContactsPermission(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p2

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/phone/ImsRcsController;->getRcsFeatureController(I)Lcom/android/services/telephony/rcs/RcsFeatureController;

    move-result-object p0

    const-class p1, Lcom/android/services/telephony/rcs/UceControllerManager;

    invoke-virtual {p0, p1}, Lcom/android/services/telephony/rcs/RcsFeatureController;->getFeature(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/services/telephony/rcs/UceControllerManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p4, p5}, Lcom/android/services/telephony/rcs/UceControllerManager;->requestNetworkAvailability(Landroid/net/Uri;Landroid/telephony/ims/aidl/IRcsUceControllerCallback;)V
    :try_end_0
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/ServiceSpecificException;

    const-string p1, "This subscription does not support UCE."

    const/4 p4, 0x2

    invoke-direct {p0, p4, p1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p0
    :try_end_1
    .catch Landroid/telephony/ims/ImsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    new-instance p1, Landroid/os/ServiceSpecificException;

    invoke-virtual {p0}, Landroid/telephony/ims/ImsException;->getCode()I

    move-result p4

    invoke-virtual {p0}, Landroid/telephony/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p4, p0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public requestCapabilities(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/telephony/ims/aidl/IRcsUceControllerCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/telephony/ims/aidl/IRcsUceControllerCallback;",
            ")V"
        }
    .end annotation

    const-string p2, "requestCapabilities"

    invoke-direct {p0, p2}, Lcom/android/phone/ImsRcsController;->enforceAccessUserCapabilityExchangePermission(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/android/phone/ImsRcsController;->enforceReadContactsPermission(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p2

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/phone/ImsRcsController;->getRcsFeatureController(I)Lcom/android/services/telephony/rcs/RcsFeatureController;

    move-result-object p0

    const-class p1, Lcom/android/services/telephony/rcs/UceControllerManager;

    invoke-virtual {p0, p1}, Lcom/android/services/telephony/rcs/RcsFeatureController;->getFeature(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/services/telephony/rcs/UceControllerManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p4, p5}, Lcom/android/services/telephony/rcs/UceControllerManager;->requestCapabilities(Ljava/util/List;Landroid/telephony/ims/aidl/IRcsUceControllerCallback;)V
    :try_end_0
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/ServiceSpecificException;

    const-string p1, "This subscription does not support UCE."

    const/4 p4, 0x2

    invoke-direct {p0, p4, p1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p0
    :try_end_1
    .catch Landroid/telephony/ims/ImsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    new-instance p1, Landroid/os/ServiceSpecificException;

    invoke-virtual {p0}, Landroid/telephony/ims/ImsException;->getCode()I

    move-result p4

    invoke-virtual {p0}, Landroid/telephony/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p4, p0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public setCapabilitiesRequestTimeout(IJ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/android/phone/ImsRcsController;->getRcsFeatureController(IZ)Lcom/android/services/telephony/rcs/RcsFeatureController;

    move-result-object p0

    const-class p1, Lcom/android/services/telephony/rcs/UceControllerManager;

    invoke-virtual {p0, p1}, Lcom/android/services/telephony/rcs/RcsFeatureController;->getFeature(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/services/telephony/rcs/UceControllerManager;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/android/services/telephony/rcs/UceControllerManager;->setCapabilitiesRequestTimeout(J)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Landroid/telephony/ims/ImsException;

    invoke-virtual {p0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object p2

    iget p0, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {p1, p2, p0}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method setDeviceSingleRegistrationSupportOverride(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/ImsRcsController;->mSingleRegistrationOverride:Ljava/lang/Boolean;

    return-void
.end method

.method setRcsService(Lcom/android/services/telephony/rcs/TelephonyRcsService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/ImsRcsController;->mRcsService:Lcom/android/services/telephony/rcs/TelephonyRcsService;

    return-void
.end method

.method public setUceSettingEnabled(IZ)V
    .locals 2

    invoke-direct {p0}, Lcom/android/phone/ImsRcsController;->enforceModifyPermission()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    const-string p0, "ims_rcs_uce_enabled"

    if-eqz p2, :cond_0

    const-string p2, "1"

    goto :goto_0

    :cond_0
    const-string p2, "0"

    :goto_0
    invoke-static {p1, p0, p2}, Landroid/telephony/SubscriptionManager;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public triggerNetworkRegistration(ILandroid/telephony/ims/aidl/ISipDelegate;ILjava/lang/String;)V
    .locals 3

    const-string v0, "triggerNetworkRegistration"

    invoke-direct {p0, v0}, Lcom/android/phone/ImsRcsController;->enforceImsSingleRegistrationPermission(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/phone/ImsRcsController;->getRcsFeatureController(I)Lcom/android/services/telephony/rcs/RcsFeatureController;

    move-result-object p0

    const-class v2, Lcom/android/services/telephony/rcs/SipTransportController;

    invoke-virtual {p0, v2}, Lcom/android/services/telephony/rcs/RcsFeatureController;->getFeature(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/services/telephony/rcs/SipTransportController;
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/services/telephony/rcs/SipTransportController;->triggerFullNetworkRegistration(ILandroid/telephony/ims/aidl/ISipDelegate;ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_2
    const-string p1, "ImsRcsController"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "triggerNetworkRegistration: error="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public unregisterImsFeatureCallback(Lcom/android/ims/internal/IImsServiceFeatureCallback;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/phone/ImsRcsController;->enforceModifyPermission()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object p0, p0, Lcom/android/phone/ImsRcsController;->mImsResolver:Lcom/android/internal/telephony/ims/ImsResolver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->unregisterImsFeatureCallback(Lcom/android/ims/internal/IImsServiceFeatureCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public unregisterImsRegistrationCallback(ILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/ImsRcsController;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string v1, "unregisterImsRegistrationCallback"

    invoke-static {v0, p1, v1}, Lcom/android/internal/telephony/TelephonyPermissions;->enforceCallingOrSelfReadPrecisePhoneStatePermissionOrCarrierPrivilege(Landroid/content/Context;ILjava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/phone/ImsRcsController;->getRcsFeatureController(I)Lcom/android/services/telephony/rcs/RcsFeatureController;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/services/telephony/rcs/RcsFeatureController;->unregisterImsRegistrationCallback(ILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_1
    const-string p1, "ImsRcsController"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterImsRegistrationCallback: error="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public unregisterRcsAvailabilityCallback(ILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .locals 3

    const-string v0, "unregisterRcsAvailabilityCallback"

    invoke-direct {p0, v0}, Lcom/android/phone/ImsRcsController;->enforceReadPrivilegedPermission(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/phone/ImsRcsController;->getRcsFeatureController(I)Lcom/android/services/telephony/rcs/RcsFeatureController;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/services/telephony/rcs/RcsFeatureController;->unregisterRcsAvailabilityCallback(ILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_1
    const-string p1, "ImsRcsController"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterRcsAvailabilityCallback: error="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public unregisterSipDialogStateCallback(ILcom/android/internal/telephony/ISipDialogStateCallback;)V
    .locals 3

    const-string v0, "unregisterSipDialogStateCallback"

    invoke-direct {p0, v0}, Lcom/android/phone/ImsRcsController;->enforceReadPrivilegedPermission(Ljava/lang/String;)V

    if-eqz p2, :cond_2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/phone/ImsRcsController;->getRcsFeatureController(I)Lcom/android/services/telephony/rcs/RcsFeatureController;

    move-result-object p0

    const-class v2, Lcom/android/services/telephony/rcs/SipTransportController;

    invoke-virtual {p0, v2}, Lcom/android/services/telephony/rcs/RcsFeatureController;->getFeature(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/services/telephony/rcs/SipTransportController;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/services/telephony/rcs/SipTransportController;->removeCallbackForSipDialogState(ILcom/android/internal/telephony/ISipDialogStateCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/ServiceSpecificException;

    const-string p1, "This transport does not support the unregisterSipDialogStateCallback of SIP delegates"

    const/4 p2, 0x1

    invoke-direct {p0, p2, p1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid Subscription ID: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "SipDialogStateCallback is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unregisterUcePublishStateCallback(ILandroid/telephony/ims/aidl/IRcsUcePublishStateCallback;)V
    .locals 3

    const-string v0, "unregisterUcePublishStateCallback"

    invoke-direct {p0, v0}, Lcom/android/phone/ImsRcsController;->enforceReadPrivilegedPermission(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/phone/ImsRcsController;->getRcsFeatureController(I)Lcom/android/services/telephony/rcs/RcsFeatureController;

    move-result-object p0

    const-class p1, Lcom/android/services/telephony/rcs/UceControllerManager;

    invoke-virtual {p0, p1}, Lcom/android/services/telephony/rcs/RcsFeatureController;->getFeature(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/services/telephony/rcs/UceControllerManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/services/telephony/rcs/UceControllerManager;->unregisterPublishStateCallback(Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/ServiceSpecificException;

    const-string p1, "This subscription does not support UCE."

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p0
    :try_end_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_2
    const-string p1, "ImsRcsController"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterUcePublishStateCallback: error="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method
