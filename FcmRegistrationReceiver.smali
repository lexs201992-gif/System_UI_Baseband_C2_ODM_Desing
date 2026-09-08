.class public Lcom/motorola/enterprise/adapter/service/fcm/receivers/FcmRegistrationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FcmRegistrationReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/motorola/enterprise/adapter/service/utils/SystemProperties;->get()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ISPRC -> "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceAndBuildInformation"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "true"

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    const-string p1, "EAS token not registered because is PRC build"

    invoke-static {p0, p1}, Lcom/motorola/enterprise/adapter/service/fcm/utils/FcmLogger;->log(ILjava/lang/String;)V

    return-void

    :cond_0
    const-string p2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lcom/motorola/enterprise/adapter/service/fcm/services/FcmSchedulerService;

    invoke-direct {p0}, Lcom/motorola/enterprise/adapter/service/fcm/services/FcmSchedulerService;-><init>()V

    invoke-static {p1}, Lcom/motorola/enterprise/adapter/service/fcm/services/FcmSchedulerService;->enqueueJob(Landroid/content/Context;)V

    :cond_1
    return-void
.end method
