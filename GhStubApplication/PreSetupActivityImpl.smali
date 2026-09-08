.class public Lcom/google/android/gms/carsetup/setup/PreSetupActivityImpl;
.super Lbv;
.source "SourceFile"

# interfaces
.implements Laof;
.implements Laod;


# static fields
.field public static final s:Lbny;

.field static final t:Landroid/content/IntentFilter;

.field static final u:Landroid/content/IntentFilter;


# instance fields
.field private A:Lama;

.field v:Lang;

.field public w:Lcom/google/android/gms/carsetup/setup/SetupController;

.field private x:Landroid/os/Handler;

.field private y:Landroid/content/Intent;

.field private z:Lama;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "CAR.SETUP.FRX"

    invoke-static {v0}, Lot;->d(Ljava/lang/String;)Lbnz;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/carsetup/setup/PreSetupActivityImpl;->s:Lbny;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gms.carsetup.setup.PreSetupActivityImpl.ACTION_FORCE_FINISH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Lamc;->a:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/carsetup/setup/PreSetupActivityImpl;->t:Landroid/content/IntentFilter;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.hardware.usb.action.USB_ACCESSORY_DETACHED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/carsetup/setup/PreSetupActivityImpl;->u:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    nop

    invoke-direct {p0}, Lbv;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/carsetup/setup/PreSetupActivityImpl;->y:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final o()Lcom/google/android/gms/carsetup/setup/SetupController;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/carsetup/setup/PreSetupActivityImpl;->w:Lcom/google/android/gms/carsetup/setup/SetupController;

    invoke-static {v0}, Let;->i(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/carsetup/setup/PreSetupActivityImpl;->w:Lcom/google/android/gms/carsetup/setup/SetupController;

    return-object v0
.end method

.method public final onBackPressed()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/carsetup/setup/PreSetupActivityImpl;->w:Lcom/google/android/gms/carsetup/setup/SetupController;

    invoke-static {v0}, Let;->i(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/carsetup/setup/PreSetupActivityImpl;->w:Lcom/google/android/gms/carsetup/setup/SetupController;

    iget-boolean v1, v0, Lcom/google/android/gms/carsetup/setup/SetupController;->c:Z

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/carsetup/setup/SetupController;->g:Lciz;

    sget-object v2, Lbtu;->ag:Lbtu;

    sget-object v3, Lbtt;->g:Lbtt;

    invoke-virtual {v1, v2, v3}, Lciz;->F(Lbtu;Lbtt;)V

    invoke-virtual {v0}, Lcom/google/android/gms/carsetup/setup/SetupController;->g()V

    :cond_0
    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 9

    invoke-super {p0, p1}, Lbv;->onCreate(Landroid/os/Bundle;)V

    sget-object p1, Lcom/google/android/gms/carsetup/setup/PreSetupActivityImpl;->s:Lbny;

    invoke-virtual {p1}, Lbmp;->c()Lbnj;

    move-result-object v0

    const-string v1, "com/google/android/gms/carsetup/setup/PreSetupActivityImpl"

    const-string v2, "onCreate"

    const/16 v3, 0x76

    const-string v4, "PreSetupActivityImpl.java"

    invoke-interface {v0, v1, v2, v3, v4}, Lbnj;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lbnj;

    move-result-object v0

    const-string v3, "PreSetupActivity:onCreate"

    invoke-interface {v0, v3}, Lbnj;->n(Ljava/lang/String;)V

    invoke-static {}, Lcsx;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lanx;->a(Landroid/content/Context;)Lanx;

    move-result-object v0

    iget-object v0, v0, Lanx;->b:Lalx;

    const-string v3, "DONT_SHOW_AGAIN_SETTING"

    invoke-virtual {v0, v3}, Lalx;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lbmp;->c()Lbnj;

    move-result-object p1

    const/16 v0, 0x7b

    invoke-interface {p1, v1, v2, v0, v4}, Lbnj;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lbnj;

    move-result-object p1

    const-string v0, "Not showing PreSetupActivity: user has selected \'Don\'t show again\'"

    invoke-interface {p1, v0}, Lbnj;->n(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/carsetup/setup/PreSetupActivityImpl;->finish()V

    return-void

    :cond_1
    :goto_0
    nop

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/google/android/gms/carsetup/setup/PreSetupActivityImpl;->overridePendingTransition(II)V

    invoke-virtual {p0}, Lcom/google/android/gms/carsetup/setup/PreSetupActivityImpl;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "PreSetup.AA_SUPPORT_RESULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "Invalid intent: missing AaSupportedResult extra"

    invoke-static {v0, v2}, Let;->c(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/carsetup/setup/PreSetupActivityImpl;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {p0}, Lcom/google/android/gms/carsetup/setup/PreSetupActivityImpl;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "connection_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    const-string v3, "Invalid intent: missing ConnectionType extra"

    invoke-static {v0, v3}, Let;->c(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/carsetup/setup/PreSetupActivityImpl;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {p0}, Lcom/google/android/gms/carsetup/setup/PreSetupActivityImpl;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "PreSetup.CONTINUE_INTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-static {v0}, Let;->i(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/carsetup/setup/PreSetupActivityImpl;->y:Landroid/content/Intent;

    const v0, 0x7f130166

    invoke-virtual {p0, v0}, Lbv;->setTheme(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/carsetup/setup/PreSetupActivityImpl;->setRequestedOrientation(I)V

    const v1, 0x7f0d0022

    invoke-virtual {p0, v1}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/carsetup/setup/PreSetupActivityImpl;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "PreSetup.SKIP_TO_USB_RESET"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eq v0, p1, :cond_2

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x7

    const/4 v8, 0x7

    :goto_1
    new-instance p1, Lang;

    invoke-static {p0}, Lalx;->a(Landroid/content/Context;)Lalx;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lang;-><init>(Landroid/content/Context;Lalx;)V

    iput-object p1, p0, Lcom/google/android/gms/carsetup/setup/PreSetupActivityImpl;->v:Lang;

    new-instance v6, Lciz;

    iget-object p1, p0, Lcom/google/android/gms/carsetup/setup/PreSetupActivityImpl;->v:Lang;

    invoke-direct {v6, p1}, Lciz;-><init>(Lang;)V

    new-instance p1, Lcom/google/android/gms/carsetup/setup/SetupController;

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/carsetup/setup/SetupController;-><init>(Laof;ILciz;II)V

    iput-object p1, p0, Lcom/google/android/gms/carsetup/setup/PreSetupActivityImpl;->w:Lcom/google/android/gms/carsetup/setup/SetupController;

    return-void
.end method

.method public final p()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/carsetup/setup/PreSetupActivityImpl;->z:Lama;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/carsetup/setup/PreSetupActivityImpl;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/carsetup/setup/PreSetupActivityImpl;->z:Lama;

    :cond_0
    return-void
.end method

.method public final q()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/carsetup/setup/PreSetupActivityImpl;->A:Lama;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/carsetup/setup/PreSetupActivityImpl;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/carsetup/setup/PreSetupActivityImpl;->A:Lama;

    :cond_0
    return-void
.end method

.method public final r()V
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/gms/carsetup/setup/PreSetupActivityImpl;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x280080

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    iget-object v0, p0, Lcom/google/android/gms/carsetup/setup/PreSetupActivityImpl;->x:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/google/android/gms/carsetup/setup/PreSetupActivityImpl;->s:Lbny;

    invoke-virtual {v1}, Lbny;->h()Lbnj;

    move-result-object v1

    const-string v2, "com/google/android/gms/carsetup/setup/PreSetupActivityImpl"

    const-string v3, "cleanUpAutoDismiss"

    const/16 v4, 0x13c

    const-string v5, "PreSetupActivityImpl.java"

    invoke-interface {v1, v2, v3, v4, v5}, Lbnj;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lbnj;

    move-result-object v1

    const-string v2, "Remove 30s dismissal timer"

    invoke-interface {v1, v2}, Lbnj;->n(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/android/gms/carsetup/setup/PreSetupActivityImpl;->x:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method public final s()V
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/gms/carsetup/setup/PreSetupActivityImpl;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x280080

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    iget-object v0, p0, Lcom/google/android/gms/carsetup/setup/PreSetupActivityImpl;->x:Landroid/os/Handler;

    const-string v1, "setupAutoDismissTimer"

    const-string v2, "com/google/android/gms/carsetup/setup/PreSetupActivityImpl"

    const-string v3, "PreSetupActivityImpl.java"

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/carsetup/setup/PreSetupActivityImpl;->s:Lbny;

    invoke-virtual {v0}, Lbmp;->e()Lbnj;

    move-result-object v0

    const/16 v4, 0x12b

    invoke-interface {v0, v2, v1, v4, v3}, Lbnj;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lbnj;

    move-result-object v0

    const-string v1, "Dismissal already scheduled"

    invoke-interface {v0, v1}, Lbnj;->n(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/android/gms/carsetup/setup/PreSetupActivityImpl;->s:Lbny;

    invoke-virtual {v0}, Lbny;->h()Lbnj;

    move-result-object v0

    const/16 v4, 0x12e

    invoke-interface {v0, v2, v1, v4, v3}, Lbnj;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lbnj;

    move-result-object v0

    const-string v1, "Start 30s dismissal timer"

    invoke-interface {v0, v1}, Lbnj;->n(Ljava/lang/String;)V

    new-instance v0, Laus;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Laus;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/carsetup/setup/PreSetupActivityImpl;->x:Landroid/os/Handler;

    new-instance v1, Lvh;

    const/4 v2, 0x7

    invoke-direct {v1, p0, v2}, Lvh;-><init>(Lcom/google/android/gms/carsetup/setup/PreSetupActivityImpl;I)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    nop

    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/carsetup/setup/PreSetupActivityImpl;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/os/Vibrator;->vibrate([JILandroid/media/AudioAttributes;)V

    :cond_1
    return-void

    :array_0
    .array-data 8
        0x0
        0x258
        0x64
        0x258
    .end array-data
.end method

.method public final t()V
    .locals 6

    invoke-static {p0}, Lanx;->a(Landroid/content/Context;)Lanx;

    move-result-object v0

    iget-object v1, v0, Lanx;->b:Lalx;

    invoke-virtual {v1}, Lalx;->d()I

    move-result v1

    iget-object v0, v0, Lanx;->b:Lalx;

    add-int/lit8 v1, v1, 0x1

    iget-object v0, v0, Lalx;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "DONT_SHOW_AGAIN_DISMISS_COUNT"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object v0, Lanx;->a:Lbny;

    invoke-virtual {v0}, Lbny;->h()Lbnj;

    move-result-object v0

    const-string v2, "com/google/android/gms/carsetup/setup/PreSetupDontShowAgainManager"

    const-string v3, "recordDismiss"

    const/16 v4, 0x39

    const-string v5, "PreSetupDontShowAgainManager.java"

    invoke-interface {v0, v2, v3, v4, v5}, Lbnj;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lbnj;

    move-result-object v0

    const-string v2, "Setting DSA count to: %d"

    invoke-interface {v0, v2, v1}, Lbnj;->o(Ljava/lang/String;I)V

    return-void
.end method

.method public final u()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/carsetup/setup/PreSetupActivityImpl;->z:Lama;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lanv;

    invoke-direct {v0, p0}, Lanv;-><init>(Lcom/google/android/gms/carsetup/setup/PreSetupActivityImpl;)V

    iput-object v0, p0, Lcom/google/android/gms/carsetup/setup/PreSetupActivityImpl;->z:Lama;

    sget-object v1, Lcom/google/android/gms/carsetup/setup/PreSetupActivityImpl;->t:Landroid/content/IntentFilter;

    invoke-static {p0, v0, v1}, Laup;->d(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final v()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/carsetup/setup/PreSetupActivityImpl;->A:Lama;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lanw;

    invoke-direct {v0, p0}, Lanw;-><init>(Lcom/google/android/gms/carsetup/setup/PreSetupActivityImpl;)V

    iput-object v0, p0, Lcom/google/android/gms/carsetup/setup/PreSetupActivityImpl;->A:Lama;

    sget-object v1, Lcom/google/android/gms/carsetup/setup/PreSetupActivityImpl;->u:Landroid/content/IntentFilter;

    invoke-static {p0, v0, v1}, Laup;->d(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final w(Lp;)V
    .locals 4

    invoke-virtual {p0}, Ls;->a()Lai;

    move-result-object v0

    invoke-virtual {v0}, Lai;->h()Laq;

    move-result-object v0

    const v1, 0x7f0a00bd

    const-string v2, "fragment_main"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, p1, v2, v3}, Laq;->b(ILp;Ljava/lang/String;I)V

    check-cast v0, Lb;

    invoke-virtual {v0}, Lb;->e()V

    return-void
.end method

.method public final x(Z)V
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/gms/carsetup/setup/PreSetupActivityImpl;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/carsetup/setup/PreSetupActivityImpl;->v:Lang;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lang;->a()V

    :cond_0
    if-eqz p1, :cond_3

    sget-object p1, Lcom/google/android/gms/carsetup/setup/PreSetupActivityImpl;->s:Lbny;

    invoke-virtual {p1}, Lbny;->h()Lbnj;

    move-result-object v0

    const-string v1, "com/google/android/gms/carsetup/setup/PreSetupActivityImpl"

    const-string v2, "tearDown"

    const/16 v3, 0xc5

    const-string v4, "PreSetupActivityImpl.java"

    invoke-interface {v0, v1, v2, v3, v4}, Lbnj;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lbnj;

    move-result-object v0

    const-string v3, "Launching continueIntent"

    invoke-interface {v0, v3}, Lbnj;->n(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/carsetup/setup/PreSetupActivityImpl;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/carsetup/setup/PreSetupActivityImpl;->y:Landroid/content/Intent;

    if-nez v3, :cond_1

    invoke-virtual {p1}, Lbmp;->e()Lbnj;

    move-result-object p1

    const/16 v0, 0xc8

    invoke-interface {p1, v1, v2, v0, v4}, Lbnj;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lbnj;

    move-result-object p1

    const-string v0, "continueIntent request to launch was null: skipping"

    invoke-interface {p1, v0}, Lbnj;->n(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    nop

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/carsetup/setup/PreSetupActivityImpl;->y:Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/carsetup/setup/PreSetupActivityImpl;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lbmp;->e()Lbnj;

    move-result-object p1

    const/16 v0, 0xcc

    invoke-interface {p1, v1, v2, v0, v4}, Lbnj;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lbnj;

    move-result-object p1

    const-string v0, "Unable to launch continueIntent: did not resolve"

    invoke-interface {p1, v0}, Lbnj;->n(Ljava/lang/String;)V

    :cond_3
    :goto_0
    nop

    const p1, 0x7f0a0059

    invoke-virtual {p0, p1}, Lbv;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/car/libs/cakewalk/bottomsheets/BottomSheetView;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcom/google/android/gms/car/libs/cakewalk/bottomsheets/BottomSheetView;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->z(I)V

    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/carsetup/setup/PreSetupActivityImpl;->finish()V

    return-void

    :cond_5
    return-void
.end method

.method public final y()Z
    .locals 1

    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/carsetup/setup/PreSetupActivityImpl;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    return v0
.end method

.method public final z()Z
    .locals 1

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/carsetup/setup/PreSetupActivityImpl;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
