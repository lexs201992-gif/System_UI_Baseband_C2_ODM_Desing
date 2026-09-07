.class public final LrescueProtocol/Payload;
.super LrescueProtocol/Union;
.source "Payload.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LrescueProtocol/Payload$Visitor;
    }
.end annotation


# static fields
.field public static final Acknowledgement:B = 0x19t

.field public static final ChatMessage:B = 0x1at

.field public static final ClientConnectAccepted:B = 0xct

.field public static final ClientConnectRejected:B = 0xdt

.field public static final ClientConnecting:B = 0xbt

.field public static final ClientDisconnecting:B = 0x13t

.field public static final ClientReconnectAccepted:B = 0x11t

.field public static final ClientReconnectRejected:B = 0x12t

.field public static final ClientReconnecting:B = 0x10t

.field public static final DrawingCompleted:B = 0x8t

.field public static final DrawingUpdated:B = 0x7t

.field public static final DrawingsErased:B = 0xat

.field public static final DrawingsMoved:B = 0x9t

.field public static final Ended:B = 0x14t

.field public static final FreezeVideoStream:B = 0x1t

.field public static final Heartbeat:B = 0x18t

.field public static final MediaMessage:B = 0x15t

.field public static final NONE:B = 0x0t

.field public static final PickedUp:B = 0x17t

.field public static final PutOnHold:B = 0x16t

.field public static final PutOnTechnicalHold:B = 0xet

.field public static final TakeOffTechnicalHold:B = 0xft

.field public static final UnfreezeVideoStream:B = 0x3t

.field public static final VideoStreamFrozen:B = 0x2t

.field public static final VideoStreamPaused:B = 0x5t

.field public static final VideoStreamResumed:B = 0x6t

.field public static final VideoStreamUnfrozen:B = 0x4t

