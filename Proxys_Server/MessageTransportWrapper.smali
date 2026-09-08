.class public Lcom/android/services/telephony/rcs/MessageTransportWrapper;
.super Ljava/lang/Object;
.source "MessageTransportWrapper.java"

# interfaces
.implements Lcom/android/services/telephony/rcs/DelegateBinderStateManager$StateCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/services/telephony/rcs/MessageTransportWrapper$ValidatorOverride;
    }
.end annotation


# instance fields
.field private final mAppCallback:Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;

.field private final mDelegateConnectionMessageCallback:Landroid/telephony/ims/aidl/ISipDelegateMessageCallback$Stub;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mLocalLog:Lcom/android/internal/telephony/LocalLog;

.field private mSipDelegate:Landroid/telephony/ims/aidl/ISipDelegate;

.field private final mSipDelegateConnection:Landroid/telephony/ims/aidl/ISipDelegate$Stub;

.field private final mSipSessionTracker:Lcom/android/services/telephony/rcs/TransportSipMessageValidator;

.field private final mSubId:I

.field private final mValidatorOverride:Lcom/android/services/telephony/rcs/MessageTransportWrapper$ValidatorOverride;


# direct methods
.method public static synthetic $r8$lambda$5p4-Ni3LkOC66dZtYvMoTClfImg(Lcom/android/services/telephony/rcs/MessageTransportWrapper;Ljava/util/function/Consumer;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/services/telephony/rcs/MessageTransportWrapper;->lambda$closeGracefully$3(Ljava/util/function/Consumer;Ljava/util/Set;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CGdT4uDqaILnCFX5CMeI1ETsU9I()Ljava/lang/Boolean;
    .locals 1

    invoke-static {}, Lcom/android/services/telephony/rcs/MessageTransportWrapper;->lambda$new$1()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$XUnOyNulNsvDuOHn75-97QuUdGg(Lcom/android/services/telephony/rcs/MessageTransportWrapper;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/services/telephony/rcs/MessageTransportWrapper;->lambda$onRegistrationStateChanged$2(Ljava/util/Set;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hSz2v9x8pRx91sgcAUC1mlE6cng(Lcom/android/services/telephony/rcs/MessageTransportWrapper;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0}, Lcom/android/services/telephony/rcs/MessageTransportWrapper;->lambda$new$0()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAppCallback(Lcom/android/services/telephony/rcs/MessageTransportWrapper;)Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;
    .locals 0

    iget-object p0, p0, Lcom/android/services/telephony/rcs/MessageTransportWrapper;->mAppCallback:Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmExecutor(Lcom/android/services/telephony/rcs/MessageTransportWrapper;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lcom/android/services/telephony/rcs/MessageTransportWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSipDelegate(Lcom/android/services/telephony/rcs/MessageTransportWrapper;)Landroid/telephony/ims/aidl/ISipDelegate;
    .locals 0

    iget-object p0, p0, Lcom/android/services/telephony/rcs/MessageTransportWrapper;->mSipDelegate:Landroid/telephony/ims/aidl/ISipDelegate;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSipSessionTracker(Lcom/android/services/telephony/rcs/MessageTransportWrapper;)Lcom/android/services/telephony/rcs/TransportSipMessageValidator;
    .locals 0

    iget-object p0, p0, Lcom/android/services/telephony/rcs/MessageTransportWrapper;->mSipSessionTracker:Lcom/android/services/telephony/rcs/TransportSipMessageValidator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcleanupSessionInternal(Lcom/android/services/telephony/rcs/MessageTransportWrapper;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/services/telephony/rcs/MessageTransportWrapper;->cleanupSessionInternal(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mlogw(Lcom/android/services/telephony/rcs/MessageTransportWrapper;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/services/telephony/rcs/MessageTransportWrapper;->logw(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmaybeOverrideValidationForTesting(Lcom/android/services/telephony/rcs/MessageTransportWrapper;Lcom/android/services/telephony/rcs/validator/ValidationResult;)Lcom/android/services/telephony/rcs/validator/ValidationResult;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/services/telephony/rcs/MessageTransportWrapper;->maybeOverrideValidationForTesting(Lcom/android/services/telephony/rcs/validator/ValidationResult;)Lcom/android/services/telephony/rcs/validator/ValidationResult;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mnotifyAppReceiveError(Lcom/android/services/telephony/rcs/MessageTransportWrapper;Ljava/lang/String;Landroid/telephony/ims/SipMessage;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/services/telephony/rcs/MessageTransportWrapper;->notifyAppReceiveError(Ljava/lang/String;Landroid/telephony/ims/SipMessage;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyDelegateSendError(Lcom/android/services/telephony/rcs/MessageTransportWrapper;Ljava/lang/String;Landroid/telephony/ims/SipMessage;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/services/telephony/rcs/MessageTransportWrapper;->notifyDelegateSendError(Ljava/lang/String;Landroid/telephony/ims/SipMessage;I)V

    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/ScheduledExecutorService;Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/services/telephony/rcs/MessageTransportWrapper$1;

    invoke-direct {v0, p0}, Lcom/android/services/telephony/rcs/MessageTransportWrapper$1;-><init>(Lcom/android/services/telephony/rcs/MessageTransportWrapper;)V

    iput-object v0, p0, Lcom/android/services/telephony/rcs/MessageTransportWrapper;->mSipDelegateConnection:Landroid/telephony/ims/aidl/ISipDelegate$Stub;

    new-instance v0, Lcom/android/services/telephony/rcs/MessageTransportWrapper$2;

    invoke-direct {v0, p0}, Lcom/android/services/telephony/rcs/MessageTransportWrapper$2;-><init>(Lcom/android/services/telephony/rcs/MessageTransportWrapper;)V

    iput-object v0, p0, Lcom/android/services/telephony/rcs/MessageTransportWrapper;->mDelegateConnectionMessageCallback:Landroid/telephony/ims/aidl/ISipDelegateMessageCallback$Stub;

    new-instance v0, Lcom/android/internal/telephony/LocalLog;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/services/telephony/rcs/MessageTransportWrapper;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    iput p1, p0, Lcom/android/services/telephony/rcs/MessageTransportWrapper;->mSubId:I

    iput-object p3, p0, Lcom/android/services/telephony/rcs/MessageTransportWrapper;->mAppCallback:Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;

    iput-object p2, p0, Lcom/android/services/telephony/rcs/MessageTransportWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance p3, Lcom/android/services/telephony/rcs/TransportSipMessageValidator;

    invoke-direct {p3, p1, p2}, Lcom/android/services/telephony/rcs/TransportSipMessageValidator;-><init>(ILjava/util/concurrent/ScheduledExecutorService;)V

    iput-object p3, p0, Lcom/android/services/telephony/rcs/MessageTransportWrapper;->mSipSessionTracker:Lcom/android/services/telephony/rcs/TransportSipMessageValidator;

    new-instance p1, Lcom/android/services/telephony/rcs/MessageTransportWrapper$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/services/telephony/rcs/MessageTransportWrapper$$ExternalSyntheticLambda1;-><init>(Lcom/android/services/telephony/rcs/MessageTransportWrapper;)V

    iput-object p1, p0, Lcom/android/services/telephony/rcs/MessageTransportWrapper;->mValidatorOverride:Lcom/android/services/telephony/rcs/MessageTransportWrapper$ValidatorOverride;

    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/ScheduledExecutorService;Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;Lcom/android/services/telephony/rcs/TransportSipMessageValidator;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/services/telephony/rcs/MessageTransportWrapper$1;

    invoke-direct {v0, p0}, Lcom/android/services/telephony/rcs/MessageTransportWrapper$1;-><init>(Lcom/android/services/telephony/rcs/MessageTransportWrapper;)V

    iput-object v0, p0, Lcom/android/services/telephony/rcs/MessageTransportWrapper;->mSipDelegateConnection:Landroid/telephony/ims/aidl/ISipDelegate$Stub;

    new-instance v0, Lcom/android/services/telephony/rcs/MessageTransportWrapper$2;

    invoke-direct {v0, p0}, Lcom/android/services/telephony/rcs/MessageTransportWrapper$2;-><init>(Lcom/android/services/telephony/rcs/MessageTransportWrapper;)V

    iput-object v0, p0, Lcom/android/services/telephony/rcs/MessageTransportWrapper;->mDelegateConnectionMessageCallback:Landroid/telephony/ims/aidl/ISipDelegateMessageCallback$Stub;

    new-instance v0, Lcom/android/internal/telephony/LocalLog;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/services/telephony/rcs/MessageTransportWrapper;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    iput p1, p0, Lcom/android/services/telephony/rcs/MessageTransportWrapper;->mSubId:I

    iput-object p3, p0, Lcom/android/services/telephony/rcs/MessageTransportWrapper;->mAppCallback:Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;

    iput-object p2, p0, Lcom/android/services/telephony/rcs/MessageTransportWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lcom/android/services/telephony/rcs/MessageTransportWrapper;->mSipSessionTracker:Lcom/android/services/telephony/rcs/TransportSipMessageValidator;

    new-instance p1, Lcom/android/services/telephony/rcs/MessageTransportWrapper$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/android/services/telephony/rcs/MessageTransportWrapper$$ExternalSyntheticLambda0;-><init>()V

    iput-object p1, p0, Lcom/android/services/telephony/rcs/MessageTransportWrapper;->mValidatorOverride:Lcom/android/services/telephony/rcs/MessageTransportWrapper$ValidatorOverride;

    return-void
.end method

.method private cleanupSessionInternal(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cleanupSessionInternal: clean up session with callId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/services/telephony/rcs/MessageTransportWrapper;->logi(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/services/telephony/rcs/MessageTransportWrapper;->mSipDelegate:Landroid/telephony/ims/aidl/ISipDelegate;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cleanupSessionInternal: SipDelegate is not associated, callId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/services/telephony/rcs/MessageTransportWrapper;->logw(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/ISipDelegate;->cleanupSession(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cleanupSessionInternal: remote not available when cleanupSession was called for call id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/services/telephony/rcs/MessageTransportWrapper;->logw(Ljava/lang/String;)V

    :goto_0
    iget-object p0, p0, Lcom/android/services/telephony/rcs/MessageTransportWrapper;->mSipSessionTracker:Lcom/android/services/telephony/rcs/TransportSipMessageValidator;

    invoke-virtual {p0, p1}, Lcom/android/services/telephony/rcs/TransportSipMessageValidator;->onSipSessionCleanup(Ljava/lang/String;)V

    return-void
.end method

.method private closeTransport(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/services/telephony/rcs/MessageTransportWrapper;->cleanupSessionInternal(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/services/telephony/rcs/MessageTransportWrapper;->mSipDelegate:Landroid/telephony/ims/aidl/ISipDelegate;

    return-void
.end method

.method private synthetic lambda$closeGracefully$3(Ljava/util/function/Consumer;Ljava/util/Set;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "closeGracefully resultConsumer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "): open call IDs:{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/services/telephony/rcs/MessageTransportWrapper;->logi(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/android/services/telephony/rcs/MessageTransportWrapper;->closeTransport(Ljava/util/Set;)V

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$new$0()Ljava/lang/Boolean;
    .locals 1

    invoke-static {}, Lcom/android/phone/RcsProvisioningMonitor;->getInstance()Lcom/android/phone/RcsProvisioningMonitor;

    move-result-object v0

    iget p0, p0, Lcom/android/services/telephony/rcs/MessageTransportWrapper;->mSubId:I

    invoke-virtual {v0, p0}, Lcom/android/phone/RcsProvisioningMonitor;->getImsFeatureValidationOverride(I)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$new$1()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private synthetic lambda$onRegistrationStateChanged$2(Ljava/util/Set;)V
    .locals 1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/services/telephony/rcs/MessageTransportWrapper;->cleanupSessionInternal(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MessageTW["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/services/telephony/rcs/MessageTransportWrapper;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SipTransportC"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/services/telephony/rcs/MessageTransportWrapper;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[I] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private logw(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MessageTW["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/services/telephony/rcs/MessageTransportWrapper;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SipTransportC"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/services/telephony/rcs/MessageTransportWrapper;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[W] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private maybeOverrideValidationForTesting(Lcom/android/services/telephony/rcs/validator/ValidationResult;)Lcom/android/services/telephony/rcs/validator/ValidationResult;
    .locals 1

    iget-object p0, p0, Lcom/android/services/telephony/rcs/MessageTransportWrapper;->mValidatorOverride:Lcom/android/services/telephony/rcs/MessageTransportWrapper$ValidatorOverride;

    invoke-interface {p0}, Lcom/android/services/telephony/rcs/MessageTransportWrapper$ValidatorOverride;->getValidatorOverrideState()Ljava/lang/Boolean;

    move-result-object p0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/android/services/telephony/rcs/validator/ValidationResult;->SUCCESS:Lcom/android/services/telephony/rcs/validator/ValidationResult;

    return-object p0

    :cond_1
    iget-boolean p0, p1, Lcom/android/services/telephony/rcs/validator/ValidationResult;->isValidated:Z

    if-eqz p0, :cond_2

    new-instance p0, Lcom/android/services/telephony/rcs/validator/ValidationResult;

    const/4 p1, 0x0

    const-string v0, "validation failed due to a testing override being set"

    invoke-direct {p0, p1, v0}, Lcom/android/services/telephony/rcs/validator/ValidationResult;-><init>(ILjava/lang/String;)V

    return-object p0

    :cond_2
    return-object p1
.end method

.method private notifyAppReceiveError(Ljava/lang/String;Landroid/telephony/ims/SipMessage;I)V
    .locals 2

    invoke-virtual {p2}, Landroid/telephony/ims/SipMessage;->getHeaderSection()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/internal/telephony/SipMessageParsingUtils;->getTransactionId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error sending SipMessage[id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] -> SipDelegateConnection for reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/services/telephony/rcs/MessageTransportWrapper;->logi(Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/android/services/telephony/rcs/MessageTransportWrapper;->mSipDelegate:Landroid/telephony/ims/aidl/ISipDelegate;

    invoke-interface {p1, p2, p3}, Landroid/telephony/ims/aidl/ISipDelegate;->notifyMessageReceiveError(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "notifyAppReceiveError, SipDelegate is not available: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/services/telephony/rcs/MessageTransportWrapper;->logw(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private notifyDelegateSendError(Ljava/lang/String;Landroid/telephony/ims/SipMessage;I)V
    .locals 2

    invoke-virtual {p2}, Landroid/telephony/ims/SipMessage;->getHeaderSection()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/internal/telephony/SipMessageParsingUtils;->getTransactionId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error sending SipMessage[id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] -> SipDelegate for reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/services/telephony/rcs/MessageTransportWrapper;->logi(Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/android/services/telephony/rcs/MessageTransportWrapper;->mAppCallback:Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;

    invoke-interface {p1, p2, p3}, Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;->onMessageSendFailure(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "notifyDelegateSendError, SipDelegate is not available: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/services/telephony/rcs/MessageTransportWrapper;->logw(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public close(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/services/telephony/rcs/MessageTransportWrapper;->mSipSessionTracker:Lcom/android/services/telephony/rcs/TransportSipMessageValidator;

    invoke-virtual {v0, p1}, Lcom/android/services/telephony/rcs/TransportSipMessageValidator;->closeSessions(I)Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close: closedReason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "open call IDs:{"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "}"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/services/telephony/rcs/MessageTransportWrapper;->logi(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/services/telephony/rcs/MessageTransportWrapper;->closeTransport(Ljava/util/Set;)V

    return-void
.end method

.method public closeGracefully(IILjava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "closeGracefully: closingReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", closedReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", resultConsumer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/services/telephony/rcs/MessageTransportWrapper;->logi(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/services/telephony/rcs/MessageTransportWrapper;->mSipSessionTracker:Lcom/android/services/telephony/rcs/TransportSipMessageValidator;

    new-instance v1, Lcom/android/services/telephony/rcs/MessageTransportWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p3}, Lcom/android/services/telephony/rcs/MessageTransportWrapper$$ExternalSyntheticLambda2;-><init>(Lcom/android/services/telephony/rcs/MessageTransportWrapper;Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/services/telephony/rcs/TransportSipMessageValidator;->closeSessionsGracefully(Ljava/util/function/Consumer;II)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p1, v1}, Lcom/android/internal/telephony/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    const-string v1, "Most recent logs:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/services/telephony/rcs/MessageTransportWrapper;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->println()V

    const-string p1, "Dialog Tracker:"

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    iget-object p0, p0, Lcom/android/services/telephony/rcs/MessageTransportWrapper;->mSipSessionTracker:Lcom/android/services/telephony/rcs/TransportSipMessageValidator;

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/rcs/TransportSipMessageValidator;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    return-void
.end method

.method public getAppMessageCallback()Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;
    .locals 0

    iget-object p0, p0, Lcom/android/services/telephony/rcs/MessageTransportWrapper;->mAppCallback:Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;

    return-object p0
.end method

.method public getDelegateConnection()Landroid/telephony/ims/aidl/ISipDelegate;
    .locals 0

    iget-object p0, p0, Lcom/android/services/telephony/rcs/MessageTransportWrapper;->mSipDelegateConnection:Landroid/telephony/ims/aidl/ISipDelegate$Stub;

    return-object p0
.end method

.method public getMessageCallback()Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;
    .locals 0

    iget-object p0, p0, Lcom/android/services/telephony/rcs/MessageTransportWrapper;->mDelegateConnectionMessageCallback:Landroid/telephony/ims/aidl/ISipDelegateMessageCallback$Stub;

    return-object p0
.end method

.method public onConfigurationChanged(Landroid/telephony/ims/SipDelegateConfiguration;)V
    .locals 0

    iget-object p0, p0, Lcom/android/services/telephony/rcs/MessageTransportWrapper;->mSipSessionTracker:Lcom/android/services/telephony/rcs/TransportSipMessageValidator;

    invoke-virtual {p0, p1}, Lcom/android/services/telephony/rcs/TransportSipMessageValidator;->onConfigurationChanged(Landroid/telephony/ims/SipDelegateConfiguration;)V

    return-void
.end method

.method public onImsConfigurationChanged(Landroid/telephony/ims/SipDelegateImsConfiguration;)V
    .locals 0

    iget-object p0, p0, Lcom/android/services/telephony/rcs/MessageTransportWrapper;->mSipSessionTracker:Lcom/android/services/telephony/rcs/TransportSipMessageValidator;

    invoke-virtual {p0, p1}, Lcom/android/services/telephony/rcs/TransportSipMessageValidator;->onImsConfigurationChanged(Landroid/telephony/ims/SipDelegateImsConfiguration;)V

    return-void
.end method

.method public onRegistrationStateChanged(Landroid/telephony/ims/DelegateRegistrationState;)V
    .locals 2

    iget-object v0, p0, Lcom/android/services/telephony/rcs/MessageTransportWrapper;->mSipSessionTracker:Lcom/android/services/telephony/rcs/TransportSipMessageValidator;

    new-instance v1, Lcom/android/services/telephony/rcs/MessageTransportWrapper$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/services/telephony/rcs/MessageTransportWrapper$$ExternalSyntheticLambda3;-><init>(Lcom/android/services/telephony/rcs/MessageTransportWrapper;)V

    invoke-virtual {v0, v1, p1}, Lcom/android/services/telephony/rcs/TransportSipMessageValidator;->onRegistrationStateChanged(Ljava/util/function/Consumer;Landroid/telephony/ims/DelegateRegistrationState;)V

    return-void
.end method

.method public openTransport(Landroid/telephony/ims/aidl/ISipDelegate;Ljava/util/Set;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/ims/aidl/ISipDelegate;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/FeatureTagState;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openTransport: delegate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", supportedTags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", deniedTags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/services/telephony/rcs/MessageTransportWrapper;->logi(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/services/telephony/rcs/MessageTransportWrapper;->mSipSessionTracker:Lcom/android/services/telephony/rcs/TransportSipMessageValidator;

    invoke-virtual {v0, p2, p3}, Lcom/android/services/telephony/rcs/TransportSipMessageValidator;->onTransportOpened(Ljava/util/Set;Ljava/util/Set;)V

    iput-object p1, p0, Lcom/android/services/telephony/rcs/MessageTransportWrapper;->mSipDelegate:Landroid/telephony/ims/aidl/ISipDelegate;

    return-void
.end method

.method public setSipDialogsListener(Lcom/android/services/telephony/rcs/SipDialogsStateListener;Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/services/telephony/rcs/MessageTransportWrapper;->mSipSessionTracker:Lcom/android/services/telephony/rcs/TransportSipMessageValidator;

    invoke-virtual {p0, p1, p2}, Lcom/android/services/telephony/rcs/TransportSipMessageValidator;->setSipDialogsListener(Lcom/android/services/telephony/rcs/SipDialogsStateListener;Z)V

    return-void
.end method
