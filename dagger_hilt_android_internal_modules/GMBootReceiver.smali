.class public final Lcom/motorola/gamemode/GMBootReceiver;
.super Lx8/g0;
.source "SourceFile"


# static fields
.field public static final d:Ljava/lang/String;


# instance fields
.field public c:Landroid/app/NotificationManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/motorola/gamemode/common/e;->a:Z

    invoke-static {}, Lcom/motorola/gamemode/common/e$a;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/gamemode/GMBootReceiver;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lx8/g0;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/app/NotificationManager;
    .locals 0

    iget-object p0, p0, Lcom/motorola/gamemode/GMBootReceiver;->c:Landroid/app/NotificationManager;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "mNotificationManager"

    invoke-static {p0}, Lbc/l;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    invoke-super {p0, p1, p2}, Lx8/g0;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    sget-boolean v1, Lcom/motorola/gamemode/common/e;->a:Z

    sget-object v2, Lcom/motorola/gamemode/GMBootReceiver;->d:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v3, "onReceive "

    invoke-static {v3, p2, v2}, Ld5/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {p1}, Lbc/l;->c(Ljava/lang/Object;)V

    invoke-static {p1}, Lm0/h;->a(Landroid/content/Context;)Z

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Received action: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " user unlocked: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-static {p2, v3}, Lbc/l;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_16

    sget-boolean p2, Ld9/b;->a:Z

    const/4 v3, 0x1

    if-nez p2, :cond_4

    invoke-static {p1}, Lmotorola/core_services/misc/WaterfallManager;->hasWaterfallDisplay(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_4

    new-instance p2, Lx8/q;

    invoke-direct {p2, p1}, Lx8/q;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Lx8/q;->c()Ljava/util/Set;

    move-result-object v4

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "disableBlockEdge: "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v3

    if-eqz v1, :cond_4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sget-object v5, Lcom/motorola/gamemode/common/k;->a:Ljava/lang/String;

    invoke-static {p1, v4}, Lcom/motorola/gamemode/common/k$a;->l(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    sget-object v1, Lqb/s;->k:Lqb/s;

    invoke-virtual {p2, v1}, Lx8/q;->g(Ljava/util/Set;)V

    :cond_4
    sget-boolean p2, Lcom/motorola/gamemode/common/e;->a:Z

    if-eqz p2, :cond_5

    const-string v1, "exitDoNotDisturb"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {p0}, Lcom/motorola/gamemode/GMBootReceiver;->a()Landroid/app/NotificationManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGranted()Z

    move-result v1

    if-nez v1, :cond_6

    if-eqz p2, :cond_c

    const-string p0, "Notification Policy Not Granted"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_6
    invoke-virtual {p0}, Lcom/motorola/gamemode/GMBootReceiver;->a()Landroid/app/NotificationManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationManager;->getAutomaticZenRules()Ljava/util/Map;

    move-result-object v1

    if-eqz p2, :cond_7

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v4, "automaticZenRules: "

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-static {v1}, Lbc/l;->c(Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_8
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-virtual {p0}, Lcom/motorola/gamemode/GMBootReceiver;->a()Landroid/app/NotificationManager;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/app/NotificationManager;->removeAutomaticZenRule(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    sget-boolean v4, Lcom/motorola/gamemode/common/e;->a:Z

    if-eqz v4, :cond_8

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ruleId = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " successfully removed."

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_9
    invoke-virtual {p0}, Lcom/motorola/gamemode/GMBootReceiver;->a()Landroid/app/NotificationManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/NotificationManager;->getAutomaticZenRules()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_a
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/motorola/gamemode/GMBootReceiver;->a()Landroid/app/NotificationManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/NotificationManager;->getAutomaticZenRule(Ljava/lang/String;)Landroid/app/AutomaticZenRule;

    move-result-object v4

    sget-boolean v5, Lcom/motorola/gamemode/common/e;->a:Z

    if-eqz v5, :cond_b

    invoke-virtual {v4}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    sget-object v5, Lcom/motorola/gamemode/common/k;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f140033

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "getString(...)"

    invoke-static {v5, v6}, Lbc/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f1401c6

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Lbc/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v5, v7}, Lcom/motorola/gamemode/common/k$a;->h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lbc/l;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {p0}, Lcom/motorola/gamemode/GMBootReceiver;->a()Landroid/app/NotificationManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/NotificationManager;->removeAutomaticZenRule(Ljava/lang/String;)Z

    goto :goto_3

    :cond_c
    :goto_4
    sget-boolean p0, Lcom/motorola/gamemode/common/e;->a:Z

    if-eqz p0, :cond_d

    const-string p2, "resetAdaptiveBrightness"

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    new-instance p2, Lx8/q;

    invoke-direct {p2, p1}, Lx8/q;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Lx8/q;->a()Z

    move-result v1

    if-eqz p0, :cond_e

    const-string v4, "resetAdaptiveBrightness toggled: "

    invoke-static {v4, v1, v2}, Lo2/k;->a(Ljava/lang/String;ZLjava/lang/String;)V

    :cond_e
    const/4 v4, 0x0

    if-eqz v1, :cond_f

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v1, "screen_brightness_mode"

    invoke-static {p2, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_5

    :cond_f
    invoke-virtual {p2, v4}, Lx8/q;->e(Z)V

    :goto_5
    if-eqz p0, :cond_10

    const-string p2, "resetImmersiveModePreference"

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    new-instance p2, Lx8/q;

    invoke-direct {p2, p1}, Lx8/q;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v4}, Lx8/q;->h(Z)V

    if-eqz p0, :cond_11

    const-string p2, "resetColorInversion"

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    new-instance p2, Lx8/q;

    invoke-direct {p2, p1}, Lx8/q;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Lx8/q;->b()Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_12

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "accessibility_display_inversion_enabled"

    invoke-static {v1, v3, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_12
    const-string p2, "resetGlobalFFSetting: "

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Lx8/q;

    invoke-direct {p2, p1}, Lx8/q;-><init>(Landroid/content/Context;)V

    iget-object p2, p2, Lx8/q;->a:Landroid/content/SharedPreferences;

    const-string v1, "global_freeform"

    invoke-interface {p2, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_13

    move-object p0, v0

    goto :goto_6

    :cond_13
    invoke-interface {p2, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p0, :cond_14

    const-string p0, "getGlobalFFDefault = "

    invoke-static {p0, p2}, Lk6/e0;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lx8/q;->b:Ljava/lang/String;

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    :goto_6
    if-eqz p0, :cond_15

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    :try_start_0
    const-string p2, "touch_gesture_enable"

    const-string v1, "content://com.motorola.freeform.settings"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v3, p2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, v1, v3, v0, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    const-string p0, "update uri failed."

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    :goto_7
    sget-boolean p0, Lcom/motorola/gamemode/common/e;->a:Z

    if-eqz p0, :cond_16

    const-string p0, "resetMAXEMode"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    return-void
.end method
