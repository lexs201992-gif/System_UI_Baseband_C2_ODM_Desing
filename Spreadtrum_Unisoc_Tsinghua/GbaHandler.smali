.class public Lcom/spreadtrum/ims/gba/GbaHandler;
.super Landroid/os/Handler;
.source "GbaHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spreadtrum/ims/gba/GbaHandler$ThreadRequest;
    }
.end annotation


# static fields
.field private static final EVENT_BOOTSTRAP_AUTHENTICATION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "GbaHandler"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mImsSRMIInterface:Lcom/spreadtrum/ims/srmi/rcs/ImsSRMIInterface;

.field private mImsService:Lcom/spreadtrum/ims/ImsService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/spreadtrum/ims/ImsService;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/spreadtrum/ims/gba/GbaHandler;->mImsService:Lcom/spreadtrum/ims/ImsService;

    iput-object p1, p0, Lcom/spreadtrum/ims/gba/GbaHandler;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/spreadtrum/ims/srmi/rcs/ImsSRMIInterface;->getInstance(Landroid/content/Context;)Lcom/spreadtrum/ims/srmi/rcs/ImsSRMIInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/spreadtrum/ims/gba/GbaHandler;->mImsSRMIInterface:Lcom/spreadtrum/ims/srmi/rcs/ImsSRMIInterface;

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 2

    const-string v0, "GbaHandler"

    const-string v1, "info"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private waitForResult(Lcom/spreadtrum/ims/gba/GbaHandler$ThreadRequest;)V
    .locals 2

    nop

    :goto_0
    :try_start_0
    iget-object v0, p1, Lcom/spreadtrum/ims/gba/GbaHandler$ThreadRequest;->result:Ljava/lang/Object;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "waitForResult error"

    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/gba/GbaHandler;->log(Ljava/lang/String;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/spreadtrum/ims/gba/GbaHandler$ThreadRequest;

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v2, "EVENT_BOOTSTRAP_AUTHENTICATION"

    invoke-direct {p0, v2}, Lcom/spreadtrum/ims/gba/GbaHandler;->log(Ljava/lang/String;)V

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/ims/internal/GbaAuthResult;

    iput-object v2, v1, Lcom/spreadtrum/ims/gba/GbaHandler$ThreadRequest;->result:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/spreadtrum/ims/gba/GbaHandler$ThreadRequest;->result:Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GbaAuthResult fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/spreadtrum/ims/gba/GbaHandler;->log(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onAuthenticationRequest(IIILjava/lang/String;[BZ)Lcom/android/ims/internal/GbaAuthResult;
    .locals 11

    move-object v1, p0

    new-instance v0, Lcom/spreadtrum/ims/gba/GbaHandler$ThreadRequest;

    const-string v2, "bootstrapAuthenticationRequest"

    invoke-direct {v0, v2}, Lcom/spreadtrum/ims/gba/GbaHandler$ThreadRequest;-><init>(Ljava/lang/Object;)V

    move-object v2, v0

    monitor-enter v2

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0, v2}, Lcom/spreadtrum/ims/gba/GbaHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    iget-object v3, v1, Lcom/spreadtrum/ims/gba/GbaHandler;->mImsSRMIInterface:Lcom/spreadtrum/ims/srmi/rcs/ImsSRMIInterface;

    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    move v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    invoke-virtual/range {v3 .. v10}, Lcom/spreadtrum/ims/srmi/rcs/ImsSRMIInterface;->bootstrapAuthenticationRequest(IIILjava/lang/String;[BLjava/lang/Boolean;Landroid/os/Message;)V

    invoke-direct {p0, v2}, Lcom/spreadtrum/ims/gba/GbaHandler;->waitForResult(Lcom/spreadtrum/ims/gba/GbaHandler$ThreadRequest;)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    :try_start_1
    iget-object v0, v2, Lcom/spreadtrum/ims/gba/GbaHandler$ThreadRequest;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/ims/internal/GbaAuthResult;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bootstrapAuthenticationRequest NullPointerException happen."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/spreadtrum/ims/gba/GbaHandler;->log(Ljava/lang/String;)V

    return-object v3

    :catch_1
    move-exception v0

    return-object v3

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
