.class public final LrescueProtocol/ChatMessage;
.super Lcom/google/flatbuffers/Table;
.source "ChatMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LrescueProtocol/ChatMessage$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/flatbuffers/Table;-><init>()V

    return-void
.end method

.method public static addContent(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static createChatMessage(Lcom/google/flatbuffers/FlatBufferBuilder;I)I
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startObject(I)V

    invoke-static {p0, p1}, LrescueProtocol/ChatMessage;->addContent(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    invoke-static {p0}, LrescueProtocol/ChatMessage;->endChatMessage(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    return p0
.end method

.method public static endChatMessage(Lcom/google/flatbuffers/FlatBufferBuilder;)I
    .locals 2

    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->endObject()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->required(II)V

    return v0
.end method

.method public static getRootAsChatMessage(Ljava/nio/ByteBuffer;)LrescueProtocol/ChatMessage;
    .locals 1

    new-instance v0, LrescueProtocol/ChatMessage;

    invoke-direct {v0}, LrescueProtocol/ChatMessage;-><init>()V

    invoke-static {p0, v0}, LrescueProtocol/ChatMessage;->getRootAsChatMessage(Ljava/nio/ByteBuffer;LrescueProtocol/ChatMessage;)LrescueProtocol/ChatMessage;

    move-result-object p0

    return-object p0
.end method

.method public static getRootAsChatMessage(Ljava/nio/ByteBuffer;LrescueProtocol/ChatMessage;)LrescueProtocol/ChatMessage;
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

    invoke-virtual {p1, v0, p0}, LrescueProtocol/ChatMessage;->__init(ILjava/nio/ByteBuffer;)LrescueProtocol/ChatMessage;

    move-result-object p0

    return-object p0
.end method

.method public static startChatMessage(Lcom/google/flatbuffers/FlatBufferBuilder;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startObject(I)V

    return-void
.end method


# virtual methods
.method public __init(ILjava/nio/ByteBuffer;)LrescueProtocol/ChatMessage;
    .locals 0

    iput p1, p0, LrescueProtocol/ChatMessage;->bb_pos:I

    iput-object p2, p0, LrescueProtocol/ChatMessage;->bb:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public content()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, LrescueProtocol/ChatMessage;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget v1, p0, LrescueProtocol/ChatMessage;->bb_pos:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, LrescueProtocol/ChatMessage;->__string(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public contentAsByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, LrescueProtocol/ChatMessage;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
