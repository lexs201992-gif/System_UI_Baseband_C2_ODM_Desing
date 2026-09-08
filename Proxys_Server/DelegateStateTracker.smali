.class public Lcom/android/services/telephony/rcs/DelegateStateTracker;
.super Ljava/lang/Object;
.source "DelegateStateTracker.java"

# interfaces
.implements Lcom/android/services/telephony/rcs/DelegateBinderStateManager$StateCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/services/telephony/rcs/DelegateStateTracker$CompatChangesFactory;
    }
.end annotation


# static fields
.field public static final SUPPORT_DEREGISTERING_LOSING_PDN_STATE:J = 0xc02fed7L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final SUPPORT_REGISTERING_DELEGATE_STATE:J = 0xc3b0534L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mAppStateCallback:Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback;

.field private mCompatChangesFactory:Lcom/android/services/telephony/rcs/DelegateStateTracker$CompatChangesFactory;

.field private mCreatedCalled:Z

.field private mDelegateDeniedTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/ims/FeatureTagState;",
            ">;"
        }
    .end annotation
.end field

.field private mDelegateSupportedTags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLastRegState:Landroid/telephony/ims/DelegateRegistrationState;

.field private final mLocalDelegateImpl:Landroid/telephony/ims/aidl/ISipDelegate;

.field private final mLocalLog:Lcom/android/internal/telephony/LocalLog;

.field private final mRcsStats:Lcom/android/internal/telephony/metrics/RcsStats;

.field private mRegistrationStateOverride:I

.field private final mSubId:I

.field private final mUid:I


