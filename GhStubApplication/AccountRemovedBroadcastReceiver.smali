.class public final Lcom/google/android/libraries/phenotype/client/stable/AccountRemovedBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    nop

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const-string v0, "android.accounts.action.ACCOUNT_REMOVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "accountType"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.google.work"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "cn.google"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "__logged_out_type"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "authAccount"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "../"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "/.."

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {}, Lbak;->e()V

    invoke-static {p1}, Lbak;->a(Landroid/content/Context;)Lbak;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/libraries/phenotype/client/stable/AccountRemovedBroadcastReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Lbwk;

    invoke-static {v0}, Lbbt;->b(Lbak;)Lbek;

    move-result-object v3

    new-instance v4, Layq;

    const/4 v5, 0x5

    invoke-direct {v4, p2, v5}, Layq;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Lbak;->d()Lbwo;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lbek;->b(Lbkh;Ljava/util/concurrent/Executor;)Lbwk;

    move-result-object v3

    invoke-static {v3}, Lbwe;->q(Lbwk;)Lbwe;

    move-result-object v3

    new-instance v4, Lbed;

    const/4 v5, 0x1

    invoke-direct {v4, v0, p2, v5}, Lbed;-><init>(Lbak;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lbak;->d()Lbwo;

    move-result-object v6

    invoke-static {v3, v4, v6}, Lbuy;->p(Lbwk;Lbvi;Ljava/util/concurrent/Executor;)Lbwk;

    move-result-object v3

    const-class v4, Ljava/io/IOException;

    sget-object v6, Lbbd;->a:Lbbd;

    sget-object v7, Lbvp;->a:Lbvp;

    new-instance v8, Lbuq;

    invoke-direct {v8, v3, v4, v6}, Lbuq;-><init>(Lbwk;Ljava/lang/Class;Lbkh;)V

    invoke-static {v7, v8}, Lhk;->f(Ljava/util/concurrent/Executor;Lbus;)Ljava/util/concurrent/Executor;

    move-result-object v4

    invoke-interface {v3, v8, v4}, Lbwk;->k(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    const/4 v3, 0x0

    aput-object v8, v2, v3

    invoke-virtual {v0}, Lbak;->d()Lbwo;

    move-result-object v0

    new-instance v4, Lax;

    const/16 v6, 0x13

    invoke-direct {v4, p1, p2, v6}, Lax;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v0, v4}, Lbuv;->a(Ljava/lang/Runnable;)Lbwk;

    move-result-object p1

    aput-object p1, v2, v5

    new-instance p1, Lbwc;

    sget p2, Lbll;->d:I

    invoke-virtual {v2}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/Object;

    invoke-static {p2}, Lbll;->l([Ljava/lang/Object;)Lbll;

    move-result-object p2

    invoke-direct {p1, v3, p2}, Lbwc;-><init>(ZLbll;)V

    new-instance p2, Lbei;

    invoke-direct {p2, v1, v5}, Lbei;-><init>(Landroid/content/BroadcastReceiver$PendingResult;I)V

    sget-object v0, Lbvp;->a:Lbvp;

    invoke-virtual {p1, p2, v0}, Lbwc;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lbwk;

    return-void

    :cond_4
    :goto_1
    const-string p1, "Got an invalid account name for P/H that includes \'..\':"

    const-string v0, ". Exiting."

    invoke-static {p2, p1, v0}, Li;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "AccountRemovedRecv"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
