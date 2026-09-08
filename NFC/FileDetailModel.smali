.class public Lcom/unisoc/settings/storageclearmanager/FileDetailModel;
.super Ljava/lang/Object;
.source "FileDetailModel.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/unisoc/settings/storageclearmanager/FileDetailModel;",
        ">;"
    }
.end annotation


# instance fields
.field private filePath:Ljava/lang/String;

.field private fileSize:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unisoc/settings/storageclearmanager/FileDetailModel;->filePath:Ljava/lang/String;

    iput-wide p2, p0, Lcom/unisoc/settings/storageclearmanager/FileDetailModel;->fileSize:J

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/unisoc/settings/storageclearmanager/FileDetailModel;)I
    .locals 4

    iget-wide v0, p0, Lcom/unisoc/settings/storageclearmanager/FileDetailModel;->fileSize:J

    iget-wide v2, p1, Lcom/unisoc/settings/storageclearmanager/FileDetailModel;->fileSize:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/unisoc/settings/storageclearmanager/FileDetailModel;->filePath:Ljava/lang/String;

    iget-object p1, p1, Lcom/unisoc/settings/storageclearmanager/FileDetailModel;->filePath:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    if-lez v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/unisoc/settings/storageclearmanager/FileDetailModel;

    invoke-virtual {p0, p1}, Lcom/unisoc/settings/storageclearmanager/FileDetailModel;->compareTo(Lcom/unisoc/settings/storageclearmanager/FileDetailModel;)I

    move-result p0

    return p0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/unisoc/settings/storageclearmanager/FileDetailModel;->filePath:Ljava/lang/String;

    return-object p0
.end method

.method public getFileSize()J
    .locals 2

    iget-wide v0, p0, Lcom/unisoc/settings/storageclearmanager/FileDetailModel;->fileSize:J

    return-wide v0
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisoc/settings/storageclearmanager/FileDetailModel;->filePath:Ljava/lang/String;

    return-void
.end method

.method public setFileSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/unisoc/settings/storageclearmanager/FileDetailModel;->fileSize:J

    return-void
.end method
