.class public final LrescueProtocol/MissedMessage;
.super Lcom/google/flatbuffers/Table;
.source "MissedMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LrescueProtocol/MissedMessage$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/flatbuffers/Table;-><init>()V

    return-void
.end method

.method public static addPayload(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addPayloadType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->addByte(IBI)V

    return-void
.end method

.method public static createMissedMessage(Lcom/google/flatbuffers/FlatBufferBuilder;BI)I
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startObject(I)V

    invoke-static {p0, p2}, LrescueProtocol/MissedMessage;->addPayload(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    invoke-static {p0, p1}, LrescueProtocol/MissedMessage;->addPayloadType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    invoke-static {p0}, LrescueProtocol/MissedMessage;->endMissedMessage(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    return p0
.end method

.method public static endMissedMessage(Lcom/google/flatbuffers/FlatBufferBuilder;)I
    .locals 2

    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->endObject()I

    move-result v0

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->required(II)V

    return v0
.end method

.method public static getRootAsMissedMessage(Ljava/nio/ByteBuffer;)LrescueProtocol/MissedMessage;
    .locals 1

    new-instance v0, LrescueProtocol/MissedMessage;

    invoke-direct {v0}, LrescueProtocol/MissedMessage;-><init>()V

    invoke-static {p0, v0}, LrescueProtocol/MissedMessage;->getRootAsMissedMessage(Ljava/nio/ByteBuffer;LrescueProtocol/MissedMessage;)LrescueProtocol/MissedMessage;

    move-result-object p0

    return-object p0
.end method

.method public static getRootAsMissedMessage(Ljava/nio/ByteBuffer;LrescueProtocol/MissedMessage;)LrescueProtocol/MissedMessage;
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

    invoke-virtual {p1, v0, p0}, LrescueProtocol/MissedMessage;->__init(ILjava/nio/ByteBuffer;)LrescueProtocol/MissedMessage;

    move-result-object p0

    return-object p0
.end method

.method public static startMissedMessage(Lcom/google/flatbuffers/FlatBufferBuilder;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startObject(I)V

    return-void
.end method


# virtual methods
.method public __init(ILjava/nio/ByteBuffer;)LrescueProtocol/MissedMessage;
    .locals 0

    iput p1, p0, LrescueProtocol/MissedMessage;->bb_pos:I

    iput-object p2, p0, LrescueProtocol/MissedMessage;->bb:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public acceptPayloadVisitor(LrescueProtocol/Payload$Visitor;)V
    .locals 1

    invoke-virtual {p0}, LrescueProtocol/MissedMessage;->payloadType()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    new-instance v0, LrescueProtocol/ChatMessage;

    invoke-direct {v0}, LrescueProtocol/ChatMessage;-><init>()V

    invoke-virtual {p0, v0}, LrescueProtocol/MissedMessage;->payload(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    invoke-virtual {p1, v0}, LrescueProtocol/Payload$Visitor;->visitChatMessage(LrescueProtocol/ChatMessage;)V

    goto/16 :goto_0

    :pswitch_1
    new-instance v0, LrescueProtocol/Acknowledgement;

    invoke-direct {v0}, LrescueProtocol/Acknowledgement;-><init>()V

    invoke-virtual {p0, v0}, LrescueProtocol/MissedMessage;->payload(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    invoke-virtual {p1, v0}, LrescueProtocol/Payload$Visitor;->visitAcknowledgement(LrescueProtocol/Acknowledgement;)V

    goto/16 :goto_0

    :pswitch_2
    new-instance v0, LrescueProtocol/Heartbeat;

    invoke-direct {v0}, LrescueProtocol/Heartbeat;-><init>()V

    invoke-virtual {p0, v0}, LrescueProtocol/MissedMessage;->payload(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    invoke-virtual {p1, v0}, LrescueProtocol/Payload$Visitor;->visitHeartbeat(LrescueProtocol/Heartbeat;)V

    goto/16 :goto_0

    :pswitch_3
    new-instance v0, LrescueProtocol/PickedUp;

    invoke-direct {v0}, LrescueProtocol/PickedUp;-><init>()V

    invoke-virtual {p0, v0}, LrescueProtocol/MissedMessage;->payload(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    invoke-virtual {p1, v0}, LrescueProtocol/Payload$Visitor;->visitPickedUp(LrescueProtocol/PickedUp;)V

    goto/16 :goto_0

    :pswitch_4
    new-instance v0, LrescueProtocol/PutOnHold;

    invoke-direct {v0}, LrescueProtocol/PutOnHold;-><init>()V

    invoke-virtual {p0, v0}, LrescueProtocol/MissedMessage;->payload(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    invoke-virtual {p1, v0}, LrescueProtocol/Payload$Visitor;->visitPutOnHold(LrescueProtocol/PutOnHold;)V

    goto/16 :goto_0

    :pswitch_5
    new-instance v0, LrescueProtocol/MediaMessage;

    invoke-direct {v0}, LrescueProtocol/MediaMessage;-><init>()V

    invoke-virtual {p0, v0}, LrescueProtocol/MissedMessage;->payload(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    invoke-virtual {p1, v0}, LrescueProtocol/Payload$Visitor;->visitMediaMessage(LrescueProtocol/MediaMessage;)V

    goto/16 :goto_0

    :pswitch_6
    new-instance v0, LrescueProtocol/Ended;

    invoke-direct {v0}, LrescueProtocol/Ended;-><init>()V

    invoke-virtual {p0, v0}, LrescueProtocol/MissedMessage;->payload(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    invoke-virtual {p1, v0}, LrescueProtocol/Payload$Visitor;->visitEnded(LrescueProtocol/Ended;)V

    goto/16 :goto_0

    :pswitch_7
    new-instance v0, LrescueProtocol/ClientDisconnecting;

    invoke-direct {v0}, LrescueProtocol/ClientDisconnecting;-><init>()V

    invoke-virtual {p0, v0}, LrescueProtocol/MissedMessage;->payload(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    invoke-virtual {p1, v0}, LrescueProtocol/Payload$Visitor;->visitClientDisconnecting(LrescueProtocol/ClientDisconnecting;)V

    goto/16 :goto_0

    :pswitch_8
    new-instance v0, LrescueProtocol/ClientReconnectRejected;

    invoke-direct {v0}, LrescueProtocol/ClientReconnectRejected;-><init>()V

    invoke-virtual {p0, v0}, LrescueProtocol/MissedMessage;->payload(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    invoke-virtual {p1, v0}, LrescueProtocol/Payload$Visitor;->visitClientReconnectRejected(LrescueProtocol/ClientReconnectRejected;)V

    goto/16 :goto_0

    :pswitch_9
    new-instance v0, LrescueProtocol/ClientReconnectAccepted;

    invoke-direct {v0}, LrescueProtocol/ClientReconnectAccepted;-><init>()V

    invoke-virtual {p0, v0}, LrescueProtocol/MissedMessage;->payload(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    invoke-virtual {p1, v0}, LrescueProtocol/Payload$Visitor;->visitClientReconnectAccepted(LrescueProtocol/ClientReconnectAccepted;)V

    goto/16 :goto_0

    :pswitch_a
    new-instance v0, LrescueProtocol/ClientReconnecting;

    invoke-direct {v0}, LrescueProtocol/ClientReconnecting;-><init>()V

    invoke-virtual {p0, v0}, LrescueProtocol/MissedMessage;->payload(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    invoke-virtual {p1, v0}, LrescueProtocol/Payload$Visitor;->visitClientReconnecting(LrescueProtocol/ClientReconnecting;)V

    goto/16 :goto_0

    :pswitch_b
    new-instance v0, LrescueProtocol/TakeOffTechnicalHold;

    invoke-direct {v0}, LrescueProtocol/TakeOffTechnicalHold;-><init>()V

    invoke-virtual {p0, v0}, LrescueProtocol/MissedMessage;->payload(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    invoke-virtual {p1, v0}, LrescueProtocol/Payload$Visitor;->visitTakeOffTechnicalHold(LrescueProtocol/TakeOffTechnicalHold;)V

    goto/16 :goto_0

    :pswitch_c
    new-instance v0, LrescueProtocol/PutOnTechnicalHold;

    invoke-direct {v0}, LrescueProtocol/PutOnTechnicalHold;-><init>()V

    invoke-virtual {p0, v0}, LrescueProtocol/MissedMessage;->payload(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    invoke-virtual {p1, v0}, LrescueProtocol/Payload$Visitor;->visitPutOnTechnicalHold(LrescueProtocol/PutOnTechnicalHold;)V

    goto/16 :goto_0

    :pswitch_d
    new-instance v0, LrescueProtocol/ClientConnectRejected;

    invoke-direct {v0}, LrescueProtocol/ClientConnectRejected;-><init>()V

    invoke-virtual {p0, v0}, LrescueProtocol/MissedMessage;->payload(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    invoke-virtual {p1, v0}, LrescueProtocol/Payload$Visitor;->visitClientConnectRejected(LrescueProtocol/ClientConnectRejected;)V

    goto/16 :goto_0

    :pswitch_e
    new-instance v0, LrescueProtocol/ClientConnectAccepted;

    invoke-direct {v0}, LrescueProtocol/ClientConnectAccepted;-><init>()V

    invoke-virtual {p0, v0}, LrescueProtocol/MissedMessage;->payload(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    invoke-virtual {p1, v0}, LrescueProtocol/Payload$Visitor;->visitClientConnectAccepted(LrescueProtocol/ClientConnectAccepted;)V

    goto/16 :goto_0

    :pswitch_f
    new-instance v0, LrescueProtocol/ClientConnecting;

    invoke-direct {v0}, LrescueProtocol/ClientConnecting;-><init>()V

    invoke-virtual {p0, v0}, LrescueProtocol/MissedMessage;->payload(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    invoke-virtual {p1, v0}, LrescueProtocol/Payload$Visitor;->visitClientConnecting(LrescueProtocol/ClientConnecting;)V

    goto/16 :goto_0

    :pswitch_10
    new-instance v0, LrescueProtocol/DrawingsErased;

    invoke-direct {v0}, LrescueProtocol/DrawingsErased;-><init>()V

    invoke-virtual {p0, v0}, LrescueProtocol/MissedMessage;->payload(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    invoke-virtual {p1, v0}, LrescueProtocol/Payload$Visitor;->visitDrawingsErased(LrescueProtocol/DrawingsErased;)V

    goto/16 :goto_0

    :pswitch_11
    new-instance v0, LrescueProtocol/DrawingsMoved;

    invoke-direct {v0}, LrescueProtocol/DrawingsMoved;-><init>()V

    invoke-virtual {p0, v0}, LrescueProtocol/MissedMessage;->payload(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    invoke-virtual {p1, v0}, LrescueProtocol/Payload$Visitor;->visitDrawingsMoved(LrescueProtocol/DrawingsMoved;)V

    goto :goto_0

    :pswitch_12
    new-instance v0, LrescueProtocol/DrawingCompleted;

    invoke-direct {v0}, LrescueProtocol/DrawingCompleted;-><init>()V

    invoke-virtual {p0, v0}, LrescueProtocol/MissedMessage;->payload(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    invoke-virtual {p1, v0}, LrescueProtocol/Payload$Visitor;->visitDrawingCompleted(LrescueProtocol/DrawingCompleted;)V

    goto :goto_0

    :pswitch_13
    new-instance v0, LrescueProtocol/DrawingUpdated;

    invoke-direct {v0}, LrescueProtocol/DrawingUpdated;-><init>()V

    invoke-virtual {p0, v0}, LrescueProtocol/MissedMessage;->payload(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    invoke-virtual {p1, v0}, LrescueProtocol/Payload$Visitor;->visitDrawingUpdated(LrescueProtocol/DrawingUpdated;)V

    goto :goto_0

    :pswitch_14
    new-instance v0, LrescueProtocol/VideoStreamResumed;

    invoke-direct {v0}, LrescueProtocol/VideoStreamResumed;-><init>()V

    invoke-virtual {p0, v0}, LrescueProtocol/MissedMessage;->payload(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    invoke-virtual {p1, v0}, LrescueProtocol/Payload$Visitor;->visitVideoStreamResumed(LrescueProtocol/VideoStreamResumed;)V

    goto :goto_0

    :pswitch_15
    new-instance v0, LrescueProtocol/VideoStreamPaused;

    invoke-direct {v0}, LrescueProtocol/VideoStreamPaused;-><init>()V

    invoke-virtual {p0, v0}, LrescueProtocol/MissedMessage;->payload(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    invoke-virtual {p1, v0}, LrescueProtocol/Payload$Visitor;->visitVideoStreamPaused(LrescueProtocol/VideoStreamPaused;)V

    goto :goto_0

    :pswitch_16
    new-instance v0, LrescueProtocol/VideoStreamUnfrozen;

    invoke-direct {v0}, LrescueProtocol/VideoStreamUnfrozen;-><init>()V

    invoke-virtual {p0, v0}, LrescueProtocol/MissedMessage;->payload(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    invoke-virtual {p1, v0}, LrescueProtocol/Payload$Visitor;->visitVideoStreamUnfrozen(LrescueProtocol/VideoStreamUnfrozen;)V

    goto :goto_0

    :pswitch_17
    new-instance v0, LrescueProtocol/UnfreezeVideoStream;

    invoke-direct {v0}, LrescueProtocol/UnfreezeVideoStream;-><init>()V

    invoke-virtual {p0, v0}, LrescueProtocol/MissedMessage;->payload(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    invoke-virtual {p1, v0}, LrescueProtocol/Payload$Visitor;->visitUnfreezeVideoStream(LrescueProtocol/UnfreezeVideoStream;)V

    goto :goto_0

    :pswitch_18
    new-instance v0, LrescueProtocol/VideoStreamFrozen;

    invoke-direct {v0}, LrescueProtocol/VideoStreamFrozen;-><init>()V

    invoke-virtual {p0, v0}, LrescueProtocol/MissedMessage;->payload(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    invoke-virtual {p1, v0}, LrescueProtocol/Payload$Visitor;->visitVideoStreamFrozen(LrescueProtocol/VideoStreamFrozen;)V

    goto :goto_0

    :pswitch_19
    new-instance v0, LrescueProtocol/FreezeVideoStream;

    invoke-direct {v0}, LrescueProtocol/FreezeVideoStream;-><init>()V

    invoke-virtual {p0, v0}, LrescueProtocol/MissedMessage;->payload(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    invoke-virtual {p1, v0}, LrescueProtocol/Payload$Visitor;->visitFreezeVideoStream(LrescueProtocol/FreezeVideoStream;)V

    goto :goto_0

    :pswitch_1a
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, LrescueProtocol/Payload$Visitor;->visitUnknownMessage(Lcom/google/flatbuffers/Table;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public payload(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;
    .locals 1

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, LrescueProtocol/MissedMessage;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, LrescueProtocol/MissedMessage;->__union(Lcom/google/flatbuffers/Table;I)Lcom/google/flatbuffers/Table;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public payloadType()B
    .locals 3

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, LrescueProtocol/MissedMessage;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, LrescueProtocol/MissedMessage;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, LrescueProtocol/MissedMessage;->bb_pos:I

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
