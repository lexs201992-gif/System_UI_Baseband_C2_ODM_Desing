.class public final LrescueProtocol/Acknowledgement;
.super Lcom/google/flatbuffers/Table;
.source "Acknowledgement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LrescueProtocol/Acknowledgement$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/flatbuffers/Table;-><init>()V

    return-void
.end method

.method public static addSequenceId(Lcom/google/flatbuffers/FlatBufferBuilder;J)V
    .locals 6

    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-wide v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/flatbuffers/FlatBufferBuilder;->addLong(IJJ)V

    return-void
.end method

.method public static createAcknowledgement(Lcom/google/flatbuffers/FlatBufferBuilder;J)I
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startObject(I)V

    invoke-static {p0, p1, p2}, LrescueProtocol/Acknowledgement;->addSequenceId(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    invoke-static {p0}, LrescueProtocol/Acknowledgement;->endAcknowledgement(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    return p0
.end method

.method public static endAcknowledgement(Lcom/google/flatbuffers/FlatBufferBuilder;)I
    .locals 0

    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->endObject()I

    move-result p0

    return p0
.end method

.method public static getRootAsAcknowledgement(Ljava/nio/ByteBuffer;)LrescueProtocol/Acknowledgement;
    .locals 1

    new-instance v0, LrescueProtocol/Acknowledgement;

    invoke-direct {v0}, LrescueProtocol/Acknowledgement;-><init>()V

    invoke-static {p0, v0}, LrescueProtocol/Acknowledgement;->getRootAsAcknowledgement(Ljava/nio/ByteBuffer;LrescueProtocol/Acknowledgement;)LrescueProtocol/Acknowledgement;

    move-result-object p0

    return-object p0
.end method

.method public static getRootAsAcknowledgement(Ljava/nio/ByteBuffer;LrescueProtocol/Acknowledgement;)LrescueProtocol/Acknowledgement;
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

    invoke-virtual {p1, v0, p0}, LrescueProtocol/Acknowledgement;->__init(ILjava/nio/ByteBuffer;)LrescueProtocol/Acknowledgement;

    move-result-object p0

    return-object p0
.end method

.method public static startAcknowledgement(Lcom/google/flatbuffers/FlatBufferBuilder;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startObject(I)V

    return-void
.end method


# virtual methods
.method public __init(ILjava/nio/ByteBuffer;)LrescueProtocol/Acknowledgement;
    .locals 0

    iput p1, p0, LrescueProtocol/Acknowledgement;->bb_pos:I

    iput-object p2, p0, LrescueProtocol/Acknowledgement;->bb:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public sequenceId()J
    .locals 3

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, LrescueProtocol/Acknowledgement;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, LrescueProtocol/Acknowledgement;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, LrescueProtocol/Acknowledgement;->bb_pos:I

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method
