.class public Lcom/android/bluetooth/BluetoothObexTransport;
.super Ljava/lang/Object;
.source "BluetoothObexTransport.java"

# interfaces
.implements Lcom/android/obex/ObexTransport;


# static fields
.field public static final PACKET_SIZE_UNSPECIFIED:I = -0x1


# instance fields
.field public mIsCoverArt:Z

.field public mMaxReceivePacketSize:I

.field public mMaxTransmitPacketSize:I

.field public mSocket:Landroid/bluetooth/BluetoothSocket;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothSocket;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/BluetoothObexTransport;->mMaxTransmitPacketSize:I

    iput v0, p0, Lcom/android/bluetooth/BluetoothObexTransport;->mMaxReceivePacketSize:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/BluetoothObexTransport;->mIsCoverArt:Z

    iput-object p1, p0, Lcom/android/bluetooth/BluetoothObexTransport;->mSocket:Landroid/bluetooth/BluetoothSocket;

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothSocket;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/BluetoothObexTransport;->mIsCoverArt:Z

    iput-object p1, p0, Lcom/android/bluetooth/BluetoothObexTransport;->mSocket:Landroid/bluetooth/BluetoothSocket;

    iput p2, p0, Lcom/android/bluetooth/BluetoothObexTransport;->mMaxTransmitPacketSize:I

    iput p3, p0, Lcom/android/bluetooth/BluetoothObexTransport;->mMaxReceivePacketSize:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/bluetooth/BluetoothObexTransport;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothSocket;->close()V

    return-void
.end method

.method public connect()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public create()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public disconnect()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public getMaxReceivePacketSize()I
    .locals 2

    iget-object v0, p0, Lcom/android/bluetooth/BluetoothObexTransport;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getConnectionType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget p0, p0, Lcom/android/bluetooth/BluetoothObexTransport;->mMaxReceivePacketSize:I

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/bluetooth/BluetoothObexTransport;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothSocket;->getMaxReceivePacketSize()I

    move-result p0

    return p0
.end method

.method public getMaxTransmitPacketSize()I
    .locals 2

    iget-object v0, p0, Lcom/android/bluetooth/BluetoothObexTransport;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getConnectionType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/bluetooth/BluetoothObexTransport;->mIsCoverArt:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/bluetooth/BluetoothObexTransport;->mMaxTransmitPacketSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/bluetooth/BluetoothObexTransport;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothSocket;->getMaxTransmitPacketSize()I

    move-result p0

    return p0

    :cond_1
    :goto_0
    iget p0, p0, Lcom/android/bluetooth/BluetoothObexTransport;->mMaxTransmitPacketSize:I

    return p0
.end method

.method public getRemoteAddress()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/bluetooth/BluetoothObexTransport;->mSocket:Landroid/bluetooth/BluetoothSocket;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getConnectionType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/android/bluetooth/BluetoothObexTransport;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getIdentityAddress()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/bluetooth/BluetoothObexTransport;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public isConnected()Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method public isSrmSupported()Z
    .locals 1

    iget-object p0, p0, Lcom/android/bluetooth/BluetoothObexTransport;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothSocket;->getConnectionType()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public listen()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public openDataInputStream()Ljava/io/DataInputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/DataInputStream;

    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothObexTransport;->openInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public openDataOutputStream()Ljava/io/DataOutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothObexTransport;->openOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public openInputStream()Ljava/io/InputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/bluetooth/BluetoothObexTransport;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public openOutputStream()Ljava/io/OutputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/bluetooth/BluetoothObexTransport;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    return-object p0
.end method

.method public setConnectionForCoverArt(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/bluetooth/BluetoothObexTransport;->mIsCoverArt:Z

    return-void
.end method
