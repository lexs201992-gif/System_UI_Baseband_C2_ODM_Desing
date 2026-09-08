.class public Lcom/google/android/apps/auto/components/app/fzero/FzeroReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static final a:Lbnz;

.field private static final b:Lbll;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "GH.FzeroReceiver"

    invoke-static {v0}, Lbnz;->k(Ljava/lang/String;)Lbnz;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/auto/components/app/fzero/FzeroReceiver;->a:Lbnz;

    sget v0, Lbll;->d:I

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.intent.action.MY_PACKAGE_REPLACED"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.google.android.apps.auto.components.app.fzero.ACTION_RESTORE_COMPLETE"

    aput-object v2, v0, v1

    invoke-static {v0}, Lbll;->l([Ljava/lang/Object;)Lbll;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/auto/components/app/fzero/FzeroReceiver;->b:Lbll;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    nop

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20

    move-object/from16 v1, p1

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "onReceive"

    const-string v3, "com/google/android/apps/auto/components/app/fzero/FzeroReceiver"

    const-string v4, "FzeroReceiver.java"

    if-eqz v0, :cond_f

    sget-object v5, Lcom/google/android/apps/auto/components/app/fzero/FzeroReceiver;->b:Lbll;

    invoke-virtual {v5, v0}, Lbll;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_a

    :cond_0
    sget-object v5, Lalb;->a:Lbnz;

    const-string v5, "fzero"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    new-instance v7, Landroid/app/backup/BackupManager;

    invoke-direct {v7, v1}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1d

    const-string v10, "pre_q_user"

    const/4 v11, 0x1

    if-lt v8, v9, :cond_1

    goto :goto_0

    :cond_1
    nop

    invoke-interface {v5, v10}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    sget-object v8, Lalb;->a:Lbnz;

    invoke-virtual {v8}, Lbny;->h()Lbnj;

    move-result-object v8

    const-string v9, "com/google/android/apps/auto/components/app/fzero/FzeroState"

    const-string v12, "maybeRecordPreQUser"

    const/16 v13, 0x2a

    const-string v14, "FzeroState.java"

    invoke-interface {v8, v9, v12, v13, v14}, Lbnx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lbnj;

    move-result-object v8

    check-cast v8, Lbnx;

    const-string v9, "Recording pre-Q user"

    invoke-interface {v8, v9}, Lbnx;->n(Ljava/lang/String;)V

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v7}, Landroid/app/backup/BackupManager;->dataChanged()V

    :cond_2
    :goto_0
    sget-object v7, Lcom/google/android/apps/auto/components/app/fzero/FzeroReceiver;->a:Lbnz;

    invoke-virtual {v7}, Lbmp;->c()Lbnj;

    move-result-object v8

    const/16 v9, 0x2c

    invoke-interface {v8, v3, v2, v9, v4}, Lbnx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lbnj;

    move-result-object v8

    check-cast v8, Lbnx;

    const-string v9, "Handling intent %s"

    invoke-interface {v8, v9, v0}, Lbnx;->p(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/4 v9, 0x2

    const/4 v12, -0x1

    sparse-switch v8, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v8, "android.intent.action.MY_PACKAGE_REPLACED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    goto :goto_2

    :sswitch_1
    const-string v8, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x0

    goto :goto_2

    :sswitch_2
    const-string v8, "com.google.android.apps.auto.components.app.fzero.ACTION_RESTORE_COMPLETE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x2

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v8, -0x1

    :goto_2
    packed-switch v8, :pswitch_data_0

    invoke-virtual {v7}, Lbmp;->e()Lbnj;

    move-result-object v1

    const/16 v5, 0x39

    invoke-interface {v1, v3, v2, v5, v4}, Lbnx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lbnj;

    move-result-object v1

    check-cast v1, Lbnx;

    const-string v2, "Unable to handle intent with action of %s"

    invoke-interface {v1, v2, v0}, Lbnx;->p(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :pswitch_0
    sget-object v0, Lalh;->c:Lalh;

    invoke-static {v0}, Lali;->f(Lalh;)Lali;

    move-result-object v0

    move-object v2, v0

    goto :goto_3

    :pswitch_1
    sget-object v0, Lalh;->b:Lalh;

    invoke-static {v0}, Lali;->f(Lalh;)Lali;

    move-result-object v0

    move-object v2, v0

    goto :goto_3

    :pswitch_2
    sget-object v0, Lalh;->a:Lalh;

    invoke-static {v0}, Lali;->f(Lalh;)Lali;

    move-result-object v0

    move-object v2, v0

    :goto_3
    invoke-virtual {v2}, Lali;->c()Lbsx;

    move-result-object v0

    invoke-virtual {v2, v0, v12}, Lali;->g(Lbsx;I)V

    sget-object v0, Lalc;->a:Lbnz;

    new-instance v0, Lbki;

    invoke-direct {v0}, Lbki;-><init>()V

    const-string v3, "com.google.android.enterprise.connectedapps.CrossProfileConnector_Service"

    iput-object v3, v0, Lbki;->a:Ljava/lang/Object;

    iput-object v1, v0, Lbki;->b:Ljava/lang/Object;

    new-instance v3, Lalo;

    invoke-direct {v3, v0}, Lalo;-><init>(Lbki;)V

    invoke-static/range {p1 .. p1}, Lalc;->b(Landroid/content/Context;)I

    move-result v4

    iget-object v0, v3, Lalo;->a:Landroid/content/Context;

    if-eqz v0, :cond_e

    sget-boolean v3, Lalp;->a:Z

    if-nez v3, :cond_7

    const-class v3, Landroid/os/UserManager;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    sput-boolean v11, Lalp;->a:Z

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1e

    if-lt v7, v8, :cond_4

    invoke-virtual {v3}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v0

    sput-boolean v0, Lalp;->b:Z

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, v9, :cond_5

    sput-boolean v6, Lalp;->b:Z

    sput-boolean v6, Lalp;->a:Z

    goto :goto_4

    :cond_5
    const-class v3, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sput-boolean v6, Lalp;->b:Z

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageInfo;

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroid/app/admin/DevicePolicyManager;->isProfileOwnerApp(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    sput-boolean v11, Lalp;->b:Z

    :cond_7
    :goto_4
    sget-boolean v0, Lalp;->b:Z

    const-string v3, "getDesiredVisibilityState"

    const-string v7, "com/google/android/apps/auto/components/app/fzero/LauncherIcon"

    const-string v8, "LauncherIcon.java"

    if-eqz v0, :cond_8

    sget-object v0, Lalc;->a:Lbnz;

    invoke-virtual {v0}, Lbny;->h()Lbnj;

    move-result-object v0

    const/16 v5, 0x8c

    invoke-interface {v0, v7, v3, v5, v8}, Lbnx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lbnj;

    move-result-object v0

    check-cast v0, Lbnx;

    const-string v3, "Hiding icon on work profile"

    invoke-interface {v0, v3}, Lbnx;->n(Ljava/lang/String;)V

    invoke-static {v6}, Lalc;->a(Z)I

    move-result v0

    goto/16 :goto_8

    :cond_8
    if-ne v4, v11, :cond_9

    sget-object v0, Lalc;->a:Lbnz;

    invoke-virtual {v0}, Lbny;->h()Lbnj;

    move-result-object v0

    const/16 v5, 0x91

    invoke-interface {v0, v7, v3, v5, v8}, Lbnx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lbnj;

    move-result-object v0

    check-cast v0, Lbnx;

    const-string v3, "Icon was explicitly enabled. Retaining enabled state."

    invoke-interface {v0, v3}, Lbnx;->n(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_8

    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lali;->h(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    sget-object v0, Lalc;->c:Lbll;

    sget-object v13, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v13}, Lbll;->contains(Ljava/lang/Object;)Z

    move-result v13

    invoke-interface {v5, v10, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static/range {p1 .. p1}, Lalc;->c(Landroid/content/Context;)Z

    move-result v10

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    const-string v0, "unknown"

    :goto_5
    sget-object v14, Lalc;->a:Lbnz;

    invoke-virtual {v14}, Lbny;->h()Lbnj;

    move-result-object v14

    const/16 v15, 0x9b

    invoke-interface {v14, v7, v3, v15, v8}, Lbnx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lbnj;

    move-result-object v14

    check-cast v14, Lbnx;

    invoke-static/range {p1 .. p1}, Lalc;->c(Landroid/content/Context;)Z

    move-result v15

    const-string v6, "Comparing:  isStub(): %b, versionName: %s"

    invoke-interface {v14, v6, v15, v0}, Lbnx;->u(Ljava/lang/String;ZLjava/lang/Object;)V

    invoke-static/range {p1 .. p1}, Lalc;->c(Landroid/content/Context;)Z

    move-result v6

    const-string v14, "stub"

    invoke-virtual {v0, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-ne v6, v0, :cond_a

    sget-object v0, Lbsx;->ea:Lbsx;

    goto :goto_6

    :cond_a
    sget-object v0, Lbsx;->eb:Lbsx;

    :goto_6
    nop

    invoke-virtual {v2, v0, v12}, Lali;->g(Lbsx;I)V

    if-eqz v9, :cond_c

    if-nez v13, :cond_c

    if-nez v10, :cond_b

    if-eqz v5, :cond_b

    const/4 v0, 0x1

    goto :goto_7

    :cond_b
    const/4 v0, 0x0

    goto :goto_7

    :cond_c
    xor-int/lit8 v0, v10, 0x1

    :goto_7
    sget-object v6, Lalc;->a:Lbnz;

    invoke-virtual {v6}, Lbny;->h()Lbnj;

    move-result-object v6

    const/16 v12, 0xab

    invoke-interface {v6, v7, v3, v12, v8}, Lbnx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lbnj;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lbnx;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-interface/range {v14 .. v19}, Lbnx;->B(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Lalc;->a(Z)I

    move-result v0

    :goto_8
    sget-object v3, Lalc;->a:Lbnz;

    invoke-virtual {v3}, Lbny;->h()Lbnj;

    move-result-object v3

    const-string v5, "maybeOverrideVisibility"

    const/16 v6, 0x66

    invoke-interface {v3, v7, v5, v6, v8}, Lbnx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lbnj;

    move-result-object v3

    check-cast v3, Lbnx;

    const-string v6, "maybeOverrideVisibility: current IconVisibility state: %d"

    invoke-interface {v3, v6, v4}, Lbnx;->o(Ljava/lang/String;I)V

    if-ne v4, v0, :cond_d

    sget-object v3, Lalc;->a:Lbnz;

    invoke-virtual {v3}, Lbny;->h()Lbnj;

    move-result-object v3

    const/16 v6, 0x6a

    invoke-interface {v3, v7, v5, v6, v8}, Lbnx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lbnj;

    move-result-object v3

    check-cast v3, Lbnx;

    const-string v5, "maybeOverrideVisibility: icon state is already desired=%d"

    invoke-interface {v3, v5, v0}, Lbnx;->o(Ljava/lang/String;I)V

    invoke-virtual {v2}, Lali;->b()Lbsx;

    move-result-object v0

    invoke-virtual {v2, v0, v4}, Lali;->g(Lbsx;I)V

    const/4 v3, 0x0

    goto :goto_9

    :cond_d
    sget-object v3, Lalc;->a:Lbnz;

    invoke-virtual {v3}, Lbny;->h()Lbnj;

    move-result-object v3

    const/16 v4, 0x6f

    invoke-interface {v3, v7, v5, v4, v8}, Lbnx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lbnj;

    move-result-object v3

    check-cast v3, Lbnx;

    const-string v4, "maybeOverrideVisibility, set desiredVisibilityState=%d"

    invoke-interface {v3, v4, v0}, Lbnx;->o(Ljava/lang/String;I)V

    invoke-virtual {v2}, Lali;->e()Lbsx;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lali;->g(Lbsx;I)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    sget-object v4, Lalc;->b:Landroid/content/ComponentName;

    invoke-virtual {v3, v4, v0, v11}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    const/4 v3, 0x1

    :goto_9
    const/4 v4, 0x0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x6

    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0xa

    invoke-virtual {v0, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v7

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v8}, Lcom/google/android/apps/auto/components/app/fzero/LauncherIconStateVerificationService;->a(Landroid/content/Context;Lali;ZZJJ)V

    return-void

    :cond_e
    const/4 v0, 0x0

    throw v0

    :cond_f
    :goto_a
    sget-object v1, Lcom/google/android/apps/auto/components/app/fzero/FzeroReceiver;->a:Lbnz;

    invoke-virtual {v1}, Lbny;->h()Lbnj;

    move-result-object v1

    const/16 v5, 0x24

    invoke-interface {v1, v3, v2, v5, v4}, Lbnx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lbnj;

    move-result-object v1

    check-cast v1, Lbnx;

    const-string v2, "onReceive, but %s is not an acceptable action"

    invoke-interface {v1, v2, v0}, Lbnx;->p(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x1a5cb88 -> :sswitch_2
        0x2f94f923 -> :sswitch_1
        0x6789a577 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
