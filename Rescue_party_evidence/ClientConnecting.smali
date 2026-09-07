.class public final LrescueProtocol/ClientConnecting;
.super Lcom/google/flatbuffers/Table;
.source "ClientConnecting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LrescueProtocol/ClientConnecting$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/flatbuffers/Table;-><init>()V

    return-void
.end method

.method public static addSessionId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static createClientConnecting(Lcom/google/flatbuffers/FlatBufferBuilder;I)I
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startObject(I)V

    invoke-static {p0, p1}, LrescueProtocol/ClientConnecting;->addSessionId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    invoke-static {p0}, LrescueProtocol/ClientConnecting;->endClientConnecting(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    return p0
.end method

.method public static endClientConnecting(Lcom/google/flatbuffers/FlatBufferBuilder;)I
    .locals 2

    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->endObject()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->required(II)V

    return v0
.end method

.method public static getRootAsClientConnecting(Ljava/nio/ByteBuffer;)LrescueProtocol/ClientConnecting;
    .locals 1

    new-instance v0, LrescueProtocol/ClientConnecting;

    invoke-direct {v0}, LrescueProtocol/ClientConnecting;-><init>()V

    invoke-static {p0, v0}, LrescueProtocol/ClientConnecting;->getRootAsClientConnecting(Ljava/nio/ByteBuffer;LrescueProtocol/ClientConnecting;)LrescueProtocol/ClientConnecting;

    move-result-object p0

    return-object p0
.end method

.method public static getRootAsClientConnecting(Ljava/nio/ByteBuffer;LrescueProtocol/ClientConnecting;)LrescueProtocol/ClientConnecting;
    .locals 2

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0, p0}, LrescueProtocol/ClientConnecting;->__init(ILjava/nio/ByteBuffer;)LrescueProtocol/ClientConnecting;

    move-result-object p0

    return-object p0
.end method

.method public static startClientConnecting(Lcom/google/flatbuffers/FlatBufferBuilder;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startObject(I)V

    return-void
.end method


# virtual methods
.method public __init(ILjava/nio/ByteBuffer;)LrescueProtocol/ClientConnecting;
    .locals 0

    iput p1, p0, LrescueProtocol/ClientConnecting;->bb_pos:I

    iput-object p2, p0, LrescueProtocol/ClientConnecting;->bb:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public sessionId()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, LrescueProtocol/ClientConnecting;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget v1, p0, LrescueProtocol/ClientConnecting;->bb_pos:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, LrescueProtocol/ClientConnecting;->__string(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public sessionIdAsByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, LrescueProtocol/ClientConnecting;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
