.class public Lcom/android/bluetooth/ObexServerSockets;
.super Ljava/lang/Object;
.source "ObexServerSockets.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;
    }
.end annotation


# static fields
.field public static final CREATE_RETRY_TIME:I = 0xa

.field public static final D:Z = true

.field public static final STAG:Ljava/lang/String; = "ObexServerSockets"

.field public static volatile sInstanceCounter:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final mConHandler:Lcom/android/bluetooth/IObexConnectionHandler;

.field public final mL2capSocket:Landroid/bluetooth/BluetoothServerSocket;

.field public mL2capThread:Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;

.field public final mRfcommSocket:Landroid/bluetooth/BluetoothServerSocket;

.field public mRfcommThread:Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;

.field public final mTag:Ljava/lang/String;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmTag(Lcom/android/bluetooth/ObexServerSockets;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/bluetooth/ObexServerSockets;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$monAcceptFailed(Lcom/android/bluetooth/ObexServerSockets;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/bluetooth/ObexServerSockets;->onAcceptFailed()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monConnect(Lcom/android/bluetooth/ObexServerSockets;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothSocket;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/bluetooth/ObexServerSockets;->onConnect(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothSocket;)Z

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/android/bluetooth/ObexServerSockets;->sInstanceCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lcom/android/bluetooth/IObexConnectionHandler;Landroid/bluetooth/BluetoothServerSocket;Landroid/bluetooth/BluetoothServerSocket;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/bluetooth/ObexServerSockets;->mConHandler:Lcom/android/bluetooth/IObexConnectionHandler;

    iput-object p2, p0, Lcom/android/bluetooth/ObexServerSockets;->mRfcommSocket:Landroid/bluetooth/BluetoothServerSocket;

    iput-object p3, p0, Lcom/android/bluetooth/ObexServerSockets;->mL2capSocket:Landroid/bluetooth/BluetoothServerSocket;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ObexServerSockets"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/android/bluetooth/ObexServerSockets;->sInstanceCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/ObexServerSockets;->mTag:Ljava/lang/String;

    return-void
.end method

.method public static create(Lcom/android/bluetooth/IObexConnectionHandler;)Lcom/android/bluetooth/ObexServerSockets;
    .locals 2
    .annotation build Landroid/annotation/RequiresPermission;
        value = "android.permission.BLUETOOTH_CONNECT"
    .end annotation

    const/4 v0, -0x2

    const/4 v1, 0x1

    invoke-static {p0, v0, v0, v1}, Lcom/android/bluetooth/ObexServerSockets;->create(Lcom/android/bluetooth/IObexConnectionHandler;IIZ)Lcom/android/bluetooth/ObexServerSockets;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lcom/android/bluetooth/IObexConnectionHandler;IIZ)Lcom/android/bluetooth/ObexServerSockets;
    .locals 10
    .annotation build Landroid/annotation/RequiresPermission;
        value = "android.permission.BLUETOOTH_CONNECT"
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "create(rfcomm = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", l2capPsm = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ObexServerSockets"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_7

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v5, v2

    move-object v6, v5

    move v4, v3

    move v7, v4

    :goto_0
    const/16 v8, 0xa

    if-ge v4, v8, :cond_5

    const-string v7, "Error create ServerSockets "

    if-nez v5, :cond_1

    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->listenUsingRfcommOn(I)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v5

    goto :goto_1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->listenUsingInsecureRfcommOn(I)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v5

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception v8

    goto :goto_3

    :cond_1
    :goto_1
    if-nez v6, :cond_3

    if-eqz p3, :cond_2

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothAdapter;->listenUsingL2capOn(I)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v6

    goto :goto_4

    :cond_2
    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothAdapter;->listenUsingInsecureL2capOn(I)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_2
    invoke-static {v1, v7, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    :goto_3
    invoke-static {v1, v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v7, v3

    goto :goto_5

    :cond_3
    :goto_4
    const/4 v7, 0x1

    :goto_5
    if-nez v7, :cond_5

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v8

    const/16 v9, 0xb

    if-eq v8, v9, :cond_4

    const/16 v9, 0xc

    if-eq v8, v9, :cond_4

    const-string p1, "initServerSockets failed as BT is (being) turned off"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_4
    :try_start_1
    const-string v8, "waiting 300 ms..."

    invoke-static {v1, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v8, 0x12c

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_6

    :catch_2
    const-string v8, "create() was interrupted"

    invoke-static {v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    :goto_7
    move v3, v7

    :goto_8
    if-eqz v3, :cond_6

    const-string p1, "Succeed to create listening sockets "

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/android/bluetooth/ObexServerSockets;

    invoke-direct {p1, p0, v5, v6}, Lcom/android/bluetooth/ObexServerSockets;-><init>(Lcom/android/bluetooth/IObexConnectionHandler;Landroid/bluetooth/BluetoothServerSocket;Landroid/bluetooth/BluetoothServerSocket;)V

    invoke-virtual {p1}, Lcom/android/bluetooth/ObexServerSockets;->startAccept()V

    return-object p1

    :cond_6
    const-string p0, "Error to create listening socket after 10 try"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_7
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "No bluetooth adapter..."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createInsecure(Lcom/android/bluetooth/IObexConnectionHandler;)Lcom/android/bluetooth/ObexServerSockets;
    .locals 2
    .annotation build Landroid/annotation/RequiresPermission;
        value = "android.permission.BLUETOOTH_CONNECT"
    .end annotation

    const/4 v0, -0x2

    const/4 v1, 0x0

    invoke-static {p0, v0, v0, v1}, Lcom/android/bluetooth/ObexServerSockets;->create(Lcom/android/bluetooth/IObexConnectionHandler;IIZ)Lcom/android/bluetooth/ObexServerSockets;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getL2capPsm()I
    .locals 0

    iget-object p0, p0, Lcom/android/bluetooth/ObexServerSockets;->mL2capSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothServerSocket;->getChannel()I

    move-result p0

    return p0
.end method

.method public getRfcommChannel()I
    .locals 0

    iget-object p0, p0, Lcom/android/bluetooth/ObexServerSockets;->mRfcommSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothServerSocket;->getChannel()I

    move-result p0

    return p0
.end method

.method public final declared-synchronized onAcceptFailed()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/ObexServerSockets;->shutdown(Z)V

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/ObexServerSockets;->mTag:Ljava/lang/String;

    const-string v1, "onAcceptFailed() calling shutdown..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/ObexServerSockets;->mConHandler:Lcom/android/bluetooth/IObexConnectionHandler;

    invoke-interface {v0}, Lcom/android/bluetooth/IObexConnectionHandler;->onAcceptFailed()V
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

.method public final declared-synchronized onConnect(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothSocket;)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/ObexServerSockets;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnect() socket: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/ObexServerSockets;->mConHandler:Lcom/android/bluetooth/IObexConnectionHandler;

    invoke-interface {v0, p1, p2}, Lcom/android/bluetooth/IObexConnectionHandler;->onConnect(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothSocket;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized shutdown(Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/ObexServerSockets;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shutdown(block = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/ObexServerSockets;->mRfcommThread:Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;->shutdown()V

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/ObexServerSockets;->mL2capThread:Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;->shutdown()V

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/bluetooth/ObexServerSockets;->mRfcommThread:Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;

    if-nez p1, :cond_3

    iget-object v1, p0, Lcom/android/bluetooth/ObexServerSockets;->mL2capThread:Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_6

    :cond_3
    if-eqz p1, :cond_4

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Thread;->join()V

    iput-object v0, p0, Lcom/android/bluetooth/ObexServerSockets;->mRfcommThread:Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;

    :cond_4
    iget-object p1, p0, Lcom/android/bluetooth/ObexServerSockets;->mL2capThread:Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Thread;->join()V

    iput-object v0, p0, Lcom/android/bluetooth/ObexServerSockets;->mL2capThread:Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    iget-object v1, p0, Lcom/android/bluetooth/ObexServerSockets;->mTag:Ljava/lang/String;

    const-string v2, "shutdown() interrupted, continue waiting..."

    invoke-static {v1, v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_5
    iput-object v0, p0, Lcom/android/bluetooth/ObexServerSockets;->mRfcommThread:Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;

    iput-object v0, p0, Lcom/android/bluetooth/ObexServerSockets;->mL2capThread:Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final startAccept()V
    .locals 2

    iget-object v0, p0, Lcom/android/bluetooth/ObexServerSockets;->mTag:Ljava/lang/String;

    const-string v1, "startAccept()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;

    iget-object v1, p0, Lcom/android/bluetooth/ObexServerSockets;->mRfcommSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;-><init>(Lcom/android/bluetooth/ObexServerSockets;Landroid/bluetooth/BluetoothServerSocket;)V

    iput-object v0, p0, Lcom/android/bluetooth/ObexServerSockets;->mRfcommThread:Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;

    iget-object v1, p0, Lcom/android/bluetooth/ObexServerSockets;->mL2capSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;-><init>(Lcom/android/bluetooth/ObexServerSockets;Landroid/bluetooth/BluetoothServerSocket;)V

    iput-object v0, p0, Lcom/android/bluetooth/ObexServerSockets;->mL2capThread:Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
