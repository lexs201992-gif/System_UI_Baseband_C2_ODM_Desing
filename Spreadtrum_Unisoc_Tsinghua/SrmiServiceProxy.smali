.class public Lcom/spreadtrum/ims/srmi/SrmiServiceProxy;
.super Ljava/lang/Object;
.source "SrmiServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spreadtrum/ims/srmi/SrmiServiceProxy$BinderServiceDeathRecipient;,
        Lcom/spreadtrum/ims/srmi/SrmiServiceProxy$SrmiChannel;,
        Lcom/spreadtrum/ims/srmi/SrmiServiceProxy$SrmiMsg;,
        Lcom/spreadtrum/ims/srmi/SrmiServiceProxy$SrmiMsgAttr;
    }
.end annotation


# static fields
.field private static final RES_SRMI_FAILURE:I = -0x1

.field private static final RES_SRMI_SUCCESS:I = 0x0

.field public static final SRMI_COMM_APCP:I = 0x0

.field public static final SRMI_COMM_APCP2:I = 0x1

.field public static final SRMI_COMM_CPCP2:I = 0x2

.field public static final SRMI_COMM_LOOP1:I = 0x3

.field public static final SRMI_COMM_LOOP2:I = 0x4

.field private static final SRMI_MSG_SEND_DELAY:I = 0x7d0

.field private static final SRMI_RETRY_COUNT:I = 0x5

.field private static final TAG:Ljava/lang/String;

.field private static lock:Ljava/lang/Object;

.field public static mISrmiManager:Lvendor/unisoc/frameworks/srmi/ISrmiManager;

.field private static sInstance:Lcom/spreadtrum/ims/srmi/SrmiServiceProxy;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIntent:Landroid/content/Intent;

.field private mReady:Z

.field private final mServiceCookies:Ljava/util/concurrent/atomic/AtomicLong;

.field private mSrmiChannels:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/spreadtrum/ims/srmi/SrmiServiceProxy$SrmiChannel;",
            ">;"
        }
    .end annotation
.end field

.field final mSrmiServiceDeathRecipients:Lcom/spreadtrum/ims/srmi/SrmiServiceProxy$BinderServiceDeathRecipient;


