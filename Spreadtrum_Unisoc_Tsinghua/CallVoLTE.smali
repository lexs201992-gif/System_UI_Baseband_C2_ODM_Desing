.class public final Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;
.super Ljava/lang/Object;
.source "CallVoLTE.java"


# instance fields
.field public als:I

.field public cliValidityPresent:I

.field public csMode:I

.field public index:I

.field public isLoopBack:B

.field public isMT:B

.field public isVoicePrivacy:B

.field public mediaDescription:Ljava/lang/String;

.field public mpty:I

.field public name:Ljava/lang/String;

.field public namePresentation:I

.field public negStatus:I

.field public negStatusPresent:I

.field public number:Ljava/lang/String;

.field public numberPresentation:I

.field public numberType:I

.field public priority:I

.field public prioritypresent:I

.field public state:I

.field public toa:I

.field public uusInfo:Lvendor/sprd/hardware/radio/ims/V1_0/UusInfo;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->index:I

    iput-byte v0, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->isMT:B

    iput v0, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->negStatusPresent:I

    iput v0, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->negStatus:I

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->mediaDescription:Ljava/lang/String;

    iput v0, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->csMode:I

    iput v0, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->state:I

    iput v0, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->mpty:I

    iput v0, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->numberType:I

    iput v0, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->toa:I

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->number:Ljava/lang/String;

    iput v0, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->prioritypresent:I

    iput v0, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->priority:I

    iput v0, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->cliValidityPresent:I

    iput v0, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->numberPresentation:I

    iput v0, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->als:I

    iput-byte v0, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->isVoicePrivacy:B

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->name:Ljava/lang/String;

    iput v0, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->namePresentation:I

    iput-byte v0, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->isLoopBack:B

    new-instance v0, Lvendor/sprd/hardware/radio/ims/V1_0/UusInfo;

    invoke-direct {v0}, Lvendor/sprd/hardware/radio/ims/V1_0/UusInfo;-><init>()V

    iput-object v0, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->uusInfo:Lvendor/sprd/hardware/radio/ims/V1_0/UusInfo;

    return-void
.end method

.method public static final readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            ")",
            "Ljava/util/ArrayList<",
            "Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit16 v3, v2, 0x90

    int-to-long v5, v3

    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    new-instance v5, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;

    invoke-direct {v5}, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;-><init>()V

    mul-int/lit16 v6, v4, 0x90

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static final writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            "Ljava/util/ArrayList<",
            "Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit16 v3, v1, 0x90

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;

    mul-int/lit16 v5, v3, 0x90

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    move-object v2, p1

    check-cast v2, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;

    iget v3, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->index:I

    iget v4, v2, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->index:I

    if-eq v3, v4, :cond_3

    return v1

    :cond_3
    iget-byte v3, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->isMT:B

    iget-byte v4, v2, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->isMT:B

    if-eq v3, v4, :cond_4

    return v1

    :cond_4
    iget v3, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->negStatusPresent:I

    iget v4, v2, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->negStatusPresent:I

    if-eq v3, v4, :cond_5

    return v1

    :cond_5
    iget v3, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->negStatus:I

    iget v4, v2, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->negStatus:I

    if-eq v3, v4, :cond_6

    return v1

    :cond_6
    iget-object v3, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->mediaDescription:Ljava/lang/String;

    iget-object v4, v2, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->mediaDescription:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    return v1

    :cond_7
    iget v3, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->csMode:I

    iget v4, v2, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->csMode:I

    if-eq v3, v4, :cond_8

    return v1

    :cond_8
    iget v3, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->state:I

    iget v4, v2, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->state:I

    if-eq v3, v4, :cond_9

    return v1

    :cond_9
    iget v3, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->mpty:I

    iget v4, v2, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->mpty:I

    if-eq v3, v4, :cond_a

    return v1

    :cond_a
    iget v3, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->numberType:I

    iget v4, v2, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->numberType:I

    if-eq v3, v4, :cond_b

    return v1

    :cond_b
    iget v3, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->toa:I

    iget v4, v2, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->toa:I

    if-eq v3, v4, :cond_c

    return v1

    :cond_c
    iget-object v3, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->number:Ljava/lang/String;

    iget-object v4, v2, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->number:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    return v1

    :cond_d
    iget v3, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->prioritypresent:I

    iget v4, v2, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->prioritypresent:I

    if-eq v3, v4, :cond_e

    return v1

    :cond_e
    iget v3, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->priority:I

    iget v4, v2, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->priority:I

    if-eq v3, v4, :cond_f

    return v1

    :cond_f
    iget v3, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->cliValidityPresent:I

    iget v4, v2, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->cliValidityPresent:I

    if-eq v3, v4, :cond_10

    return v1

    :cond_10
    iget v3, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->numberPresentation:I

    iget v4, v2, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->numberPresentation:I

    if-eq v3, v4, :cond_11

    return v1

    :cond_11
    iget v3, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->als:I

    iget v4, v2, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->als:I

    if-eq v3, v4, :cond_12

    return v1

    :cond_12
    iget-byte v3, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->isVoicePrivacy:B

    iget-byte v4, v2, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->isVoicePrivacy:B

    if-eq v3, v4, :cond_13

    return v1

    :cond_13
    iget-object v3, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->name:Ljava/lang/String;

    iget-object v4, v2, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    return v1

    :cond_14
    iget v3, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->namePresentation:I

    iget v4, v2, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->namePresentation:I

    if-eq v3, v4, :cond_15

    return v1

    :cond_15
    iget-byte v3, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->isLoopBack:B

    iget-byte v4, v2, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->isLoopBack:B

    if-eq v3, v4, :cond_16

    return v1

    :cond_16
    iget-object v3, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->uusInfo:Lvendor/sprd/hardware/radio/ims/V1_0/UusInfo;

    iget-object v4, v2, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->uusInfo:Lvendor/sprd/hardware/radio/ims/V1_0/UusInfo;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    return v1

    :cond_17
    return v0
