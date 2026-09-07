.class public final LrescueProtocol/Participant;
.super Lcom/google/flatbuffers/Table;
.source "Participant.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LrescueProtocol/Participant$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/flatbuffers/Table;-><init>()V

    return-void
.end method

.method public static addId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addName(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addByte(IBI)V

    return-void
.end method

.method public static createParticipant(Lcom/google/flatbuffers/FlatBufferBuilder;IIB)I
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startObject(I)V

    invoke-static {p0, p2}, LrescueProtocol/Participant;->addId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    invoke-static {p0, p1}, LrescueProtocol/Participant;->addName(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    invoke-static {p0, p3}, LrescueProtocol/Participant;->addType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    invoke-static {p0}, LrescueProtocol/Participant;->endParticipant(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    return p0
.end method

.method public static endParticipant(Lcom/google/flatbuffers/FlatBufferBuilder;)I
    .locals 2

    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->endObject()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->required(II)V

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->required(II)V

    return v0
.end method

.method public static getRootAsParticipant(Ljava/nio/ByteBuffer;)LrescueProtocol/Participant;
    .locals 1

    new-instance v0, LrescueProtocol/Participant;

    invoke-direct {v0}, LrescueProtocol/Participant;-><init>()V

    invoke-static {p0, v0}, LrescueProtocol/Participant;->getRootAsParticipant(Ljava/nio/ByteBuffer;LrescueProtocol/Participant;)LrescueProtocol/Participant;

    move-result-object p0

    return-object p0
.end method

.method public static getRootAsParticipant(Ljava/nio/ByteBuffer;LrescueProtocol/Participant;)LrescueProtocol/Participant;
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

    invoke-virtual {p1, v0, p0}, LrescueProtocol/Participant;->__init(ILjava/nio/ByteBuffer;)LrescueProtocol/Participant;

    move-result-object p0

    return-object p0
.end method

.method public static startParticipant(Lcom/google/flatbuffers/FlatBufferBuilder;)V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startObject(I)V

    return-void
.end method


# virtual methods
.method public __init(ILjava/nio/ByteBuffer;)LrescueProtocol/Participant;
    .locals 0

    iput p1, p0, LrescueProtocol/Participant;->bb_pos:I

    iput-object p2, p0, LrescueProtocol/Participant;->bb:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public id()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, LrescueProtocol/Participant;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget v1, p0, LrescueProtocol/Participant;->bb_pos:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, LrescueProtocol/Participant;->__string(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public idAsByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, LrescueProtocol/Participant;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public name()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, LrescueProtocol/Participant;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget v1, p0, LrescueProtocol/Participant;->bb_pos:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, LrescueProtocol/Participant;->__string(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public nameAsByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, LrescueProtocol/Participant;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public type()B
    .locals 3

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, LrescueProtocol/Participant;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, LrescueProtocol/Participant;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, LrescueProtocol/Participant;->bb_pos:I

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
