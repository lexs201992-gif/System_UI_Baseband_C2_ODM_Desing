.class public Lcom/android/services/telephony/rcs/RcsFeatureController;
.super Ljava/lang/Object;
.source "RcsFeatureController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/services/telephony/rcs/RcsFeatureController$FeatureConnectorFactory;,
        Lcom/android/services/telephony/rcs/RcsFeatureController$RegistrationHelperFactory;,
        Lcom/android/services/telephony/rcs/RcsFeatureController$Feature;
    }
.end annotation


# instance fields
.field private mAssociatedSubId:I

.field private final mContext:Landroid/content/Context;

.field private mFeatureConnector:Lcom/android/ims/FeatureConnector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/ims/FeatureConnector<",
            "Lcom/android/ims/RcsFeatureManager;",
            ">;"
        }
    .end annotation
.end field

.field private mFeatureConnectorListener:Lcom/android/ims/FeatureConnector$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/ims/FeatureConnector$Listener<",
            "Lcom/android/ims/RcsFeatureManager;",
            ">;"
        }
    .end annotation
.end field

.field private mFeatureFactory:Lcom/android/services/telephony/rcs/RcsFeatureController$FeatureConnectorFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/services/telephony/rcs/RcsFeatureController$FeatureConnectorFactory<",
            "Lcom/android/ims/RcsFeatureManager;",
            ">;"
        }
    .end annotation
.end field

.field private mFeatureManager:Lcom/android/ims/RcsFeatureManager;

.field private final mFeatures:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/android/services/telephony/rcs/RcsFeatureController$Feature;",
            ">;"
        }
    .end annotation
.end field

.field private final mImsRcsRegistrationHelper:Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper;

.field private final mLock:Ljava/lang/Object;

.field private mRcsRegistrationUpdate:Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper$ImsRegistrationUpdate;

.field private mRegistrationHelperFactory:Lcom/android/services/telephony/rcs/RcsFeatureController$RegistrationHelperFactory;

