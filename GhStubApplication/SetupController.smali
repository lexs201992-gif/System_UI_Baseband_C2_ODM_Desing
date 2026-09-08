.class public Lcom/google/android/gms/carsetup/setup/SetupController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxe;


# static fields
.field public static final a:Lbny;


# instance fields
.field public final b:Laof;

.field public c:Z

.field public final d:I

.field e:I

.field final f:I

.field public final g:Lciz;

.field private final h:I

.field private final i:Lxe;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "CAR.SETUP.FRX"

    invoke-static {v0}, Lot;->d(Ljava/lang/String;)Lbnz;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/carsetup/setup/SetupController;->a:Lbny;

    return-void
.end method

.method public constructor <init>(Laof;ILciz;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/carsetup/setup/SetupController;->c:Z

    new-instance v0, Lcom/google/android/gms/carsetup/setup/SetupController$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/carsetup/setup/SetupController$1;-><init>(Lcom/google/android/gms/carsetup/setup/SetupController;)V

    iput-object v0, p0, Lcom/google/android/gms/carsetup/setup/SetupController;->i:Lxe;

    iput-object p1, p0, Lcom/google/android/gms/carsetup/setup/SetupController;->b:Laof;

    iput p2, p0, Lcom/google/android/gms/carsetup/setup/SetupController;->h:I

    iput-object p3, p0, Lcom/google/android/gms/carsetup/setup/SetupController;->g:Lciz;

    iput p4, p0, Lcom/google/android/gms/carsetup/setup/SetupController;->d:I

    iput p5, p0, Lcom/google/android/gms/carsetup/setup/SetupController;->f:I

    invoke-interface {p1}, Lxn;->l()Lxk;

    move-result-object p1

    invoke-virtual {p1, v0}, Lxk;->a(Lxm;)V

    return-void
.end method


# virtual methods
.method public final synthetic a()V
    .locals 0

    return-void
.end method

.method public final synthetic b()V
    .locals 0

    return-void
.end method

.method public final synthetic c()V
    .locals 0

    return-void
.end method

.method public final synthetic d()V
    .locals 0

    return-void
.end method

.method public final synthetic e()V
    .locals 0

    return-void
.end method

.method public final synthetic f()V
    .locals 0

    return-void
.end method

.method public final g()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/carsetup/setup/SetupController;->c:Z

    iget-object v0, p0, Lcom/google/android/gms/carsetup/setup/SetupController;->b:Laof;

    invoke-interface {v0}, Laof;->r()V

    iget-object v0, p0, Lcom/google/android/gms/carsetup/setup/SetupController;->b:Laof;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Laof;->x(Z)V

    return-void
.end method

.method public final h(I)V
    .locals 7

    sget-object v0, Lcom/google/android/gms/carsetup/setup/SetupController;->a:Lbny;

    invoke-virtual {v0}, Lbmp;->c()Lbnj;

    move-result-object v1

    const/16 v2, 0x108

    const-string v3, "com/google/android/gms/carsetup/setup/SetupController"

    const-string v4, "moveTo"

    const-string v5, "SetupController.java"

    invoke-interface {v1, v3, v4, v2, v5}, Lbnj;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lbnj;

    move-result-object v1

    packed-switch p1, :pswitch_data_0

    const-string v2, "null"

    goto :goto_0

    :pswitch_0
    const-string v2, "UNPLUG_REPLUG"

    goto :goto_0

    :pswitch_1
    const-string v2, "EXIT_AND_CONTINUE"

    goto :goto_0

    :pswitch_2
    const-string v2, "EXIT_FAILURE"

    goto :goto_0

    :pswitch_3
    const-string v2, "EXIT"

    goto :goto_0

    :pswitch_4
    const-string v2, "NETWORK_ERROR"

    goto :goto_0

    :pswitch_5
    const-string v2, "RESET_USB"

    goto :goto_0

    :pswitch_6
    const-string v2, "DOWNLOAD_GH"

    goto :goto_0

    :pswitch_7
    const-string v2, "INTRO_RETRY"

    goto :goto_0

    :pswitch_8
    const-string v2, "INTRO"

    goto :goto_0

    :pswitch_9
    const-string v2, "INTRO_LOCKED"

    goto :goto_0

    :pswitch_a
    const-string v2, "DEVICE_INCOMPATIBLE"

    goto :goto_0

    :pswitch_b
    const-string v2, "ENTRY"

    :goto_0
    if-eqz p1, :cond_4

    const-string v6, "moveTo %s"

    invoke-interface {v1, v6, v2}, Lbnj;->p(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v1, p0, Lcom/google/android/gms/carsetup/setup/SetupController;->c:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lbmp;->e()Lbnj;

    move-result-object p1

    const/16 v0, 0x10a

    invoke-interface {p1, v3, v4, v0, v5}, Lbnj;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lbnj;

    move-result-object p1

    const-string v0, "moveTo exit early, no state changes should happen after an exit condition"

    invoke-interface {p1, v0}, Lbnj;->n(Ljava/lang/String;)V

    return-void

    :cond_0
    iput p1, p0, Lcom/google/android/gms/carsetup/setup/SetupController;->e:I

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_1

    :pswitch_c
    iput-boolean v1, p0, Lcom/google/android/gms/carsetup/setup/SetupController;->c:Z

    iget-object p1, p0, Lcom/google/android/gms/carsetup/setup/SetupController;->b:Laof;

    invoke-interface {p1}, Laof;->r()V

    iget-object p1, p0, Lcom/google/android/gms/carsetup/setup/SetupController;->b:Laof;

    invoke-interface {p1, v1}, Laof;->x(Z)V

    return-void

    :pswitch_d
    iget-object p1, p0, Lcom/google/android/gms/carsetup/setup/SetupController;->b:Laof;

    new-instance v0, Laog;

    invoke-direct {v0}, Laog;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1}, Lp;->x(Landroid/os/Bundle;)V

    invoke-interface {p1, v0}, Laof;->w(Lp;)V

    return-void

    :pswitch_e
    invoke-virtual {p0}, Lcom/google/android/gms/carsetup/setup/SetupController;->g()V

    return-void

    :pswitch_f
    iget-object p1, p0, Lcom/google/android/gms/carsetup/setup/SetupController;->g:Lciz;

    sget-object v0, Lbtu;->I:Lbtu;

    sget-object v1, Lbtt;->bO:Lbtt;

    invoke-virtual {p1, v0, v1}, Lciz;->F(Lbtu;Lbtt;)V

    iget-object p1, p0, Lcom/google/android/gms/carsetup/setup/SetupController;->b:Laof;

    new-instance v0, Lant;

    invoke-direct {v0}, Lant;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "com.google.android.gms.carsetup.setup.ErrorFragment.ERROR_TITLE"

    const v3, 0x7f12004d

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "com.google.android.gms.carsetup.setup.ErrorFragment.ERROR_MESSAGE"

    const v3, 0x7f12004c

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lp;->x(Landroid/os/Bundle;)V

    invoke-interface {p1, v0}, Laof;->w(Lp;)V

    return-void

    :pswitch_10
    iget-object p1, p0, Lcom/google/android/gms/carsetup/setup/SetupController;->b:Laof;

    new-instance v0, Laoc;

    invoke-direct {v0}, Laoc;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1}, Lp;->x(Landroid/os/Bundle;)V

    invoke-interface {p1, v0}, Laof;->w(Lp;)V

    return-void

    :pswitch_11
    iget-object p1, p0, Lcom/google/android/gms/carsetup/setup/SetupController;->b:Laof;

    invoke-interface {p1}, Laof;->z()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/carsetup/setup/SetupController;->b:Laof;

    new-instance v0, Lans;

    invoke-direct {v0}, Lans;-><init>()V

    invoke-interface {p1, v0}, Laof;->w(Lp;)V

    return-void

    :cond_1
    nop

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/google/android/gms/carsetup/setup/SetupController;->h(I)V

    return-void

    :pswitch_12
    iget-object p1, p0, Lcom/google/android/gms/carsetup/setup/SetupController;->b:Laof;

    invoke-static {v0, v1}, Laoa;->R(ZZ)Laoa;

    move-result-object v0

    invoke-interface {p1, v0}, Laof;->w(Lp;)V

    return-void

    :pswitch_13
    iget-object p1, p0, Lcom/google/android/gms/carsetup/setup/SetupController;->b:Laof;

    invoke-interface {p1}, Laof;->r()V

    iget-object p1, p0, Lcom/google/android/gms/carsetup/setup/SetupController;->b:Laof;

    invoke-static {v0, v0}, Laoa;->R(ZZ)Laoa;

    move-result-object v0

    invoke-interface {p1, v0}, Laof;->w(Lp;)V

    return-void

    :pswitch_14
    iget-object p1, p0, Lcom/google/android/gms/carsetup/setup/SetupController;->b:Laof;

    invoke-interface {p1}, Laof;->s()V

    iget-object p1, p0, Lcom/google/android/gms/carsetup/setup/SetupController;->b:Laof;

    invoke-static {v1, v0}, Laoa;->R(ZZ)Laoa;

    move-result-object v0

    invoke-interface {p1, v0}, Laof;->w(Lp;)V

    return-void

    :pswitch_15
    iget-object p1, p0, Lcom/google/android/gms/carsetup/setup/SetupController;->b:Laof;

    new-instance v0, Lanu;

    invoke-direct {v0}, Lanu;-><init>()V

    invoke-interface {p1, v0}, Laof;->w(Lp;)V

    return-void

    :pswitch_16
    iget-object p1, p0, Lcom/google/android/gms/carsetup/setup/SetupController;->g:Lciz;

    sget-object v0, Lbtu;->dV:Lbtu;

    iget v2, p0, Lcom/google/android/gms/carsetup/setup/SetupController;->d:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    sget-object v2, Lbtt;->cb:Lbtt;

    goto :goto_1

    :cond_2
    sget-object v2, Lbtt;->ca:Lbtt;

    :goto_1
    invoke-virtual {p1, v0, v2}, Lciz;->F(Lbtu;Lbtt;)V

    iget p1, p0, Lcom/google/android/gms/carsetup/setup/SetupController;->h:I

    packed-switch p1, :pswitch_data_2

    :pswitch_17
    const/16 v3, 0xa

    goto :goto_2

    :pswitch_18
    goto :goto_2

    :pswitch_19
    iget-object p1, p0, Lcom/google/android/gms/carsetup/setup/SetupController;->b:Laof;

    invoke-interface {p1}, Laof;->y()Z

    move-result p1

    if-eq v1, p1, :cond_3

    const/4 v3, 0x4

    goto :goto_2

    :cond_3
    const/4 v3, 0x3

    :goto_2
    invoke-virtual {p0, v3}, Lcom/google/android/gms/carsetup/setup/SetupController;->h(I)V

    return-void

    :cond_4
    nop

    const/4 p1, 0x0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_c
        :pswitch_d
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_19
        :pswitch_19
        :pswitch_17
        :pswitch_18
        :pswitch_18
        :pswitch_18
    .end packed-switch
.end method