.field public static final names:[Ljava/lang/String;


# instance fields
.field private builder:LrescueProtocol/AbstractBuilder;

.field private type:B


# direct methods
.method static constructor <clinit>()V
    .locals 27

    const-string v0, "NONE"

    const-string v1, "FreezeVideoStream"

    const-string v2, "VideoStreamFrozen"

    const-string v3, "UnfreezeVideoStream"

    const-string v4, "VideoStreamUnfrozen"

    const-string v5, "VideoStreamPaused"

    const-string v6, "VideoStreamResumed"

    const-string v7, "DrawingUpdated"

    const-string v8, "DrawingCompleted"

    const-string v9, "DrawingsMoved"

    const-string v10, "DrawingsErased"

    const-string v11, "ClientConnecting"

    const-string v12, "ClientConnectAccepted"

    const-string v13, "ClientConnectRejected"

    const-string v14, "PutOnTechnicalHold"

    const-string v15, "TakeOffTechnicalHold"

    const-string v16, "ClientReconnecting"

    const-string v17, "ClientReconnectAccepted"

    const-string v18, "ClientReconnectRejected"

    const-string v19, "ClientDisconnecting"

    const-string v20, "Ended"

    const-string v21, "MediaMessage"

    const-string v22, "PutOnHold"

    const-string v23, "PickedUp"

    const-string v24, "Heartbeat"

    const-string v25, "Acknowledgement"

    const-string v26, "ChatMessage"

    filled-new-array/range {v0 .. v26}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, LrescueProtocol/Payload;->names:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(BLrescueProtocol/AbstractBuilder;)V
    .locals 0

    invoke-direct {p0}, LrescueProtocol/Union;-><init>()V

    iput-byte p1, p0, LrescueProtocol/Payload;->type:B

    iput-object p2, p0, LrescueProtocol/Payload;->builder:LrescueProtocol/AbstractBuilder;

    return-void
.end method

.method public static asPayload(LrescueProtocol/Acknowledgement$Builder;)LrescueProtocol/Payload;
    .locals 2

    new-instance v0, LrescueProtocol/Payload;

    const/16 v1, 0x19

    invoke-direct {v0, v1, p0}, LrescueProtocol/Payload;-><init>(BLrescueProtocol/AbstractBuilder;)V

    return-object v0
.end method

.method public static asPayload(LrescueProtocol/ChatMessage$Builder;)LrescueProtocol/Payload;
    .locals 2

    new-instance v0, LrescueProtocol/Payload;

    const/16 v1, 0x1a

    invoke-direct {v0, v1, p0}, LrescueProtocol/Payload;-><init>(BLrescueProtocol/AbstractBuilder;)V

    return-object v0
.end method

.method public static asPayload(LrescueProtocol/ClientConnectAccepted$Builder;)LrescueProtocol/Payload;
    .locals 2

    new-instance v0, LrescueProtocol/Payload;

    const/16 v1, 0xc

    invoke-direct {v0, v1, p0}, LrescueProtocol/Payload;-><init>(BLrescueProtocol/AbstractBuilder;)V

    return-object v0
.end method

.method public static asPayload(LrescueProtocol/ClientConnectRejected$Builder;)LrescueProtocol/Payload;
    .locals 2

    new-instance v0, LrescueProtocol/Payload;

    const/16 v1, 0xd

    invoke-direct {v0, v1, p0}, LrescueProtocol/Payload;-><init>(BLrescueProtocol/AbstractBuilder;)V

    return-object v0
.end method

.method public static asPayload(LrescueProtocol/ClientConnecting$Builder;)LrescueProtocol/Payload;
    .locals 2

    new-instance v0, LrescueProtocol/Payload;

    const/16 v1, 0xb

    invoke-direct {v0, v1, p0}, LrescueProtocol/Payload;-><init>(BLrescueProtocol/AbstractBuilder;)V

    return-object v0
.end method

.method public static asPayload(LrescueProtocol/ClientDisconnecting$Builder;)LrescueProtocol/Payload;
    .locals 2

    new-instance v0, LrescueProtocol/Payload;

    const/16 v1, 0x13

    invoke-direct {v0, v1, p0}, LrescueProtocol/Payload;-><init>(BLrescueProtocol/AbstractBuilder;)V

    return-object v0
.end method

.method public static asPayload(LrescueProtocol/ClientReconnectAccepted$Builder;)LrescueProtocol/Payload;
    .locals 2

    new-instance v0, LrescueProtocol/Payload;

    const/16 v1, 0x11

    invoke-direct {v0, v1, p0}, LrescueProtocol/Payload;-><init>(BLrescueProtocol/AbstractBuilder;)V

    return-object v0
.end method

.method public static asPayload(LrescueProtocol/ClientReconnectRejected$Builder;)LrescueProtocol/Payload;
    .locals 2

    new-instance v0, LrescueProtocol/Payload;

    const/16 v1, 0x12

    invoke-direct {v0, v1, p0}, LrescueProtocol/Payload;-><init>(BLrescueProtocol/AbstractBuilder;)V

    return-object v0
.end method

.method public static asPayload(LrescueProtocol/ClientReconnecting$Builder;)LrescueProtocol/Payload;
    .locals 2

    new-instance v0, LrescueProtocol/Payload;

    const/16 v1, 0x10

    invoke-direct {v0, v1, p0}, LrescueProtocol/Payload;-><init>(BLrescueProtocol/AbstractBuilder;)V

    return-object v0
.end method

.method public static asPayload(LrescueProtocol/DrawingCompleted$Builder;)LrescueProtocol/Payload;
    .locals 2

    new-instance v0, LrescueProtocol/Payload;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p0}, LrescueProtocol/Payload;-><init>(BLrescueProtocol/AbstractBuilder;)V

    return-object v0
.end method

.method public static asPayload(LrescueProtocol/DrawingUpdated$Builder;)LrescueProtocol/Payload;
    .locals 2

    new-instance v0, LrescueProtocol/Payload;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0}, LrescueProtocol/Payload;-><init>(BLrescueProtocol/AbstractBuilder;)V

    return-object v0
.end method

.method public static asPayload(LrescueProtocol/DrawingsErased$Builder;)LrescueProtocol/Payload;
    .locals 2

    new-instance v0, LrescueProtocol/Payload;

    const/16 v1, 0xa

    invoke-direct {v0, v1, p0}, LrescueProtocol/Payload;-><init>(BLrescueProtocol/AbstractBuilder;)V

    return-object v0
.end method

.method public static asPayload(LrescueProtocol/DrawingsMoved$Builder;)LrescueProtocol/Payload;
    .locals 2

    new-instance v0, LrescueProtocol/Payload;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p0}, LrescueProtocol/Payload;-><init>(BLrescueProtocol/AbstractBuilder;)V

    return-object v0
.end method

.method public static asPayload(LrescueProtocol/Ended$Builder;)LrescueProtocol/Payload;
    .locals 2

    new-instance v0, LrescueProtocol/Payload;

    const/16 v1, 0x14

    invoke-direct {v0, v1, p0}, LrescueProtocol/Payload;-><init>(BLrescueProtocol/AbstractBuilder;)V

    return-object v0
.end method

.method public static asPayload(LrescueProtocol/FreezeVideoStream$Builder;)LrescueProtocol/Payload;
    .locals 2

    new-instance v0, LrescueProtocol/Payload;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, LrescueProtocol/Payload;-><init>(BLrescueProtocol/AbstractBuilder;)V

    return-object v0