.field private final mSlotId:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmSlotId(Lcom/android/services/telephony/rcs/RcsFeatureController;)I
    .locals 0

    iget p0, p0, Lcom/android/services/telephony/rcs/RcsFeatureController;->mSlotId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$mlogd(Lcom/android/services/telephony/rcs/RcsFeatureController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/services/telephony/rcs/RcsFeatureController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mloge(Lcom/android/services/telephony/rcs/RcsFeatureController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/services/telephony/rcs/RcsFeatureController;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mlogw(Lcom/android/services/telephony/rcs/RcsFeatureController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/services/telephony/rcs/RcsFeatureController;->logw(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveConnectionToService(Lcom/android/services/telephony/rcs/RcsFeatureController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/services/telephony/rcs/RcsFeatureController;->removeConnectionToService()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetupConnectionToService(Lcom/android/services/telephony/rcs/RcsFeatureController;Lcom/android/ims/RcsFeatureManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/services/telephony/rcs/RcsFeatureController;->setupConnectionToService(Lcom/android/ims/RcsFeatureManager;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateConnectionStatus(Lcom/android/services/telephony/rcs/RcsFeatureController;Lcom/android/ims/RcsFeatureManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/services/telephony/rcs/RcsFeatureController;->updateConnectionStatus(Lcom/android/ims/RcsFeatureManager;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/services/telephony/rcs/RcsFeatureController$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/services/telephony/rcs/RcsFeatureController$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Lcom/android/services/telephony/rcs/RcsFeatureController;->mFeatureFactory:Lcom/android/services/telephony/rcs/RcsFeatureController$FeatureConnectorFactory;

    new-instance v0, Lcom/android/services/telephony/rcs/RcsFeatureController$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/services/telephony/rcs/RcsFeatureController$$ExternalSyntheticLambda1;-><init>()V

    iput-object v0, p0, Lcom/android/services/telephony/rcs/RcsFeatureController;->mRegistrationHelperFactory:Lcom/android/services/telephony/rcs/RcsFeatureController$RegistrationHelperFactory;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/services/telephony/rcs/RcsFeatureController;->mFeatures:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/services/telephony/rcs/RcsFeatureController;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/services/telephony/rcs/RcsFeatureController$1;

    invoke-direct {v0, p0}, Lcom/android/services/telephony/rcs/RcsFeatureController$1;-><init>(Lcom/android/services/telephony/rcs/RcsFeatureController;)V

    iput-object v0, p0, Lcom/android/services/telephony/rcs/RcsFeatureController;->mFeatureConnectorListener:Lcom/android/ims/FeatureConnector$Listener;

    new-instance v0, Lcom/android/services/telephony/rcs/RcsFeatureController$2;

    invoke-direct {v0, p0}, Lcom/android/services/telephony/rcs/RcsFeatureController$2;-><init>(Lcom/android/services/telephony/rcs/RcsFeatureController;)V

    iput-object v0, p0, Lcom/android/services/telephony/rcs/RcsFeatureController;->mRcsRegistrationUpdate:Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper$ImsRegistrationUpdate;

    iput-object p1, p0, Lcom/android/services/telephony/rcs/RcsFeatureController;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/services/telephony/rcs/RcsFeatureController;->mSlotId:I

    iput p3, p0, Lcom/android/services/telephony/rcs/RcsFeatureController;->mAssociatedSubId:I

    iget-object p2, p0, Lcom/android/services/telephony/rcs/RcsFeatureController;->mRegistrationHelperFactory:Lcom/android/services/telephony/rcs/RcsFeatureController$RegistrationHelperFactory;

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/android/services/telephony/rcs/RcsFeatureController$RegistrationHelperFactory;->create(Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper$ImsRegistrationUpdate;Ljava/util/concurrent/Executor;)Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/services/telephony/rcs/RcsFeatureController;->mImsRcsRegistrationHelper:Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILcom/android/services/telephony/rcs/RcsFeatureController$RegistrationHelperFactory;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/services/telephony/rcs/RcsFeatureController$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/services/telephony/rcs/RcsFeatureController$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Lcom/android/services/telephony/rcs/RcsFeatureController;->mFeatureFactory:Lcom/android/services/telephony/rcs/RcsFeatureController$FeatureConnectorFactory;

    new-instance v0, Lcom/android/services/telephony/rcs/RcsFeatureController$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/services/telephony/rcs/RcsFeatureController$$ExternalSyntheticLambda1;-><init>()V

    iput-object v0, p0, Lcom/android/services/telephony/rcs/RcsFeatureController;->mRegistrationHelperFactory:Lcom/android/services/telephony/rcs/RcsFeatureController$RegistrationHelperFactory;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/services/telephony/rcs/RcsFeatureController;->mFeatures:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/services/telephony/rcs/RcsFeatureController;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/services/telephony/rcs/RcsFeatureController$1;

    invoke-direct {v0, p0}, Lcom/android/services/telephony/rcs/RcsFeatureController$1;-><init>(Lcom/android/services/telephony/rcs/RcsFeatureController;)V

    iput-object v0, p0, Lcom/android/services/telephony/rcs/RcsFeatureController;->mFeatureConnectorListener:Lcom/android/ims/FeatureConnector$Listener;

    new-instance v0, Lcom/android/services/telephony/rcs/RcsFeatureController$2;

    invoke-direct {v0, p0}, Lcom/android/services/telephony/rcs/RcsFeatureController$2;-><init>(Lcom/android/services/telephony/rcs/RcsFeatureController;)V

    iput-object v0, p0, Lcom/android/services/telephony/rcs/RcsFeatureController;->mRcsRegistrationUpdate:Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper$ImsRegistrationUpdate;

    iput-object p1, p0, Lcom/android/services/telephony/rcs/RcsFeatureController;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/services/telephony/rcs/RcsFeatureController;->mSlotId:I

    iput p3, p0, Lcom/android/services/telephony/rcs/RcsFeatureController;->mAssociatedSubId:I

    iput-object p4, p0, Lcom/android/services/telephony/rcs/RcsFeatureController;->mRegistrationHelperFactory:Lcom/android/services/telephony/rcs/RcsFeatureController$RegistrationHelperFactory;

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p4, v0, p1}, Lcom/android/services/telephony/rcs/RcsFeatureController$RegistrationHelperFactory;->create(Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper$ImsRegistrationUpdate;Ljava/util/concurrent/Executor;)Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/services/telephony/rcs/RcsFeatureController;->mImsRcsRegistrationHelper:Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper;

    return-void
.end method

.method private getFeatureManager()Lcom/android/ims/RcsFeatureManager;
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/rcs/RcsFeatureController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/services/telephony/rcs/RcsFeatureController;->mFeatureManager:Lcom/android/ims/RcsFeatureManager;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private getLogPrefix()Ljava/lang/StringBuilder;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/services/telephony/rcs/RcsFeatureController;->mSlotId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/services/telephony/rcs/RcsFeatureController;->getLogPrefix()Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RcsFeatureController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/services/telephony/rcs/RcsFeatureController;->getLogPrefix()Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RcsFeatureController"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private logw(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/services/telephony/rcs/RcsFeatureController;->getLogPrefix()Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RcsFeatureController"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private removeConnectionToService()V
    .locals 2

    const-string v0, "removeConnectionToService"

    invoke-direct {p0, v0}, Lcom/android/services/telephony/rcs/RcsFeatureController;->logd(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/services/telephony/rcs/RcsFeatureController;->getFeatureManager()Lcom/android/ims/RcsFeatureManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/services/telephony/rcs/RcsFeatureController;->mImsRcsRegistrationHelper:Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper;->getCallbackBinder()Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/RcsFeatureManager;->unregisterImsRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    invoke-virtual {v0}, Lcom/android/ims/RcsFeatureManager;->releaseConnection()V

    :cond_0
    iget-object p0, p0, Lcom/android/services/telephony/rcs/RcsFeatureController;->mImsRcsRegistrationHelper:Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper;->reset()V

    return-void
.end method

.method private setupConnectionToService(Lcom/android/ims/RcsFeatureManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    const-string v0, "setupConnectionToService"

    invoke-direct {p0, v0}, Lcom/android/services/telephony/rcs/RcsFeatureController;->logd(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/ims/RcsFeatureManager;->openConnection()V

    iget v0, p0, Lcom/android/services/telephony/rcs/RcsFeatureController;->mAssociatedSubId:I

    invoke-virtual {p1, v0}, Lcom/android/ims/RcsFeatureManager;->updateCapabilities(I)V

    iget-object p0, p0, Lcom/android/services/telephony/rcs/RcsFeatureController;->mImsRcsRegistrationHelper:Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper;->getCallbackBinder()Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/ims/RcsFeatureManager;->registerImsRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    return-void
.end method

.method private updateCapabilities()V
    .locals 2

    invoke-direct {p0}, Lcom/android/services/telephony/rcs/RcsFeatureController;->getFeatureManager()Lcom/android/ims/RcsFeatureManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget p0, p0, Lcom/android/services/telephony/rcs/RcsFeatureController;->mAssociatedSubId:I

    invoke-virtual {v0, p0}, Lcom/android/ims/RcsFeatureManager;->updateCapabilities(I)V
    :try_end_0
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCapabilities failed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "RcsFeatureController"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private updateConnectionStatus(Lcom/android/ims/RcsFeatureManager;)V
    .locals 2

    iget-object v0, p0, Lcom/android/services/telephony/rcs/RcsFeatureController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/android/services/telephony/rcs/RcsFeatureController;->mFeatureManager:Lcom/android/ims/RcsFeatureManager;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/services/telephony/rcs/RcsFeatureController;->mFeatures:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/services/telephony/rcs/RcsFeatureController$Feature;

    invoke-interface {v1, p1}, Lcom/android/services/telephony/rcs/RcsFeatureController$Feature;->onRcsConnected(Lcom/android/ims/RcsFeatureManager;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/services/telephony/rcs/RcsFeatureController;->mFeatures:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/services/telephony/rcs/RcsFeatureController$Feature;

    invoke-interface {p1}, Lcom/android/services/telephony/rcs/RcsFeatureController$Feature;->onRcsDisconnected()V

    goto :goto_1

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public addFeature(Lcom/android/services/telephony/rcs/RcsFeatureController$Feature;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/services/telephony/rcs/RcsFeatureController$Feature;",
            ">(TT;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/services/telephony/rcs/RcsFeatureController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/services/telephony/rcs/RcsFeatureController;->mFeatures:Ljava/util/Map;

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/android/services/telephony/rcs/RcsFeatureController;->getFeatureManager()Lcom/android/ims/RcsFeatureManager;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p1, p0}, Lcom/android/services/telephony/rcs/RcsFeatureController$Feature;->onRcsConnected(Lcom/android/ims/RcsFeatureManager;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/android/services/telephony/rcs/RcsFeatureController$Feature;->onRcsDisconnected()V

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public connect()V
    .locals 7

    iget-object v0, p0, Lcom/android/services/telephony/rcs/RcsFeatureController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/services/telephony/rcs/RcsFeatureController;->mFeatureConnector:Lcom/android/ims/FeatureConnector;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/services/telephony/rcs/RcsFeatureController;->mFeatureFactory:Lcom/android/services/telephony/rcs/RcsFeatureController$FeatureConnectorFactory;

    iget-object v2, p0, Lcom/android/services/telephony/rcs/RcsFeatureController;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/services/telephony/rcs/RcsFeatureController;->mSlotId:I

    iget-object v4, p0, Lcom/android/services/telephony/rcs/RcsFeatureController;->mFeatureConnectorListener:Lcom/android/ims/FeatureConnector$Listener;

    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v5

    const-string v6, "RcsFeatureController"

    invoke-interface/range {v1 .. v6}, Lcom/android/services/telephony/rcs/RcsFeatureController$FeatureConnectorFactory;->create(Landroid/content/Context;ILcom/android/ims/FeatureConnector$Listener;Ljava/util/concurrent/Executor;Ljava/lang/String;)Lcom/android/ims/FeatureConnector;

    move-result-object v1

    iput-object v1, p0, Lcom/android/services/telephony/rcs/RcsFeatureController;->mFeatureConnector:Lcom/android/ims/FeatureConnector;

    invoke-virtual {v1}, Lcom/android/ims/FeatureConnector;->connect()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public destroy()V
    .locals 4

    iget-object v0, p0, Lcom/android/services/telephony/rcs/RcsFeatureController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "RcsFeatureController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "destroy: slotId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/services/telephony/rcs/RcsFeatureController;->mSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/services/telephony/rcs/RcsFeatureController;->mFeatureConnector:Lcom/android/ims/FeatureConnector;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/ims/FeatureConnector;->disconnect()V

    :cond_0
    iget-object v1, p0, Lcom/android/services/telephony/rcs/RcsFeatureController;->mFeatures:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/services/telephony/rcs/RcsFeatureController$Feature;

    invoke-interface {v2}, Lcom/android/services/telephony/rcs/RcsFeatureController$Feature;->onRcsDisconnected()V

    invoke-interface {v2}, Lcom/android/services/telephony/rcs/RcsFeatureController$Feature;->onDestroy()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/services/telephony/rcs/RcsFeatureController;->mFeatures:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    new-instance p1, Lcom/android/internal/telephony/IndentingPrintWriter;

    const-string p3, "  "

    invoke-direct {p1, p2, p3}, Lcom/android/internal/telephony/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    const-string p2, "slotId="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/services/telephony/rcs/RcsFeatureController;->mSlotId:I

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    const-string p2, "RegistrationState="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/services/telephony/rcs/RcsFeatureController;->mImsRcsRegistrationHelper:Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper;

    invoke-virtual {p2}, Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper;->getImsRegistrationState()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    const-string p2, "connected="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/services/telephony/rcs/RcsFeatureController;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object p3, p0, Lcom/android/services/telephony/rcs/RcsFeatureController;->mFeatureManager:Lcom/android/ims/RcsFeatureManager;

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->println()V

    const-string p3, "RcsFeatureControllers:"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    iget-object p0, p0, Lcom/android/services/telephony/rcs/RcsFeatureController;->mFeatures:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/services/telephony/rcs/RcsFeatureController$Feature;

    invoke-interface {p3, p1}, Lcom/android/services/telephony/rcs/RcsFeatureController$Feature;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->println()V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getAssociatedSubId()I
    .locals 0

    invoke-direct {p0}, Lcom/android/services/telephony/rcs/RcsFeatureController;->getFeatureManager()Lcom/android/ims/RcsFeatureManager;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/ims/RcsFeatureManager;->getSubId()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getFeature(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/services/telephony/rcs/RcsFeatureController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/services/telephony/rcs/RcsFeatureController;->mFeatures:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getRegistrationState(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/services/telephony/rcs/RcsFeatureController;->mImsRcsRegistrationHelper:Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper;->getImsRegistrationState()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public getRegistrationTech(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/services/telephony/rcs/RcsFeatureController;->getFeatureManager()Lcom/android/ims/RcsFeatureManager;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/ims/RcsFeatureManager;->getImsRegistrationTech(Ljava/util/function/Consumer;)V

    :cond_0
    const/4 p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public hasActiveFeatures()Z
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/rcs/RcsFeatureController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/services/telephony/rcs/RcsFeatureController;->mFeatures:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isAvailable(II)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/services/telephony/rcs/RcsFeatureController;->getFeatureManager()Lcom/android/ims/RcsFeatureManager;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/ims/RcsFeatureManager;->isAvailable(II)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Landroid/telephony/ims/ImsException;

    const-string p1, "Service is not available"

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public isCapable(II)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/services/telephony/rcs/RcsFeatureController;->getFeatureManager()Lcom/android/ims/RcsFeatureManager;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/ims/RcsFeatureManager;->isCapable(II)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Landroid/telephony/ims/ImsException;

    const-string p1, "Service is not available"

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public onCarrierConfigChangedForSubscription()V
    .locals 2

    invoke-direct {p0}, Lcom/android/services/telephony/rcs/RcsFeatureController;->updateCapabilities()V

    iget-object v0, p0, Lcom/android/services/telephony/rcs/RcsFeatureController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/services/telephony/rcs/RcsFeatureController;->mFeatures:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/services/telephony/rcs/RcsFeatureController$Feature;

    invoke-interface {v1}, Lcom/android/services/telephony/rcs/RcsFeatureController$Feature;->onCarrierConfigChanged()V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public registerImsRegistrationCallback(ILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/services/telephony/rcs/RcsFeatureController;->getFeatureManager()Lcom/android/ims/RcsFeatureManager;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/ims/RcsFeatureManager;->registerImsRegistrationCallback(ILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    return-void

    :cond_0
    new-instance p0, Landroid/telephony/ims/ImsException;

    const-string p1, "Service is not available"

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public registerRcsAvailabilityCallback(ILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/services/telephony/rcs/RcsFeatureController;->getFeatureManager()Lcom/android/ims/RcsFeatureManager;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/ims/RcsFeatureManager;->registerRcsAvailabilityCallback(ILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    return-void

    :cond_0
    new-instance p0, Landroid/telephony/ims/ImsException;

    const-string p1, "Service is not available"

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public removeFeature(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/services/telephony/rcs/RcsFeatureController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/services/telephony/rcs/RcsFeatureController;->mFeatures:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/services/telephony/rcs/RcsFeatureController$Feature;

    invoke-interface {p0}, Lcom/android/services/telephony/rcs/RcsFeatureController$Feature;->onDestroy()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setFeatureConnectorFactory(Lcom/android/services/telephony/rcs/RcsFeatureController$FeatureConnectorFactory;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/services/telephony/rcs/RcsFeatureController$FeatureConnectorFactory<",
            "Lcom/android/ims/RcsFeatureManager;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/services/telephony/rcs/RcsFeatureController;->mFeatureFactory:Lcom/android/services/telephony/rcs/RcsFeatureController$FeatureConnectorFactory;

    return-void
.end method

.method public unregisterImsRegistrationCallback(ILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/services/telephony/rcs/RcsFeatureController;->getFeatureManager()Lcom/android/ims/RcsFeatureManager;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/ims/RcsFeatureManager;->unregisterImsRegistrationCallback(ILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    :cond_0
    return-void
.end method

.method public unregisterRcsAvailabilityCallback(ILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/services/telephony/rcs/RcsFeatureController;->getFeatureManager()Lcom/android/ims/RcsFeatureManager;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/ims/RcsFeatureManager;->unregisterRcsAvailabilityCallback(ILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    :cond_0
    return-void
.end method

.method public updateAssociatedSubscription(I)V
    .locals 2

    iput p1, p0, Lcom/android/services/telephony/rcs/RcsFeatureController;->mAssociatedSubId:I

    invoke-direct {p0}, Lcom/android/services/telephony/rcs/RcsFeatureController;->updateCapabilities()V

    iget-object v0, p0, Lcom/android/services/telephony/rcs/RcsFeatureController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/services/telephony/rcs/RcsFeatureController;->mFeatures:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/services/telephony/rcs/RcsFeatureController$Feature;

    invoke-interface {v1, p1}, Lcom/android/services/telephony/rcs/RcsFeatureController$Feature;->onAssociatedSubscriptionUpdated(I)V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
