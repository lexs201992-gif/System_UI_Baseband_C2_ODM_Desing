.class public Lcom/android/proxyhandler/ProxyServer;
.super Ljava/lang/Thread;
.source "ProxyServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/proxyhandler/ProxyServer$ProxyConnection;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/net/IProxyPortListener;

.field public mIsRunning:Z

.field private mPort:I

.field private serverSocket:Ljava/net/ServerSocket;

.field private threadExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/proxyhandler/ProxyServer;->mIsRunning:Z

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/proxyhandler/ProxyServer;->threadExecutor:Ljava/util/concurrent/ExecutorService;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/proxyhandler/ProxyServer;->mPort:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/proxyhandler/ProxyServer;->mCallback:Lcom/android/net/IProxyPortListener;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "Failed to start proxy server"

    const-string v1, "ProxyServer"

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/net/ServerSocket;

    invoke-direct {v3, v2}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v3, p0, Lcom/android/proxyhandler/ProxyServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v3}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/proxyhandler/ProxyServer;->setPort(I)V

    :goto_0
    iget-boolean v3, p0, Lcom/android/proxyhandler/ProxyServer;->mIsRunning:Z
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_1

    :try_start_1
    iget-object v3, p0, Lcom/android/proxyhandler/ProxyServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v3}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Lcom/android/proxyhandler/ProxyServer$ProxyConnection;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v3, v5}, Lcom/android/proxyhandler/ProxyServer$ProxyConnection;-><init>(Lcom/android/proxyhandler/ProxyServer;Ljava/net/Socket;Lcom/android/proxyhandler/ProxyServer$ProxyConnection-IA;)V

    iget-object v3, p0, Lcom/android/proxyhandler/ProxyServer;->threadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v3

    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_2
    move-exception v3

    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    iput-boolean v2, p0, Lcom/android/proxyhandler/ProxyServer;->mIsRunning:Z

    return-void
.end method

.method public declared-synchronized setCallback(Lcom/android/net/IProxyPortListener;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/proxyhandler/ProxyServer;->mPort:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :try_start_1
    invoke-interface {p1, v0}, Lcom/android/net/IProxyPortListener;->setProxyPort(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "ProxyServer"

    const-string v2, "Proxy failed to report port to PacProxyService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/android/proxyhandler/ProxyServer;->mCallback:Lcom/android/net/IProxyPortListener;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setPort(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/proxyhandler/ProxyServer;->mCallback:Lcom/android/net/IProxyPortListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-interface {v0, p1}, Lcom/android/net/IProxyPortListener;->setProxyPort(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "ProxyServer"

    const-string v2, "Proxy failed to report port to PacProxyService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    iput p1, p0, Lcom/android/proxyhandler/ProxyServer;->mPort:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized startServer()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/proxyhandler/ProxyServer;->mIsRunning:Z

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopServer()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/proxyhandler/ProxyServer;->mIsRunning:Z

    iget-object v0, p0, Lcom/android/proxyhandler/ProxyServer;->serverSocket:Ljava/net/ServerSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/proxyhandler/ProxyServer;->serverSocket:Ljava/net/ServerSocket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
