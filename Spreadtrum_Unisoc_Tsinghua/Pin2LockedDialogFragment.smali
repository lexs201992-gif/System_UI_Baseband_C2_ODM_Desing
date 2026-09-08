.class public Lcom/unisoc/phone/settings/fdn/Pin2LockedDialogFragment;
.super Landroid/app/DialogFragment;
.source "Pin2LockedDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisoc/phone/settings/fdn/Pin2LockedDialogFragment$Listener;
    }
.end annotation


# static fields
.field static final DIALOG_ID_PUK2_LOCKED_OUT:I = 0xa

.field static final DIALOG_ID_PUK2_REQUESTED_ON_PIN_CHANGED:I = 0xc

.field static final DIALOG_ID_PUK2_REQUESTED_ON_PIN_ENTRY:I = 0xb

.field static final KEY_DIALOG_ID:Ljava/lang/String; = "key_dialog_id"

.field static final TAG_PIN2_LOCKED_DIALOG:Ljava/lang/String; = "tag_pin2_locked_dialog"


# instance fields
.field private mId:I

.field private mListener:Lcom/unisoc/phone/settings/fdn/Pin2LockedDialogFragment$Listener;


# direct methods
.method public static synthetic $r8$lambda$a4kbbyLD6crPg9Ew5ICu2qnQw7o(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/unisoc/phone/settings/fdn/Pin2LockedDialogFragment;->lambda$onCreateDialog$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$nM3JiyYJyufdOU8Kazy69yEm2xg(Lcom/unisoc/phone/settings/fdn/Pin2LockedDialogFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/unisoc/phone/settings/fdn/Pin2LockedDialogFragment;->lambda$onCreateDialog$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method private static synthetic lambda$onCreateDialog$0(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method private synthetic lambda$onCreateDialog$1(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p2, p0, Lcom/unisoc/phone/settings/fdn/Pin2LockedDialogFragment;->mListener:Lcom/unisoc/phone/settings/fdn/Pin2LockedDialogFragment$Listener;

    iget p0, p0, Lcom/unisoc/phone/settings/fdn/Pin2LockedDialogFragment;->mId:I

    invoke-interface {p2, p0}, Lcom/unisoc/phone/settings/fdn/Pin2LockedDialogFragment$Listener;->onRequestPuk2(I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget v0, p0, Lcom/unisoc/phone/settings/fdn/Pin2LockedDialogFragment;->mId:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/unisoc/phone/settings/fdn/Pin2LockedDialogFragment;->mListener:Lcom/unisoc/phone/settings/fdn/Pin2LockedDialogFragment$Listener;

    invoke-interface {p0, v0}, Lcom/unisoc/phone/settings/fdn/Pin2LockedDialogFragment$Listener;->onRequestPuk2(I)V

    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    instance-of v0, p1, Lcom/unisoc/phone/settings/fdn/Pin2LockedDialogFragment$Listener;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/unisoc/phone/settings/fdn/Pin2LockedDialogFragment$Listener;

    iput-object v0, p0, Lcom/unisoc/phone/settings/fdn/Pin2LockedDialogFragment;->mListener:Lcom/unisoc/phone/settings/fdn/Pin2LockedDialogFragment$Listener;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "key_dialog_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/unisoc/phone/settings/fdn/Pin2LockedDialogFragment;->mId:I

    const/16 v2, 0xa

    const v3, 0x7f11043c

    const/4 v4, -0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne v0, v2, :cond_1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p1, 0x7f1104f4

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0, v3}, Landroid/app/DialogFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    new-instance v0, Lcom/unisoc/phone/settings/fdn/Pin2LockedDialogFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/unisoc/phone/settings/fdn/Pin2LockedDialogFragment$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, v4, p0, v0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-object p1

    :cond_1
    const/16 v2, 0xc

    if-eq v0, v2, :cond_3

    const/16 v2, 0xb

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    return-object v1

    :cond_3
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p1, 0x7f1104f5

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0, v3}, Landroid/app/DialogFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Lcom/unisoc/phone/settings/fdn/Pin2LockedDialogFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/unisoc/phone/settings/fdn/Pin2LockedDialogFragment$$ExternalSyntheticLambda1;-><init>(Lcom/unisoc/phone/settings/fdn/Pin2LockedDialogFragment;)V

    invoke-virtual {p1, v4, v0, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-object p1
.end method
