.class public final Lcom/google/android/material/snackbar/Snackbar;
.super Lcom/google/android/material/snackbar/BaseTransientBottomBar;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/snackbar/BaseTransientBottomBar<",
        "Lcom/google/android/material/snackbar/Snackbar;",
        ">;"
    }
.end annotation


# static fields
.field public static final F:[I


# instance fields
.field public final D:Landroid/view/accessibility/AccessibilityManager;

.field public E:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const v0, 0x7f040481

    const v1, 0x7f040483

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/snackbar/Snackbar;->F:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/material/snackbar/SnackbarContentLayout;Lcom/google/android/material/snackbar/SnackbarContentLayout;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/material/snackbar/SnackbarContentLayout;Lcom/google/android/material/snackbar/SnackbarContentLayout;)V

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "accessibility"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/google/android/material/snackbar/Snackbar;->D:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method

.method public static i(Landroid/view/View;I)Lcom/google/android/material/snackbar/Snackbar;
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/material/snackbar/Snackbar;->j(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p0

    return-object p0
.end method

.method public static j(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;
    .locals 8

    const/4 v0, 0x0

    move-object v1, v0

    :cond_0
    instance-of v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    instance-of v2, p0, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x1020002

    if-ne v1, v2, :cond_2

    :goto_0
    check-cast p0, Landroid/view/ViewGroup;

    goto :goto_2

    :cond_2
    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    :cond_3
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of v2, p0, Landroid/view/View;

    if-eqz v2, :cond_4

    check-cast p0, Landroid/view/View;

    goto :goto_1

    :cond_4
    move-object p0, v0

    :cond_5
    :goto_1
    if-nez p0, :cond_0

    move-object p0, v1

    :goto_2
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget-object v2, Lcom/google/android/material/snackbar/Snackbar;->F:[I

    invoke-virtual {v0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v2, v6, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    if-eq v5, v4, :cond_6

    if-eq v7, v4, :cond_6

    goto :goto_3

    :cond_6
    move v6, v3

    :goto_3
    if-eqz v6, :cond_7

    const v2, 0x7f0d00c3

    goto :goto_4

    :cond_7
    const v2, 0x7f0d0035

    :goto_4
    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    new-instance v2, Lcom/google/android/material/snackbar/Snackbar;

    invoke-direct {v2, v0, p0, v1, v1}, Lcom/google/android/material/snackbar/Snackbar;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/material/snackbar/SnackbarContentLayout;Lcom/google/android/material/snackbar/SnackbarContentLayout;)V

    iget-object p0, v2, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->i:Lcom/google/android/material/snackbar/BaseTransientBottomBar$g;

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    invoke-virtual {p0}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->getMessageView()Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput p2, v2, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->k:I

    return-object v2

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No suitable parent found from the given view. Please provide a valid view."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b(I)V

    return-void
.end method

.method public final h()I
    .locals 2

    iget v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->k:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/material/snackbar/Snackbar;->E:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    or-int/lit8 v1, v1, 0x1

    or-int/lit8 v1, v1, 0x2

    iget-object p0, p0, Lcom/google/android/material/snackbar/Snackbar;->D:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0, v0, v1}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    move-result p0

    return p0
.end method

.method public final k(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->i:Lcom/google/android/material/snackbar/BaseTransientBottomBar$g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->getActionView()Landroid/widget/Button;

    move-result-object v0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/material/snackbar/Snackbar;->E:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Lb8/h;

    invoke-direct {p1, p0, p2}, Lb8/h;-><init>(Lcom/google/android/material/snackbar/Snackbar;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-boolean v1, p0, Lcom/google/android/material/snackbar/Snackbar;->E:Z

    :goto_0
    return-void
.end method

.method public final l()V
    .locals 6

    invoke-static {}, Lcom/google/android/material/snackbar/h;->b()Lcom/google/android/material/snackbar/h;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/material/snackbar/Snackbar;->h()I

    move-result v1

    iget-object p0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->w:Lcom/google/android/material/snackbar/BaseTransientBottomBar$c;

    iget-object v2, v0, Lcom/google/android/material/snackbar/h;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {v0, p0}, Lcom/google/android/material/snackbar/h;->c(Lcom/google/android/material/snackbar/BaseTransientBottomBar$c;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object p0, v0, Lcom/google/android/material/snackbar/h;->c:Lcom/google/android/material/snackbar/h$c;

    iput v1, p0, Lcom/google/android/material/snackbar/h$c;->b:I

    iget-object v1, v0, Lcom/google/android/material/snackbar/h;->b:Landroid/os/Handler;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p0, v0, Lcom/google/android/material/snackbar/h;->c:Lcom/google/android/material/snackbar/h$c;

    invoke-virtual {v0, p0}, Lcom/google/android/material/snackbar/h;->d(Lcom/google/android/material/snackbar/h$c;)V

    goto :goto_2

    :cond_0
    iget-object v3, v0, Lcom/google/android/material/snackbar/h;->d:Lcom/google/android/material/snackbar/h$c;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    const/4 v5, 0x1

    if-eqz p0, :cond_1

    iget-object v3, v3, Lcom/google/android/material/snackbar/h$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p0, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    if-eqz v3, :cond_2

    move v4, v5

    :cond_2
    if-eqz v4, :cond_3

    iget-object p0, v0, Lcom/google/android/material/snackbar/h;->d:Lcom/google/android/material/snackbar/h$c;

    iput v1, p0, Lcom/google/android/material/snackbar/h$c;->b:I

    goto :goto_1

    :cond_3
    new-instance v3, Lcom/google/android/material/snackbar/h$c;

    invoke-direct {v3, v1, p0}, Lcom/google/android/material/snackbar/h$c;-><init>(ILcom/google/android/material/snackbar/BaseTransientBottomBar$c;)V

    iput-object v3, v0, Lcom/google/android/material/snackbar/h;->d:Lcom/google/android/material/snackbar/h$c;

    :goto_1
    iget-object p0, v0, Lcom/google/android/material/snackbar/h;->c:Lcom/google/android/material/snackbar/h$c;

    if-eqz p0, :cond_4

    const/4 v1, 0x4

    invoke-virtual {v0, p0, v1}, Lcom/google/android/material/snackbar/h;->a(Lcom/google/android/material/snackbar/h$c;I)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    const/4 p0, 0x0

    iput-object p0, v0, Lcom/google/android/material/snackbar/h;->c:Lcom/google/android/material/snackbar/h$c;

    iget-object v1, v0, Lcom/google/android/material/snackbar/h;->d:Lcom/google/android/material/snackbar/h$c;

    if-eqz v1, :cond_6

    iput-object v1, v0, Lcom/google/android/material/snackbar/h;->c:Lcom/google/android/material/snackbar/h$c;

    iput-object p0, v0, Lcom/google/android/material/snackbar/h;->d:Lcom/google/android/material/snackbar/h$c;

    iget-object v1, v1, Lcom/google/android/material/snackbar/h$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/snackbar/h$b;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Lcom/google/android/material/snackbar/h$b;->a()V

    goto :goto_2

    :cond_5
    iput-object p0, v0, Lcom/google/android/material/snackbar/h;->c:Lcom/google/android/material/snackbar/h$c;

    :cond_6
    :goto_2
    monitor-exit v2

    return-void

    :goto_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_3
.end method
