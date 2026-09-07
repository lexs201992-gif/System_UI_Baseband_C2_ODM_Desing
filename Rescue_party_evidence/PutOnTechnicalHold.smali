.class public final LrescueProtocol/PutOnTechnicalHold;
.super Lcom/google/flatbuffers/Table;
.source "PutOnTechnicalHold.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LrescueProtocol/PutOnTechnicalHold$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/flatbuffers/Table;-><init>()V

    return-void
.end method

.method public static addTechnicalHoldReason(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addTechnicalHoldReasonType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->addByte(IBI)V

    return-void
.end method

.method public static createPutOnTechnicalHold(Lcom/google/flatbuffers/FlatBufferBuilder;BI)I
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startObject(I)V

    invoke-static {p0, p2}, LrescueProtocol/PutOnTechnicalHold;->addTechnicalHoldReason(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    invoke-static {p0, p1}, LrescueProtocol/PutOnTechnicalHold;->addTechnicalHoldReasonType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    invoke-static {p0}, LrescueProtocol/PutOnTechnicalHold;->endPutOnTechnicalHold(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    return p0
.end method

.method public static endPutOnTechnicalHold(Lcom/google/flatbuffers/FlatBufferBuilder;)I
    .locals 2

    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->endObject()I

    move-result v0

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->required(II)V

    return v0
.end method

.method public static getRootAsPutOnTechnicalHold(Ljava/nio/ByteBuffer;)LrescueProtocol/PutOnTechnicalHold;
    .locals 1

    new-instance v0, LrescueProtocol/PutOnTechnicalHold;

    invoke-direct {v0}, LrescueProtocol/PutOnTechnicalHold;-><init>()V

    invoke-static {p0, v0}, LrescueProtocol/PutOnTechnicalHold;->getRootAsPutOnTechnicalHold(Ljava/nio/ByteBuffer;LrescueProtocol/PutOnTechnicalHold;)LrescueProtocol/PutOnTechnicalHold;

    move-result-object p0

    return-object p0
.end method

.method public static getRootAsPutOnTechnicalHold(Ljava/nio/ByteBuffer;LrescueProtocol/PutOnTechnicalHold;)LrescueProtocol/PutOnTechnicalHold;
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

    invoke-virtual {p1, v0, p0}, LrescueProtocol/PutOnTechnicalHold;->__init(ILjava/nio/ByteBuffer;)LrescueProtocol/PutOnTechnicalHold;

    move-result-object p0

    return-object p0
.end method

.method public static startPutOnTechnicalHold(Lcom/google/flatbuffers/FlatBufferBuilder;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startObject(I)V

    return-void
.end method


# virtual methods
.method public __init(ILjava/nio/ByteBuffer;)LrescueProtocol/PutOnTechnicalHold;
    .locals 0

    iput p1, p0, LrescueProtocol/PutOnTechnicalHold;->bb_pos:I

    iput-object p2, p0, LrescueProtocol/PutOnTechnicalHold;->bb:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public acceptTechnicalHoldReasonVisitor(LrescueProtocol/TechnicalHoldReason$Visitor;)V
    .locals 2

    invoke-virtual {p0}, LrescueProtocol/PutOnTechnicalHold;->technicalHoldReasonType()B

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, LrescueProtocol/ClientUnavailable;

    invoke-direct {v0}, LrescueProtocol/ClientUnavailable;-><init>()V

    invoke-virtual {p0, v0}, LrescueProtocol/PutOnTechnicalHold;->technicalHoldReason(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    invoke-virtual {p1, v0}, LrescueProtocol/TechnicalHoldReason$Visitor;->visitClientUnavailable(LrescueProtocol/ClientUnavailable;)V

    goto :goto_0

    :cond_1
    new-instance v0, LrescueProtocol/ConsoleUnavailable;

    invoke-direct {v0}, LrescueProtocol/ConsoleUnavailable;-><init>()V

    invoke-virtual {p0, v0}, LrescueProtocol/PutOnTechnicalHold;->technicalHoldReason(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    invoke-virtual {p1, v0}, LrescueProtocol/TechnicalHoldReason$Visitor;->visitConsoleUnavailable(LrescueProtocol/ConsoleUnavailable;)V

    goto :goto_0

    :cond_2
    new-instance v0, LrescueProtocol/UnknownReason;

    invoke-direct {v0}, LrescueProtocol/UnknownReason;-><init>()V

    invoke-virtual {p0, v0}, LrescueProtocol/PutOnTechnicalHold;->technicalHoldReason(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    invoke-virtual {p1, v0}, LrescueProtocol/TechnicalHoldReason$Visitor;->visitUnknownReason(LrescueProtocol/UnknownReason;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, LrescueProtocol/TechnicalHoldReason$Visitor;->visitUnknownMessage(Lcom/google/flatbuffers/Table;)V

    :goto_0
    return-void
.end method

.method public technicalHoldReason(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;
    .locals 1

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, LrescueProtocol/PutOnTechnicalHold;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, LrescueProtocol/PutOnTechnicalHold;->__union(Lcom/google/flatbuffers/Table;I)Lcom/google/flatbuffers/Table;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public technicalHoldReasonType()B
    .locals 3

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, LrescueProtocol/PutOnTechnicalHold;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, LrescueProtocol/PutOnTechnicalHold;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, LrescueProtocol/PutOnTechnicalHold;->bb_pos:I

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
