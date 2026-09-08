.class public Lcom/android/phone/RcsProvisioningMonitor;
.super Ljava/lang/Object;
.source "RcsProvisioningMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/RcsProvisioningMonitor$MyHandler;,
        Lcom/android/phone/RcsProvisioningMonitor$RoleManagerAdapter;,
        Lcom/android/phone/RcsProvisioningMonitor$DmaChangedListener;,
        Lcom/android/phone/RcsProvisioningMonitor$FeatureConnectorFactory;,
        Lcom/android/phone/RcsProvisioningMonitor$RoleManagerAdapterImpl;,
        Lcom/android/phone/RcsProvisioningMonitor$RcsFeatureListener;,
        Lcom/android/phone/RcsProvisioningMonitor$RcsProvisioningInfo;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static sInstance:Lcom/android/phone/RcsProvisioningMonitor;


# instance fields
.field private final mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field private final mCarrierSingleRegistrationEnabledOverride:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceSingleRegistrationEnabledOverride:Ljava/lang/Boolean;

.field private final mDmaChangedListener:Lcom/android/phone/RcsProvisioningMonitor$DmaChangedListener;

.field private mDmaPackageName:Ljava/lang/String;

.field private mFeatureFactory:Lcom/android/phone/RcsProvisioningMonitor$FeatureConnectorFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/phone/RcsProvisioningMonitor$FeatureConnectorFactory<",
            "Lcom/android/ims/RcsFeatureManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mImsFeatureValidationOverride:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhone:Lcom/android/phone/PhoneGlobals;

.field private final mRcsFeatureListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/phone/RcsProvisioningMonitor$RcsFeatureListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mRcsProvisioningInfos:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/phone/RcsProvisioningMonitor$RcsProvisioningInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRcsStats:Lcom/android/internal/telephony/metrics/RcsStats;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mRoleManager:Lcom/android/phone/RcsProvisioningMonitor$RoleManagerAdapter;

.field private final mSubChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private final mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private final mTelephonyRegistryManager:Landroid/telephony/TelephonyRegistryManager;

.field private volatile mTestModeEnabled:Z


