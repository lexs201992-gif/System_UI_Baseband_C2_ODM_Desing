.class public Lcom/unisoc/settings/deviceinfo/OtaReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OtaReceiver.java"


# static fields
.field private static final KEY_OTA_INSTALL_IN_PROGRESS:Ljava/lang/String; = "install_in_progress"

.field private static final LOG_TAG:Ljava/lang/String; = "OtaReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p0, "OtaReceiver"

    const-string p2, "restore install_in_progress to 0"

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "install_in_progress"

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
