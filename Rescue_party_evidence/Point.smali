.class public final LrescueProtocol/Point;
.super Lcom/google/flatbuffers/Table;
.source "Point.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LrescueProtocol/Point$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/flatbuffers/Table;-><init>()V

    return-void
.end method

.method public static addX(Lcom/google/flatbuffers/FlatBufferBuilder;F)V
    .locals 3

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->addFloat(IFD)V

    return-void
.end method

.method public static addY(Lcom/google/flatbuffers/FlatBufferBuilder;F)V
    .locals 3

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->addFloat(IFD)V

    return-void
.end method

.method public static createPoint(Lcom/google/flatbuffers/FlatBufferBuilder;FF)I
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startObject(I)V

    invoke-static {p0, p2}, LrescueProtocol/Point;->addY(Lcom/google/flatbuffers/FlatBufferBuilder;F)V

    invoke-static {p0, p1}, LrescueProtocol/Point;->addX(Lcom/google/flatbuffers/FlatBufferBuilder;F)V

    invoke-static {p0}, LrescueProtocol/Point;->endPoint(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    return p0
.end method

.method public static endPoint(Lcom/google/flatbuffers/FlatBufferBuilder;)I
    .locals 0

    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->endObject()I

    move-result p0

    return p0
.end method

.method public static getRootAsPoint(Ljava/nio/ByteBuffer;)LrescueProtocol/Point;
    .locals 1

    new-instance v0, LrescueProtocol/Point;

    invoke-direct {v0}, LrescueProtocol/Point;-><init>()V

    invoke-static {p0, v0}, LrescueProtocol/Point;->getRootAsPoint(Ljava/nio/ByteBuffer;LrescueProtocol/Point;)LrescueProtocol/Point;

    move-result-object p0

    return-object p0
.end method

.method public static getRootAsPoint(Ljava/nio/ByteBuffer;LrescueProtocol/Point;)LrescueProtocol/Point;
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

    invoke-virtual {p1, v0, p0}, LrescueProtocol/Point;->__init(ILjava/nio/ByteBuffer;)LrescueProtocol/Point;

    move-result-object p0

    return-object p0
.end method

.method public static startPoint(Lcom/google/flatbuffers/FlatBufferBuilder;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startObject(I)V

    return-void
.end method


# virtual methods
.method public __init(ILjava/nio/ByteBuffer;)LrescueProtocol/Point;
    .locals 0

    iput p1, p0, LrescueProtocol/Point;->bb_pos:I

    iput-object p2, p0, LrescueProtocol/Point;->bb:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public x()F
    .locals 3

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, LrescueProtocol/Point;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, LrescueProtocol/Point;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, LrescueProtocol/Point;->bb_pos:I

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public y()F
    .locals 3

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, LrescueProtocol/Point;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, LrescueProtocol/Point;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, LrescueProtocol/Point;->bb_pos:I

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
