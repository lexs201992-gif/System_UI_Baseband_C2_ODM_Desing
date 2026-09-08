.class public Lcom/android/settings/system/RamBoostNotificationBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RamBoostNotificationBroadcastReceiver.java"


# instance fields
.field ManualShutdown:Z

.field private isLowSpace:Z

.field private mEnabled:Z

.field private ramBoostOn:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/system/RamBoostNotificationBroadcastReceiver;->ramBoostOn:Z

    iput-boolean v0, p0, Lcom/android/settings/system/RamBoostNotificationBroadcastReceiver;->isLowSpace:Z

    iput-boolean v0, p0, Lcom/android/settings/system/RamBoostNotificationBroadcastReceiver;->ManualShutdown:Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v0, "RamBoostNotificationBroadcastReceiver is begin"

    const-string v1, "RamBoostNotificationBroadcastReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/system/ram/ExternalRamUtils;->getInstance()Lcom/android/settings/system/ram/ExternalRamUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/system/ram/ExternalRamUtils;->getExternalAdjustableRange10More()Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/android/settings/system/RamBoostNotificationBroadcastReceiver;->isLowSpace:Z

    const-string v0, "persist.sys.zram_wb_enabled"

    const-string v3, "false"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/system/RamBoostNotificationBroadcastReceiver;->mEnabled:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mEnabled : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/settings/system/RamBoostNotificationBroadcastReceiver;->mEnabled:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.android.settings.RAMBOOST_NOTIFICATION"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RAMBOOST_NOTIFICATION,action : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/system/ram/ExternalRamUtils;->getInstance()Lcom/android/settings/system/ram/ExternalRamUtils;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/settings/system/ram/ExternalRamUtils;->displayNotification(Landroid/content/Context;)V

    iput-boolean v2, p0, Lcom/android/settings/system/RamBoostNotificationBroadcastReceiver;->ManualShutdown:Z

    invoke-static {}, Lcom/android/settings/system/ram/ExternalRamUtils;->getInstance()Lcom/android/settings/system/ram/ExternalRamUtils;

    move-result-object p1

    iget-boolean p0, p0, Lcom/android/settings/system/RamBoostNotificationBroadcastReceiver;->ramBoostOn:Z

    invoke-virtual {p1, p0}, Lcom/android/settings/system/ram/ExternalRamUtils;->setExternalRamEnabled(Z)V

    goto :goto_0

    :cond_0
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/android/settings/system/RamBoostNotificationBroadcastReceiver;->isLowSpace:Z

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BOOT_COMPLETED,action : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/system/ram/ExternalRamUtils;->getInstance()Lcom/android/settings/system/ram/ExternalRamUtils;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/settings/system/ram/ExternalRamUtils;->displayNotification(Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void
.end method