# direct methods
.method public static synthetic $r8$lambda$2l7m3vcQqyf1EB8GSWntYf7wwT4(JI)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/services/telephony/rcs/DelegateStateTracker;->lambda$new$0(JI)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(IILandroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback;Landroid/telephony/ims/aidl/ISipDelegate;Lcom/android/internal/telephony/metrics/RcsStats;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/telephony/LocalLog;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/services/telephony/rcs/DelegateStateTracker;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/services/telephony/rcs/DelegateStateTracker;->mCreatedCalled:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/services/telephony/rcs/DelegateStateTracker;->mRegistrationStateOverride:I

    iput p1, p0, Lcom/android/services/telephony/rcs/DelegateStateTracker;->mSubId:I

    iput p2, p0, Lcom/android/services/telephony/rcs/DelegateStateTracker;->mUid:I

    iput-object p3, p0, Lcom/android/services/telephony/rcs/DelegateStateTracker;->mAppStateCallback:Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback;

    iput-object p4, p0, Lcom/android/services/telephony/rcs/DelegateStateTracker;->mLocalDelegateImpl:Landroid/telephony/ims/aidl/ISipDelegate;

    iput-object p5, p0, Lcom/android/services/telephony/rcs/DelegateStateTracker;->mRcsStats:Lcom/android/internal/telephony/metrics/RcsStats;

    new-instance p1, Lcom/android/services/telephony/rcs/DelegateStateTracker$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/android/services/telephony/rcs/DelegateStateTracker$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/services/telephony/rcs/DelegateStateTracker;->setCompatChangesFactory(Lcom/android/services/telephony/rcs/DelegateStateTracker$CompatChangesFactory;)V

    return-void
.end method

.method private getDeregisteringReasonForCompatibility(I)I
    .locals 0

    const/4 p0, 0x7

    if-ne p1, p0, :cond_0

    const/4 p1, 0x3

    :cond_0
    return p1
.end method

.method private static synthetic lambda$new$0(JI)Z
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p0

    return p0
.end method

.method private logi(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DelegateST["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/services/telephony/rcs/DelegateStateTracker;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SipTransportC"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/services/telephony/rcs/DelegateStateTracker;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

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

    const-string v1, "DelegateST["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/services/telephony/rcs/DelegateStateTracker;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SipTransportC"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/services/telephony/rcs/DelegateStateTracker;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

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

.method private notifySipDelegateCreated()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/services/telephony/rcs/DelegateStateTracker;->mAppStateCallback:Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback;

    iget-object v1, p0, Lcom/android/services/telephony/rcs/DelegateStateTracker;->mLocalDelegateImpl:Landroid/telephony/ims/aidl/ISipDelegate;

    invoke-interface {v0, v1}, Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback;->onCreated(Landroid/telephony/ims/aidl/ISipDelegate;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifySipDelegateCreated: IMS application is dead: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/services/telephony/rcs/DelegateStateTracker;->logw(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private overrideDeregisteringStateForCompatibility(Landroid/telephony/ims/DelegateRegistrationState;)Landroid/telephony/ims/DelegateRegistrationState;
    .locals 6

    invoke-virtual {p1}, Landroid/telephony/ims/DelegateRegistrationState;->getRegisteredFeatureTags()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/ims/DelegateRegistrationState;->getRegisteringFeatureTags()Ljava/util/Set;

    move-result-object v1

    new-instance v2, Landroid/telephony/ims/DelegateRegistrationState$Builder;

    invoke-direct {v2}, Landroid/telephony/ims/DelegateRegistrationState$Builder;-><init>()V

    invoke-virtual {p1}, Landroid/telephony/ims/DelegateRegistrationState;->getDeregisteredFeatureTags()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/ims/FeatureTagState;

    invoke-virtual {v4}, Landroid/telephony/ims/FeatureTagState;->getFeatureTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Landroid/telephony/ims/FeatureTagState;->getState()I

    move-result v4

    invoke-virtual {v2, v5, v4}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addDeregisteredFeatureTag(Ljava/lang/String;I)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v0}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addRegisteredFeatureTags(Ljava/util/Set;)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    invoke-virtual {v2, v1}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addRegisteringFeatureTags(Ljava/util/Set;)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    invoke-virtual {p1}, Landroid/telephony/ims/DelegateRegistrationState;->getDeregisteringFeatureTags()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/FeatureTagState;

    invoke-virtual {v0}, Landroid/telephony/ims/FeatureTagState;->getFeatureTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/telephony/ims/FeatureTagState;->getState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/services/telephony/rcs/DelegateStateTracker;->getDeregisteringReasonForCompatibility(I)I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addDeregisteringFeatureTag(Ljava/lang/String;I)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->build()Landroid/telephony/ims/DelegateRegistrationState;

    move-result-object p0

    return-object p0
.end method

.method private overrideRegistrationForCompatibility(Landroid/telephony/ims/DelegateRegistrationState;)Landroid/telephony/ims/DelegateRegistrationState;
    .locals 5

    invoke-virtual {p1}, Landroid/telephony/ims/DelegateRegistrationState;->getRegisteredFeatureTags()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {p1}, Landroid/telephony/ims/DelegateRegistrationState;->getRegisteringFeatureTags()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Landroid/telephony/ims/DelegateRegistrationState$Builder;

    invoke-direct {v1}, Landroid/telephony/ims/DelegateRegistrationState$Builder;-><init>()V

    invoke-virtual {p1}, Landroid/telephony/ims/DelegateRegistrationState;->getDeregisteringFeatureTags()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/FeatureTagState;

    invoke-virtual {v3}, Landroid/telephony/ims/FeatureTagState;->getFeatureTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Landroid/telephony/ims/FeatureTagState;->getState()I

    move-result v3

    invoke-virtual {v1, v4, v3}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addDeregisteringFeatureTag(Ljava/lang/String;I)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/telephony/ims/DelegateRegistrationState;->getDeregisteredFeatureTags()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/FeatureTagState;

    invoke-virtual {v2}, Landroid/telephony/ims/FeatureTagState;->getFeatureTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/telephony/ims/FeatureTagState;->getState()I

    move-result v2

    invoke-virtual {v1, v3, v2}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addDeregisteredFeatureTag(Ljava/lang/String;I)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    goto :goto_1

    :cond_1
    invoke-virtual {v1, p0}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addRegisteredFeatureTags(Ljava/util/Set;)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v0, 0x2

    invoke-virtual {v1, p1, v0}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addDeregisteredFeatureTag(Ljava/lang/String;I)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->build()Landroid/telephony/ims/DelegateRegistrationState;

    move-result-object p0

    return-object p0
.end method

.method private overrideRegistrationForDelegateChange(ILandroid/telephony/ims/DelegateRegistrationState;)Landroid/telephony/ims/DelegateRegistrationState;
    .locals 5

    invoke-virtual {p2}, Landroid/telephony/ims/DelegateRegistrationState;->getRegisteredFeatureTags()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {p2}, Landroid/telephony/ims/DelegateRegistrationState;->getRegisteringFeatureTags()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Landroid/telephony/ims/DelegateRegistrationState$Builder;

    invoke-direct {v1}, Landroid/telephony/ims/DelegateRegistrationState$Builder;-><init>()V

    invoke-virtual {p2}, Landroid/telephony/ims/DelegateRegistrationState;->getDeregisteringFeatureTags()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/FeatureTagState;

    invoke-virtual {v3}, Landroid/telephony/ims/FeatureTagState;->getFeatureTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Landroid/telephony/ims/FeatureTagState;->getState()I

    move-result v3

    invoke-virtual {v1, v4, v3}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addDeregisteringFeatureTag(Ljava/lang/String;I)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/telephony/ims/DelegateRegistrationState;->getDeregisteredFeatureTags()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/FeatureTagState;

    invoke-virtual {v2}, Landroid/telephony/ims/FeatureTagState;->getFeatureTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/telephony/ims/FeatureTagState;->getState()I

    move-result v2

    invoke-virtual {v1, v3, v2}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addDeregisteredFeatureTag(Ljava/lang/String;I)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0, p1}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addDeregisteringFeatureTag(Ljava/lang/String;I)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    goto :goto_2

    :cond_2
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p2, p1}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addDeregisteringFeatureTag(Ljava/lang/String;I)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->build()Landroid/telephony/ims/DelegateRegistrationState;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Last reg state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/services/telephony/rcs/DelegateStateTracker;->mLastRegState:Landroid/telephony/ims/DelegateRegistrationState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Denied tags: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/services/telephony/rcs/DelegateStateTracker;->mDelegateDeniedTags:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "Most recent logs: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/services/telephony/rcs/DelegateStateTracker;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/telephony/ims/SipDelegateConfiguration;)V
    .locals 2

    const-string v0, "onImsConfigurationChanged: Sending new IMS configuration."

    invoke-direct {p0, v0}, Lcom/android/services/telephony/rcs/DelegateStateTracker;->logi(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/services/telephony/rcs/DelegateStateTracker;->mAppStateCallback:Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback;->onConfigurationChanged(Landroid/telephony/ims/SipDelegateConfiguration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onImsConfigurationChanged: IMS application is dead: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/services/telephony/rcs/DelegateStateTracker;->logw(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onImsConfigurationChanged(Landroid/telephony/ims/SipDelegateImsConfiguration;)V
    .locals 2

    const-string v0, "onImsConfigurationChanged: Sending new IMS configuration."

    invoke-direct {p0, v0}, Lcom/android/services/telephony/rcs/DelegateStateTracker;->logi(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/services/telephony/rcs/DelegateStateTracker;->mAppStateCallback:Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback;->onImsConfigurationChanged(Landroid/telephony/ims/SipDelegateImsConfiguration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onImsConfigurationChanged: IMS application is dead: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/services/telephony/rcs/DelegateStateTracker;->logw(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onRegistrationStateChanged(Landroid/telephony/ims/DelegateRegistrationState;)V
    .locals 5

    iget-object v0, p0, Lcom/android/services/telephony/rcs/DelegateStateTracker;->mCompatChangesFactory:Lcom/android/services/telephony/rcs/DelegateStateTracker$CompatChangesFactory;

    const-wide/32 v1, 0xc02fed7

    iget v3, p0, Lcom/android/services/telephony/rcs/DelegateStateTracker;->mUid:I

    invoke-interface {v0, v1, v2, v3}, Lcom/android/services/telephony/rcs/DelegateStateTracker$CompatChangesFactory;->isChangeEnabled(JI)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/services/telephony/rcs/DelegateStateTracker;->overrideDeregisteringStateForCompatibility(Landroid/telephony/ims/DelegateRegistrationState;)Landroid/telephony/ims/DelegateRegistrationState;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcom/android/services/telephony/rcs/DelegateStateTracker;->mCompatChangesFactory:Lcom/android/services/telephony/rcs/DelegateStateTracker$CompatChangesFactory;

    const-wide/32 v1, 0xc3b0534

    iget v3, p0, Lcom/android/services/telephony/rcs/DelegateStateTracker;->mUid:I

    invoke-interface {v0, v1, v2, v3}, Lcom/android/services/telephony/rcs/DelegateStateTracker$CompatChangesFactory;->isChangeEnabled(JI)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/services/telephony/rcs/DelegateStateTracker;->overrideRegistrationForCompatibility(Landroid/telephony/ims/DelegateRegistrationState;)Landroid/telephony/ims/DelegateRegistrationState;

    move-result-object p1

    :cond_1
    iget v0, p0, Lcom/android/services/telephony/rcs/DelegateStateTracker;->mRegistrationStateOverride:I

    if-lez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRegistrationStateChanged: overriding registered state to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/services/telephony/rcs/DelegateStateTracker;->mRegistrationStateOverride:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/services/telephony/rcs/DelegateStateTracker;->logi(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/services/telephony/rcs/DelegateStateTracker;->mRegistrationStateOverride:I

    invoke-direct {p0, v0, p1}, Lcom/android/services/telephony/rcs/DelegateStateTracker;->overrideRegistrationForDelegateChange(ILandroid/telephony/ims/DelegateRegistrationState;)Landroid/telephony/ims/DelegateRegistrationState;

    move-result-object p1

    :cond_2
    iget-object v0, p0, Lcom/android/services/telephony/rcs/DelegateStateTracker;->mLastRegState:Landroid/telephony/ims/DelegateRegistrationState;

    invoke-virtual {p1, v0}, Landroid/telephony/ims/DelegateRegistrationState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "onRegistrationStateChanged: skipping notification, state is the same."

    invoke-direct {p0, p1}, Lcom/android/services/telephony/rcs/DelegateStateTracker;->logi(Ljava/lang/String;)V

    return-void

    :cond_3
    iput-object p1, p0, Lcom/android/services/telephony/rcs/DelegateStateTracker;->mLastRegState:Landroid/telephony/ims/DelegateRegistrationState;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRegistrationStateChanged: sending reg state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/services/telephony/rcs/DelegateStateTracker;->logi(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/services/telephony/rcs/DelegateStateTracker;->mAppStateCallback:Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback;

    iget-object v1, p0, Lcom/android/services/telephony/rcs/DelegateStateTracker;->mDelegateDeniedTags:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback;->onFeatureTagStatusChanged(Landroid/telephony/ims/DelegateRegistrationState;Ljava/util/List;)V

    invoke-virtual {p1}, Landroid/telephony/ims/DelegateRegistrationState;->getRegisteredFeatureTags()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/rcs/DelegateStateTracker;->mRcsStats:Lcom/android/internal/telephony/metrics/RcsStats;

    iget v2, p0, Lcom/android/services/telephony/rcs/DelegateStateTracker;->mSubId:I

    new-instance v3, Landroid/util/ArraySet;

    iget-object v4, p0, Lcom/android/services/telephony/rcs/DelegateStateTracker;->mDelegateDeniedTags:Ljava/util/List;

    invoke-direct {v3, v4}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Landroid/telephony/ims/DelegateRegistrationState;->getDeregisteredFeatureTags()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v1, v2, v3, p1, v0}, Lcom/android/internal/telephony/metrics/RcsStats;->onSipTransportFeatureTagStats(ILjava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRegistrationStateChanged: IMS application is dead: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/services/telephony/rcs/DelegateStateTracker;->logw(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected setCompatChangesFactory(Lcom/android/services/telephony/rcs/DelegateStateTracker$CompatChangesFactory;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/android/services/telephony/rcs/DelegateStateTracker;->mCompatChangesFactory:Lcom/android/services/telephony/rcs/DelegateStateTracker$CompatChangesFactory;

    return-void
.end method

.method public sipDelegateChanging(I)V
    .locals 1

    const-string v0, "SipDelegate Changing"

    invoke-direct {p0, v0}, Lcom/android/services/telephony/rcs/DelegateStateTracker;->logi(Ljava/lang/String;)V

    iput p1, p0, Lcom/android/services/telephony/rcs/DelegateStateTracker;->mRegistrationStateOverride:I

    iget-object p1, p0, Lcom/android/services/telephony/rcs/DelegateStateTracker;->mLastRegState:Landroid/telephony/ims/DelegateRegistrationState;

    if-nez p1, :cond_0

    const-string p1, "sipDelegateChanging: invalid state, onRegistrationStateChanged never called."

    invoke-direct {p0, p1}, Lcom/android/services/telephony/rcs/DelegateStateTracker;->logw(Ljava/lang/String;)V

    new-instance p1, Landroid/telephony/ims/DelegateRegistrationState$Builder;

    invoke-direct {p1}, Landroid/telephony/ims/DelegateRegistrationState$Builder;-><init>()V

    invoke-virtual {p1}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->build()Landroid/telephony/ims/DelegateRegistrationState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/services/telephony/rcs/DelegateStateTracker;->mLastRegState:Landroid/telephony/ims/DelegateRegistrationState;

    :cond_0
    iget-object p1, p0, Lcom/android/services/telephony/rcs/DelegateStateTracker;->mLastRegState:Landroid/telephony/ims/DelegateRegistrationState;

    invoke-virtual {p0, p1}, Lcom/android/services/telephony/rcs/DelegateStateTracker;->onRegistrationStateChanged(Landroid/telephony/ims/DelegateRegistrationState;)V

    return-void
.end method

.method public sipDelegateConnected(Ljava/util/Set;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    const-string v1, "SipDelegate connected with denied tags:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/services/telephony/rcs/DelegateStateTracker;->logi(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/services/telephony/rcs/DelegateStateTracker;->mCreatedCalled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/services/telephony/rcs/DelegateStateTracker;->mCreatedCalled:Z

    invoke-direct {p0}, Lcom/android/services/telephony/rcs/DelegateStateTracker;->notifySipDelegateCreated()V

    iput-object p1, p0, Lcom/android/services/telephony/rcs/DelegateStateTracker;->mDelegateSupportedTags:Ljava/util/Set;

    iget-object v0, p0, Lcom/android/services/telephony/rcs/DelegateStateTracker;->mRcsStats:Lcom/android/internal/telephony/metrics/RcsStats;

    iget v1, p0, Lcom/android/services/telephony/rcs/DelegateStateTracker;->mSubId:I

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/metrics/RcsStats;->createSipDelegateStats(ILjava/util/Set;)V

    :cond_0
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/services/telephony/rcs/DelegateStateTracker;->mRegistrationStateOverride:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/android/services/telephony/rcs/DelegateStateTracker;->mDelegateDeniedTags:Ljava/util/List;

    return-void
.end method

.method public sipDelegateDestroyed(I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SipDelegate destroyed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/services/telephony/rcs/DelegateStateTracker;->logi(Ljava/lang/String;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/services/telephony/rcs/DelegateStateTracker;->mRegistrationStateOverride:I

    :try_start_0
    iget-object v0, p0, Lcom/android/services/telephony/rcs/DelegateStateTracker;->mAppStateCallback:Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback;->onDestroyed(I)V

    iget-object v0, p0, Lcom/android/services/telephony/rcs/DelegateStateTracker;->mRcsStats:Lcom/android/internal/telephony/metrics/RcsStats;

    iget v1, p0, Lcom/android/services/telephony/rcs/DelegateStateTracker;->mSubId:I

    iget-object v2, p0, Lcom/android/services/telephony/rcs/DelegateStateTracker;->mDelegateSupportedTags:Ljava/util/Set;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/internal/telephony/metrics/RcsStats;->onSipDelegateStats(ILjava/util/Set;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sipDelegateDestroyed: IMS application is dead: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/services/telephony/rcs/DelegateStateTracker;->logw(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
