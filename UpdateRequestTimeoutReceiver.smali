.class public Lcom/motorola/enterprise/adapter/service/asc/ota/receivers/UpdateRequestTimeoutReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UpdateRequestTimeoutReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string p0, "TRANSACTION_ID"

    const-wide/16 v0, -0x1

    invoke-virtual {p2, p0, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p0

    cmp-long p2, p0, v0

    if-nez p2, :cond_1

    return-void

    :cond_1
    invoke-static {p0, p1}, Lcom/motorola/enterprise/adapter/service/asc/TransactionsMemoryStore;->addTimeoutTransactionId(J)V

    return-void
.end method
