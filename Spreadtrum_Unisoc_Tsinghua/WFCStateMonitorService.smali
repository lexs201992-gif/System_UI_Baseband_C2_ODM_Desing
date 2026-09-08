.class public Lcom/spreadtrum/ims/n3am/vowifi/WFCStateMonitorService;
.super Landroid/app/Service;
.source "WFCStateMonitorService.java"


# static fields
.field private static final PROP_KEY_CP_VOWIFI:Ljava/lang/String; = "persist.vendor.sys.single.imsstack"

.field private static final TAG:Ljava/lang/String;

.field private static final sVoWiFiServices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRegisterReceiver:Z


# direct methods
.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/spreadtrum/ims/n3am/vowifi/WFCStateMonitorService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/spreadtrum/ims/n3am/vowifi/WFCStateMonitorService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/n3am/util/Utils;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/spreadtrum/ims/n3am/vowifi/WFCStateMonitorService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/spreadtrum/ims/n3am/vowifi/WFCStateMonitorService;->sVoWiFiServices:Ljava/util/ArrayList;

    const-class v1, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v1, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v1, Lcom/spreadtrum/ims/n3am/vowifi/VideoStateNotifyService;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/WFCStateMonitorService;->mRegisterReceiver:Z

    new-instance v0, Lcom/spreadtrum/ims/n3am/vowifi/WFCStateMonitorService$1;

    invoke-direct {v0, p0}, Lcom/spreadtrum/ims/n3am/vowifi/WFCStateMonitorService$1;-><init>(Lcom/spreadtrum/ims/n3am/vowifi/WFCStateMonitorService;)V

    iput-object v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/WFCStateMonitorService;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private declared-synchronized clearReceiver()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/WFCStateMonitorService;->mRegisterReceiver:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/WFCStateMonitorService;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/spreadtrum/ims/n3am/vowifi/WFCStateMonitorService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/WFCStateMonitorService;->mReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method declared-synchronized checkWFCState(IZ)V
    .locals 7

    monitor-enter p0

    if-gez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform()Z

    move-result v0

    :goto_0
    nop

    sget-object v1, Lcom/spreadtrum/ims/n3am/vowifi/WFCStateMonitorService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Check the WFC enabled: wfcEnabled["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] for the phone["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/spreadtrum/ims/n3am/vowifi/WFCStateMonitorService;->mRegisterReceiver:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/spreadtrum/ims/n3am/vowifi/WFCStateMonitorService;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/n3am/vowifi/WFCStateMonitorService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/spreadtrum/ims/n3am/vowifi/WFCStateMonitorService;->mReceiver:Landroid/content/BroadcastReceiver;

    :cond_1
    sget-object v1, Lcom/spreadtrum/ims/n3am/vowifi/WFCStateMonitorService;->sVoWiFiServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.spreadtrum.ims"

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/spreadtrum/ims/n3am/vowifi/WFCStateMonitorService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    sget-object v4, Lcom/spreadtrum/ims/n3am/vowifi/WFCStateMonitorService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Start service: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    goto :goto_1

    :cond_2
    goto :goto_2

    :cond_3
    if-eqz p2, :cond_4

    iget-object v1, p0, Lcom/spreadtrum/ims/n3am/vowifi/WFCStateMonitorService;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_4

    iget-boolean v2, p0, Lcom/spreadtrum/ims/n3am/vowifi/WFCStateMonitorService;->mRegisterReceiver:Z

    if-nez v2, :cond_4

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/spreadtrum/ims/n3am/vowifi/WFCStateMonitorService;->mRegisterReceiver:Z

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/spreadtrum/ims/n3am/vowifi/WFCStateMonitorService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method init(Z)V
    .locals 4

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/spreadtrum/ims/n3am/util/Utils;->getPhoneCount(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2, v0}, Lcom/spreadtrum/ims/n3am/vowifi/WFCStateMonitorService;->checkWFCState(IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    invoke-static {p0}, Lcom/spreadtrum/ims/n3am/util/Utils;->getPrimaryCard(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/spreadtrum/ims/n3am/vowifi/WFCStateMonitorService;->checkWFCState(IZ)V

    sget-object v0, Lcom/spreadtrum/ims/n3am/vowifi/WFCStateMonitorService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Monitor the WFC mode for primary card: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "persist.vendor.sys.single.imsstack"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/spreadtrum/ims/n3am/vowifi/Utilities;->isSupportDualVoWifi()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/spreadtrum/ims/n3am/vowifi/WFCStateMonitorService;->init(Z)V

    sget-object v0, Lcom/spreadtrum/ims/n3am/vowifi/WFCStateMonitorService;->TAG:Ljava/lang/String;

    const-string v1, "WFCStateMonitorService create."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/spreadtrum/ims/n3am/vowifi/WFCStateMonitorService;->TAG:Ljava/lang/String;

    const-string v1, "As CP VoWifi disabled, needn\'t start vowifi monitor."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/spreadtrum/ims/n3am/vowifi/WFCStateMonitorService;->stopSelf()V

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    invoke-direct {p0}, Lcom/spreadtrum/ims/n3am/vowifi/WFCStateMonitorService;->clearReceiver()V

    return-void
.end method