.end method

.method public static asPayload(LrescueProtocol/Heartbeat$Builder;)LrescueProtocol/Payload;
    .locals 2

    new-instance v0, LrescueProtocol/Payload;

    const/16 v1, 0x18

    invoke-direct {v0, v1, p0}, LrescueProtocol/Payload;-><init>(BLrescueProtocol/AbstractBuilder;)V

    return-object v0
.end method

.method public static asPayload(LrescueProtocol/MediaMessage$Builder;)LrescueProtocol/Payload;
    .locals 2

    new-instance v0, LrescueProtocol/Payload;

    const/16 v1, 0x15

    invoke-direct {v0, v1, p0}, LrescueProtocol/Payload;-><init>(BLrescueProtocol/AbstractBuilder;)V

    return-object v0
.end method

.method public static asPayload(LrescueProtocol/PickedUp$Builder;)LrescueProtocol/Payload;
    .locals 2

    new-instance v0, LrescueProtocol/Payload;

    const/16 v1, 0x17

    invoke-direct {v0, v1, p0}, LrescueProtocol/Payload;-><init>(BLrescueProtocol/AbstractBuilder;)V

    return-object v0
.end method

.method public static asPayload(LrescueProtocol/PutOnHold$Builder;)LrescueProtocol/Payload;
    .locals 2

    new-instance v0, LrescueProtocol/Payload;

    const/16 v1, 0x16

    invoke-direct {v0, v1, p0}, LrescueProtocol/Payload;-><init>(BLrescueProtocol/AbstractBuilder;)V

    return-object v0
.end method

.method public static asPayload(LrescueProtocol/PutOnTechnicalHold$Builder;)LrescueProtocol/Payload;
    .locals 2

    new-instance v0, LrescueProtocol/Payload;

    const/16 v1, 0xe

    invoke-direct {v0, v1, p0}, LrescueProtocol/Payload;-><init>(BLrescueProtocol/AbstractBuilder;)V

    return-object v0
.end method

.method public static asPayload(LrescueProtocol/TakeOffTechnicalHold$Builder;)LrescueProtocol/Payload;
    .locals 2

    new-instance v0, LrescueProtocol/Payload;

    const/16 v1, 0xf

    invoke-direct {v0, v1, p0}, LrescueProtocol/Payload;-><init>(BLrescueProtocol/AbstractBuilder;)V

    return-object v0
.end method

.method public static asPayload(LrescueProtocol/UnfreezeVideoStream$Builder;)LrescueProtocol/Payload;
    .locals 2

    new-instance v0, LrescueProtocol/Payload;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, LrescueProtocol/Payload;-><init>(BLrescueProtocol/AbstractBuilder;)V

    return-object v0
.end method

.method public static asPayload(LrescueProtocol/VideoStreamFrozen$Builder;)LrescueProtocol/Payload;
    .locals 2

    new-instance v0, LrescueProtocol/Payload;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, LrescueProtocol/Payload;-><init>(BLrescueProtocol/AbstractBuilder;)V

    return-object v0
.end method

.method public static asPayload(LrescueProtocol/VideoStreamPaused$Builder;)LrescueProtocol/Payload;
    .locals 2

    new-instance v0, LrescueProtocol/Payload;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, LrescueProtocol/Payload;-><init>(BLrescueProtocol/AbstractBuilder;)V

    return-object v0
.end method

.method public static asPayload(LrescueProtocol/VideoStreamResumed$Builder;)LrescueProtocol/Payload;
    .locals 2

    new-instance v0, LrescueProtocol/Payload;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, LrescueProtocol/Payload;-><init>(BLrescueProtocol/AbstractBuilder;)V

    return-object v0
.end method

.method public static asPayload(LrescueProtocol/VideoStreamUnfrozen$Builder;)LrescueProtocol/Payload;
    .locals 2

    new-instance v0, LrescueProtocol/Payload;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, LrescueProtocol/Payload;-><init>(BLrescueProtocol/AbstractBuilder;)V

    return-object v0
.end method

.method public static name(I)Ljava/lang/String;
    .locals 1

    sget-object v0, LrescueProtocol/Payload;->names:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0
.end method


# virtual methods
.method public build(Lcom/google/flatbuffers/FlatBufferBuilder;)I
    .locals 1

    iget-object v0, p0, LrescueProtocol/Payload;->builder:LrescueProtocol/AbstractBuilder;

    invoke-virtual {v0, p1}, LrescueProtocol/AbstractBuilder;->build(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    return p1
.end method

.method public getUnionType()B
    .locals 1

    iget-byte v0, p0, LrescueProtocol/Payload;->type:B

    return v0
.end method
