.class public final LrescueProtocol/ConsoleUnavailable;
.super Lcom/google/flatbuffers/Table;
.source "ConsoleUnavailable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LrescueProtocol/ConsoleUnavailable$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/flatbuffers/Table;-><init>()V

    return-void
.end method

.method public static endConsoleUnavailable(Lcom/google/flatbuffers/FlatBufferBuilder;)I
    .locals 0

    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->endObject()I

    move-result p0

    return p0
.end method

.method public static getRootAsConsoleUnavailable(Ljava/nio/ByteBuffer;)LrescueProtocol/ConsoleUnavailable;
    .locals 1

    new-instance v0, LrescueProtocol/ConsoleUnavailable;

    invoke-direct {v0}, LrescueProtocol/ConsoleUnavailable;-><init>()V

    invoke-static {p0, v0}, LrescueProtocol/ConsoleUnavailable;->getRootAsConsoleUnavailable(Ljava/nio/ByteBuffer;LrescueProtocol/ConsoleUnavailable;)LrescueProtocol/ConsoleUnavailable;

    move-result-object p0

    return-object p0
.end method

.method public static getRootAsConsoleUnavailable(Ljava/nio/ByteBuffer;LrescueProtocol/ConsoleUnavailable;)LrescueProtocol/ConsoleUnavailable;
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

    invoke-virtual {p1, v0, p0}, LrescueProtocol/ConsoleUnavailable;->__init(ILjava/nio/ByteBuffer;)LrescueProtocol/ConsoleUnavailable;

    move-result-object p0

    return-object p0
.end method

.method public static startConsoleUnavailable(Lcom/google/flatbuffers/FlatBufferBuilder;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startObject(I)V

    return-void
.end method


# virtual methods
.method public __init(ILjava/nio/ByteBuffer;)LrescueProtocol/ConsoleUnavailable;
    .locals 0

    iput p1, p0, LrescueProtocol/ConsoleUnavailable;->bb_pos:I

    iput-object p2, p0, LrescueProtocol/ConsoleUnavailable;->bb:Ljava/nio/ByteBuffer;

    return-object p0
.end method
