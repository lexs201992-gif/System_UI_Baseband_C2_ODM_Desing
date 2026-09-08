.class public final Lcom/google/android/libraries/phenotype/client/stable/PhenotypeUpdateBackgroundBroadcastReceiver;
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
    .locals 8

    const-string v0, "com.google.android.gms.phenotype.PACKAGE_NAME"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_6

    const-string v0, "../"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "PhenotypeBackgroundRecv"

    if-nez v0, :cond_5

    const-string v0, "/.."

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {p1}, Lbak;->a(Landroid/content/Context;)Lbak;

    move-result-object v0

    invoke-static {p1}, Lbbq;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbbq;

    if-eqz p1, :cond_4

    iget v2, p1, Lbbq;->e:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/libraries/phenotype/client/stable/PhenotypeUpdateBackgroundBroadcastReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v1

    invoke-static {v0}, Lbbt;->b(Lbak;)Lbek;

    move-result-object v2

    invoke-virtual {v2}, Lbek;->a()Lbwk;

    move-result-object v2

    invoke-static {v2}, Lbwe;->q(Lbwk;)Lbwe;

    move-result-object v2

    new-instance v3, Layq;

    const/4 v4, 0x3

    invoke-direct {v3, p2, v4}, Layq;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Lbak;->d()Lbwo;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lbuy;->h(Lbwk;Lbkh;Ljava/util/concurrent/Executor;)Lbwk;

    move-result-object v2

    invoke-static {v2}, Lbwe;->q(Lbwk;)Lbwe;

    move-result-object v2

    new-instance v3, Lbec;

    const/4 v4, 0x1

    invoke-direct {v3, p1, p2, v0, v4}, Lbec;-><init>(Lbbq;Ljava/lang/String;Lbak;I)V

    invoke-virtual {v0}, Lbak;->d()Lbwo;

    move-result-object p1

    invoke-static {v2, v3, p1}, Lbuy;->p(Lbwk;Lbvi;Ljava/util/concurrent/Executor;)Lbwk;

    move-result-object p1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lbak;->d()Lbwo;

    move-result-object v3

    invoke-interface {p1}, Lbwk;->isDone()Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v4, Lbww;

    invoke-direct {v4, p1}, Lbww;-><init>(Lbwk;)V

    new-instance v5, Lbwu;

    invoke-direct {v5, v4}, Lbwu;-><init>(Lbww;)V

    const-wide/16 v6, 0x19

    invoke-virtual {v3, v5, v6, v7, v2}, Lbwo;->b(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lbwm;

    move-result-object v2

    iput-object v2, v4, Lbww;->b:Ljava/util/concurrent/ScheduledFuture;

    sget-object v2, Lbvp;->a:Lbvp;

    invoke-interface {p1, v5, v2}, Lbwk;->k(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    move-object p1, v4

    :cond_3
    new-instance v2, Lbbx;

    move-object v3, p1

    check-cast v3, Lbwe;

    const/4 v4, 0x0

    invoke-direct {v2, v3, p2, v1, v4}, Lbbx;-><init>(Lbwe;Ljava/lang/String;Landroid/content/BroadcastReceiver$PendingResult;I)V

    invoke-virtual {v0}, Lbak;->d()Lbwo;

    move-result-object p2

    check-cast p1, Lbus;

    invoke-virtual {p1, v2, p2}, Lbus;->k(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void

    :cond_4
    :goto_0
    const-string p1, "Skipping "

    const-string v0, " which doesn\'t use ProcessStable flags."

    invoke-static {p2, p1, v0}, Li;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    :goto_1
    const-string p1, "Got an invalid config package for P/H that includes \'..\': "

    const-string v0, ". Exiting."

    invoke-static {p2, p1, v0}, Li;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    return-void
.end method
