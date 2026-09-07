.class public final LrescueProtocol/ClientConnectRejected;
.super Lcom/google/flatbuffers/Table;
.source "ClientConnectRejected.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LrescueProtocol/ClientConnectRejected$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/flatbuffers/Table;-><init>()V

    return-void
.end method

.method public static addRejectReason(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addRejectReasonType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->addByte(IBI)V

    return-void
.end method

.method public static createClientConnectRejected(Lcom/google/flatbuffers/FlatBufferBuilder;BI)I
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startObject(I)V

    invoke-static {p0, p2}, LrescueProtocol/ClientConnectRejected;->addRejectReason(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    invoke-static {p0, p1}, LrescueProtocol/ClientConnectRejected;->addRejectReasonType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    invoke-static {p0}, LrescueProtocol/ClientConnectRejected;->endClientConnectRejected(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    return p0
.end method

.method public static endClientConnectRejected(Lcom/google/flatbuffers/FlatBufferBuilder;)I
    .locals 2

    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->endObject()I

    move-result v0

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->required(II)V

    return v0
.end method

.method public static getRootAsClientConnectRejected(Ljava/nio/ByteBuffer;)LrescueProtocol/ClientConnectRejected;
    .locals 1

    new-instance v0, LrescueProtocol/ClientConnectRejected;

    invoke-direct {v0}, LrescueProtocol/ClientConnectRejected;-><init>()V

    invoke-static {p0, v0}, LrescueProtocol/ClientConnectRejected;->getRootAsClientConnectRejected(Ljava/nio/ByteBuffer;LrescueProtocol/ClientConnectRejected;)LrescueProtocol/ClientConnectRejected;

    move-result-object p0

    return-object p0
.end method

.method public static getRootAsClientConnectRejected(Ljava/nio/ByteBuffer;LrescueProtocol/ClientConnectRejected;)LrescueProtocol/ClientConnectRejected;
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

    invoke-virtual {p1, v0, p0}, LrescueProtocol/ClientConnectRejected;->__init(ILjava/nio/ByteBuffer;)LrescueProtocol/ClientConnectRejected;

    move-result-object p0

    return-object p0
.end method

.method public static startClientConnectRejected(Lcom/google/flatbuffers/FlatBufferBuilder;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startObject(I)V

    return-void
.end method


# virtual methods
.method public __init(ILjava/nio/ByteBuffer;)LrescueProtocol/ClientConnectRejected;
    .locals 0

    iput p1, p0, LrescueProtocol/ClientConnectRejected;->bb_pos:I

    iput-object p2, p0, LrescueProtocol/ClientConnectRejected;->bb:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public acceptRejectReasonVisitor(LrescueProtocol/RejectReason$Visitor;)V
    .locals 2

    invoke-virtual {p0}, LrescueProtocol/ClientConnectRejected;->rejectReasonType()B

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, LrescueProtocol/UnknownRejectReason;

    invoke-direct {v0}, LrescueProtocol/UnknownRejectReason;-><init>()V

    invoke-virtual {p0, v0}, LrescueProtocol/ClientConnectRejected;->rejectReason(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    invoke-virtual {p1, v0}, LrescueProtocol/RejectReason$Visitor;->visitUnknownRejectReason(LrescueProtocol/UnknownRejectReason;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, LrescueProtocol/RejectReason$Visitor;->visitUnknownMessage(Lcom/google/flatbuffers/Table;)V

    :goto_0
    return-void
.end method

.method public rejectReason(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;
    .locals 1

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, LrescueProtocol/ClientConnectRejected;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, LrescueProtocol/ClientConnectRejected;->__union(Lcom/google/flatbuffers/Table;I)Lcom/google/flatbuffers/Table;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public rejectReasonType()B
    .locals 3

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, LrescueProtocol/ClientConnectRejected;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, LrescueProtocol/ClientConnectRejected;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, LrescueProtocol/ClientConnectRejected;->bb_pos:I

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
