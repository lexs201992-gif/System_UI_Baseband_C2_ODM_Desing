.class public Lcom/google/android/apps/auto/components/app/fzero/LauncherIconStateVerificationService;
.super Landroid/app/job/JobService;
.source "SourceFile"


# static fields
.field public static final a:Lbnz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "GH.IconVerifyService"

    invoke-static {v0}, Lbnz;->k(Ljava/lang/String;)Lbnz;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/auto/components/app/fzero/LauncherIconStateVerificationService;->a:Lbnz;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    nop

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lali;ZZJJ)V
    .locals 8

    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/google/android/apps/auto/components/app/fzero/LauncherIconStateVerificationService;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Landroid/os/PersistableBundle;

    invoke-direct {v1}, Landroid/os/PersistableBundle;-><init>()V

    new-instance v2, Landroid/os/PersistableBundle;

    invoke-direct {v2}, Landroid/os/PersistableBundle;-><init>()V

    invoke-virtual {p1}, Lali;->a()Lalh;

    move-result-object v3

    invoke-virtual {v3}, Lalh;->ordinal()I

    move-result v3

    const-string v4, "GH.LoggingHelper.SourceEvent"

    invoke-virtual {v2, v4, v3}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    iget v3, p1, Lali;->c:I

    const-string v4, "GH.LoggingHelper.NumEvents"

    invoke-virtual {v2, v4, v3}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    iget-object v3, p1, Lali;->d:[Lbsx;

    const/16 v4, 0xa

    new-array v5, v4, [I

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_0

    aget-object v7, v3, v6

    iget v7, v7, Lbsx;->fE:I

    aput v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    nop

    const-string v3, "GH.LoggingHelper.Actions"

    invoke-virtual {v2, v3, v5}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    iget-object v3, p1, Lali;->e:[I

    const-string v4, "GH.LoggingHelper.IconStates"

    invoke-virtual {v2, v4, v3}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    const-string v3, "GH.IconVerifyService.LoggingHelper"

    invoke-virtual {v1, v3, v2}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    const-string v2, "GH.IconVerifyService.LogIconStateVerification"

    invoke-virtual {v1, v2, p2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    const-string v2, "GH.IconVerifyService.Retry"

    invoke-virtual {v1, v2, p2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Landroid/app/job/JobInfo$Builder;

    invoke-virtual {p1}, Lali;->a()Lalh;

    move-result-object p1

    invoke-virtual {p1}, Lalh;->ordinal()I

    move-result p1

    const v2, 0xdff4f5e

    add-int/2addr p1, v2

    if-eqz p3, :cond_1

    add-int/lit8 p1, p1, 0x64

    :cond_1
    invoke-direct {p2, p1, v0}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    invoke-virtual {p2, p4, p5}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    invoke-virtual {p1, p6, p7}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    const-string p2, "jobscheduler"

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    sget-object p2, Lcom/google/android/apps/auto/components/app/fzero/LauncherIconStateVerificationService;->a:Lbnz;

    invoke-virtual {p2}, Lbny;->i()Lbnj;

    move-result-object p2

    const-string p3, "com/google/android/apps/auto/components/app/fzero/LauncherIconStateVerificationService"

    const-string p4, "scheduleJob"

    const/16 p5, 0xdc

    const-string p6, "LauncherIconStateVerificationService.java"

    invoke-interface {p2, p3, p4, p5, p6}, Lbnx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lbnj;

    move-result-object p2

    check-cast p2, Lbnx;

    const-string p3, "Scheduling job"

    invoke-interface {p2, p3}, Lbnx;->n(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    return-void
.end method


# virtual methods
.method public final onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "GH.IconVerifyService.Retry"

    const-string v3, "GH.IconVerifyService.LogIconStateVerification"

    const-string v4, "GH.IconVerifyService.LoggingHelper"

    const-string v5, "onStartJob"

    const-string v6, "com/google/android/apps/auto/components/app/fzero/LauncherIconStateVerificationService"

    const-string v7, "LauncherIconStateVerificationService.java"

    const/4 v8, 0x0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    invoke-static {v10}, Let;->b(Z)V

    invoke-virtual {v9, v3}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    invoke-static {v10}, Let;->b(Z)V

    invoke-virtual {v9, v0}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    invoke-static {v10}, Let;->b(Z)V

    invoke-virtual {v9, v4}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v4

    const-string v10, "No serialized LoggingHelper!"

    invoke-static {v4, v10}, Let;->j(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v10, Lali;->a:Lbnz;

    const-string v10, "GH.LoggingHelper.SourceEvent"

    const/4 v11, -0x1

    invoke-virtual {v4, v10, v11}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    const/4 v12, 0x1

    if-ltz v10, :cond_0

    invoke-static {}, Lalh;->values()[Lalh;

    move-result-object v13

    array-length v13, v13

    if-ge v10, v13, :cond_0

    const/4 v13, 0x1

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    :goto_0
    invoke-static {v13}, Let;->b(Z)V

    invoke-static {}, Lalh;->values()[Lalh;

    move-result-object v13

    aget-object v10, v13, v10

    invoke-static {v10}, Lali;->f(Lalh;)Lali;

    move-result-object v10

    const-string v13, "GH.LoggingHelper.NumEvents"

    invoke-virtual {v4, v13, v11}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    const/16 v13, 0xa

    if-ltz v11, :cond_1

    if-gt v11, v13, :cond_1

    const/4 v14, 0x1

    goto :goto_1

    :cond_1
    const/4 v14, 0x0

    :goto_1
    invoke-static {v14}, Let;->b(Z)V

    const-string v14, "GH.LoggingHelper.Actions"

    invoke-virtual {v4, v14}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v14

    invoke-static {v14}, Let;->i(Ljava/lang/Object;)V

    array-length v15, v14

    if-ne v15, v13, :cond_2

    const/4 v15, 0x1

    goto :goto_2

    :cond_2
    const/4 v15, 0x0

    :goto_2
    invoke-static {v15}, Let;->b(Z)V

    const-string v15, "GH.LoggingHelper.IconStates"

    invoke-virtual {v4, v15}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    invoke-static {v4}, Let;->i(Ljava/lang/Object;)V

    array-length v15, v4

    if-ne v15, v13, :cond_3

    const/4 v13, 0x1

    goto :goto_3

    :cond_3
    const/4 v13, 0x0

    :goto_3
    invoke-static {v13}, Let;->b(Z)V

    iput v11, v10, Lali;->c:I

    const/4 v13, 0x0

    :goto_4
    if-ge v13, v11, :cond_4

    iget-object v15, v10, Lali;->d:[Lbsx;

    aget v16, v14, v13

    sget-object v17, Lbsx;->a:Lbsx;

    sparse-switch v16, :sswitch_data_0

    const/16 v16, 0x0

    goto/16 :goto_5

    :sswitch_0
    sget-object v16, Lbsx;->fB:Lbsx;

    goto/16 :goto_5

    :sswitch_1
    sget-object v16, Lbsx;->fA:Lbsx;

    goto/16 :goto_5

    :sswitch_2
    sget-object v16, Lbsx;->fz:Lbsx;

    goto/16 :goto_5

    :sswitch_3
    sget-object v16, Lbsx;->fy:Lbsx;

    goto/16 :goto_5

    :sswitch_4
    sget-object v16, Lbsx;->fx:Lbsx;

    goto/16 :goto_5

    :sswitch_5
    sget-object v16, Lbsx;->fw:Lbsx;

    goto/16 :goto_5

    :sswitch_6
    sget-object v16, Lbsx;->fv:Lbsx;

    goto/16 :goto_5

    :sswitch_7
    sget-object v16, Lbsx;->fu:Lbsx;

    goto/16 :goto_5

    :sswitch_8
    sget-object v16, Lbsx;->ft:Lbsx;

    goto/16 :goto_5

    :sswitch_9
    sget-object v16, Lbsx;->fs:Lbsx;

    goto/16 :goto_5

    :sswitch_a
    sget-object v16, Lbsx;->fr:Lbsx;

    goto/16 :goto_5

    :sswitch_b
    sget-object v16, Lbsx;->fq:Lbsx;

    goto/16 :goto_5

    :sswitch_c
    sget-object v16, Lbsx;->fp:Lbsx;

    goto/16 :goto_5

    :sswitch_d
    sget-object v16, Lbsx;->fo:Lbsx;

    goto/16 :goto_5

    :sswitch_e
    sget-object v16, Lbsx;->fn:Lbsx;

    goto/16 :goto_5

    :sswitch_f
    sget-object v16, Lbsx;->fm:Lbsx;

    goto/16 :goto_5

    :sswitch_10
    sget-object v16, Lbsx;->fl:Lbsx;

    goto/16 :goto_5

    :sswitch_11
    sget-object v16, Lbsx;->fk:Lbsx;

    goto/16 :goto_5

    :sswitch_12
    sget-object v16, Lbsx;->fj:Lbsx;

    goto/16 :goto_5

    :sswitch_13
    sget-object v16, Lbsx;->fi:Lbsx;

    goto/16 :goto_5

    :sswitch_14
    sget-object v16, Lbsx;->fh:Lbsx;

    goto/16 :goto_5

    :sswitch_15
    sget-object v16, Lbsx;->fg:Lbsx;

    goto/16 :goto_5

    :sswitch_16
    sget-object v16, Lbsx;->ff:Lbsx;

    goto/16 :goto_5

    :sswitch_17
    sget-object v16, Lbsx;->fe:Lbsx;

    goto/16 :goto_5

    :sswitch_18
    sget-object v16, Lbsx;->fd:Lbsx;

    goto/16 :goto_5

    :sswitch_19
    sget-object v16, Lbsx;->fc:Lbsx;

    goto/16 :goto_5

    :sswitch_1a
    sget-object v16, Lbsx;->fb:Lbsx;

    goto/16 :goto_5

    :sswitch_1b
    sget-object v16, Lbsx;->fa:Lbsx;

    goto/16 :goto_5

    :sswitch_1c
    sget-object v16, Lbsx;->eZ:Lbsx;

    goto/16 :goto_5

    :sswitch_1d
    sget-object v16, Lbsx;->eY:Lbsx;

    goto/16 :goto_5

    :sswitch_1e
    sget-object v16, Lbsx;->eX:Lbsx;

    goto/16 :goto_5

    :sswitch_1f
    sget-object v16, Lbsx;->eW:Lbsx;

    goto/16 :goto_5

    :sswitch_20
    sget-object v16, Lbsx;->eV:Lbsx;

    goto/16 :goto_5

    :sswitch_21
    sget-object v16, Lbsx;->eU:Lbsx;

    goto/16 :goto_5

    :sswitch_22
    sget-object v16, Lbsx;->eT:Lbsx;

    goto/16 :goto_5

    :sswitch_23
    sget-object v16, Lbsx;->eS:Lbsx;

    goto/16 :goto_5

    :sswitch_24
    sget-object v16, Lbsx;->eR:Lbsx;

    goto/16 :goto_5

    :sswitch_25
    sget-object v16, Lbsx;->eQ:Lbsx;

    goto/16 :goto_5

    :sswitch_26
    sget-object v16, Lbsx;->eP:Lbsx;

    goto/16 :goto_5

    :sswitch_27
    sget-object v16, Lbsx;->eO:Lbsx;

    goto/16 :goto_5

    :sswitch_28
    sget-object v16, Lbsx;->eN:Lbsx;

    goto/16 :goto_5

    :sswitch_29
    sget-object v16, Lbsx;->eM:Lbsx;

    goto/16 :goto_5

    :sswitch_2a
    sget-object v16, Lbsx;->eL:Lbsx;

    goto/16 :goto_5

    :sswitch_2b
    sget-object v16, Lbsx;->eK:Lbsx;

    goto/16 :goto_5

    :sswitch_2c
    sget-object v16, Lbsx;->fD:Lbsx;

    goto/16 :goto_5

    :sswitch_2d
    sget-object v16, Lbsx;->fC:Lbsx;

    goto/16 :goto_5

    :sswitch_2e
    sget-object v16, Lbsx;->eJ:Lbsx;

    goto/16 :goto_5

    :sswitch_2f
    sget-object v16, Lbsx;->eI:Lbsx;

    goto/16 :goto_5

    :sswitch_30
    sget-object v16, Lbsx;->eH:Lbsx;

    goto/16 :goto_5

    :sswitch_31
    sget-object v16, Lbsx;->eG:Lbsx;

    goto/16 :goto_5

    :sswitch_32
    sget-object v16, Lbsx;->eF:Lbsx;

    goto/16 :goto_5

    :sswitch_33
    sget-object v16, Lbsx;->eE:Lbsx;

    goto/16 :goto_5

    :sswitch_34
    sget-object v16, Lbsx;->eD:Lbsx;

    goto/16 :goto_5

    :sswitch_35
    sget-object v16, Lbsx;->eC:Lbsx;

    goto/16 :goto_5

    :sswitch_36
    sget-object v16, Lbsx;->eB:Lbsx;

    goto/16 :goto_5

    :sswitch_37
    sget-object v16, Lbsx;->eA:Lbsx;

    goto/16 :goto_5

    :sswitch_38
    sget-object v16, Lbsx;->ez:Lbsx;

    goto/16 :goto_5

    :sswitch_39
    sget-object v16, Lbsx;->ey:Lbsx;

    goto/16 :goto_5

    :sswitch_3a
    sget-object v16, Lbsx;->ex:Lbsx;

    goto/16 :goto_5

    :sswitch_3b
    sget-object v16, Lbsx;->ew:Lbsx;

    goto/16 :goto_5

    :sswitch_3c
    sget-object v16, Lbsx;->ev:Lbsx;

    goto/16 :goto_5

    :sswitch_3d
    sget-object v16, Lbsx;->eu:Lbsx;

    goto/16 :goto_5

    :sswitch_3e
    sget-object v16, Lbsx;->et:Lbsx;

    goto/16 :goto_5

    :sswitch_3f
    sget-object v16, Lbsx;->es:Lbsx;

    goto/16 :goto_5

    :sswitch_40
    sget-object v16, Lbsx;->er:Lbsx;

    goto/16 :goto_5

    :sswitch_41
    sget-object v16, Lbsx;->eq:Lbsx;

    goto/16 :goto_5

    :sswitch_42
    sget-object v16, Lbsx;->ep:Lbsx;

    goto/16 :goto_5

    :sswitch_43
    sget-object v16, Lbsx;->eo:Lbsx;

    goto/16 :goto_5

    :sswitch_44
    sget-object v16, Lbsx;->en:Lbsx;

    goto/16 :goto_5

    :sswitch_45
    sget-object v16, Lbsx;->em:Lbsx;

    goto/16 :goto_5

    :sswitch_46
    sget-object v16, Lbsx;->el:Lbsx;

    goto/16 :goto_5

    :sswitch_47
    sget-object v16, Lbsx;->ek:Lbsx;

    goto/16 :goto_5

    :sswitch_48
    sget-object v16, Lbsx;->ej:Lbsx;

    goto/16 :goto_5

    :sswitch_49
    sget-object v16, Lbsx;->ei:Lbsx;

    goto/16 :goto_5

    :sswitch_4a
    sget-object v16, Lbsx;->eh:Lbsx;

    goto/16 :goto_5

    :sswitch_4b
    sget-object v16, Lbsx;->eg:Lbsx;

    goto/16 :goto_5

    :sswitch_4c
    sget-object v16, Lbsx;->ef:Lbsx;

    goto/16 :goto_5

    :sswitch_4d
    sget-object v16, Lbsx;->ee:Lbsx;

    goto/16 :goto_5

    :sswitch_4e
    sget-object v16, Lbsx;->ed:Lbsx;

    goto/16 :goto_5

    :sswitch_4f
    sget-object v16, Lbsx;->ec:Lbsx;

    goto/16 :goto_5

    :sswitch_50
    sget-object v16, Lbsx;->eb:Lbsx;

    goto/16 :goto_5

    :sswitch_51
    sget-object v16, Lbsx;->ea:Lbsx;

    goto/16 :goto_5

    :sswitch_52
    sget-object v16, Lbsx;->dZ:Lbsx;

    goto/16 :goto_5

    :sswitch_53
    sget-object v16, Lbsx;->dY:Lbsx;

    goto/16 :goto_5

    :sswitch_54
    sget-object v16, Lbsx;->dX:Lbsx;

    goto/16 :goto_5

    :sswitch_55
    sget-object v16, Lbsx;->dW:Lbsx;

    goto/16 :goto_5

    :sswitch_56
    sget-object v16, Lbsx;->dV:Lbsx;

    goto/16 :goto_5

    :sswitch_57
    sget-object v16, Lbsx;->dU:Lbsx;

    goto/16 :goto_5

    :sswitch_58
    sget-object v16, Lbsx;->dT:Lbsx;

    goto/16 :goto_5

    :sswitch_59
    sget-object v16, Lbsx;->dS:Lbsx;

    goto/16 :goto_5

    :sswitch_5a
    sget-object v16, Lbsx;->dR:Lbsx;

    goto/16 :goto_5

    :sswitch_5b
    sget-object v16, Lbsx;->dQ:Lbsx;

    goto/16 :goto_5

    :sswitch_5c
    sget-object v16, Lbsx;->dP:Lbsx;

    goto/16 :goto_5

    :sswitch_5d
    sget-object v16, Lbsx;->dO:Lbsx;

    goto/16 :goto_5

    :sswitch_5e
    sget-object v16, Lbsx;->dN:Lbsx;

    goto/16 :goto_5

    :sswitch_5f
    sget-object v16, Lbsx;->dM:Lbsx;

    goto/16 :goto_5

    :sswitch_60
    sget-object v16, Lbsx;->dL:Lbsx;

    goto/16 :goto_5

    :sswitch_61
    sget-object v16, Lbsx;->dK:Lbsx;

    goto/16 :goto_5

    :sswitch_62
    sget-object v16, Lbsx;->dJ:Lbsx;

    goto/16 :goto_5

    :sswitch_63
    sget-object v16, Lbsx;->dI:Lbsx;

    goto/16 :goto_5

    :sswitch_64
    sget-object v16, Lbsx;->dH:Lbsx;

    goto/16 :goto_5

    :sswitch_65
    sget-object v16, Lbsx;->dG:Lbsx;

    goto/16 :goto_5

    :sswitch_66
    sget-object v16, Lbsx;->dF:Lbsx;

    goto/16 :goto_5

    :sswitch_67
    sget-object v16, Lbsx;->dE:Lbsx;

    goto/16 :goto_5

    :sswitch_68
    sget-object v16, Lbsx;->dD:Lbsx;

    goto/16 :goto_5

    :sswitch_69
    sget-object v16, Lbsx;->dC:Lbsx;

    goto/16 :goto_5

    :sswitch_6a
    sget-object v16, Lbsx;->dB:Lbsx;

    goto/16 :goto_5

    :sswitch_6b
    sget-object v16, Lbsx;->dA:Lbsx;

    goto/16 :goto_5

    :sswitch_6c
    sget-object v16, Lbsx;->dz:Lbsx;

    goto/16 :goto_5

    :sswitch_6d
    sget-object v16, Lbsx;->dy:Lbsx;

    goto/16 :goto_5

    :sswitch_6e
    sget-object v16, Lbsx;->dx:Lbsx;

    goto/16 :goto_5

    :sswitch_6f
    sget-object v16, Lbsx;->dw:Lbsx;

    goto/16 :goto_5

    :sswitch_70
    sget-object v16, Lbsx;->dv:Lbsx;

    goto/16 :goto_5

    :sswitch_71
    sget-object v16, Lbsx;->du:Lbsx;

    goto/16 :goto_5

    :sswitch_72
    sget-object v16, Lbsx;->dt:Lbsx;

    goto/16 :goto_5

    :sswitch_73
    sget-object v16, Lbsx;->ds:Lbsx;

    goto/16 :goto_5

    :sswitch_74
    sget-object v16, Lbsx;->dr:Lbsx;

    goto/16 :goto_5

    :sswitch_75
    sget-object v16, Lbsx;->dq:Lbsx;

    goto/16 :goto_5

    :sswitch_76
    sget-object v16, Lbsx;->dp:Lbsx;

    goto/16 :goto_5

    :sswitch_77
    sget-object v16, Lbsx;->do:Lbsx;

    goto/16 :goto_5

    :sswitch_78
    sget-object v16, Lbsx;->dn:Lbsx;

    goto/16 :goto_5

    :sswitch_79
    sget-object v16, Lbsx;->dm:Lbsx;

    goto/16 :goto_5

    :sswitch_7a
    sget-object v16, Lbsx;->dl:Lbsx;

    goto/16 :goto_5

    :sswitch_7b
    sget-object v16, Lbsx;->dk:Lbsx;

    goto/16 :goto_5

    :sswitch_7c
    sget-object v16, Lbsx;->dj:Lbsx;

    goto/16 :goto_5

    :sswitch_7d
    sget-object v16, Lbsx;->di:Lbsx;

    goto/16 :goto_5

    :sswitch_7e
    sget-object v16, Lbsx;->dh:Lbsx;

    goto/16 :goto_5

    :sswitch_7f
    sget-object v16, Lbsx;->dg:Lbsx;

    goto/16 :goto_5

    :sswitch_80
    sget-object v16, Lbsx;->df:Lbsx;

    goto/16 :goto_5

    :sswitch_81
    sget-object v16, Lbsx;->de:Lbsx;

    goto/16 :goto_5

    :sswitch_82
    sget-object v16, Lbsx;->dd:Lbsx;

    goto/16 :goto_5

    :sswitch_83
    sget-object v16, Lbsx;->dc:Lbsx;

    goto/16 :goto_5

    :sswitch_84
    sget-object v16, Lbsx;->db:Lbsx;

    goto/16 :goto_5

    :sswitch_85
    sget-object v16, Lbsx;->da:Lbsx;

    goto/16 :goto_5

    :sswitch_86
    sget-object v16, Lbsx;->cZ:Lbsx;

    goto/16 :goto_5

    :sswitch_87
    sget-object v16, Lbsx;->cY:Lbsx;

    goto/16 :goto_5

    :sswitch_88
    sget-object v16, Lbsx;->cX:Lbsx;

    goto/16 :goto_5

    :sswitch_89
    sget-object v16, Lbsx;->cW:Lbsx;

    goto/16 :goto_5

    :sswitch_8a
    sget-object v16, Lbsx;->cV:Lbsx;

    goto/16 :goto_5

    :sswitch_8b
    sget-object v16, Lbsx;->cU:Lbsx;

    goto/16 :goto_5

    :sswitch_8c
    sget-object v16, Lbsx;->cT:Lbsx;

    goto/16 :goto_5

    :sswitch_8d
    sget-object v16, Lbsx;->cS:Lbsx;

    goto/16 :goto_5

    :sswitch_8e
    sget-object v16, Lbsx;->cR:Lbsx;

    goto/16 :goto_5

    :sswitch_8f
    sget-object v16, Lbsx;->cQ:Lbsx;

    goto/16 :goto_5

    :sswitch_90
    sget-object v16, Lbsx;->cP:Lbsx;

    goto/16 :goto_5

    :sswitch_91
    sget-object v16, Lbsx;->cO:Lbsx;

    goto/16 :goto_5

    :sswitch_92
    sget-object v16, Lbsx;->cN:Lbsx;

    goto/16 :goto_5

    :sswitch_93
    sget-object v16, Lbsx;->cM:Lbsx;

    goto/16 :goto_5

    :sswitch_94
    sget-object v16, Lbsx;->cL:Lbsx;

    goto/16 :goto_5

    :sswitch_95
    sget-object v16, Lbsx;->cK:Lbsx;

    goto/16 :goto_5

    :sswitch_96
    sget-object v16, Lbsx;->cJ:Lbsx;

    goto/16 :goto_5

    :sswitch_97
    sget-object v16, Lbsx;->cI:Lbsx;

    goto/16 :goto_5

    :sswitch_98
    sget-object v16, Lbsx;->cH:Lbsx;

    goto/16 :goto_5

    :sswitch_99
    sget-object v16, Lbsx;->cG:Lbsx;

    goto/16 :goto_5

    :sswitch_9a
    sget-object v16, Lbsx;->cF:Lbsx;

    goto/16 :goto_5

    :sswitch_9b
    sget-object v16, Lbsx;->cE:Lbsx;

    goto/16 :goto_5

    :sswitch_9c
    sget-object v16, Lbsx;->cD:Lbsx;

    goto/16 :goto_5

    :sswitch_9d
    sget-object v16, Lbsx;->cC:Lbsx;

    goto/16 :goto_5

    :sswitch_9e
    sget-object v16, Lbsx;->cB:Lbsx;

    goto/16 :goto_5

    :sswitch_9f
    sget-object v16, Lbsx;->cA:Lbsx;

    goto/16 :goto_5

    :sswitch_a0
    sget-object v16, Lbsx;->cz:Lbsx;

    goto/16 :goto_5

    :sswitch_a1
    sget-object v16, Lbsx;->cy:Lbsx;

    goto/16 :goto_5

    :sswitch_a2
    sget-object v16, Lbsx;->cx:Lbsx;

    goto/16 :goto_5

    :sswitch_a3
    sget-object v16, Lbsx;->cw:Lbsx;

    goto/16 :goto_5

    :sswitch_a4
    sget-object v16, Lbsx;->cv:Lbsx;

    goto/16 :goto_5

    :sswitch_a5
    sget-object v16, Lbsx;->cu:Lbsx;

    goto/16 :goto_5

    :sswitch_a6
    sget-object v16, Lbsx;->ct:Lbsx;

    goto/16 :goto_5

    :sswitch_a7
    sget-object v16, Lbsx;->cs:Lbsx;

    goto/16 :goto_5

    :sswitch_a8
    sget-object v16, Lbsx;->cr:Lbsx;

    goto/16 :goto_5

    :sswitch_a9
    sget-object v16, Lbsx;->cq:Lbsx;

    goto/16 :goto_5

    :sswitch_aa
    sget-object v16, Lbsx;->cp:Lbsx;

    goto/16 :goto_5

    :sswitch_ab
    sget-object v16, Lbsx;->co:Lbsx;

    goto/16 :goto_5

    :sswitch_ac
    sget-object v16, Lbsx;->cn:Lbsx;

    goto/16 :goto_5

    :sswitch_ad
    sget-object v16, Lbsx;->cm:Lbsx;

    goto/16 :goto_5

    :sswitch_ae
    sget-object v16, Lbsx;->cl:Lbsx;

    goto/16 :goto_5

    :sswitch_af
    sget-object v16, Lbsx;->ck:Lbsx;

    goto/16 :goto_5

    :sswitch_b0
    sget-object v16, Lbsx;->cj:Lbsx;

    goto/16 :goto_5

    :sswitch_b1
    sget-object v16, Lbsx;->ci:Lbsx;

    goto/16 :goto_5

    :sswitch_b2
    sget-object v16, Lbsx;->ch:Lbsx;

    goto/16 :goto_5

    :sswitch_b3
    sget-object v16, Lbsx;->cg:Lbsx;

    goto/16 :goto_5

    :sswitch_b4
    sget-object v16, Lbsx;->cf:Lbsx;

    goto/16 :goto_5

    :sswitch_b5
    sget-object v16, Lbsx;->ce:Lbsx;

    goto/16 :goto_5

    :sswitch_b6
    sget-object v16, Lbsx;->cd:Lbsx;

    goto/16 :goto_5

    :sswitch_b7
    sget-object v16, Lbsx;->cc:Lbsx;

    goto/16 :goto_5

    :sswitch_b8
    sget-object v16, Lbsx;->cb:Lbsx;

    goto/16 :goto_5

    :sswitch_b9
    sget-object v16, Lbsx;->ca:Lbsx;

    goto/16 :goto_5

    :sswitch_ba
    sget-object v16, Lbsx;->bZ:Lbsx;

    goto/16 :goto_5

    :sswitch_bb
    sget-object v16, Lbsx;->bY:Lbsx;

    goto/16 :goto_5

    :sswitch_bc
    sget-object v16, Lbsx;->bX:Lbsx;

    goto/16 :goto_5

    :sswitch_bd
    sget-object v16, Lbsx;->bW:Lbsx;

    goto/16 :goto_5

    :sswitch_be
    sget-object v16, Lbsx;->bV:Lbsx;

    goto/16 :goto_5

    :sswitch_bf
    sget-object v16, Lbsx;->bU:Lbsx;

    goto/16 :goto_5

    :sswitch_c0
    sget-object v16, Lbsx;->bT:Lbsx;

    goto/16 :goto_5

    :sswitch_c1
    sget-object v16, Lbsx;->bS:Lbsx;

    goto/16 :goto_5

    :sswitch_c2
    sget-object v16, Lbsx;->bR:Lbsx;

    goto/16 :goto_5

    :sswitch_c3
    sget-object v16, Lbsx;->bQ:Lbsx;

    goto/16 :goto_5

    :sswitch_c4
    sget-object v16, Lbsx;->bP:Lbsx;

    goto/16 :goto_5

    :sswitch_c5
    sget-object v16, Lbsx;->bO:Lbsx;

    goto/16 :goto_5

    :sswitch_c6
    sget-object v16, Lbsx;->bN:Lbsx;

    goto/16 :goto_5

    :sswitch_c7
    sget-object v16, Lbsx;->bM:Lbsx;

    goto/16 :goto_5

    :sswitch_c8
    sget-object v16, Lbsx;->bL:Lbsx;

    goto/16 :goto_5

    :sswitch_c9
    sget-object v16, Lbsx;->bK:Lbsx;

    goto/16 :goto_5

    :sswitch_ca
    sget-object v16, Lbsx;->bJ:Lbsx;

    goto/16 :goto_5

    :sswitch_cb
    sget-object v16, Lbsx;->bI:Lbsx;

    goto/16 :goto_5

    :sswitch_cc
    sget-object v16, Lbsx;->bH:Lbsx;

    goto/16 :goto_5

    :sswitch_cd
    sget-object v16, Lbsx;->bG:Lbsx;

    goto/16 :goto_5

    :sswitch_ce
    sget-object v16, Lbsx;->bF:Lbsx;

    goto/16 :goto_5

    :sswitch_cf
    sget-object v16, Lbsx;->bE:Lbsx;

    goto/16 :goto_5

    :sswitch_d0
    sget-object v16, Lbsx;->bD:Lbsx;

    goto/16 :goto_5

    :sswitch_d1
    sget-object v16, Lbsx;->bC:Lbsx;

    goto/16 :goto_5

    :sswitch_d2
    sget-object v16, Lbsx;->bB:Lbsx;

    goto/16 :goto_5

    :sswitch_d3
    sget-object v16, Lbsx;->bA:Lbsx;

    goto/16 :goto_5

    :sswitch_d4
    sget-object v16, Lbsx;->bz:Lbsx;

    goto/16 :goto_5

    :sswitch_d5
    sget-object v16, Lbsx;->by:Lbsx;

    goto/16 :goto_5

    :sswitch_d6
    sget-object v16, Lbsx;->bx:Lbsx;

    goto/16 :goto_5

    :sswitch_d7
    sget-object v16, Lbsx;->bw:Lbsx;

    goto/16 :goto_5

    :sswitch_d8
    sget-object v16, Lbsx;->bv:Lbsx;

    goto/16 :goto_5

    :sswitch_d9
    sget-object v16, Lbsx;->bu:Lbsx;

    goto/16 :goto_5

    :sswitch_da
    sget-object v16, Lbsx;->bt:Lbsx;

    goto/16 :goto_5

    :sswitch_db
    sget-object v16, Lbsx;->bs:Lbsx;

    goto/16 :goto_5

    :sswitch_dc
    sget-object v16, Lbsx;->br:Lbsx;

    goto/16 :goto_5

    :sswitch_dd
    sget-object v16, Lbsx;->bq:Lbsx;

    goto/16 :goto_5

    :sswitch_de
    sget-object v16, Lbsx;->bp:Lbsx;

    goto/16 :goto_5

    :sswitch_df
    sget-object v16, Lbsx;->bo:Lbsx;

    goto/16 :goto_5

    :sswitch_e0
    sget-object v16, Lbsx;->bn:Lbsx;

    goto/16 :goto_5

    :sswitch_e1
    sget-object v16, Lbsx;->bm:Lbsx;

    goto/16 :goto_5

    :sswitch_e2
    sget-object v16, Lbsx;->bl:Lbsx;

    goto/16 :goto_5

    :sswitch_e3
    sget-object v16, Lbsx;->bk:Lbsx;

    goto/16 :goto_5

    :sswitch_e4
    sget-object v16, Lbsx;->bj:Lbsx;

    goto/16 :goto_5

    :sswitch_e5
    sget-object v16, Lbsx;->bi:Lbsx;

    goto/16 :goto_5

    :sswitch_e6
    sget-object v16, Lbsx;->bh:Lbsx;

    goto/16 :goto_5

    :sswitch_e7
    sget-object v16, Lbsx;->bg:Lbsx;

    goto/16 :goto_5

    :sswitch_e8
    sget-object v16, Lbsx;->bf:Lbsx;

    goto/16 :goto_5

    :sswitch_e9
    sget-object v16, Lbsx;->be:Lbsx;

    goto/16 :goto_5

    :sswitch_ea
    sget-object v16, Lbsx;->bd:Lbsx;

    goto/16 :goto_5

    :sswitch_eb
    sget-object v16, Lbsx;->bc:Lbsx;

    goto/16 :goto_5

    :sswitch_ec
    sget-object v16, Lbsx;->bb:Lbsx;

    goto/16 :goto_5

    :sswitch_ed
    sget-object v16, Lbsx;->ba:Lbsx;

    goto/16 :goto_5

    :sswitch_ee
    sget-object v16, Lbsx;->aZ:Lbsx;

    goto/16 :goto_5

    :sswitch_ef
    sget-object v16, Lbsx;->aY:Lbsx;

    goto/16 :goto_5

    :sswitch_f0
    sget-object v16, Lbsx;->aX:Lbsx;

    goto/16 :goto_5

    :sswitch_f1
    sget-object v16, Lbsx;->aW:Lbsx;

    goto/16 :goto_5

    :sswitch_f2
    sget-object v16, Lbsx;->aV:Lbsx;

    goto/16 :goto_5

    :sswitch_f3
    sget-object v16, Lbsx;->aO:Lbsx;

    goto/16 :goto_5

    :sswitch_f4
    sget-object v16, Lbsx;->aU:Lbsx;

    goto/16 :goto_5

    :sswitch_f5
    sget-object v16, Lbsx;->aN:Lbsx;

    goto/16 :goto_5

    :sswitch_f6
    sget-object v16, Lbsx;->aT:Lbsx;

    goto/16 :goto_5

    :sswitch_f7
    sget-object v16, Lbsx;->aS:Lbsx;

    goto/16 :goto_5

    :sswitch_f8
    sget-object v16, Lbsx;->aR:Lbsx;

    goto/16 :goto_5

    :sswitch_f9
    sget-object v16, Lbsx;->aQ:Lbsx;

    goto/16 :goto_5

    :sswitch_fa
    sget-object v16, Lbsx;->aP:Lbsx;

    goto/16 :goto_5

    :sswitch_fb
    sget-object v16, Lbsx;->aM:Lbsx;

    goto/16 :goto_5

    :sswitch_fc
    sget-object v16, Lbsx;->aL:Lbsx;

    goto/16 :goto_5

    :sswitch_fd
    sget-object v16, Lbsx;->aK:Lbsx;

    goto/16 :goto_5

    :sswitch_fe
    sget-object v16, Lbsx;->aJ:Lbsx;

    goto/16 :goto_5

    :sswitch_ff
    sget-object v16, Lbsx;->aI:Lbsx;

    goto/16 :goto_5

    :sswitch_100
    sget-object v16, Lbsx;->aH:Lbsx;

    goto/16 :goto_5

    :sswitch_101
    sget-object v16, Lbsx;->aG:Lbsx;

    goto/16 :goto_5

    :sswitch_102
    sget-object v16, Lbsx;->aF:Lbsx;

    goto/16 :goto_5

    :sswitch_103
    sget-object v16, Lbsx;->aE:Lbsx;

    goto/16 :goto_5

    :sswitch_104
    sget-object v16, Lbsx;->aD:Lbsx;

    goto/16 :goto_5

    :sswitch_105
    sget-object v16, Lbsx;->aC:Lbsx;

    goto/16 :goto_5

    :sswitch_106
    sget-object v16, Lbsx;->aB:Lbsx;

    goto/16 :goto_5

    :sswitch_107
    sget-object v16, Lbsx;->aA:Lbsx;

    goto/16 :goto_5

    :sswitch_108
    sget-object v16, Lbsx;->az:Lbsx;

    goto/16 :goto_5

    :sswitch_109
    sget-object v16, Lbsx;->ay:Lbsx;

    goto/16 :goto_5

    :sswitch_10a
    sget-object v16, Lbsx;->ax:Lbsx;

    goto/16 :goto_5

    :sswitch_10b
    sget-object v16, Lbsx;->aw:Lbsx;

    goto/16 :goto_5

    :sswitch_10c
    sget-object v16, Lbsx;->av:Lbsx;

    goto/16 :goto_5

    :sswitch_10d
    sget-object v16, Lbsx;->au:Lbsx;

    goto/16 :goto_5

    :sswitch_10e
    sget-object v16, Lbsx;->at:Lbsx;

    goto/16 :goto_5

    :sswitch_10f
    sget-object v16, Lbsx;->as:Lbsx;

    goto/16 :goto_5

    :sswitch_110
    sget-object v16, Lbsx;->ar:Lbsx;

    goto/16 :goto_5

    :sswitch_111
    sget-object v16, Lbsx;->aq:Lbsx;

    goto/16 :goto_5

    :sswitch_112
    sget-object v16, Lbsx;->ap:Lbsx;

    goto/16 :goto_5

    :sswitch_113
    sget-object v16, Lbsx;->ao:Lbsx;

    goto/16 :goto_5

    :sswitch_114
    sget-object v16, Lbsx;->an:Lbsx;

    goto/16 :goto_5

    :sswitch_115
    sget-object v16, Lbsx;->am:Lbsx;

    goto/16 :goto_5

    :sswitch_116
    sget-object v16, Lbsx;->al:Lbsx;

    goto/16 :goto_5

    :sswitch_117
    sget-object v16, Lbsx;->ak:Lbsx;

    goto/16 :goto_5

    :sswitch_118
    sget-object v16, Lbsx;->aj:Lbsx;

    goto/16 :goto_5

    :sswitch_119
    sget-object v16, Lbsx;->ai:Lbsx;

    goto/16 :goto_5

    :sswitch_11a
    sget-object v16, Lbsx;->ah:Lbsx;

    goto/16 :goto_5

    :sswitch_11b
    sget-object v16, Lbsx;->ag:Lbsx;

    goto/16 :goto_5

    :sswitch_11c
    sget-object v16, Lbsx;->af:Lbsx;

    goto/16 :goto_5

    :sswitch_11d
    sget-object v16, Lbsx;->ae:Lbsx;

    goto/16 :goto_5

    :sswitch_11e
    sget-object v16, Lbsx;->ad:Lbsx;

    goto/16 :goto_5

    :sswitch_11f
    sget-object v16, Lbsx;->ac:Lbsx;

    goto/16 :goto_5

    :sswitch_120
    sget-object v16, Lbsx;->ab:Lbsx;

    goto/16 :goto_5

    :sswitch_121
    sget-object v16, Lbsx;->aa:Lbsx;

    goto/16 :goto_5

    :sswitch_122
    sget-object v16, Lbsx;->Z:Lbsx;

    goto/16 :goto_5

    :sswitch_123
    sget-object v16, Lbsx;->Y:Lbsx;

    goto/16 :goto_5

    :sswitch_124
    sget-object v16, Lbsx;->X:Lbsx;

    goto/16 :goto_5

    :sswitch_125
    sget-object v16, Lbsx;->W:Lbsx;

    goto/16 :goto_5

    :sswitch_126
    sget-object v16, Lbsx;->V:Lbsx;

    goto/16 :goto_5

    :sswitch_127
    sget-object v16, Lbsx;->U:Lbsx;

    goto/16 :goto_5

    :sswitch_128
    sget-object v16, Lbsx;->T:Lbsx;

    goto/16 :goto_5

    :sswitch_129
    sget-object v16, Lbsx;->S:Lbsx;

    goto/16 :goto_5

    :sswitch_12a
    sget-object v16, Lbsx;->R:Lbsx;

    goto/16 :goto_5

    :sswitch_12b
    sget-object v16, Lbsx;->Q:Lbsx;

    goto/16 :goto_5

    :sswitch_12c
    sget-object v16, Lbsx;->P:Lbsx;

    goto/16 :goto_5

    :sswitch_12d
    sget-object v16, Lbsx;->O:Lbsx;

    goto/16 :goto_5

    :sswitch_12e
    sget-object v16, Lbsx;->N:Lbsx;

    goto/16 :goto_5

    :sswitch_12f
    sget-object v16, Lbsx;->M:Lbsx;

    goto/16 :goto_5

    :sswitch_130
    sget-object v16, Lbsx;->L:Lbsx;

    goto/16 :goto_5

    :sswitch_131
    sget-object v16, Lbsx;->K:Lbsx;

    goto/16 :goto_5

    :sswitch_132
    sget-object v16, Lbsx;->E:Lbsx;

    goto/16 :goto_5

    :sswitch_133
    sget-object v16, Lbsx;->C:Lbsx;

    goto/16 :goto_5

    :sswitch_134
    sget-object v16, Lbsx;->J:Lbsx;

    goto/16 :goto_5

    :sswitch_135
    sget-object v16, Lbsx;->I:Lbsx;

    goto/16 :goto_5

    :sswitch_136
    sget-object v16, Lbsx;->H:Lbsx;

    goto/16 :goto_5

    :sswitch_137
    sget-object v16, Lbsx;->G:Lbsx;

    goto/16 :goto_5

    :sswitch_138
    sget-object v16, Lbsx;->F:Lbsx;

    goto/16 :goto_5

    :sswitch_139
    sget-object v16, Lbsx;->D:Lbsx;

    goto/16 :goto_5

    :sswitch_13a
    sget-object v16, Lbsx;->B:Lbsx;

    goto/16 :goto_5

    :sswitch_13b
    sget-object v16, Lbsx;->A:Lbsx;

    goto/16 :goto_5

    :sswitch_13c
    sget-object v16, Lbsx;->z:Lbsx;

    goto :goto_5

    :sswitch_13d
    sget-object v16, Lbsx;->y:Lbsx;

    goto :goto_5

    :sswitch_13e
    sget-object v16, Lbsx;->x:Lbsx;

    goto :goto_5

    :sswitch_13f
    sget-object v16, Lbsx;->w:Lbsx;

    goto :goto_5

    :sswitch_140
    sget-object v16, Lbsx;->v:Lbsx;

    goto :goto_5

    :sswitch_141
    sget-object v16, Lbsx;->u:Lbsx;

    goto :goto_5

    :sswitch_142
    sget-object v16, Lbsx;->t:Lbsx;

    goto :goto_5

    :sswitch_143
    sget-object v16, Lbsx;->s:Lbsx;

    goto :goto_5

    :sswitch_144
    sget-object v16, Lbsx;->r:Lbsx;

    goto :goto_5

    :sswitch_145
    sget-object v16, Lbsx;->q:Lbsx;

    goto :goto_5

    :sswitch_146
    sget-object v16, Lbsx;->p:Lbsx;

    goto :goto_5

    :sswitch_147
    sget-object v16, Lbsx;->o:Lbsx;

    goto :goto_5

    :sswitch_148
    sget-object v16, Lbsx;->n:Lbsx;

    goto :goto_5

    :sswitch_149
    sget-object v16, Lbsx;->m:Lbsx;

    goto :goto_5

    :sswitch_14a
    sget-object v16, Lbsx;->l:Lbsx;

    goto :goto_5

    :sswitch_14b
    sget-object v16, Lbsx;->k:Lbsx;

    goto :goto_5

    :sswitch_14c
    sget-object v16, Lbsx;->j:Lbsx;

    goto :goto_5

    :sswitch_14d
    sget-object v16, Lbsx;->i:Lbsx;

    goto :goto_5

    :sswitch_14e
    sget-object v16, Lbsx;->h:Lbsx;

    goto :goto_5

    :sswitch_14f
    sget-object v16, Lbsx;->g:Lbsx;

    goto :goto_5

    :sswitch_150
    sget-object v16, Lbsx;->f:Lbsx;

    goto :goto_5

    :sswitch_151
    sget-object v16, Lbsx;->e:Lbsx;

    goto :goto_5

    :sswitch_152
    sget-object v16, Lbsx;->d:Lbsx;

    goto :goto_5

    :sswitch_153
    sget-object v16, Lbsx;->c:Lbsx;

    goto :goto_5

    :sswitch_154
    sget-object v16, Lbsx;->b:Lbsx;

    goto :goto_5

    :sswitch_155
    sget-object v16, Lbsx;->a:Lbsx;

    :goto_5
    invoke-static/range {v16 .. v16}, Let;->i(Ljava/lang/Object;)V

    aput-object v16, v15, v13

    iget-object v15, v10, Lali;->e:[I

    aget v16, v4, v13

    aput v16, v15, v13

    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_4

    :cond_4
    nop

    invoke-virtual {v9, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Let;->i(Ljava/lang/Object;)V

    invoke-virtual {v9, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Let;->i(Ljava/lang/Object;)V

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    new-instance v4, Lalf;

    invoke-direct {v4, v10, v3, v0}, Lalf;-><init>(Lali;ZZ)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, v4, Lalf;->a:Lali;

    iget-boolean v3, v4, Lalf;->b:Z

    if-eqz v3, :cond_5

    sget-object v3, Lalc;->a:Lbnz;

    new-instance v3, Lbki;

    invoke-direct {v3}, Lbki;-><init>()V

    const-string v8, "com.google.android.enterprise.connectedapps.CrossProfileConnector_Service"

    iput-object v8, v3, Lbki;->a:Ljava/lang/Object;

    iput-object v1, v3, Lbki;->b:Ljava/lang/Object;

    new-instance v8, Lalo;

    invoke-direct {v8, v3}, Lalo;-><init>(Lbki;)V

    invoke-static/range {p0 .. p0}, Lalc;->b(Landroid/content/Context;)I

    move-result v3

    sget-object v8, Lcom/google/android/apps/auto/components/app/fzero/LauncherIconStateVerificationService;->a:Lbnz;

    invoke-virtual {v8}, Lbmp;->c()Lbnj;

    move-result-object v8

    const/16 v9, 0x5d

    invoke-interface {v8, v6, v5, v9, v7}, Lbnx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lbnj;

    move-result-object v8

    check-cast v8, Lbnx;

    invoke-virtual {v0}, Lali;->a()Lalh;

    move-result-object v9

    const-string v10, "triggerSource = %s, componentState = %d"

    invoke-interface {v8, v10, v9, v3}, Lbnx;->s(Ljava/lang/String;Ljava/lang/Object;I)V

    invoke-virtual {v0}, Lali;->d()Lbsx;

    move-result-object v8

    invoke-virtual {v0, v8, v3}, Lali;->g(Lbsx;I)V

    :cond_5
    sget-object v0, Lcom/google/android/apps/auto/components/app/fzero/LauncherIconStateVerificationService;->a:Lbnz;

    invoke-virtual {v0}, Lbny;->i()Lbnj;

    move-result-object v3

    const-string v8, "maybeLogQueuedEventsAndFinishJob"

    const/16 v9, 0x8b

    invoke-interface {v3, v6, v8, v9, v7}, Lbnx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lbnj;

    move-result-object v3

    check-cast v3, Lbnx;

    const-string v8, "Consulting checkbox"

    invoke-interface {v3, v8}, Lbnx;->n(Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lawq;->a(Landroid/content/Context;)Laqj;

    move-result-object v3

    invoke-virtual {v3}, Laqj;->c()Lawe;

    move-result-object v3

    new-instance v8, Lald;

    invoke-direct {v8, v1, v4}, Lald;-><init>(Lcom/google/android/apps/auto/components/app/fzero/LauncherIconStateVerificationService;Lalf;)V

    sget-object v4, Lawh;->a:Ljava/util/concurrent/Executor;

    move-object v9, v3

    check-cast v9, Lawi;

    invoke-virtual {v9, v4, v8}, Lawi;->g(Ljava/util/concurrent/Executor;Lawc;)V

    new-instance v4, Lale;

    invoke-direct {v4, v1, v2}, Lale;-><init>(Lcom/google/android/apps/auto/components/app/fzero/LauncherIconStateVerificationService;Landroid/app/job/JobParameters;)V

    invoke-virtual {v3, v4}, Lawe;->d(Lavz;)V

    invoke-virtual {v0}, Lbny;->i()Lbnj;

    move-result-object v0

    const/16 v2, 0x64

    invoke-interface {v0, v6, v5, v2, v7}, Lbnx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lbnj;

    move-result-object v0

    check-cast v0, Lbnx;

    const-string v2, "Job running"

    invoke-interface {v0, v2}, Lbnx;->n(Ljava/lang/String;)V

    return v12

    :catch_0
    move-exception v0

    sget-object v3, Lcom/google/android/apps/auto/components/app/fzero/LauncherIconStateVerificationService;->a:Lbnz;

    invoke-virtual {v3}, Lbmp;->e()Lbnj;

    move-result-object v3

    invoke-interface {v3, v0}, Lbnx;->g(Ljava/lang/Throwable;)Lbnj;

    move-result-object v0

    check-cast v0, Lbnx;

    const/16 v3, 0x53

    invoke-interface {v0, v6, v5, v3, v7}, Lbnx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lbnj;

    move-result-object v0

    check-cast v0, Lbnx;

    const-string v3, "Could not parse inputs!"

    invoke-interface {v0, v3}, Lbnx;->n(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v8}, Lcom/google/android/apps/auto/components/app/fzero/LauncherIconStateVerificationService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return v8

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_155
        0x32 -> :sswitch_154
        0x33 -> :sswitch_153
        0x34 -> :sswitch_152
        0x35 -> :sswitch_151
        0x36 -> :sswitch_150
        0x37 -> :sswitch_14f
        0x38 -> :sswitch_14e
        0x39 -> :sswitch_14d
        0x3a -> :sswitch_14c
        0x3b -> :sswitch_14b
        0x3c -> :sswitch_14a
        0x5a -> :sswitch_149
        0x5b -> :sswitch_148
        0x5c -> :sswitch_147
        0x5d -> :sswitch_146
        0x5e -> :sswitch_145
        0x5f -> :sswitch_144
        0x60 -> :sswitch_143
        0x61 -> :sswitch_142
        0x64 -> :sswitch_141
        0x65 -> :sswitch_140
        0x66 -> :sswitch_13f
        0xc8 -> :sswitch_13e
        0xc9 -> :sswitch_13d
        0xca -> :sswitch_13c
        0xfa -> :sswitch_13b
        0xfb -> :sswitch_13a
        0xfc -> :sswitch_139
        0xfd -> :sswitch_138
        0xfe -> :sswitch_137
        0xff -> :sswitch_136
        0x100 -> :sswitch_135
        0x101 -> :sswitch_134
        0x102 -> :sswitch_133
        0x103 -> :sswitch_132
        0x104 -> :sswitch_131
        0x12c -> :sswitch_130
        0x12d -> :sswitch_12f
        0x12e -> :sswitch_12e
        0x190 -> :sswitch_12d
        0x191 -> :sswitch_12c
        0x192 -> :sswitch_12b
        0x193 -> :sswitch_12a
        0x194 -> :sswitch_129
        0x195 -> :sswitch_128
        0x1f4 -> :sswitch_127
        0x1f5 -> :sswitch_126
        0x1f6 -> :sswitch_125
        0x1f7 -> :sswitch_124
        0x1f8 -> :sswitch_123
        0x1f9 -> :sswitch_122
        0x1fa -> :sswitch_121
        0x1fb -> :sswitch_120
        0x1fc -> :sswitch_11f
        0x226 -> :sswitch_11e
        0x227 -> :sswitch_11d
        0x228 -> :sswitch_11c
        0x229 -> :sswitch_11b
        0x22a -> :sswitch_11a
        0x22b -> :sswitch_119
        0x22c -> :sswitch_118
        0x22d -> :sswitch_117
        0x22e -> :sswitch_116
        0x230 -> :sswitch_115
        0x231 -> :sswitch_114
        0x232 -> :sswitch_113
        0x258 -> :sswitch_112
        0x259 -> :sswitch_111
        0x25a -> :sswitch_110
        0x25b -> :sswitch_10f
        0x25c -> :sswitch_10e
        0x2bc -> :sswitch_10d
        0x2bd -> :sswitch_10c
        0x2be -> :sswitch_10b
        0x2bf -> :sswitch_10a
        0x2c0 -> :sswitch_109
        0x2c1 -> :sswitch_108
        0x2c2 -> :sswitch_107
        0x2c3 -> :sswitch_106
        0x2c4 -> :sswitch_105
        0x322 -> :sswitch_104
        0x323 -> :sswitch_103
        0x324 -> :sswitch_102
        0x325 -> :sswitch_101
        0x326 -> :sswitch_100
        0x327 -> :sswitch_ff
        0x352 -> :sswitch_fe
        0x35c -> :sswitch_fd
        0x35d -> :sswitch_fc
        0x35e -> :sswitch_fb
        0x35f -> :sswitch_fa
        0x360 -> :sswitch_f9
        0x361 -> :sswitch_f8
        0x362 -> :sswitch_f7
        0x363 -> :sswitch_f6
        0x364 -> :sswitch_f5
        0x365 -> :sswitch_f4
        0x366 -> :sswitch_f3
        0x370 -> :sswitch_f2
        0x384 -> :sswitch_f1
        0x3e8 -> :sswitch_f0
        0x3e9 -> :sswitch_ef
        0x3ea -> :sswitch_ee
        0x3eb -> :sswitch_ed
        0x44c -> :sswitch_ec
        0x44d -> :sswitch_eb
        0x4b0 -> :sswitch_ea
        0x4b1 -> :sswitch_e9
        0x4b2 -> :sswitch_e8
        0x4b3 -> :sswitch_e7
        0x4b4 -> :sswitch_e6
        0x4b5 -> :sswitch_e5
        0x4b6 -> :sswitch_e4
        0x4b7 -> :sswitch_e3
        0x4b8 -> :sswitch_e2
        0x4b9 -> :sswitch_e1
        0x4ba -> :sswitch_e0
        0x4bb -> :sswitch_df
        0x4bc -> :sswitch_de
        0x4bd -> :sswitch_dd
        0x514 -> :sswitch_dc
        0x515 -> :sswitch_db
        0x516 -> :sswitch_da
        0x517 -> :sswitch_d9
        0x518 -> :sswitch_d8
        0x519 -> :sswitch_d7
        0x51a -> :sswitch_d6
        0x578 -> :sswitch_d5
        0x579 -> :sswitch_d4
        0x57a -> :sswitch_d3
        0x57b -> :sswitch_d2
        0x57c -> :sswitch_d1
        0x5dc -> :sswitch_d0
        0x5dd -> :sswitch_cf
        0x5de -> :sswitch_ce
        0x5df -> :sswitch_cd
        0x5e0 -> :sswitch_cc
        0x5e1 -> :sswitch_cb
        0x5e2 -> :sswitch_ca
        0x5e3 -> :sswitch_c9
        0x5e4 -> :sswitch_c8
        0x5e5 -> :sswitch_c7
        0x5e6 -> :sswitch_c6
        0x5e7 -> :sswitch_c5
        0x5e8 -> :sswitch_c4
        0x5e9 -> :sswitch_c3
        0x5ea -> :sswitch_c2
        0x5eb -> :sswitch_c1
        0x5ec -> :sswitch_c0
        0x5ed -> :sswitch_bf
        0x5ee -> :sswitch_be
        0x5ef -> :sswitch_bd
        0x5f0 -> :sswitch_bc
        0x5f1 -> :sswitch_bb
        0x5f2 -> :sswitch_ba
        0x5f3 -> :sswitch_b9
        0x5f4 -> :sswitch_b8
        0x5f5 -> :sswitch_b7
        0x5f6 -> :sswitch_b6
        0x5f7 -> :sswitch_b5
        0x5f8 -> :sswitch_b4
        0x5f9 -> :sswitch_b3
        0x5fa -> :sswitch_b2
        0x5fb -> :sswitch_b1
        0x5fc -> :sswitch_b0
        0x5fd -> :sswitch_af
        0x5fe -> :sswitch_ae
        0x5ff -> :sswitch_ad
        0x600 -> :sswitch_ac
        0x601 -> :sswitch_ab
        0x602 -> :sswitch_aa
        0x603 -> :sswitch_a9
        0x604 -> :sswitch_a8
        0x605 -> :sswitch_a7
        0x606 -> :sswitch_a6
        0x607 -> :sswitch_a5
        0x640 -> :sswitch_a4
        0x6a4 -> :sswitch_a3
        0x708 -> :sswitch_a2
        0x709 -> :sswitch_a1
        0x76c -> :sswitch_a0
        0x76d -> :sswitch_9f
        0x76e -> :sswitch_9e
        0x76f -> :sswitch_9d
        0x770 -> :sswitch_9c
        0x771 -> :sswitch_9b
        0x772 -> :sswitch_9a
        0x773 -> :sswitch_99
        0x774 -> :sswitch_98
        0x7d0 -> :sswitch_97
        0x7d1 -> :sswitch_96
        0x7d2 -> :sswitch_95
        0x7d3 -> :sswitch_94
        0x7d4 -> :sswitch_93
        0x7d5 -> :sswitch_92
        0x834 -> :sswitch_91
        0x835 -> :sswitch_90
        0x836 -> :sswitch_8f
        0x837 -> :sswitch_8e
        0x838 -> :sswitch_8d
        0x839 -> :sswitch_8c
        0x83a -> :sswitch_8b
        0x83b -> :sswitch_8a
        0x83c -> :sswitch_89
        0x83d -> :sswitch_88
        0x83e -> :sswitch_87
        0x848 -> :sswitch_86
        0x849 -> :sswitch_85
        0x852 -> :sswitch_84
        0x853 -> :sswitch_83
        0x85c -> :sswitch_82
        0x85d -> :sswitch_81
        0x866 -> :sswitch_80
        0x867 -> :sswitch_7f
        0x898 -> :sswitch_7e
        0x899 -> :sswitch_7d
        0x8fc -> :sswitch_7c
        0x8fd -> :sswitch_7b
        0x8fe -> :sswitch_7a
        0x900 -> :sswitch_79
        0x901 -> :sswitch_78
        0x902 -> :sswitch_77
        0x903 -> :sswitch_76
        0x904 -> :sswitch_75
        0x960 -> :sswitch_74
        0x961 -> :sswitch_73
        0x962 -> :sswitch_72
        0x963 -> :sswitch_71
        0xbb8 -> :sswitch_70
        0xbb9 -> :sswitch_6f
        0xbba -> :sswitch_6e
        0xbbb -> :sswitch_6d
        0xbbc -> :sswitch_6c
        0xbbd -> :sswitch_6b
        0xbbe -> :sswitch_6a
        0xbbf -> :sswitch_69
        0xbc0 -> :sswitch_68
        0xbc1 -> :sswitch_67
        0xbc2 -> :sswitch_66
        0xbc3 -> :sswitch_65
        0xc1c -> :sswitch_64
        0xc1d -> :sswitch_63
        0xc1e -> :sswitch_62
        0xc1f -> :sswitch_61
        0xc20 -> :sswitch_60
        0xc21 -> :sswitch_5f
        0xc22 -> :sswitch_5e
        0xc23 -> :sswitch_5d
        0xc24 -> :sswitch_5c
        0xc25 -> :sswitch_5b
        0xc26 -> :sswitch_5a
        0xc27 -> :sswitch_59
        0xc28 -> :sswitch_58
        0xc29 -> :sswitch_57
        0xc2a -> :sswitch_56
        0xc2b -> :sswitch_55
        0xc2c -> :sswitch_54
        0xc4e -> :sswitch_53
        0xc4f -> :sswitch_52
        0xc50 -> :sswitch_51
        0xc51 -> :sswitch_50
        0xc80 -> :sswitch_4f
        0xc81 -> :sswitch_4e
        0xc82 -> :sswitch_4d
        0xce4 -> :sswitch_4c
        0xd48 -> :sswitch_4b
        0xd49 -> :sswitch_4a
        0xd4a -> :sswitch_49
        0xdac -> :sswitch_48
        0xe24 -> :sswitch_47
        0xe25 -> :sswitch_46
        0xe26 -> :sswitch_45
        0xe74 -> :sswitch_44
        0xe75 -> :sswitch_43
        0xed8 -> :sswitch_42
        0xed9 -> :sswitch_41
        0xeda -> :sswitch_40
        0xf3c -> :sswitch_3f
        0xf3d -> :sswitch_3e
        0xfa0 -> :sswitch_3d
        0xfa1 -> :sswitch_3c
        0xfa2 -> :sswitch_3b
        0xfa3 -> :sswitch_3a
        0xfa4 -> :sswitch_39
        0xfa5 -> :sswitch_38
        0xfa6 -> :sswitch_37
        0xfa7 -> :sswitch_36
        0xfa8 -> :sswitch_35
        0xfa9 -> :sswitch_34
        0xfaa -> :sswitch_33
        0xfab -> :sswitch_32
        0xfac -> :sswitch_31
        0xfad -> :sswitch_30
        0xfae -> :sswitch_2f
        0xfaf -> :sswitch_2e
        0xfb0 -> :sswitch_2d
        0xfb1 -> :sswitch_2c
        0xfb2 -> :sswitch_2b
        0xfb3 -> :sswitch_2a
        0xfb4 -> :sswitch_29
        0xfb5 -> :sswitch_28
        0xfb6 -> :sswitch_27
        0xfb7 -> :sswitch_26
        0xfb8 -> :sswitch_25
        0xfb9 -> :sswitch_24
        0xfba -> :sswitch_23
        0xfbb -> :sswitch_22
        0xfbc -> :sswitch_21
        0xfbd -> :sswitch_20
        0xfbe -> :sswitch_1f
        0xfbf -> :sswitch_1e
        0xfc0 -> :sswitch_1d
        0xfc1 -> :sswitch_1c
        0xfc2 -> :sswitch_1b
        0xfc3 -> :sswitch_1a
        0xfc4 -> :sswitch_19
        0xfc5 -> :sswitch_18
        0xfc6 -> :sswitch_17
        0xfc7 -> :sswitch_16
        0xfc8 -> :sswitch_15
        0xfc9 -> :sswitch_14
        0xfca -> :sswitch_13
        0xfcb -> :sswitch_12
        0xfcc -> :sswitch_11
        0xfcd -> :sswitch_10
        0xfce -> :sswitch_f
        0xfcf -> :sswitch_e
        0xfd0 -> :sswitch_d
        0xfd1 -> :sswitch_c
        0xfd2 -> :sswitch_b
        0xfd3 -> :sswitch_a
        0xfd4 -> :sswitch_9
        0xfd5 -> :sswitch_8
        0xfd6 -> :sswitch_7
        0xfd7 -> :sswitch_6
        0xfd8 -> :sswitch_5
        0xfd9 -> :sswitch_4
        0xfda -> :sswitch_3
        0xfdb -> :sswitch_2
        0xfdc -> :sswitch_1
        0xfdd -> :sswitch_0
    .end sparse-switch
.end method

.method public final onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
