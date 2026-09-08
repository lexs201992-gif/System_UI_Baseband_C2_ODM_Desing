.class public abstract Lcom/unisoc/settings/network/SimStateChangeListener;
.super Ljava/lang/Object;
.source "SimStateChangeListener.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SimStateChangeListener"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListening:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mLooper:Landroid/os/Looper;

.field private mSimState:[Ljava/lang/String;

.field private mSimStateChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mSimStateIntentFilter:Landroid/content/IntentFilter;

.field private mTeleMgr:Landroid/telephony/TelephonyManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmSimState(Lcom/unisoc/settings/network/SimStateChangeListener;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/unisoc/settings/network/SimStateChangeListener;->mSimState:[Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/unisoc/settings/network/SimStateChangeListener;-><init>(Landroid/os/Looper;Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unisoc/settings/network/SimStateChangeListener;->mLooper:Landroid/os/Looper;

    iput-object p2, p0, Lcom/unisoc/settings/network/SimStateChangeListener;->mContext:Landroid/content/Context;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/unisoc/settings/network/SimStateChangeListener;->mListening:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object p1, p0, Lcom/unisoc/settings/network/SimStateChangeListener;->mContext:Landroid/content/Context;

    const-string p2, "phone"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/unisoc/settings/network/SimStateChangeListener;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSupportedModemCount()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/unisoc/settings/network/SimStateChangeListener;->mSimState:[Ljava/lang/String;

    const-string p2, "UNKNOWN"

    invoke-static {p1, p2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p1, Landroid/content/IntentFilter;

    const-string p2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/unisoc/settings/network/SimStateChangeListener;->mSimStateIntentFilter:Landroid/content/IntentFilter;

    return-void
.end method

.method private getSimStateChangeReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    new-instance v0, Lcom/unisoc/settings/network/SimStateChangeListener$1;

    invoke-direct {v0, p0}, Lcom/unisoc/settings/network/SimStateChangeListener$1;-><init>(Lcom/unisoc/settings/network/SimStateChangeListener;)V

    return-object v0
.end method

.method private monitorSimStateChange(Z)V
    .locals 3

    iget-object v0, p0, Lcom/unisoc/settings/network/SimStateChangeListener;->mListening:Ljava/util/concurrent/atomic/AtomicBoolean;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "SimStateChangeListener"

    const-string p1, "don\'t monitor sim state repeatedly"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/unisoc/settings/network/SimStateChangeListener;->mSimStateChangeReceiver:Landroid/content/BroadcastReceiver;

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/unisoc/settings/network/SimStateChangeListener;->getSimStateChangeReceiver()Landroid/content/BroadcastReceiver;

    move-result-object p1

    iput-object p1, p0, Lcom/unisoc/settings/network/SimStateChangeListener;->mSimStateChangeReceiver:Landroid/content/BroadcastReceiver;

    :cond_1
    iget-object p1, p0, Lcom/unisoc/settings/network/SimStateChangeListener;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/unisoc/settings/network/SimStateChangeListener;->mSimStateChangeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/unisoc/settings/network/SimStateChangeListener;->mSimStateIntentFilter:Landroid/content/IntentFilter;

    new-instance v2, Landroid/os/Handler;

    iget-object p0, p0, Lcom/unisoc/settings/network/SimStateChangeListener;->mLooper:Landroid/os/Looper;

    invoke-direct {v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p0, 0x0

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void

    :cond_2
    iget-object p1, p0, Lcom/unisoc/settings/network/SimStateChangeListener;->mSimStateChangeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/unisoc/settings/network/SimStateChangeListener;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public getSimState(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/unisoc/settings/network/SimStateChangeListener;->mSimState:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public abstract onChanged()V
.end method

.method public onSimStateChanged()V
    .locals 1

    iget-object v0, p0, Lcom/unisoc/settings/network/SimStateChangeListener;->mListening:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/unisoc/settings/network/SimStateChangeListener;->onChanged()V

    return-void
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/unisoc/settings/network/SimStateChangeListener;->monitorSimStateChange(Z)V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/unisoc/settings/network/SimStateChangeListener;->monitorSimStateChange(Z)V

    return-void
.end method
