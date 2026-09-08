.class public final Lcom/motorola/gamemode/ui/launcher/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/gamemode/ui/launcher/a$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/motorola/gamemode/common/e;->a:Z

    invoke-static {}, Lcom/motorola/gamemode/common/e$a;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/gamemode/ui/launcher/a;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;IILcom/motorola/gamemode/common/n$b;Lfa/u;I)Lpb/f;
    .locals 3

    const-string v0, "myMomentsAdapter"

    invoke-static {p4, v0}, Lbc/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070411

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v1, 0x2

    mul-int/2addr v0, v1

    mul-int/2addr v0, p2

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0702c0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sub-int/2addr p1, v0

    div-int/2addr p1, p2

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    if-eqz p2, :cond_1

    const/4 p3, 0x1

    if-eq p2, p3, :cond_0

    const p0, 0x7f0801b0

    invoke-virtual {p4, p0}, Lfa/u;->w(I)V

    move p0, p1

    goto :goto_1

    :cond_0
    const p2, 0x7f0801af

    invoke-virtual {p4, p2}, Lfa/u;->w(I)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f07030e

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f070311

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    if-ne p5, v1, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070400

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p3, 0x7f070402

    goto :goto_0

    :cond_1
    const p2, 0x7f0801ae

    invoke-virtual {p4, p2}, Lfa/u;->w(I)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f07030d

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f070310

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    if-ne p5, v1, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0703ff

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p3, 0x7f070401

    :goto_0
    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    :cond_2
    int-to-float p0, p2

    int-to-float p2, p1

    int-to-float p3, p3

    div-float/2addr p2, p3

    mul-float/2addr p2, p0

    float-to-int p0, p2

    :goto_1
    new-instance p2, Lpb/f;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {p2, p1, p0}, Lpb/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2
.end method

.method public static b(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
    .locals 5

    const-string v0, "imageUri"

    invoke-static {p1, v0}, Lbc/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sget-object v3, Lcom/motorola/gamemode/ui/launcher/a;->a:Ljava/lang/String;

    const-string v4, "android.intent.extra.STREAM"

    if-ne v1, v2, :cond_1

    sget-boolean v1, Lcom/motorola/gamemode/common/e;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "One item is shared with ACTION_SEND and type "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Parcelable;

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    sget-boolean v1, Lcom/motorola/gamemode/common/e;->a:Z

    if-eqz v1, :cond_2

    const-string v1, "Multiple items are shared with ACTION_SEND_MULTIPLE and type "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :goto_0
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p0, 0x0

    invoke-static {v0, p0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p0

    const/high16 p1, 0x10000000

    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "addFlags(...)"

    invoke-static {p0, p1}, Lbc/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "context"

    invoke-static {p0, v0}, Lbc/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Ld9/b;->f:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    sget-object v0, Lcom/motorola/gamemode/common/n;->a:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "enterprise_edition"

    const/4 v2, -0x1

    invoke-static {p0, v0, v2}, Lcom/motorola/android/provider/MotorolaSettings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    sget-boolean v0, Lcom/motorola/gamemode/common/e;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "is Enterprise Edition: "

    invoke-static {v0, p0}, Lk5/f0;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/motorola/gamemode/common/n;->a:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    move p0, v0

    goto :goto_0

    :cond_1
    move p0, v1

    :goto_0
    if-nez p0, :cond_2

    move v1, v0

    :cond_2
    return v1
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "url"

    invoke-static {p0, v0}, Lbc/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_2

    invoke-static {p0}, Ljc/g;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "retry"

    invoke-static {p0, v0}, Lbc/l;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :cond_2
    :goto_1
    return v1
.end method

.method public static e(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p0, v0}, Lbc/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/motorola/gamemode/ui/PreferenceSettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "internal_settings_launch"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static f(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 25

    move-object/from16 v0, p0

    const-string v1, "myMomentsList"

    invoke-static {v0, v1}, Lbc/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lt9/b0;

    iget-wide v3, v3, Lt9/b0;->c:J

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    const-string v6, "getInstance(...)"

    invoke-static {v5, v6}, Lbc/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v3, 0xb

    invoke-virtual {v5, v3, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xc

    invoke-virtual {v5, v4, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v7, 0xd

    invoke-virtual {v5, v7, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v8, 0xe

    invoke-virtual {v5, v8, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    new-instance v5, Lga/a$a;

    invoke-direct {v5, v2, v9, v10}, Lga/a$a;-><init>(IJ)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v5, v2

    move v11, v5

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    const-string v13, "null cannot be cast to non-null type com.motorola.gamemode.ui.launcher.data.MomentDataListItem.DateItem"

    if-eqz v12, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lt9/b0;

    iget-wide v14, v12, Lt9/b0;->c:J

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    invoke-static {v8, v6}, Lbc/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8, v14, v15}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v8, v3, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v8, v4, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v8, v7, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v14, 0xe

    invoke-virtual {v8, v14, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    cmp-long v8, v3, v9

    if-eqz v8, :cond_0

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v13}, Lbc/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lga/a$a;

    iput v11, v5, Lga/a$a;->b:I

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-instance v8, Lga/a$a;

    invoke-direct {v8, v2, v3, v4}, Lga/a$a;-><init>(IJ)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v11, v2

    move-wide v9, v3

    :cond_0
    add-int/lit8 v11, v11, 0x1

    new-instance v3, Lga/a$b;

    iget-object v4, v12, Lt9/b0;->a:Ljava/lang/String;

    iget-wide v7, v12, Lt9/b0;->c:J

    iget v13, v12, Lt9/b0;->d:I

    iget v2, v12, Lt9/b0;->e:I

    iget-wide v14, v12, Lt9/b0;->g:J

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-wide/from16 v18, v7

    move/from16 v20, v13

    move/from16 v21, v2

    move/from16 v22, v5

    move-wide/from16 v23, v14

    invoke-direct/range {v16 .. v24}, Lga/a$b;-><init>(Ljava/lang/String;JIIIJ)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    const/16 v3, 0xb

    const/16 v4, 0xc

    const/16 v7, 0xd

    const/16 v8, 0xe

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v13}, Lbc/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lga/a$a;

    iput v11, v0, Lga/a$a;->b:I

    return-object v1
.end method
