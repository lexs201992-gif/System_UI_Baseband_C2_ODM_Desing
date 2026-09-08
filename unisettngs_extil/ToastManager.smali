.class public Lcom/unisoc/settings/utils/ToastManager;
.super Ljava/lang/Object;
.source "ToastManager.java"


# static fields
.field private static mToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setToast(Landroid/widget/Toast;)V
    .locals 1

    sget-object v0, Lcom/unisoc/settings/utils/ToastManager;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    sput-object p0, Lcom/unisoc/settings/utils/ToastManager;->mToast:Landroid/widget/Toast;

    return-void
.end method
