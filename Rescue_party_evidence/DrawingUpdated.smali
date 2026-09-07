.class public final LrescueProtocol/DrawingUpdated;
.super Lcom/google/flatbuffers/Table;
.source "DrawingUpdated.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LrescueProtocol/DrawingUpdated$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/flatbuffers/Table;-><init>()V

    return-void
.end method

.method public static addDrawing(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addDrawingId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->addInt(III)V

    return-void
.end method

.method public static createDrawingUpdated(Lcom/google/flatbuffers/FlatBufferBuilder;II)I
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startObject(I)V

    invoke-static {p0, p2}, LrescueProtocol/DrawingUpdated;->addDrawing(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    invoke-static {p0, p1}, LrescueProtocol/DrawingUpdated;->addDrawingId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    invoke-static {p0}, LrescueProtocol/DrawingUpdated;->endDrawingUpdated(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    return p0
.end method

.method public static endDrawingUpdated(Lcom/google/flatbuffers/FlatBufferBuilder;)I
    .locals 2

    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->endObject()I

    move-result v0

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->required(II)V

    return v0
.end method

.method public static getRootAsDrawingUpdated(Ljava/nio/ByteBuffer;)LrescueProtocol/DrawingUpdated;
    .locals 1

    new-instance v0, LrescueProtocol/DrawingUpdated;

    invoke-direct {v0}, LrescueProtocol/DrawingUpdated;-><init>()V

    invoke-static {p0, v0}, LrescueProtocol/DrawingUpdated;->getRootAsDrawingUpdated(Ljava/nio/ByteBuffer;LrescueProtocol/DrawingUpdated;)LrescueProtocol/DrawingUpdated;

    move-result-object p0

    return-object p0
.end method

.method public static getRootAsDrawingUpdated(Ljava/nio/ByteBuffer;LrescueProtocol/DrawingUpdated;)LrescueProtocol/DrawingUpdated;
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

    invoke-virtual {p1, v0, p0}, LrescueProtocol/DrawingUpdated;->__init(ILjava/nio/ByteBuffer;)LrescueProtocol/DrawingUpdated;

    move-result-object p0

    return-object p0
.end method

.method public static startDrawingUpdated(Lcom/google/flatbuffers/FlatBufferBuilder;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startObject(I)V

    return-void
.end method


# virtual methods
.method public __init(ILjava/nio/ByteBuffer;)LrescueProtocol/DrawingUpdated;
    .locals 0

    iput p1, p0, LrescueProtocol/DrawingUpdated;->bb_pos:I

    iput-object p2, p0, LrescueProtocol/DrawingUpdated;->bb:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public drawing()LrescueProtocol/Drawing;
    .locals 1

    new-instance v0, LrescueProtocol/Drawing;

    invoke-direct {v0}, LrescueProtocol/Drawing;-><init>()V

    invoke-virtual {p0, v0}, LrescueProtocol/DrawingUpdated;->drawing(LrescueProtocol/Drawing;)LrescueProtocol/Drawing;

    move-result-object v0

    return-object v0
.end method

.method public drawing(LrescueProtocol/Drawing;)LrescueProtocol/Drawing;
    .locals 2

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, LrescueProtocol/DrawingUpdated;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget v1, p0, LrescueProtocol/DrawingUpdated;->bb_pos:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, LrescueProtocol/DrawingUpdated;->__indirect(I)I

    move-result v0

    iget-object v1, p0, LrescueProtocol/DrawingUpdated;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0, v1}, LrescueProtocol/Drawing;->__init(ILjava/nio/ByteBuffer;)LrescueProtocol/Drawing;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public drawingId()I
    .locals 3

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, LrescueProtocol/DrawingUpdated;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, LrescueProtocol/DrawingUpdated;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, LrescueProtocol/DrawingUpdated;->bb_pos:I

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
