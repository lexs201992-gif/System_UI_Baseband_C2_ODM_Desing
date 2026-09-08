.class public Lcom/android/proxyhandler/SocketConnect;
.super Ljava/lang/Thread;
.source "SocketConnect.java"


# instance fields
.field private from:Ljava/io/InputStream;

.field private to:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/net/Socket;Ljava/net/Socket;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/android/proxyhandler/SocketConnect;->from:Ljava/io/InputStream;

    invoke-virtual {p2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/android/proxyhandler/SocketConnect;->to:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static connect(Ljava/net/Socket;Ljava/net/Socket;)V
    .locals 2

    :try_start_0
    new-instance v0, Lcom/android/proxyhandler/SocketConnect;

    invoke-direct {v0, p0, p1}, Lcom/android/proxyhandler/SocketConnect;-><init>(Ljava/net/Socket;Ljava/net/Socket;)V

    new-instance v1, Lcom/android/proxyhandler/SocketConnect;

    invoke-direct {v1, p1, p0}, Lcom/android/proxyhandler/SocketConnect;-><init>(Ljava/net/Socket;Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_0
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :catch_2
    :goto_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/16 v0, 0x200

    new-array v0, v0, [B

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/proxyhandler/SocketConnect;->from:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-gez v1, :cond_0

    iget-object v0, p0, Lcom/android/proxyhandler/SocketConnect;->from:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    iget-object p0, p0, Lcom/android/proxyhandler/SocketConnect;->to:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/android/proxyhandler/SocketConnect;->to:Ljava/io/OutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :goto_1
    return-void
.end method
