.class public Lcom/android/unisoc/telephony/server/RadioInteractorApp;
.super Landroid/app/Application;
.source "RadioInteractorApp.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RadioInteractorApp"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "RadioInteractorApp"

    const-string v1, "RadioInteractorApp onCreate."

    invoke-static {v0, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/unisoc/telephony/server/RadioInteractorFactory;->init(Landroid/content/Context;)Lcom/android/unisoc/telephony/server/RadioInteractorFactory;

    :cond_0
    return-void
.end method
