.class public final LrescueProtocol/TechnicalHoldReason;
.super LrescueProtocol/Union;
.source "TechnicalHoldReason.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LrescueProtocol/TechnicalHoldReason$Visitor;
    }
.end annotation


# static fields
.field public static final ClientUnavailable:B = 0x3t

.field public static final ConsoleUnavailable:B = 0x2t

.field public static final NONE:B = 0x0t

.field public static final UnknownReason:B = 0x1t

.field public static final names:[Ljava/lang/String;


# instance fields
.field private builder:LrescueProtocol/AbstractBuilder;

.field private type:B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "NONE"

    const-string v1, "UnknownReason"

    const-string v2, "ConsoleUnavailable"

    const-string v3, "ClientUnavailable"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, LrescueProtocol/TechnicalHoldReason;->names:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(BLrescueProtocol/AbstractBuilder;)V
    .locals 0

    invoke-direct {p0}, LrescueProtocol/Union;-><init>()V

    iput-byte p1, p0, LrescueProtocol/TechnicalHoldReason;->type:B

    iput-object p2, p0, LrescueProtocol/TechnicalHoldReason;->builder:LrescueProtocol/AbstractBuilder;

    return-void
.end method

.method public static asTechnicalHoldReason(LrescueProtocol/ClientUnavailable$Builder;)LrescueProtocol/TechnicalHoldReason;
    .locals 2

    new-instance v0, LrescueProtocol/TechnicalHoldReason;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, LrescueProtocol/TechnicalHoldReason;-><init>(BLrescueProtocol/AbstractBuilder;)V

    return-object v0
.end method

.method public static asTechnicalHoldReason(LrescueProtocol/ConsoleUnavailable$Builder;)LrescueProtocol/TechnicalHoldReason;
    .locals 2

    new-instance v0, LrescueProtocol/TechnicalHoldReason;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, LrescueProtocol/TechnicalHoldReason;-><init>(BLrescueProtocol/AbstractBuilder;)V

    return-object v0
.end method

.method public static asTechnicalHoldReason(LrescueProtocol/UnknownReason$Builder;)LrescueProtocol/TechnicalHoldReason;
    .locals 2

    new-instance v0, LrescueProtocol/TechnicalHoldReason;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, LrescueProtocol/TechnicalHoldReason;-><init>(BLrescueProtocol/AbstractBuilder;)V

    return-object v0
.end method

.method public static name(I)Ljava/lang/String;
    .locals 1

    sget-object v0, LrescueProtocol/TechnicalHoldReason;->names:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0
.end method


# virtual methods
.method public build(Lcom/google/flatbuffers/FlatBufferBuilder;)I
    .locals 1

    iget-object v0, p0, LrescueProtocol/TechnicalHoldReason;->builder:LrescueProtocol/AbstractBuilder;

    invoke-virtual {v0, p1}, LrescueProtocol/AbstractBuilder;->build(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    return p1
.end method

.method public getUnionType()B
    .locals 1

    iget-byte v0, p0, LrescueProtocol/TechnicalHoldReason;->type:B

    return v0
.end method