# direct methods
.method public static synthetic $r8$lambda$nR-ALLV2zCcRJfXnmCY2Hm_O_5U(Ljava/lang/Integer;Lcom/android/phone/RcsProvisioningMonitor$RcsProvisioningInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/phone/RcsProvisioningMonitor;->lambda$release$0(Ljava/lang/Integer;Lcom/android/phone/RcsProvisioningMonitor$RcsProvisioningInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$t8437fIgJAOOSmPPkVdW8p5wYYQ(Lcom/android/phone/RcsProvisioningMonitor;Ljava/lang/Integer;Lcom/android/phone/RcsProvisioningMonitor$RcsProvisioningInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/phone/RcsProvisioningMonitor;->lambda$onDefaultMessagingApplicationChanged$1(Ljava/lang/Integer;Lcom/android/phone/RcsProvisioningMonitor$RcsProvisioningInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wsrJAit2CiIrlt5PS5wY-gzJ8eE(Lcom/android/phone/RcsProvisioningMonitor;Ljava/lang/Integer;Lcom/android/phone/RcsProvisioningMonitor$RcsProvisioningInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/phone/RcsProvisioningMonitor;->lambda$onCarrierConfigChange$2(Ljava/lang/Integer;Lcom/android/phone/RcsProvisioningMonitor$RcsProvisioningInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zmbO4d65jJzmJVHI_QLBqaR7mqI(Lcom/android/phone/RcsProvisioningMonitor;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/RcsProvisioningMonitor;->lambda$onSubChanged$3(Ljava/lang/Integer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmCarrierSingleRegistrationEnabledOverride(Lcom/android/phone/RcsProvisioningMonitor;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/android/phone/RcsProvisioningMonitor;->mCarrierSingleRegistrationEnabledOverride:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeviceSingleRegistrationEnabledOverride(Lcom/android/phone/RcsProvisioningMonitor;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/android/phone/RcsProvisioningMonitor;->mDeviceSingleRegistrationEnabledOverride:Ljava/lang/Boolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFeatureFactory(Lcom/android/phone/RcsProvisioningMonitor;)Lcom/android/phone/RcsProvisioningMonitor$FeatureConnectorFactory;
    .locals 0

    iget-object p0, p0, Lcom/android/phone/RcsProvisioningMonitor;->mFeatureFactory:Lcom/android/phone/RcsProvisioningMonitor$FeatureConnectorFactory;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/phone/RcsProvisioningMonitor;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/phone/RcsProvisioningMonitor;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPhone(Lcom/android/phone/RcsProvisioningMonitor;)Lcom/android/phone/PhoneGlobals;
    .locals 0

    iget-object p0, p0, Lcom/android/phone/RcsProvisioningMonitor;->mPhone:Lcom/android/phone/PhoneGlobals;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRcsStats(Lcom/android/phone/RcsProvisioningMonitor;)Lcom/android/internal/telephony/metrics/RcsStats;
    .locals 0

    iget-object p0, p0, Lcom/android/phone/RcsProvisioningMonitor;->mRcsStats:Lcom/android/internal/telephony/metrics/RcsStats;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRoleManager(Lcom/android/phone/RcsProvisioningMonitor;)Lcom/android/phone/RcsProvisioningMonitor$RoleManagerAdapter;
    .locals 0

    iget-object p0, p0, Lcom/android/phone/RcsProvisioningMonitor;->mRoleManager:Lcom/android/phone/RcsProvisioningMonitor$RoleManagerAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmDeviceSingleRegistrationEnabledOverride(Lcom/android/phone/RcsProvisioningMonitor;Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/RcsProvisioningMonitor;->mDeviceSingleRegistrationEnabledOverride:Ljava/lang/Boolean;

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyDmaForSub(Lcom/android/phone/RcsProvisioningMonitor;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/phone/RcsProvisioningMonitor;->notifyDmaForSub(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monCarrierConfigChange(Lcom/android/phone/RcsProvisioningMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/RcsProvisioningMonitor;->onCarrierConfigChange()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monConfigReceived(Lcom/android/phone/RcsProvisioningMonitor;I[BZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/RcsProvisioningMonitor;->onConfigReceived(I[BZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monDefaultMessagingApplicationChanged(Lcom/android/phone/RcsProvisioningMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/RcsProvisioningMonitor;->onDefaultMessagingApplicationChanged()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monReconfigRequest(Lcom/android/phone/RcsProvisioningMonitor;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/RcsProvisioningMonitor;->onReconfigRequest(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monSubChanged(Lcom/android/phone/RcsProvisioningMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/RcsProvisioningMonitor;->onSubChanged()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreset(Lcom/android/phone/RcsProvisioningMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/RcsProvisioningMonitor;->reset()V

    return-void
.end method

.method static bridge synthetic -$$Nest$smbooleanEquals(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/phone/RcsProvisioningMonitor;->booleanEquals(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smlogd(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/phone/RcsProvisioningMonitor;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smloge(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/phone/RcsProvisioningMonitor;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smlogi(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/phone/RcsProvisioningMonitor;->logi(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smlogv(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/phone/RcsProvisioningMonitor;->logv(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    sput-boolean v0, Lcom/android/phone/RcsProvisioningMonitor;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/phone/PhoneGlobals;Landroid/os/Looper;Lcom/android/phone/RcsProvisioningMonitor$RoleManagerAdapter;Lcom/android/phone/RcsProvisioningMonitor$FeatureConnectorFactory;Lcom/android/internal/telephony/metrics/RcsStats;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/phone/PhoneGlobals;",
            "Landroid/os/Looper;",
            "Lcom/android/phone/RcsProvisioningMonitor$RoleManagerAdapter;",
            "Lcom/android/phone/RcsProvisioningMonitor$FeatureConnectorFactory<",
            "Lcom/android/ims/RcsFeatureManager;",
            ">;",
            "Lcom/android/internal/telephony/metrics/RcsStats;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/RcsProvisioningMonitor;->mRcsProvisioningInfos:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/RcsProvisioningMonitor;->mCarrierSingleRegistrationEnabledOverride:Ljava/util/HashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/RcsProvisioningMonitor;->mImsFeatureValidationOverride:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/phone/RcsProvisioningMonitor;->mRcsFeatureListeners:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/phone/RcsProvisioningMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/phone/RcsProvisioningMonitor$1;-><init>(Lcom/android/phone/RcsProvisioningMonitor;)V

    iput-object v0, p0, Lcom/android/phone/RcsProvisioningMonitor;->mSubChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    new-instance v0, Lcom/android/phone/RcsProvisioningMonitor$2;

    invoke-direct {v0, p0}, Lcom/android/phone/RcsProvisioningMonitor$2;-><init>(Lcom/android/phone/RcsProvisioningMonitor;)V

    iput-object v0, p0, Lcom/android/phone/RcsProvisioningMonitor;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/phone/RcsProvisioningMonitor;->mPhone:Lcom/android/phone/PhoneGlobals;

    new-instance v0, Lcom/android/phone/RcsProvisioningMonitor$MyHandler;

    invoke-direct {v0, p0, p2}, Lcom/android/phone/RcsProvisioningMonitor$MyHandler;-><init>(Lcom/android/phone/RcsProvisioningMonitor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/phone/RcsProvisioningMonitor;->mHandler:Landroid/os/Handler;

    const-class p2, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p1, p2}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/CarrierConfigManager;

    iput-object p2, p0, Lcom/android/phone/RcsProvisioningMonitor;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    const-class p2, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, p2}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/SubscriptionManager;

    iput-object p2, p0, Lcom/android/phone/RcsProvisioningMonitor;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    const-class p2, Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {p1, p2}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyRegistryManager;

    iput-object p1, p0, Lcom/android/phone/RcsProvisioningMonitor;->mTelephonyRegistryManager:Landroid/telephony/TelephonyRegistryManager;

    iput-object p3, p0, Lcom/android/phone/RcsProvisioningMonitor;->mRoleManager:Lcom/android/phone/RcsProvisioningMonitor$RoleManagerAdapter;

    invoke-direct {p0}, Lcom/android/phone/RcsProvisioningMonitor;->getDmaPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/phone/RcsProvisioningMonitor;->mDmaPackageName:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "DMA is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/phone/RcsProvisioningMonitor;->mDmaPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/phone/RcsProvisioningMonitor;->logv(Ljava/lang/String;)V

    new-instance p1, Lcom/android/phone/RcsProvisioningMonitor$DmaChangedListener;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/phone/RcsProvisioningMonitor$DmaChangedListener;-><init>(Lcom/android/phone/RcsProvisioningMonitor;Lcom/android/phone/RcsProvisioningMonitor$DmaChangedListener-IA;)V

    iput-object p1, p0, Lcom/android/phone/RcsProvisioningMonitor;->mDmaChangedListener:Lcom/android/phone/RcsProvisioningMonitor$DmaChangedListener;

    iput-object p4, p0, Lcom/android/phone/RcsProvisioningMonitor;->mFeatureFactory:Lcom/android/phone/RcsProvisioningMonitor$FeatureConnectorFactory;

    iput-object p5, p0, Lcom/android/phone/RcsProvisioningMonitor;->mRcsStats:Lcom/android/internal/telephony/metrics/RcsStats;

    invoke-direct {p0}, Lcom/android/phone/RcsProvisioningMonitor;->init()V

    return-void
.end method

.method private static booleanEquals(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z
    .locals 2

    if-nez p0, :cond_0

    if-eqz p1, :cond_2

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getDmaPackageName()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/android/phone/RcsProvisioningMonitor;->mRoleManager:Lcom/android/phone/RcsProvisioningMonitor$RoleManagerAdapter;

    const-string v0, "android.app.role.SMS"

    invoke-interface {p0, v0}, Lcom/android/phone/RcsProvisioningMonitor$RoleManagerAdapter;->getRoleHolders(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/CollectionUtils;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not get dma name due to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/phone/RcsProvisioningMonitor;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInstance()Lcom/android/phone/RcsProvisioningMonitor;
    .locals 1

    sget-object v0, Lcom/android/phone/RcsProvisioningMonitor;->sInstance:Lcom/android/phone/RcsProvisioningMonitor;

    return-object v0
.end method

.method private getSingleRegistrationCapableValue(I)I
    .locals 2

    iget-object v0, p0, Lcom/android/phone/RcsProvisioningMonitor;->mDeviceSingleRegistrationEnabledOverride:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/RcsProvisioningMonitor;->mPhone:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.telephony.ims.singlereg"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1}, Lcom/android/phone/RcsProvisioningMonitor;->getSingleRegistrationRequiredByCarrier(I)I

    move-result p0

    or-int/2addr p0, v0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SingleRegistrationCapableValue : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/phone/RcsProvisioningMonitor;->logv(Ljava/lang/String;)V

    return p0
.end method

.method private getSingleRegistrationRequiredByCarrier(I)I
    .locals 3

    iget-object v0, p0, Lcom/android/phone/RcsProvisioningMonitor;->mCarrierSingleRegistrationEnabledOverride:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    iget-object p0, p0, Lcom/android/phone/RcsProvisioningMonitor;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    invoke-static {p0}, Landroid/telephony/CarrierConfigManager;->isConfigForIdentifiedCarrier(Landroid/os/PersistableBundle;)Z

    move-result p1

    if-nez p1, :cond_2

    const p0, 0xf000

    return p0

    :cond_2
    const-string p1, "ims.ims_single_registration_required_bool"

    invoke-virtual {p0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    return v1
.end method

.method private init()V
    .locals 3

    const-string v0, "init."

    invoke-static {v0}, Lcom/android/phone/RcsProvisioningMonitor;->logd(Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/RcsProvisioningMonitor;->mPhone:Lcom/android/phone/PhoneGlobals;

    iget-object v2, p0, Lcom/android/phone/RcsProvisioningMonitor;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/phone/RcsProvisioningMonitor;->mTelephonyRegistryManager:Landroid/telephony/TelephonyRegistryManager;

    iget-object v1, p0, Lcom/android/phone/RcsProvisioningMonitor;->mSubChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;->getHandlerExecutor()Lcom/android/internal/telephony/util/HandlerExecutor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyRegistryManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;Ljava/util/concurrent/Executor;)V

    iget-object v0, p0, Lcom/android/phone/RcsProvisioningMonitor;->mDmaChangedListener:Lcom/android/phone/RcsProvisioningMonitor$DmaChangedListener;

    invoke-virtual {v0}, Lcom/android/phone/RcsProvisioningMonitor$DmaChangedListener;->register()V

    invoke-direct {p0}, Lcom/android/phone/RcsProvisioningMonitor;->onSubChanged()V

    return-void
.end method

.method private isAcsUsed(I)Z
    .locals 0

    iget-object p0, p0, Lcom/android/phone/RcsProvisioningMonitor;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string p1, "use_acs_for_rcs_bool"

    invoke-virtual {p0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$onCarrierConfigChange$2(Ljava/lang/Integer;Lcom/android/phone/RcsProvisioningMonitor$RcsProvisioningInfo;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/phone/RcsProvisioningMonitor;->getSingleRegistrationCapableValue(I)I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/android/phone/RcsProvisioningMonitor$RcsProvisioningInfo;->setSingleRegistrationCapability(I)V

    return-void
.end method

.method private synthetic lambda$onDefaultMessagingApplicationChanged$1(Ljava/lang/Integer;Lcom/android/phone/RcsProvisioningMonitor$RcsProvisioningInfo;)V
    .locals 3

    invoke-virtual {p2}, Lcom/android/phone/RcsProvisioningMonitor$RcsProvisioningInfo;->notifyDma()V

    invoke-virtual {p2}, Lcom/android/phone/RcsProvisioningMonitor$RcsProvisioningInfo;->getConfig()[B

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/phone/RcsProvisioningMonitor$RcsProvisioningInfo;->clear()V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/phone/RcsProvisioningMonitor;->isAcsUsed(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "acs used, trigger to re-configure."

    invoke-static {v0}, Lcom/android/phone/RcsProvisioningMonitor;->logv(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/phone/RcsProvisioningMonitor;->updateConfigForSub(I[BZ)V

    invoke-virtual {p2}, Lcom/android/phone/RcsProvisioningMonitor$RcsProvisioningInfo;->triggerRcsReconfiguration()V

    goto :goto_0

    :cond_0
    const-string v1, "acs not used, set cached config and notify."

    invoke-static {v1}, Lcom/android/phone/RcsProvisioningMonitor;->logv(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/android/phone/RcsProvisioningMonitor$RcsProvisioningInfo;->setConfig([B)V

    :goto_0
    iget-object p0, p0, Lcom/android/phone/RcsProvisioningMonitor;->mRcsStats:Lcom/android/internal/telephony/metrics/RcsStats;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x3

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/metrics/RcsStats;->onRcsClientProvisioningStats(II)V

    return-void
.end method

.method private synthetic lambda$onSubChanged$3(Ljava/lang/Integer;)V
    .locals 0

    iget-object p0, p0, Lcom/android/phone/RcsProvisioningMonitor;->mRcsProvisioningInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/phone/RcsProvisioningMonitor$RcsProvisioningInfo;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/RcsProvisioningMonitor$RcsProvisioningInfo;->destroy()V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$release$0(Ljava/lang/Integer;Lcom/android/phone/RcsProvisioningMonitor$RcsProvisioningInfo;)V
    .locals 0

    invoke-virtual {p1}, Lcom/android/phone/RcsProvisioningMonitor$RcsProvisioningInfo;->destroy()V

    return-void
.end method

.method private loadConfigForSub(I)[B
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadConfigForSub, subId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mTestModeEnabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/phone/RcsProvisioningMonitor;->mTestModeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/RcsProvisioningMonitor;->logv(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/phone/RcsProvisioningMonitor;->mTestModeEnabled:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/phone/RcsProvisioningMonitor;->mPhone:Lcom/android/phone/PhoneGlobals;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/telephony/ims/RcsConfig;->loadRcsConfigForSub(Landroid/content/Context;IZ)[B

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 1

    const-string v0, "RcsProvisioningMonitor"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1

    const-string v0, "RcsProvisioningMonitor"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static logi(Ljava/lang/String;)V
    .locals 1

    const-string v0, "RcsProvisioningMonitor"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static logv(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/phone/RcsProvisioningMonitor;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "RcsProvisioningMonitor"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static make(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/RcsProvisioningMonitor;
    .locals 8

    sget-object v0, Lcom/android/phone/RcsProvisioningMonitor;->sInstance:Lcom/android/phone/RcsProvisioningMonitor;

    if-nez v0, :cond_0

    const-string v0, "RcsProvisioningMonitor created."

    invoke-static {v0}, Lcom/android/phone/RcsProvisioningMonitor;->logd(Ljava/lang/String;)V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RcsProvisioningMonitor"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/android/phone/RcsProvisioningMonitor;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    new-instance v5, Lcom/android/phone/RcsProvisioningMonitor$RoleManagerAdapterImpl;

    const/4 v0, 0x0

    invoke-direct {v5, p0, v0}, Lcom/android/phone/RcsProvisioningMonitor$RoleManagerAdapterImpl;-><init>(Landroid/content/Context;Lcom/android/phone/RcsProvisioningMonitor$RoleManagerAdapterImpl-IA;)V

    new-instance v6, Lcom/android/phone/RcsProvisioningMonitor$$ExternalSyntheticLambda2;

    invoke-direct {v6}, Lcom/android/phone/RcsProvisioningMonitor$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {}, Lcom/android/internal/telephony/metrics/RcsStats;->getInstance()Lcom/android/internal/telephony/metrics/RcsStats;

    move-result-object v7

    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/phone/RcsProvisioningMonitor;-><init>(Lcom/android/phone/PhoneGlobals;Landroid/os/Looper;Lcom/android/phone/RcsProvisioningMonitor$RoleManagerAdapter;Lcom/android/phone/RcsProvisioningMonitor$FeatureConnectorFactory;Lcom/android/internal/telephony/metrics/RcsStats;)V

    sput-object v1, Lcom/android/phone/RcsProvisioningMonitor;->sInstance:Lcom/android/phone/RcsProvisioningMonitor;

    :cond_0
    sget-object p0, Lcom/android/phone/RcsProvisioningMonitor;->sInstance:Lcom/android/phone/RcsProvisioningMonitor;

    return-object p0
.end method

.method private notifyDmaForSub(II)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.telephony.ims.action.RCS_SINGLE_REGISTRATION_CAPABILITY_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/RcsProvisioningMonitor;->mDmaPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.telephony.ims.extra.SUBSCRIPTION_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "android.telephony.ims.extra.STATUS"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notify "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", sub:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", capability:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/phone/RcsProvisioningMonitor;->logv(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/phone/RcsProvisioningMonitor;->mTestModeEnabled:Z

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/phone/RcsProvisioningMonitor;->mPhone:Lcom/android/phone/PhoneGlobals;

    const-string p1, "android.permission.PERFORM_IMS_SINGLE_REGISTRATION"

    invoke-virtual {p0, v0, p1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/phone/RcsProvisioningMonitor;->mPhone:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method private onCarrierConfigChange()V
    .locals 2

    const-string v0, "onCarrierConfigChange"

    invoke-static {v0}, Lcom/android/phone/RcsProvisioningMonitor;->logv(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/RcsProvisioningMonitor;->mRcsProvisioningInfos:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/android/phone/RcsProvisioningMonitor$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/phone/RcsProvisioningMonitor$$ExternalSyntheticLambda4;-><init>(Lcom/android/phone/RcsProvisioningMonitor;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method private onConfigReceived(I[BZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigReceived, subId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", config:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isCompressed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/RcsProvisioningMonitor;->logv(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/RcsProvisioningMonitor;->mRcsProvisioningInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/RcsProvisioningMonitor$RcsProvisioningInfo;

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "sub["

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] has been removed"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/phone/RcsProvisioningMonitor;->logd(Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p3, :cond_1

    invoke-static {p2}, Landroid/telephony/ims/RcsConfig;->decompressGzip([B)[B

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, p2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/phone/RcsProvisioningMonitor$RcsProvisioningInfo;->setConfig([B)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/RcsProvisioningMonitor;->updateConfigForSub(I[BZ)V

    invoke-direct {p0, p1}, Lcom/android/phone/RcsProvisioningMonitor;->isAcsUsed(I)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/phone/RcsProvisioningMonitor;->mRcsStats:Lcom/android/internal/telephony/metrics/RcsStats;

    invoke-virtual {p0, p1}, Lcom/android/phone/RcsProvisioningMonitor;->isRcsVolteSingleRegistrationEnabled(I)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const/16 p3, 0xc8

    const/4 v0, 0x2

    invoke-virtual {p2, p1, p3, v0, p0}, Lcom/android/internal/telephony/metrics/RcsStats;->onRcsAcsProvisioningStats(IIIZ)V

    :cond_2
    return-void
.end method

.method private onDefaultMessagingApplicationChanged()V
    .locals 2

    invoke-direct {p0}, Lcom/android/phone/RcsProvisioningMonitor;->getDmaPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/RcsProvisioningMonitor;->mDmaPackageName:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/android/phone/RcsProvisioningMonitor;->mDmaPackageName:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "new default messaging application "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/phone/RcsProvisioningMonitor;->mDmaPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/RcsProvisioningMonitor;->logv(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/RcsProvisioningMonitor;->mRcsProvisioningInfos:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/android/phone/RcsProvisioningMonitor$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/phone/RcsProvisioningMonitor$$ExternalSyntheticLambda3;-><init>(Lcom/android/phone/RcsProvisioningMonitor;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    :cond_0
    return-void
.end method

.method private onReconfigRequest(I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReconfigRequest, subId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/RcsProvisioningMonitor;->logv(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/RcsProvisioningMonitor;->mRcsProvisioningInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/RcsProvisioningMonitor$RcsProvisioningInfo;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/RcsProvisioningMonitor$RcsProvisioningInfo;->setConfig([B)V

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2}, Lcom/android/phone/RcsProvisioningMonitor;->updateConfigForSub(I[BZ)V

    invoke-virtual {v0}, Lcom/android/phone/RcsProvisioningMonitor$RcsProvisioningInfo;->triggerRcsReconfiguration()V

    :cond_0
    iget-object p0, p0, Lcom/android/phone/RcsProvisioningMonitor;->mRcsStats:Lcom/android/internal/telephony/metrics/RcsStats;

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/metrics/RcsStats;->onRcsClientProvisioningStats(II)V

    return-void
.end method

.method private onSubChanged()V
    .locals 10

    iget-object v0, p0, Lcom/android/phone/RcsProvisioningMonitor;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object v0

    new-instance v1, Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/phone/RcsProvisioningMonitor;->mRcsProvisioningInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/phone/RcsProvisioningMonitor;->mRcsProvisioningInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-direct {p0, v4}, Lcom/android/phone/RcsProvisioningMonitor;->loadConfigForSub(I)[B

    move-result-object v5

    invoke-direct {p0, v4}, Lcom/android/phone/RcsProvisioningMonitor;->getSingleRegistrationCapableValue(I)I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "new info is created for sub : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", single registration capability :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", rcs config : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/RcsProvisioningMonitor;->logv(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/phone/RcsProvisioningMonitor;->mRcsProvisioningInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v9, Lcom/android/phone/RcsProvisioningMonitor$RcsProvisioningInfo;

    invoke-direct {v9, p0, v4, v6, v5}, Lcom/android/phone/RcsProvisioningMonitor$RcsProvisioningInfo;-><init>(Lcom/android/phone/RcsProvisioningMonitor;II[B)V

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/phone/RcsProvisioningMonitor$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/phone/RcsProvisioningMonitor$$ExternalSyntheticLambda1;-><init>(Lcom/android/phone/RcsProvisioningMonitor;)V

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private release()V
    .locals 2

    const-string v0, "release."

    invoke-static {v0}, Lcom/android/phone/RcsProvisioningMonitor;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/RcsProvisioningMonitor;->mDmaChangedListener:Lcom/android/phone/RcsProvisioningMonitor$DmaChangedListener;

    invoke-virtual {v0}, Lcom/android/phone/RcsProvisioningMonitor$DmaChangedListener;->unregister()V

    iget-object v0, p0, Lcom/android/phone/RcsProvisioningMonitor;->mTelephonyRegistryManager:Landroid/telephony/TelephonyRegistryManager;

    iget-object v1, p0, Lcom/android/phone/RcsProvisioningMonitor;->mSubChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyRegistryManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    iget-object v0, p0, Lcom/android/phone/RcsProvisioningMonitor;->mPhone:Lcom/android/phone/PhoneGlobals;

    iget-object v1, p0, Lcom/android/phone/RcsProvisioningMonitor;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/phone/RcsProvisioningMonitor;->mRcsFeatureListeners:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/RcsProvisioningMonitor;->mRcsFeatureListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/RcsProvisioningMonitor$RcsFeatureListener;

    invoke-virtual {v1}, Lcom/android/phone/RcsProvisioningMonitor$RcsFeatureListener;->destroy()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/RcsProvisioningMonitor;->mRcsFeatureListeners:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/android/phone/RcsProvisioningMonitor;->mRcsProvisioningInfos:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/android/phone/RcsProvisioningMonitor$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/phone/RcsProvisioningMonitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    iget-object v0, p0, Lcom/android/phone/RcsProvisioningMonitor;->mRcsProvisioningInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object p0, p0, Lcom/android/phone/RcsProvisioningMonitor;->mCarrierSingleRegistrationEnabledOverride:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method private reset()V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/RcsProvisioningMonitor;->release()V

    invoke-direct {p0}, Lcom/android/phone/RcsProvisioningMonitor;->init()V

    return-void
.end method

.method private updateConfigForSub(I[BZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateConfigForSub, subId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mTestModeEnabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/phone/RcsProvisioningMonitor;->mTestModeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/RcsProvisioningMonitor;->logv(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/phone/RcsProvisioningMonitor;->mTestModeEnabled:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/phone/RcsProvisioningMonitor;->mPhone:Lcom/android/phone/PhoneGlobals;

    invoke-static {p0, p1, p2, p3}, Landroid/telephony/ims/RcsConfig;->updateConfigForSub(Landroid/content/Context;I[BZ)V

    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string v0, "destroy it."

    invoke-static {v0}, Lcom/android/phone/RcsProvisioningMonitor;->logd(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/phone/RcsProvisioningMonitor;->release()V

    iget-object p0, p0, Lcom/android/phone/RcsProvisioningMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->quit()V

    return-void
.end method

.method public getCarrierSingleRegistrationEnabled(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/phone/RcsProvisioningMonitor;->mRcsProvisioningInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/phone/RcsProvisioningMonitor;->mRcsProvisioningInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/phone/RcsProvisioningMonitor$RcsProvisioningInfo;

    invoke-virtual {p0}, Lcom/android/phone/RcsProvisioningMonitor$RcsProvisioningInfo;->getSingleRegistrationCapability()I

    move-result p0

    and-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getConfig(I)[B
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/phone/RcsProvisioningMonitor;->mRcsProvisioningInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/phone/RcsProvisioningMonitor;->mRcsProvisioningInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/phone/RcsProvisioningMonitor$RcsProvisioningInfo;

    invoke-virtual {p0}, Lcom/android/phone/RcsProvisioningMonitor$RcsProvisioningInfo;->getConfig()[B

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDeviceSingleRegistrationEnabled()Z
    .locals 2

    iget-object p0, p0, Lcom/android/phone/RcsProvisioningMonitor;->mRcsProvisioningInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/phone/RcsProvisioningMonitor$RcsProvisioningInfo;

    invoke-virtual {p0}, Lcom/android/phone/RcsProvisioningMonitor$RcsProvisioningInfo;->getSingleRegistrationCapability()I

    move-result p0

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/android/phone/RcsProvisioningMonitor;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public getImsFeatureValidationOverride(I)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/android/phone/RcsProvisioningMonitor;->mImsFeatureValidationOverride:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0
.end method

.method public getTestModeEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/phone/RcsProvisioningMonitor;->mTestModeEnabled:Z

    return p0
.end method

.method public isRcsVolteSingleRegistrationEnabled(I)Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/android/phone/RcsProvisioningMonitor;->mRcsProvisioningInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/phone/RcsProvisioningMonitor;->mRcsProvisioningInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/phone/RcsProvisioningMonitor$RcsProvisioningInfo;

    invoke-virtual {p0}, Lcom/android/phone/RcsProvisioningMonitor$RcsProvisioningInfo;->getSingleRegistrationCapability()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public overrideCarrierSingleRegistrationEnabled(ILjava/lang/Boolean;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/phone/RcsProvisioningMonitor;->mRcsProvisioningInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/android/phone/RcsProvisioningMonitor;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public overrideDeviceSingleRegistrationEnabled(Ljava/lang/Boolean;)V
    .locals 1

    iget-object p0, p0, Lcom/android/phone/RcsProvisioningMonitor;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public overrideImsFeatureValidation(ILjava/lang/Boolean;)Z
    .locals 0

    if-nez p2, :cond_0

    iget-object p0, p0, Lcom/android/phone/RcsProvisioningMonitor;->mImsFeatureValidationOverride:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/phone/RcsProvisioningMonitor;->mImsFeatureValidationOverride:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method registerRcsFeatureListener(Lcom/android/phone/RcsProvisioningMonitor$RcsProvisioningInfo;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/phone/RcsProvisioningMonitor$RcsProvisioningInfo;->getSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/RcsProvisioningMonitor;->mRcsFeatureListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/RcsProvisioningMonitor$RcsFeatureListener;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/phone/RcsProvisioningMonitor$RcsFeatureListener;

    invoke-direct {v1, p0, v0}, Lcom/android/phone/RcsProvisioningMonitor$RcsFeatureListener;-><init>(Lcom/android/phone/RcsProvisioningMonitor;I)V

    iget-object p0, p0, Lcom/android/phone/RcsProvisioningMonitor;->mRcsFeatureListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {v1, p1}, Lcom/android/phone/RcsProvisioningMonitor$RcsFeatureListener;->addRcsProvisioningInfo(Lcom/android/phone/RcsProvisioningMonitor$RcsProvisioningInfo;)V

    return-void
.end method

.method public registerRcsProvisioningCallback(ILandroid/telephony/ims/aidl/IRcsConfigCallback;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/phone/RcsProvisioningMonitor;->mRcsProvisioningInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/phone/RcsProvisioningMonitor$RcsProvisioningInfo;

    if-nez p0, :cond_0

    const-string p0, "fail to register rcs provisioning callback due to subscription unavailable"

    invoke-static {p0}, Lcom/android/phone/RcsProvisioningMonitor;->logd(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/phone/RcsProvisioningMonitor$RcsProvisioningInfo;->addRcsConfigCallback(Landroid/telephony/ims/aidl/IRcsConfigCallback;)Z

    move-result p0

    return p0
.end method

.method public requestReconfig(I)V
    .locals 2

    iget-object p0, p0, Lcom/android/phone/RcsProvisioningMonitor;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setTestModeEnabled(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTestModeEnabled as "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/RcsProvisioningMonitor;->logv(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/phone/RcsProvisioningMonitor;->mTestModeEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/phone/RcsProvisioningMonitor;->mTestModeEnabled:Z

    iget-object p0, p0, Lcom/android/phone/RcsProvisioningMonitor;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method unregisterRcsFeatureListener(Lcom/android/phone/RcsProvisioningMonitor$RcsProvisioningInfo;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/phone/RcsProvisioningMonitor;->mRcsFeatureListeners:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/RcsProvisioningMonitor;->mRcsFeatureListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/RcsProvisioningMonitor$RcsFeatureListener;

    invoke-virtual {v1, p1}, Lcom/android/phone/RcsProvisioningMonitor$RcsFeatureListener;->removeRcsProvisioningInfo(Lcom/android/phone/RcsProvisioningMonitor$RcsProvisioningInfo;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public unregisterRcsProvisioningCallback(ILandroid/telephony/ims/aidl/IRcsConfigCallback;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/phone/RcsProvisioningMonitor;->mRcsProvisioningInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/phone/RcsProvisioningMonitor$RcsProvisioningInfo;

    if-nez p0, :cond_0

    const-string p0, "fail to unregister rcs provisioning changed due to subscription unavailable"

    invoke-static {p0}, Lcom/android/phone/RcsProvisioningMonitor;->logd(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/phone/RcsProvisioningMonitor$RcsProvisioningInfo;->removeRcsConfigCallback(Landroid/telephony/ims/aidl/IRcsConfigCallback;)Z

    move-result p0

    return p0
.end method

.method public updateConfig(I[BZ)V
    .locals 1

    iget-object p0, p0, Lcom/android/phone/RcsProvisioningMonitor;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, p3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
