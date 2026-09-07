.class public final LrescueProtocol/Ellipse;
.super Lcom/google/flatbuffers/Table;
.source "Ellipse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LrescueProtocol/Ellipse$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/flatbuffers/Table;-><init>()V

    return-void
.end method

.method public static addCenter(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addRadiusX(Lcom/google/flatbuffers/FlatBufferBuilder;F)V
    .locals 3

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->addFloat(IFD)V

    return-void
.end method

.method public static addRadiusY(Lcom/google/flatbuffers/FlatBufferBuilder;F)V
    .locals 3

    const/4 v0, 0x2

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->addFloat(IFD)V

    return-void
.end method

.method public static createEllipse(Lcom/google/flatbuffers/FlatBufferBuilder;IFF)I
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startObject(I)V

    invoke-static {p0, p3}, LrescueProtocol/Ellipse;->addRadiusY(Lcom/google/flatbuffers/FlatBufferBuilder;F)V

    invoke-static {p0, p2}, LrescueProtocol/Ellipse;->addRadiusX(Lcom/google/flatbuffers/FlatBufferBuilder;F)V

    invoke-static {p0, p1}, LrescueProtocol/Ellipse;->addCenter(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    invoke-static {p0}, LrescueProtocol/Ellipse;->endEllipse(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    return p0
.end method

.method public static endEllipse(Lcom/google/flatbuffers/FlatBufferBuilder;)I
    .locals 2

    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->endObject()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->required(II)V

    return v0
.end method

.method public static getRootAsEllipse(Ljava/nio/ByteBuffer;)LrescueProtocol/Ellipse;
    .locals 1

    new-instance v0, LrescueProtocol/Ellipse;

    invoke-direct {v0}, LrescueProtocol/Ellipse;-><init>()V

    invoke-static {p0, v0}, LrescueProtocol/Ellipse;->getRootAsEllipse(Ljava/nio/ByteBuffer;LrescueProtocol/Ellipse;)LrescueProtocol/Ellipse;

    move-result-object p0

    return-object p0
.end method

.method public static getRootAsEllipse(Ljava/nio/ByteBuffer;LrescueProtocol/Ellipse;)LrescueProtocol/Ellipse;
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

    invoke-virtual {p1, v0, p0}, LrescueProtocol/Ellipse;->__init(ILjava/nio/ByteBuffer;)LrescueProtocol/Ellipse;

    move-result-object p0

    return-object p0
.end method

.method public static startEllipse(Lcom/google/flatbuffers/FlatBufferBuilder;)V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startObject(I)V

    return-void
.end method


# virtual methods
.method public __init(ILjava/nio/ByteBuffer;)LrescueProtocol/Ellipse;
    .locals 0

    iput p1, p0, LrescueProtocol/Ellipse;->bb_pos:I

    iput-object p2, p0, LrescueProtocol/Ellipse;->bb:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public center()LrescueProtocol/Point;
    .locals 1

    new-instance v0, LrescueProtocol/Point;

    invoke-direct {v0}, LrescueProtocol/Point;-><init>()V

    invoke-virtual {p0, v0}, LrescueProtocol/Ellipse;->center(LrescueProtocol/Point;)LrescueProtocol/Point;

    move-result-object v0

    return-object v0
.end method

.method public center(LrescueProtocol/Point;)LrescueProtocol/Point;
    .locals 2

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, LrescueProtocol/Ellipse;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget v1, p0, LrescueProtocol/Ellipse;->bb_pos:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, LrescueProtocol/Ellipse;->__indirect(I)I

    move-result v0

    iget-object v1, p0, LrescueProtocol/Ellipse;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0, v1}, LrescueProtocol/Point;->__init(ILjava/nio/ByteBuffer;)LrescueProtocol/Point;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public radiusX()F
    .locals 3

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, LrescueProtocol/Ellipse;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, LrescueProtocol/Ellipse;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, LrescueProtocol/Ellipse;->bb_pos:I

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public radiusY()F
    .locals 3

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, LrescueProtocol/Ellipse;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, LrescueProtocol/Ellipse;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, LrescueProtocol/Ellipse;->bb_pos:I

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
