.class public final Lcom/motorola/gamemode/worker/UpdateAppListWorker;
.super Landroidx/work/CoroutineWorker;
.source "SourceFile"


# static fields
.field public static final r:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Lcom/motorola/gamemode/common/e;->a:Z

    invoke-static {}, Lcom/motorola/gamemode/common/e$a;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LCR_"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/gamemode/worker/UpdateAppListWorker;->r:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lbc/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lbc/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroidx/work/CoroutineWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    return-void
.end method


# virtual methods
.method public final e(Lsb/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsb/d<",
            "-",
            "Landroidx/work/d$a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/motorola/gamemode/worker/UpdateAppListWorker$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/motorola/gamemode/worker/UpdateAppListWorker$a;

    iget v1, v0, Lcom/motorola/gamemode/worker/UpdateAppListWorker$a;->p:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/motorola/gamemode/worker/UpdateAppListWorker$a;->p:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/motorola/gamemode/worker/UpdateAppListWorker$a;

    invoke-direct {v0, p0, p1}, Lcom/motorola/gamemode/worker/UpdateAppListWorker$a;-><init>(Lcom/motorola/gamemode/worker/UpdateAppListWorker;Lsb/d;)V

    :goto_0
    iget-object p1, v0, Lcom/motorola/gamemode/worker/UpdateAppListWorker$a;->n:Ljava/lang/Object;

    sget-object v1, Ltb/a;->k:Ltb/a;

    iget v2, v0, Lcom/motorola/gamemode/worker/UpdateAppListWorker$a;->p:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lpb/h;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lpb/h;->b(Ljava/lang/Object;)V

    sget-object p1, Lkc/n0;->b:Lqc/b;

    new-instance v2, Lcom/motorola/gamemode/worker/UpdateAppListWorker$b;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lcom/motorola/gamemode/worker/UpdateAppListWorker$b;-><init>(Lcom/motorola/gamemode/worker/UpdateAppListWorker;Lsb/d;)V

    iput v3, v0, Lcom/motorola/gamemode/worker/UpdateAppListWorker$a;->p:I

    invoke-static {p1, v2, v0}, Lj8/b;->l(Lsb/f;Lac/p;Lsb/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    const-string p0, "withContext(...)"

    invoke-static {p1, p0}, Lbc/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
