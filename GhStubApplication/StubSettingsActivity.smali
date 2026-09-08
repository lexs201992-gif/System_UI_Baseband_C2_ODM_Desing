.class public Lcom/google/android/apps/auto/components/app/stubapp/StubSettingsActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field private static final a:Lbnz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "GH.StubSettings"

    invoke-static {v0}, Lbnz;->k(Ljava/lang/String;)Lbnz;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/auto/components/app/stubapp/StubSettingsActivity;->a:Lbnz;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    nop

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget-object p1, Lcom/google/android/apps/auto/components/app/stubapp/StubSettingsActivity;->a:Lbnz;

    invoke-virtual {p1}, Lbny;->h()Lbnj;

    move-result-object p1

    const-string v0, "com/google/android/apps/auto/components/app/stubapp/StubSettingsActivity"

    const-string v1, "onCreate"

    const/16 v2, 0x1e

    const-string v3, "StubSettingsActivity.java"

    invoke-interface {p1, v0, v1, v2, v3}, Lbnx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lbnj;

    move-result-object p1

    check-cast p1, Lbnx;

    const-string v2, "Forwarding user to Play Store"

    invoke-interface {p1, v2}, Lbnx;->n(Ljava/lang/String;)V

    sget-object p1, Lbtv;->v:Lbtv;

    invoke-virtual {p1}, Lchz;->l()Lchv;

    move-result-object p1

    sget-object v2, Lbtu;->eg:Lbtu;

    iget v2, v2, Lbtu;->fJ:I

    iget-object v4, p1, Lchv;->b:Lchz;

    invoke-virtual {v4}, Lchz;->y()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p1}, Lchv;->l()V

    :cond_0
    iget-object v4, p1, Lchv;->b:Lchz;

    check-cast v4, Lbtv;

    iget v5, v4, Lbtv;->a:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v4, Lbtv;->a:I

    iput v2, v4, Lbtv;->c:I

    sget-object v2, Lbtt;->qT:Lbtt;

    iget v2, v2, Lbtt;->EA:I

    iget-object v4, p1, Lchv;->b:Lchz;

    invoke-virtual {v4}, Lchz;->y()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p1}, Lchv;->l()V

    :cond_1
    iget-object v4, p1, Lchv;->b:Lchz;

    check-cast v4, Lbtv;

    iget v5, v4, Lbtv;->a:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v4, Lbtv;->a:I

    iput v2, v4, Lbtv;->d:I

    invoke-virtual {p1}, Lchv;->g()Lchz;

    move-result-object p1

    check-cast p1, Lbtv;

    sget-object v2, Lbrq;->u:Lbrq;

    invoke-virtual {v2}, Lchz;->l()Lchv;

    move-result-object v2

    iget-object v4, v2, Lchv;->b:Lchz;

    invoke-virtual {v4}, Lchz;->y()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v2}, Lchv;->l()V

    :cond_2
    iget-object v4, v2, Lchv;->b:Lchz;

    check-cast v4, Lbrq;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, v4, Lbrq;->d:Lbtv;

    iget p1, v4, Lbrq;->a:I

    or-int/lit16 p1, p1, 0x1000

    iput p1, v4, Lbrq;->a:I

    invoke-virtual {v2}, Lchv;->g()Lchz;

    move-result-object p1

    check-cast p1, Lbrq;

    invoke-static {p0}, Lamh;->a(Landroid/content/Context;)Lamh;

    move-result-object v2

    sget v4, Lbll;->d:I

    sget-object v4, Lbme;->a:Lbll;

    const/16 v5, 0x25

    invoke-virtual {v2, v5, p1, v4}, Lamh;->b(ILbrq;Ljava/util/List;)V

    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "https://play.google.com/store/apps/details?id=com.google.android.projection.gearhead"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v2, "com.android.vending"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x50000000

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/google/android/apps/auto/components/app/stubapp/StubSettingsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v2, Lcom/google/android/apps/auto/components/app/stubapp/StubSettingsActivity;->a:Lbnz;

    invoke-virtual {v2}, Lbmp;->d()Lbnj;

    move-result-object v2

    invoke-interface {v2, p1}, Lbnx;->g(Ljava/lang/Throwable;)Lbnj;

    move-result-object p1

    check-cast p1, Lbnx;

    const/16 v2, 0x24

    invoke-interface {p1, v0, v1, v2, v3}, Lbnx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lbnj;

    move-result-object p1

    check-cast p1, Lbnx;

    const-string v0, "Unable to launch Play Store"

    invoke-interface {p1, v0}, Lbnx;->n(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/apps/auto/components/app/stubapp/StubSettingsActivity;->finishAndRemoveTask()V

    return-void
.end method
