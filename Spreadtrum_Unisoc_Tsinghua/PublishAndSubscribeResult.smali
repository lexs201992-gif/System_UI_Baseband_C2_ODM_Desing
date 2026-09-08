.class public Lcom/spreadtrum/ims/PublishAndSubscribeResult;
.super Ljava/lang/Object;
.source "PublishAndSubscribeResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/spreadtrum/ims/PublishAndSubscribeResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mErrorCode:I

.field private mReason:Ljava/lang/String;

.field private mReasonHeaderCause:I

.field private mReasonHeaderText:Ljava/lang/String;

.field private mSipCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/spreadtrum/ims/PublishAndSubscribeResult$1;

    invoke-direct {v0}, Lcom/spreadtrum/ims/PublishAndSubscribeResult$1;-><init>()V

    sput-object v0, Lcom/spreadtrum/ims/PublishAndSubscribeResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/spreadtrum/ims/PublishAndSubscribeResult;->mErrorCode:I

    iput p2, p0, Lcom/spreadtrum/ims/PublishAndSubscribeResult;->mSipCode:I

    iput-object p3, p0, Lcom/spreadtrum/ims/PublishAndSubscribeResult;->mReason:Ljava/lang/String;

    iput p4, p0, Lcom/spreadtrum/ims/PublishAndSubscribeResult;->mReasonHeaderCause:I

    iput-object p5, p0, Lcom/spreadtrum/ims/PublishAndSubscribeResult;->mReasonHeaderText:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/spreadtrum/ims/PublishAndSubscribeResult;->mErrorCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/spreadtrum/ims/PublishAndSubscribeResult;->mSipCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spreadtrum/ims/PublishAndSubscribeResult;->mReason:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/spreadtrum/ims/PublishAndSubscribeResult;->mReasonHeaderCause:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spreadtrum/ims/PublishAndSubscribeResult;->mReasonHeaderText:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/spreadtrum/ims/PublishAndSubscribeResult-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/PublishAndSubscribeResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/spreadtrum/ims/PublishAndSubscribeResult;->mErrorCode:I

    return v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/spreadtrum/ims/PublishAndSubscribeResult;->mReason:Ljava/lang/String;

    return-object v0
.end method

.method public getReasonHeaderCause()I
    .locals 1

    iget v0, p0, Lcom/spreadtrum/ims/PublishAndSubscribeResult;->mReasonHeaderCause:I

    return v0
.end method

.method public getReasonHeaderText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/spreadtrum/ims/PublishAndSubscribeResult;->mReasonHeaderText:Ljava/lang/String;

    return-object v0
.end method

.method public getSipCode()I
    .locals 1

    iget v0, p0, Lcom/spreadtrum/ims/PublishAndSubscribeResult;->mSipCode:I

    return v0
.end method

.method public setErrorCode(I)V
    .locals 0

    iput p1, p0, Lcom/spreadtrum/ims/PublishAndSubscribeResult;->mErrorCode:I

    return-void
.end method

.method public setReason(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/spreadtrum/ims/PublishAndSubscribeResult;->mReason:Ljava/lang/String;

    return-void
.end method

.method public setReasonHeaderCause(I)V
    .locals 0

    iput p1, p0, Lcom/spreadtrum/ims/PublishAndSubscribeResult;->mReasonHeaderCause:I

    return-void
.end method

.method public setReasonHeaderCause(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/spreadtrum/ims/PublishAndSubscribeResult;->mReasonHeaderText:Ljava/lang/String;

    return-void
.end method

.method public setSipCode(I)V
    .locals 0

    iput p1, p0, Lcom/spreadtrum/ims/PublishAndSubscribeResult;->mSipCode:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PublishAndSubscribeResult (mErrorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/spreadtrum/ims/PublishAndSubscribeResult;->mErrorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSipCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/spreadtrum/ims/PublishAndSubscribeResult;->mSipCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/PublishAndSubscribeResult;->mReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mReasonHeaderCause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/spreadtrum/ims/PublishAndSubscribeResult;->mReasonHeaderCause:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mReasonHeaderText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/PublishAndSubscribeResult;->mReasonHeaderText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/spreadtrum/ims/PublishAndSubscribeResult;->mErrorCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/spreadtrum/ims/PublishAndSubscribeResult;->mSipCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/spreadtrum/ims/PublishAndSubscribeResult;->mReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/spreadtrum/ims/PublishAndSubscribeResult;->mReasonHeaderCause:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/spreadtrum/ims/PublishAndSubscribeResult;->mReasonHeaderText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
