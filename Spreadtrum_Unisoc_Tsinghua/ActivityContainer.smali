.class public Lcom/unisoc/phone/ActivityContainer;
.super Landroid/app/Application;
.source "ActivityContainer.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "UniActivityContainer"

.field private static final NO_DECIDE_BY_PHONEID:I = -0x1

.field private static sInstance:Lcom/unisoc/phone/ActivityContainer;


# instance fields
.field private mActivityArrayMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/Activity;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mActivityList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mApplication:Landroid/app/Application;

.field private mIsFirstListen:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mTeleMgr:Landroid/telephony/TelephonyManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmIsFirstListen(Lcom/unisoc/phone/ActivityContainer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/unisoc/phone/ActivityContainer;->mIsFirstListen:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmIsFirstListen(Lcom/unisoc/phone/ActivityContainer;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unisoc/phone/ActivityContainer;->mIsFirstListen:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mexit(Lcom/unisoc/phone/ActivityContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/unisoc/phone/ActivityContainer;->exit()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/unisoc/phone/ActivityContainer;->mActivityList:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/unisoc/phone/ActivityContainer;->mActivityArrayMap:Landroid/util/ArrayMap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisoc/phone/ActivityContainer;->mIsFirstListen:Z

    new-instance v0, Lcom/unisoc/phone/ActivityContainer$1;

    invoke-direct {v0, p0}, Lcom/unisoc/phone/ActivityContainer$1;-><init>(Lcom/unisoc/phone/ActivityContainer;)V

    iput-object v0, p0, Lcom/unisoc/phone/ActivityContainer;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private exit()V
    .locals 5

    const-string v0, "exit()"

    const-string v1, "UniActivityContainer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/unisoc/phone/ActivityContainer;->mActivityList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/unisoc/phone/ActivityContainer;->mActivityArrayMap:Landroid/util/ArrayMap;

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mActivityArrayMap :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/unisoc/phone/ActivityContainer;->mActivityArrayMap:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/unisoc/phone/ActivityContainer;->mActivityArrayMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v3, -0x1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/unisoc/phone/ActivityContainer;->mActivityArrayMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_1
    invoke-direct {p0, v3}, Lcom/unisoc/phone/ActivityContainer;->isDoneExitByPhoneId(I)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finish activity : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/unisoc/phone/ActivityContainer;->mActivityArrayMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/unisoc/phone/ActivityContainer;->mActivityList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroid/app/Activity;->finishAndRemoveTask()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/unisoc/phone/ActivityContainer;->mActivityList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "mActivityList is null "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/unisoc/phone/ActivityContainer;->mApplication:Landroid/app/Application;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/unisoc/phone/ActivityContainer;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_3
    const/4 p0, 0x0

    sput-object p0, Lcom/unisoc/phone/ActivityContainer;->sInstance:Lcom/unisoc/phone/ActivityContainer;

    :cond_4
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/unisoc/phone/ActivityContainer;
    .locals 2

    const-class v0, Lcom/unisoc/phone/ActivityContainer;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/unisoc/phone/ActivityContainer;->sInstance:Lcom/unisoc/phone/ActivityContainer;

    if-nez v1, :cond_0

    new-instance v1, Lcom/unisoc/phone/ActivityContainer;

    invoke-direct {v1}, Lcom/unisoc/phone/ActivityContainer;-><init>()V

    sput-object v1, Lcom/unisoc/phone/ActivityContainer;->sInstance:Lcom/unisoc/phone/ActivityContainer;

    :cond_0
    sget-object v1, Lcom/unisoc/phone/ActivityContainer;->sInstance:Lcom/unisoc/phone/ActivityContainer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getTeleMgr()Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object p0, p0, Lcom/unisoc/phone/ActivityContainer;->mApplication:Landroid/app/Application;

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method private isDoneExitByPhoneId(I)Z
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lcom/unisoc/phone/ActivityContainer;->mApplication:Landroid/app/Application;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/unisoc/phone/ActivityContainer;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/unisoc/phone/ActivityContainer;->getTeleMgr()Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/unisoc/phone/ActivityContainer;->mTeleMgr:Landroid/telephony/TelephonyManager;

    :cond_1
    iget-object p0, p0, Lcom/unisoc/phone/ActivityContainer;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result p0

    const/4 p1, 0x5

    if-eq p0, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1
.end method

.method private setApplication(Landroid/app/Application;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "UniActivityContainer"

    const-string v1, "set Application"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/unisoc/phone/ActivityContainer;->mApplication:Landroid/app/Application;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisoc/phone/ActivityContainer;->mApplication:Landroid/app/Application;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/unisoc/phone/ActivityContainer;->getTeleMgr()Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/unisoc/phone/ActivityContainer;->mTeleMgr:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/unisoc/phone/ActivityContainer;->mApplication:Landroid/app/Application;

    iget-object p0, p0, Lcom/unisoc/phone/ActivityContainer;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0, p1}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    return-void
.end method


# virtual methods
.method public addActivity(Landroid/app/Activity;I)V
    .locals 2

    iget-object v0, p0, Lcom/unisoc/phone/ActivityContainer;->mApplication:Landroid/app/Application;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisoc/phone/ActivityContainer;->setApplication(Landroid/app/Application;)V

    :cond_0
    iget-object v0, p0, Lcom/unisoc/phone/ActivityContainer;->mActivityList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add activity:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniActivityContainer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/unisoc/phone/ActivityContainer;->mActivityArrayMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/unisoc/phone/ActivityContainer;->mActivityList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public removeActivity(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/unisoc/phone/ActivityContainer;->mActivityList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remove activity:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniActivityContainer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/unisoc/phone/ActivityContainer;->mActivityArrayMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/unisoc/phone/ActivityContainer;->mActivityList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/unisoc/phone/ActivityContainer;->mActivityList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "mActivityList.size() =0 "

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/unisoc/phone/ActivityContainer;->mApplication:Landroid/app/Application;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/unisoc/phone/ActivityContainer;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0}, Landroid/app/Application;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    const/4 p0, 0x0

    sput-object p0, Lcom/unisoc/phone/ActivityContainer;->sInstance:Lcom/unisoc/phone/ActivityContainer;

    :cond_1
    return-void
.end method