# direct methods
.method static bridge synthetic -$$Nest$fgetmServiceCookies(Lcom/spreadtrum/ims/srmi/SrmiServiceProxy;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/srmi/SrmiServiceProxy;->mServiceCookies:Ljava/util/concurrent/atomic/AtomicLong;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmReady(Lcom/spreadtrum/ims/srmi/SrmiServiceProxy;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/spreadtrum/ims/srmi/SrmiServiceProxy;->mReady:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetSrmiService(Lcom/spreadtrum/ims/srmi/SrmiServiceProxy;)Lvendor/unisoc/frameworks/srmi/ISrmiManager;
    .locals 0

    invoke-direct {p0}, Lcom/spreadtrum/ims/srmi/SrmiServiceProxy;->getSrmiService()Lvendor/unisoc/frameworks/srmi/ISrmiManager;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mnotifyReadyStateUpdate(Lcom/spreadtrum/ims/srmi/SrmiServiceProxy;)V
    .locals 0

    invoke-direct {p0}, Lcom/spreadtrum/ims/srmi/SrmiServiceProxy;->notifyReadyStateUpdate()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetSrmiServiceProxy(Lcom/spreadtrum/ims/srmi/SrmiServiceProxy;)V
    .locals 0

    invoke-direct {p0}, Lcom/spreadtrum/ims/srmi/SrmiServiceProxy;->resetSrmiServiceProxy()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/spreadtrum/ims/srmi/SrmiServiceProxy;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/spreadtrum/ims/srmi/SrmiServiceProxy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/srmi/Utils;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/spreadtrum/ims/srmi/SrmiServiceProxy;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/spreadtrum/ims/srmi/SrmiServiceProxy;->mISrmiManager:Lvendor/unisoc/frameworks/srmi/ISrmiManager;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/spreadtrum/ims/srmi/SrmiServiceProxy;->lock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spreadtrum/ims/srmi/SrmiServiceProxy;->mReady:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spreadtrum/ims/srmi/SrmiServiceProxy;->mIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/spreadtrum/ims/srmi/SrmiServiceProxy;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/spreadtrum/ims/srmi/SrmiServiceProxy;->mSrmiChannels:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p1, p0, Lcom/spreadtrum/ims/srmi/SrmiServiceProxy;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "SrmiServiceProxy"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    new-instance v3, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v4, 0x0

    invoke-direct {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v3, p0, Lcom/spreadtrum/ims/srmi/SrmiServiceProxy;->mServiceCookies:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v3, Lcom/spreadtrum/ims/srmi/SrmiServiceProxy$BinderServiceDeathRecipient;

    invoke-direct {v3, p0, v0}, Lcom/spreadtrum/ims/srmi/SrmiServiceProxy$BinderServiceDeathRecipient;-><init>(Lcom/spreadtrum/ims/srmi/SrmiServiceProxy;Lcom/spreadtrum/ims/srmi/SrmiServiceProxy$BinderServiceDeathRecipient-IA;)V

    iput-object v3, p0, Lcom/spreadtrum/ims/srmi/SrmiServiceProxy;->mSrmiServiceDeathRecipients:Lcom/spreadtrum/ims/srmi/SrmiServiceProxy$BinderServiceDeathRecipient;

    sget-object v0, Lcom/spreadtrum/ims/srmi/SrmiServiceProxy;->TAG:Ljava/lang/String;

    const-string v3, "SrmiServiceProxy create."

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v3, Lcom/spreadtrum/ims/srmi/SrmiServiceProxy$1;

    invoke-direct {v3, p0}, Lcom/spreadtrum/ims/srmi/SrmiServiceProxy$1;-><init>(Lcom/spreadtrum/ims/srmi/SrmiServiceProxy;)V

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/spreadtrum/ims/srmi/SrmiServiceProxy;
    .locals 2

    const-class v0, Lcom/spreadtrum/ims/srmi/SrmiServiceProxy;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/spreadtrum/ims/srmi/SrmiServiceProxy;->sInstance:Lcom/spreadtrum/ims/srmi/SrmiServiceProxy;

    if-nez v1, :cond_0

    new-instance v1, Lcom/spreadtrum/ims/srmi/SrmiServiceProxy;

    invoke-direct {v1, p0}, Lcom/spreadtrum/ims/srmi/SrmiServiceProxy;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/spreadtrum/ims/srmi/SrmiServiceProxy;->sInstance:Lcom/spreadtrum/ims/srmi/SrmiServiceProxy;

    :cond_0
    sget-object v1, Lcom/spreadtrum/ims/srmi/SrmiServiceProxy;->sInstance:Lcom/spreadtrum/ims/srmi/SrmiServiceProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getSrmiChannel(Landroid/content/Context;Ljava/lang/String;I)Lcom/spreadtrum/ims/srmi/SrmiServiceProxy$SrmiChannel;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-ltz p2, :cond_1

    const/4 v0, 0x4

    if-le p2, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/spreadtrum/ims/srmi/SrmiServiceProxy;->getInstance(Landroid/content/Context;)Lcom/spreadtrum/ims/srmi/SrmiServiceProxy;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/spreadtrum/ims/srmi/SrmiServiceProxy;->getChannel(Ljava/lang/String;I)Lcom/spreadtrum/ims/srmi/SrmiServiceProxy$SrmiChannel;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    sget-object v0, Lcom/spreadtrum/ims/srmi/SrmiServiceProxy;->TAG:Ljava/lang/String;

    const-string v1, "Failed to get the srmi channel as name is null, or the type is invalid."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method private getSrmiService()Lvendor/unisoc/frameworks/srmi/ISrmiManager;
    .locals 4

    sget-object v0, Lcom/spreadtrum/ims/srmi/SrmiServiceProxy;->mISrmiManager:Lvendor/unisoc/frameworks/srmi/ISrmiManager;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lvendor/unisoc/frameworks/srmi/ISrmiManager;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/default"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    sget-object v1, Lcom/spreadtrum/ims/srmi/SrmiServiceProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSrmiService binder: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    invoke-static {v0}, Lvendor/unisoc/frameworks/srmi/ISrmiManager$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/unisoc/frameworks/srmi/ISrmiManager;

    move-result-object v2

    sput-object v2, Lcom/spreadtrum/ims/srmi/SrmiServiceProxy;->mISrmiManager:Lvendor/unisoc/frameworks/srmi/ISrmiManager;

    :cond_1
    sget-object v2, Lcom/spreadtrum/ims/srmi/SrmiServiceProxy;->mISrmiManager:Lvendor/unisoc/frameworks/srmi/ISrmiManager;

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/spreadtrum/ims/srmi/SrmiServiceProxy;->mSrmiServiceDeathRecipients:Lcom/spreadtrum/ims/srmi/SrmiServiceProxy$BinderServiceDeathRecipient;

    invoke-interface {v2}, Lvendor/unisoc/frameworks/srmi/ISrmiManager;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/spreadtrum/ims/srmi/SrmiServiceProxy$BinderServiceDeathRecipient;->linkToDeath(Landroid/os/IBinder;)V

    goto :goto_0

    :cond_2
    const-string v2, "Can not get srmi hal servce."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    sput-object v1, Lcom/spreadtrum/ims/srmi/SrmiServiceProxy;->mISrmiManager:Lvendor/unisoc/frameworks/srmi/ISrmiManager;

    sget-object v1, Lcom/spreadtrum/ims/srmi/SrmiServiceProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get srmi hal service with error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    sget-object v0, Lcom/spreadtrum/ims/srmi/SrmiServiceProxy;->mISrmiManager:Lvendor/unisoc/frameworks/srmi/ISrmiManager;

    return-object v0
.end method

.method private notifyReadyStateUpdate()V
    .locals 4

    iget-object v0, p0, Lcom/spreadtrum/ims/srmi/SrmiServiceProxy;->mSrmiChannels:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/srmi/SrmiServiceProxy;->mSrmiChannels:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/spreadtrum/ims/srmi/SrmiServiceProxy$SrmiChannel;

    iget-boolean v3, p0, Lcom/spreadtrum/ims/srmi/SrmiServiceProxy;->mReady:Z

    invoke-virtual {v2, v3}, Lcom/spreadtrum/ims/srmi/SrmiServiceProxy$SrmiChannel;->onReady(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private resetSrmiServiceProxy()V
    .locals 10

    sget-object v0, Lcom/spreadtrum/ims/srmi/SrmiServiceProxy;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x5

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    const/4 v5, 0x0

    sput-object v5, Lcom/spreadtrum/ims/srmi/SrmiServiceProxy;->mISrmiManager:Lvendor/unisoc/frameworks/srmi/ISrmiManager;

    iget-object v5, p0, Lcom/spreadtrum/ims/srmi/SrmiServiceProxy;->mServiceCookies:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    :goto_0
    invoke-direct {p0}, Lcom/spreadtrum/ims/srmi/SrmiServiceProxy;->getSrmiService()Lvendor/unisoc/frameworks/srmi/ISrmiManager;

    sget-object v5, Lcom/spreadtrum/ims/srmi/SrmiServiceProxy;->mISrmiManager:Lvendor/unisoc/frameworks/srmi/ISrmiManager;

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/spreadtrum/ims/srmi/SrmiServiceProxy;->updateNativeChannel()V

    sget-object v5, Lcom/spreadtrum/ims/srmi/SrmiServiceProxy;->TAG:Ljava/lang/String;

    const-string v6, "resetSrmiServiceProxy success. "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long/2addr v5, v1

    cmp-long v7, v5, v3

    if-ltz v7, :cond_1

    sget-object v7, Lcom/spreadtrum/ims/srmi/SrmiServiceProxy;->TAG:Ljava/lang/String;

    const-string v8, "resetSrmiServiceProxy fail: time out. "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    :try_start_1
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x32

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    goto :goto_0

    :catch_0
    move-exception v7

    :try_start_2
    sget-object v8, Lcom/spreadtrum/ims/srmi/SrmiServiceProxy;->TAG:Ljava/lang/String;

    const-string v9, "Failed to reset srmi service proxy."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method public getChannel(Ljava/lang/String;I)Lcom/spreadtrum/ims/srmi/SrmiServiceProxy$SrmiChannel;
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-ltz p2, :cond_1

    const/4 v0, 0x4

    if-gt p2, v0, :cond_1

    iget-object v0, p0, Lcom/spreadtrum/ims/srmi/SrmiServiceProxy;->mSrmiChannels:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spreadtrum/ims/srmi/SrmiServiceProxy$SrmiChannel;

    if-nez v0, :cond_0

    new-instance v1, Lcom/spreadtrum/ims/srmi/SrmiServiceProxy$SrmiChannel;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/spreadtrum/ims/srmi/SrmiServiceProxy$SrmiChannel;-><init>(Lcom/spreadtrum/ims/srmi/SrmiServiceProxy;Ljava/lang/String;ILcom/spreadtrum/ims/srmi/SrmiServiceProxy$SrmiChannel-IA;)V

    move-object v0, v1

    iget-object v1, p0, Lcom/spreadtrum/ims/srmi/SrmiServiceProxy;->mSrmiChannels:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/spreadtrum/ims/srmi/SrmiServiceProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get the srmi channel as name is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Channel\'s name or type is invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isReady()Z
    .locals 1

    iget-boolean v0, p0, Lcom/spreadtrum/ims/srmi/SrmiServiceProxy;->mReady:Z

    return v0
.end method

.method public removeChannel(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/spreadtrum/ims/srmi/SrmiServiceProxy;->mSrmiChannels:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public updateNativeChannel()V
    .locals 3

    iget-object v0, p0, Lcom/spreadtrum/ims/srmi/SrmiServiceProxy;->mSrmiChannels:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/srmi/SrmiServiceProxy;->mSrmiChannels:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/spreadtrum/ims/srmi/SrmiServiceProxy$SrmiChannel;

    invoke-virtual {v2}, Lcom/spreadtrum/ims/srmi/SrmiServiceProxy$SrmiChannel;->nativeCreateChannel()V

    goto :goto_0

    :cond_1
    return-void
.end method