.end method

.method public final hashCode()I
    .locals 23

    move-object/from16 v0, p0

    iget v1, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->index:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-byte v1, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->isMT:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v1, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->negStatusPresent:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v1, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->negStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v1, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->mediaDescription:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v1, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->csMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v1, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->state:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v1, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->mpty:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v1, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->numberType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget v1, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->toa:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget-object v1, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->number:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget v1, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->prioritypresent:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget v1, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->priority:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget v1, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->cliValidityPresent:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    iget v1, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->numberPresentation:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    iget v1, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->als:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    iget-byte v1, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->isVoicePrivacy:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    iget-object v1, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    iget v1, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->namePresentation:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    iget-byte v1, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->isLoopBack:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    iget-object v1, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->uusInfo:Lvendor/sprd/hardware/radio/ims/V1_0/UusInfo;

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    filled-new-array/range {v2 .. v22}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p2

    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->index:I

    const-wide/16 v4, 0x4

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    iput-byte v4, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->isMT:B

    const-wide/16 v4, 0x8

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->negStatusPresent:I

    const-wide/16 v4, 0xc

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->negStatus:I

    const-wide/16 v4, 0x10

    add-long v6, p3, v4

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->mediaDescription:Ljava/lang/String;

    nop

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v8, v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v4, p3, v4

    add-long v12, v4, v2

    const/4 v14, 0x0

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    const-wide/16 v4, 0x20

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->csMode:I

    const-wide/16 v4, 0x24

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->state:I

    const-wide/16 v4, 0x28

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->mpty:I

    const-wide/16 v4, 0x2c

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->numberType:I

    const-wide/16 v4, 0x30

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->toa:I

    const-wide/16 v4, 0x38

    add-long v6, p3, v4

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->number:Ljava/lang/String;

    nop

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v8, v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v4, p3, v4

    add-long v12, v4, v2

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    const-wide/16 v4, 0x48

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->prioritypresent:I

    const-wide/16 v4, 0x4c

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->priority:I

    const-wide/16 v4, 0x50

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->cliValidityPresent:I

    const-wide/16 v4, 0x54

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->numberPresentation:I

    const-wide/16 v4, 0x58

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->als:I

    const-wide/16 v4, 0x5c

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    iput-byte v4, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->isVoicePrivacy:B

    const-wide/16 v4, 0x60

    add-long v6, p3, v4

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->name:Ljava/lang/String;

    nop

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v8, v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v4, p3, v4

    add-long v12, v4, v2

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    const-wide/16 v2, 0x70

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->namePresentation:I

    const-wide/16 v2, 0x74

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v2

    iput-byte v2, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->isLoopBack:B

    iget-object v2, v0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->uusInfo:Lvendor/sprd/hardware/radio/ims/V1_0/UusInfo;

    const-wide/16 v3, 0x78

    add-long v3, p3, v3

    move-object/from16 v5, p1

    invoke-virtual {v2, v5, v1, v3, v4}, Lvendor/sprd/hardware/radio/ims/V1_0/UusInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3

    const-wide/16 v0, 0x90

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .isMT = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->isMT:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .negStatusPresent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->negStatusPresent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .negStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->negStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .mediaDescription = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->mediaDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .csMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->csMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->state:I

    invoke-static {v1}, Lvendor/sprd/hardware/radio/ims/V1_0/CallState;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .mpty = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->mpty:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .numberType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->numberType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .toa = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->toa:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .number = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .prioritypresent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->prioritypresent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .priority = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->priority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .cliValidityPresent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->cliValidityPresent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .numberPresentation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->numberPresentation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .als = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->als:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .isVoicePrivacy = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->isVoicePrivacy:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .namePresentation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->namePresentation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .isLoopBack = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->isLoopBack:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .uusInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->uusInfo:Lvendor/sprd/hardware/radio/ims/V1_0/UusInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 3

    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->index:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    iget-byte v2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->isMT:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->negStatusPresent:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0xc

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->negStatus:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x10

    add-long/2addr v0, p2

    iget-object v2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->mediaDescription:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    const-wide/16 v0, 0x20

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->csMode:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x24

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->state:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x28

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->mpty:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x2c

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->numberType:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x30

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->toa:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x38

    add-long/2addr v0, p2

    iget-object v2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->number:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    const-wide/16 v0, 0x48

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->prioritypresent:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x4c

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->priority:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x50

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->cliValidityPresent:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x54

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->numberPresentation:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x58

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->als:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x5c

    add-long/2addr v0, p2

    iget-byte v2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->isVoicePrivacy:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v0, 0x60

    add-long/2addr v0, p2

    iget-object v2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    const-wide/16 v0, 0x70

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->namePresentation:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x74

    add-long/2addr v0, p2

    iget-byte v2, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->isLoopBack:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    iget-object v0, p0, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->uusInfo:Lvendor/sprd/hardware/radio/ims/V1_0/UusInfo;

    const-wide/16 v1, 0x78

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lvendor/sprd/hardware/radio/ims/V1_0/UusInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3

    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x90

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
