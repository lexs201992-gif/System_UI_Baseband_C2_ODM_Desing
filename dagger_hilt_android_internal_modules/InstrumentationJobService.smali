.class public final Lcom/motorola/gamemode/instrumentation/InstrumentationJobService;
.super Lk9/a;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SpecifyJobSchedulerIdRange"
    }
.end annotation


# static fields
.field public static final o:Ljava/lang/String;


# instance fields
.field public n:Lk9/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/motorola/gamemode/common/e;->a:Z

    invoke-static {}, Lcom/motorola/gamemode/common/e$a;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/gamemode/instrumentation/InstrumentationJobService;->o:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lk9/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lk9/b;
    .locals 0

    iget-object p0, p0, Lcom/motorola/gamemode/instrumentation/InstrumentationJobService;->n:Lk9/b;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "mInstrumentationHelper"

    invoke-static {p0}, Lbc/l;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 9

    sget-boolean p1, Lcom/motorola/gamemode/common/e;->a:Z

    sget-object v0, Lcom/motorola/gamemode/instrumentation/InstrumentationJobService;->o:Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string v1, "onStartJob"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/gamemode/instrumentation/InstrumentationJobService;->a()Lk9/b;

    move-result-object v1

    invoke-virtual {v1}, Lk9/b;->a()Ll9/e;

    move-result-object v1

    invoke-virtual {v1}, Ll9/e;->b()Ll9/g;

    move-result-object v1

    invoke-virtual {v1}, Ll9/g;->b()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v5, v3, v1

    if-eqz p1, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Current time:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", lastCheckinTime:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", timeElapsed:"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0x1

    invoke-virtual {v1, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    cmp-long v1, v5, v1

    const/4 v2, 0x0

    const/4 v7, 0x0

    if-gez v1, :cond_5

    if-eqz p1, :cond_2

    const-string p1, "Time not elapsed"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-wide/16 v0, 0x0

    cmp-long p1, v5, v0

    if-gez p1, :cond_4

    invoke-virtual {p0}, Lcom/motorola/gamemode/instrumentation/InstrumentationJobService;->a()Lk9/b;

    move-result-object p0

    invoke-virtual {p0}, Lk9/b;->a()Ll9/e;

    move-result-object p1

    invoke-virtual {p1}, Ll9/e;->b()Ll9/g;

    move-result-object p1

    iget-object p1, p1, Ll9/g;->a:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "checkin_time"

    invoke-interface {p1, v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p0, p0, Lk9/b;->c:Lm9/c;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lm9/c;->b()Lm9/g;

    move-result-object p0

    iget-object p0, p0, Lm9/g;->a:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_3
    const-string p0, "mH5GameStats"

    invoke-static {p0}, Lbc/l;->j(Ljava/lang/String;)V

    throw v2

    :cond_4
    :goto_0
    return v7

    :cond_5
    if-eqz p1, :cond_6

    const-string p1, "Time elapsed"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-static {}, Lp2/b;->a()Lkc/g1;

    move-result-object p1

    sget-object v0, Lkc/n0;->b:Lqc/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p1}, Lsb/f$a;->a(Lsb/f;Lsb/f;)Lsb/f;

    move-result-object p1

    invoke-static {p1}, Lkc/b0;->a(Lsb/f;)Lpc/e;

    move-result-object p1

    new-instance v0, Lcom/motorola/gamemode/instrumentation/InstrumentationJobService$a;

    invoke-direct {v0, p0, v3, v4, v2}, Lcom/motorola/gamemode/instrumentation/InstrumentationJobService$a;-><init>(Lcom/motorola/gamemode/instrumentation/InstrumentationJobService;JLsb/d;)V

    const/4 p0, 0x3

    invoke-static {p1, v2, v0, p0}, Lj8/b;->i(Lkc/a0;Lsb/e;Lac/p;I)Lkc/s1;

    return v7
.end method

.method public final onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    sget-boolean p0, Lcom/motorola/gamemode/common/e;->a:Z

    sget-boolean p0, Lcom/motorola/gamemode/common/e;->a:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/motorola/gamemode/instrumentation/InstrumentationJobService;->o:Ljava/lang/String;

    const-string p1, "onStopJob"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
