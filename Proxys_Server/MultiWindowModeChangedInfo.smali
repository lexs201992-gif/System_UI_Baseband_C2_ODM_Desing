.class public final Landroidx/core/app/MultiWindowModeChangedInfo;
.super Ljava/lang/Object;
.source "MultiWindowModeChangedInfo.java"


# instance fields
.field private final mIsInMultiWindowMode:Z

.field private final mNewConfig:Landroid/content/res/Configuration;


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroidx/core/app/MultiWindowModeChangedInfo;->mIsInMultiWindowMode:Z

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/core/app/MultiWindowModeChangedInfo;->mNewConfig:Landroid/content/res/Configuration;

    return-void
.end method

.method public constructor <init>(ZLandroid/content/res/Configuration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroidx/core/app/MultiWindowModeChangedInfo;->mIsInMultiWindowMode:Z

    iput-object p2, p0, Landroidx/core/app/MultiWindowModeChangedInfo;->mNewConfig:Landroid/content/res/Configuration;

    return-void
.end method


# virtual methods
.method public isInMultiWindowMode()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/core/app/MultiWindowModeChangedInfo;->mIsInMultiWindowMode:Z

    return p0
.end method
