.class public Lcom/google/android/apps/auto/carservice/gmscorecompatstub/StubFirstActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field private static final a:Lbnz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "CAR.StubFirst"

    invoke-static {v0}, Lbnz;->k(Ljava/lang/String;)Lbnz;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/auto/carservice/gmscorecompatstub/StubFirstActivity;->a:Lbnz;

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
    .locals 11

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget-object p1, Lcom/google/android/apps/auto/carservice/gmscorecompatstub/StubFirstActivity;->a:Lbnz;

    invoke-virtual {p1}, Lbny;->h()Lbnj;

    move-result-object v0

    const-string v1, "com/google/android/apps/auto/carservice/gmscorecompatstub/StubFirstActivity"

    const-string v2, "onCreate"

    const/16 v3, 0x21

    const-string v4, "StubFirstActivity.java"

    invoke-interface {v0, v1, v2, v3, v4}, Lbnx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lbnj;

    move-result-object v0

    check-cast v0, Lbnx;

    invoke-interface {v0, v2}, Lbnx;->n(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/apps/auto/carservice/gmscorecompatstub/StubFirstActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Layx;->c(Landroid/content/Context;)Z

    move-result v0

    const/16 v3, 0x24

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lbmp;->c()Lbnj;

    move-result-object p1

    invoke-interface {p1, v1, v2, v3, v4}, Lbnx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lbnj;

    move-result-object p1

    check-cast p1, Lbnx;

    const-string v0, "User is locked"

    invoke-interface {p1, v0}, Lbnx;->n(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/apps/auto/carservice/gmscorecompatstub/StubFirstActivity;->finish()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/auto/carservice/gmscorecompatstub/StubFirstActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v5, "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_3

    :cond_1
    nop

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/apps/auto/carservice/gmscorecompatstub/StubFirstActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/google/android/apps/auto/carservice/gmscorecompatstub/StubFirstActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x400

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/google/android/apps/auto/carservice/gmscorecompatstub/StubFirstActivity;->overridePendingTransition(II)V

    sget-object v2, Lakz;->a:Lbnz;

    invoke-static {}, Lcta;->e()Z

    move-result v2

    const/4 v5, 0x5

    if-eqz v2, :cond_2

    invoke-static {}, Lrw;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0}, Latt;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_2

    :cond_2
    sget-object v2, Lakz;->a:Lbnz;

    invoke-virtual {v2}, Lbny;->h()Lbnj;

    move-result-object v2

    const-string v6, "com/google/android/apps/auto/carservice/carsetup/aapsupportchecker/DeviceLocaleSupportChecker"

    const-string v7, "isSupported"

    const-string v8, "DeviceLocaleSupportChecker.java"

    invoke-interface {v2, v6, v7, v3, v8}, Lbnx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lbnj;

    move-result-object v2

    check-cast v2, Lbnx;

    const-string v3, "Country check for %s"

    invoke-static {}, Lcta;->d()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v3, v9}, Lbnx;->p(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcta;->f()Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_3

    sget-object v2, Lakz;->a:Lbnz;

    invoke-virtual {v2}, Lbny;->h()Lbnj;

    move-result-object v2

    const/16 v5, 0x27

    invoke-interface {v2, v6, v7, v5, v8}, Lbnx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lbnj;

    move-result-object v2

    check-cast v2, Lbnx;

    const-string v5, "Country not allowed"

    invoke-interface {v2, v5}, Lbnx;->n(Ljava/lang/String;)V

    const/4 v5, 0x2

    goto/16 :goto_2

    :cond_3
    invoke-static {}, Lcta;->c()Lctv;

    move-result-object v2

    iget v6, v2, Lctv;->a:I

    and-int/2addr v6, p1

    if-eqz v6, :cond_6

    iget-object v2, v2, Lctv;->b:Lctu;

    if-nez v2, :cond_4

    sget-object v2, Lctu;->c:Lctu;

    :cond_4
    iget v6, v2, Lctu;->a:I

    if-ne v6, v3, :cond_5

    iget-object v2, v2, Lctu;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    goto :goto_0

    :cond_6
    nop

    const-string v6, "phone"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_c

    iget-object v7, v2, Lctv;->d:Lcja;

    invoke-static {v7}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v2, v2, Lctv;->d:Lcja;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lctu;

    iget v6, v2, Lctu;->a:I

    if-ne v6, v3, :cond_7

    iget-object v2, v2, Lctu;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0

    :cond_7
    const/4 v2, 0x0

    goto :goto_0

    :cond_8
    iget-object v2, v2, Lctv;->c:Lctu;

    if-nez v2, :cond_9

    sget-object v2, Lctu;->c:Lctu;

    :cond_9
    iget v6, v2, Lctu;->a:I

    if-ne v6, v3, :cond_a

    iget-object v2, v2, Lctu;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0

    :cond_a
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_c

    invoke-static {}, Lcth;->c()Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v5, 0x2

    goto :goto_2

    :cond_b
    :try_start_0
    invoke-static {p0}, Lor;->c(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x0

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    :goto_1
    const/4 v5, 0x2

    goto :goto_2

    :cond_c
    invoke-static {}, Lcta;->g()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-static {}, Lcta;->h()Z

    move-result v2

    if-eqz v2, :cond_d

    goto :goto_2

    :cond_d
    const/4 v5, 0x3

    goto :goto_2

    :cond_e
    const/4 v5, 0x0

    :goto_2
    nop

    const-string v2, "keyguard"

    invoke-virtual {p0, v2}, Lcom/google/android/apps/auto/carservice/gmscorecompatstub/StubFirstActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    sget-object v3, Lcom/google/android/apps/auto/carservice/gmscorecompatstub/StubFirstActivity;->a:Lbnz;

    invoke-virtual {v3}, Lbmp;->c()Lbnj;

    move-result-object v6

    const-string v7, "startPreSetup"

    const/16 v8, 0x4a

    invoke-interface {v6, v1, v7, v8, v4}, Lbnx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lbnj;

    move-result-object v6

    check-cast v6, Lbnx;

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v7, "Starting presetup isKeyguardLocked=%b"

    invoke-interface {v6, v7, v2}, Lbnx;->p(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v2, Lala;->a:Lbnz;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v6, "connectionType is required"

    invoke-static {p1, v6}, Let;->g(ZLjava/lang/Object;)V

    const-string v6, "aaSupportResult is required"

    invoke-static {p1, v6}, Let;->g(ZLjava/lang/Object;)V

    const-string v6, "continueIntent is required"

    invoke-static {p1, v6}, Let;->g(ZLjava/lang/Object;)V

    sget-object v6, Lala;->a:Lbnz;

    invoke-virtual {v6}, Lbny;->h()Lbnj;

    move-result-object v6

    const-string v7, "com/google/android/apps/auto/carservice/carsetup/setup/PreSetupStarter"

    const-string v8, "start"

    const/16 v9, 0x4d

    const-string v10, "PreSetupStarter.java"

    invoke-interface {v6, v7, v8, v9, v10}, Lbnx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lbnj;

    move-result-object v6

    check-cast v6, Lbnx;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {v6, v7, v8, v9, v10}, Lbnx;->A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    sget-object v7, Laky;->a:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v7, "PreSetup.AA_SUPPORT_RESULT"

    invoke-virtual {v6, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "PreSetup.CONTINUE_INTENT"

    invoke-virtual {v6, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "connection_type"

    invoke-virtual {v6, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "PreSetup.SKIP_TO_USB_RESET"

    invoke-virtual {v6, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 p1, 0x10810000

    invoke-virtual {v6, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {v3}, Lbmp;->c()Lbnj;

    move-result-object p1

    const-string v0, "handleIntent"

    const/16 v2, 0x41

    invoke-interface {p1, v1, v0, v2, v4}, Lbnx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lbnj;

    move-result-object p1

    check-cast p1, Lbnx;

    const-string v0, "PreSetup flow started, exiting for now"

    invoke-interface {p1, v0}, Lbnx;->n(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/apps/auto/carservice/gmscorecompatstub/StubFirstActivity;->finishAndRemoveTask()V

    return-void

    :cond_f
    :goto_3
    invoke-virtual {p1}, Lbmp;->e()Lbnj;

    move-result-object p1

    const/16 v0, 0x2b

    invoke-interface {p1, v1, v2, v0, v4}, Lbnx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lbnj;

    move-result-object p1

    check-cast p1, Lbnx;

    const-string v0, "Missing intent or invalid action!"

    invoke-interface {p1, v0}, Lbnx;->n(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/apps/auto/carservice/gmscorecompatstub/StubFirstActivity;->finish()V

    return-void
.end method
