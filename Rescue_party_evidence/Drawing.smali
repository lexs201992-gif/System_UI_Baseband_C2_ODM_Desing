.class public final LrescueProtocol/Drawing;
.super Lcom/google/flatbuffers/Table;
.source "Drawing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LrescueProtocol/Drawing$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/flatbuffers/Table;-><init>()V

    return-void
.end method

.method public static addBrushColor(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addInt(III)V

    return-void
.end method

.method public static addBrushWidth(Lcom/google/flatbuffers/FlatBufferBuilder;F)V
    .locals 3

    const/4 v0, 0x3

    const-wide/high16 v1, 0x4008000000000000L    # 3.0

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->addFloat(IFD)V

    return-void
.end method

.method public static addFillColor(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addInt(III)V

    return-void
.end method

.method public static addShape(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addShapeType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->addByte(IBI)V

    return-void
.end method

.method public static createDrawing(Lcom/google/flatbuffers/FlatBufferBuilder;BIIFI)I
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startObject(I)V

    invoke-static {p0, p5}, LrescueProtocol/Drawing;->addFillColor(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    invoke-static {p0, p4}, LrescueProtocol/Drawing;->addBrushWidth(Lcom/google/flatbuffers/FlatBufferBuilder;F)V

    invoke-static {p0, p3}, LrescueProtocol/Drawing;->addBrushColor(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    invoke-static {p0, p2}, LrescueProtocol/Drawing;->addShape(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    invoke-static {p0, p1}, LrescueProtocol/Drawing;->addShapeType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    invoke-static {p0}, LrescueProtocol/Drawing;->endDrawing(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    return p0
.end method

.method public static endDrawing(Lcom/google/flatbuffers/FlatBufferBuilder;)I
    .locals 2

    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->endObject()I

    move-result v0

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->required(II)V

    return v0
.end method

.method public static getRootAsDrawing(Ljava/nio/ByteBuffer;)LrescueProtocol/Drawing;
    .locals 1

    new-instance v0, LrescueProtocol/Drawing;

    invoke-direct {v0}, LrescueProtocol/Drawing;-><init>()V

    invoke-static {p0, v0}, LrescueProtocol/Drawing;->getRootAsDrawing(Ljava/nio/ByteBuffer;LrescueProtocol/Drawing;)LrescueProtocol/Drawing;

    move-result-object p0

    return-object p0
.end method

.method public static getRootAsDrawing(Ljava/nio/ByteBuffer;LrescueProtocol/Drawing;)LrescueProtocol/Drawing;
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

    invoke-virtual {p1, v0, p0}, LrescueProtocol/Drawing;->__init(ILjava/nio/ByteBuffer;)LrescueProtocol/Drawing;

    move-result-object p0

    return-object p0
.end method

.method public static startDrawing(Lcom/google/flatbuffers/FlatBufferBuilder;)V
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startObject(I)V

    return-void
.end method


# virtual methods
.method public __init(ILjava/nio/ByteBuffer;)LrescueProtocol/Drawing;
    .locals 0

    iput p1, p0, LrescueProtocol/Drawing;->bb_pos:I

    iput-object p2, p0, LrescueProtocol/Drawing;->bb:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public acceptShapeVisitor(LrescueProtocol/Shape$Visitor;)V
    .locals 2

    invoke-virtual {p0}, LrescueProtocol/Drawing;->shapeType()B

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
    new-instance v0, LrescueProtocol/Line;

    invoke-direct {v0}, LrescueProtocol/Line;-><init>()V

    invoke-virtual {p0, v0}, LrescueProtocol/Drawing;->shape(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    invoke-virtual {p1, v0}, LrescueProtocol/Shape$Visitor;->visitLine(LrescueProtocol/Line;)V

    goto :goto_0

    :cond_1
    new-instance v0, LrescueProtocol/Rect;

    invoke-direct {v0}, LrescueProtocol/Rect;-><init>()V

    invoke-virtual {p0, v0}, LrescueProtocol/Drawing;->shape(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    invoke-virtual {p1, v0}, LrescueProtocol/Shape$Visitor;->visitRect(LrescueProtocol/Rect;)V

    goto :goto_0

    :cond_2
    new-instance v0, LrescueProtocol/Ellipse;

    invoke-direct {v0}, LrescueProtocol/Ellipse;-><init>()V

    invoke-virtual {p0, v0}, LrescueProtocol/Drawing;->shape(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    invoke-virtual {p1, v0}, LrescueProtocol/Shape$Visitor;->visitEllipse(LrescueProtocol/Ellipse;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, LrescueProtocol/Shape$Visitor;->visitUnknownMessage(Lcom/google/flatbuffers/Table;)V

    :goto_0
    return-void
.end method

.method public brushColor()I
    .locals 3

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, LrescueProtocol/Drawing;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, LrescueProtocol/Drawing;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, LrescueProtocol/Drawing;->bb_pos:I

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public brushWidth()F
    .locals 3

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, LrescueProtocol/Drawing;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, LrescueProtocol/Drawing;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, LrescueProtocol/Drawing;->bb_pos:I

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x40400000    # 3.0f

    :goto_0
    return v0
.end method

.method public fillColor()I
    .locals 3

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, LrescueProtocol/Drawing;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, LrescueProtocol/Drawing;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, LrescueProtocol/Drawing;->bb_pos:I

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public shape(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;
    .locals 1

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, LrescueProtocol/Drawing;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, LrescueProtocol/Drawing;->__union(Lcom/google/flatbuffers/Table;I)Lcom/google/flatbuffers/Table;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public shapeType()B
    .locals 3

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, LrescueProtocol/Drawing;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, LrescueProtocol/Drawing;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, LrescueProtocol/Drawing;->bb_pos:I

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
