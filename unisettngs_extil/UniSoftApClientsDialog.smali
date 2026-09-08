.class public Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog;
.super Landroidx/appcompat/app/AlertDialog;
.source "UniSoftApClientsDialog.java"

# interfaces
.implements Lcom/unisoc/settings/wifi/tether/UniSoftApClientUiBase;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog$SoftApClientsDialogListener;,
        Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog$ClientData;
    }
.end annotation


# static fields
.field private static final BUTTON_CANCEL:I = -0x3

.field private static final BUTTON_WHITELIST:I = -0x1

.field private static final PATTERNSTR:Ljava/lang/String; = "^[A-Fa-f0-9]{2}(:[A-Fa-f0-9]{2}){5}$"

.field private static final TAG:Ljava/lang/String; = "UniSoftApClientsDialog"


# instance fields
.field mAddTextChangedListener:Landroid/text/TextWatcher;

.field private mClientData:Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog$ClientData;

.field private mContext:Landroid/content/Context;

.field private mIp:Landroid/widget/TextView;

.field private mIpLinear:Landroid/widget/TextView;

.field private mIsPositiveButtonEnabled:Z

.field private final mListener:Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog$SoftApClientsDialogListener;

.field private mMac:Landroid/widget/TextView;

.field mMacText:Lcom/unisoc/settings/widget/MacAddressEditText;

.field mMacTextChangedListener:Lcom/unisoc/settings/widget/MacAddressEditText$MacWatcher;

.field mNameText:Landroid/widget/EditText;

.field private mPreferenceTypes:I

.field private mTitle:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static bridge synthetic -$$Nest$fputmIsPositiveButtonEnabled(Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog;->mIsPositiveButtonEnabled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$misAddWhitelistButtonEnabled(Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog;)Z
    .locals 0

    invoke-direct {p0}, Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog;->isAddWhitelistButtonEnabled()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mupdatePositiveButton(Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog;->updatePositiveButton()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog$SoftApClientsDialogListener;Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog$ClientData;I)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog;->mIsPositiveButtonEnabled:Z

    new-instance v0, Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog$1;

    invoke-direct {v0, p0}, Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog$1;-><init>(Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog;)V

    iput-object v0, p0, Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog;->mAddTextChangedListener:Landroid/text/TextWatcher;

    new-instance v0, Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog$2;

    invoke-direct {v0, p0}, Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog$2;-><init>(Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog;)V

    iput-object v0, p0, Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog;->mMacTextChangedListener:Lcom/unisoc/settings/widget/MacAddressEditText$MacWatcher;

    iput-object p1, p0, Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog;->mListener:Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog$SoftApClientsDialogListener;

    iput p4, p0, Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog;->mPreferenceTypes:I

    iput-object p3, p0, Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog;->mClientData:Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog$ClientData;

    const-string p2, "wifi"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method private addWhiteListViews(Landroid/widget/ScrollView;)V
    .locals 1

    sget v0, Lcom/android/settings/R$id;->nameText:I

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog;->mNameText:Landroid/widget/EditText;

    sget v0, Lcom/android/settings/R$id;->macText:I

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/unisoc/settings/widget/MacAddressEditText;

    iput-object p1, p0, Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog;->mMacText:Lcom/unisoc/settings/widget/MacAddressEditText;

    iget-object p1, p0, Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog;->mNameText:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog;->mAddTextChangedListener:Landroid/text/TextWatcher;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p0, Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog;->mMacText:Lcom/unisoc/settings/widget/MacAddressEditText;

    iget-object p0, p0, Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog;->mMacTextChangedListener:Lcom/unisoc/settings/widget/MacAddressEditText$MacWatcher;

    invoke-virtual {p1, p0}, Lcom/unisoc/settings/widget/MacAddressEditText;->addTextChangedListener(Lcom/unisoc/settings/widget/MacAddressEditText$MacWatcher;)V

    return-void
.end method

.method private checkMac(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "^[A-Fa-f0-9]{2}(:[A-Fa-f0-9]{2}){5}$"

    invoke-static {p0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static createModal(Landroid/content/Context;Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog$SoftApClientsDialogListener;Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog$ClientData;I)Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog;
    .locals 1

    new-instance v0, Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog;-><init>(Landroid/content/Context;Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog$SoftApClientsDialogListener;Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog$ClientData;I)V

    return-object v0
.end method

.method private displayDialogButton(Landroid/content/res/Resources;I)V
    .locals 1

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    sget p2, Lcom/android/settings/R$string;->hotspot_offwhite:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog;->setWhiteButton(Ljava/lang/CharSequence;)V

    sget p2, Lcom/android/settings/R$string;->hotspot_whitelist_cancel:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog;->setCancelButton(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    sget p2, Lcom/android/settings/R$string;->hotspot_whitelist_add:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog;->setWhiteButton(Ljava/lang/CharSequence;)V

    sget p2, Lcom/android/settings/R$string;->hotspot_whitelist_cancel:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog;->setCancelButton(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private initSoftApClientsController(Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog$ClientData;I)V
    .locals 4

    const-string v0, "UniSoftApClientsDialog"

    const-string v1, "initSoftApClientsController"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p2, p0, Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog;->mPreferenceTypes:I

    iget-object v0, p0, Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->ip_linear:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog;->mIpLinear:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->title:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->mac:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog;->mMac:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->ip:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog;->mIp:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog$ClientData;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog$ClientData;->getMacAddress()Landroid/net/MacAddress;

    move-result-object v2

    invoke-virtual {p1}, Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog$ClientData;->getIpAddress()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move-object p1, v1

    move-object v2, p1

    :goto_0
    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog;->mMac:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    if-nez p2, :cond_3

    iget-object v1, p0, Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog;->mIp:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog;->mIpLinear:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog;->mIp:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    invoke-direct {p0, v0, p2}, Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog;->displayDialogButton(Landroid/content/res/Resources;I)V

    return-void
.end method

.method private isAddWhitelistButtonEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog;->mMacText:Lcom/unisoc/settings/widget/MacAddressEditText;

    invoke-virtual {v0}, Lcom/unisoc/settings/widget/MacAddressEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog;->mMacText:Lcom/unisoc/settings/widget/MacAddressEditText;

    invoke-virtual {v0}, Lcom/unisoc/settings/widget/MacAddressEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog;->checkMac(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog;->mNameText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog;->mNameText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method private updatePositiveButton()V
    .locals 2

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog;->mNameText:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog;->mMacText:Lcom/unisoc/settings/widget/MacAddressEditText;

    if-eqz v1, :cond_0

    iget-boolean p0, p0, Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog;->mIsPositiveButtonEnabled:Z

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchSubmit()V
    .locals 1

    iget-object v0, p0, Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog;->mListener:Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog$SoftApClientsDialogListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog$SoftApClientsDialogListener;->onWhite(Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog;)V

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    return-void
.end method

.method public getCancelButton()Landroid/widget/Button;
    .locals 1

    const/4 v0, -0x3

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    return-object p0
.end method

.method public getPreferenceTypes()I
    .locals 0

    iget p0, p0, Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog;->mPreferenceTypes:I

    return p0
.end method

.method public getSoftApConfig()Landroid/net/wifi/SoftApConfiguration;
    .locals 0

    iget-object p0, p0, Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public getWhiteButton()Landroid/widget/Button;
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    return-object p0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog;->mListener:Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog$SoftApClientsDialogListener;

    if-eqz p1, :cond_2

    const/4 v0, -0x3

    if-eq p2, v0, :cond_1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p0}, Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog$SoftApClientsDialogListener;->onWhite(Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog;)V

    goto :goto_0

    :cond_1
    invoke-interface {p1, p0}, Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog$SoftApClientsDialogListener;->onCancel(Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->softap_client_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog;->mClientData:Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog$ClientData;

    iget v1, p0, Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog;->mPreferenceTypes:I

    invoke-direct {p0, v0, v1}, Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog;->initSoftApClientsController(Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog$ClientData;I)V

    invoke-super {p0, p1}, Landroidx/appcompat/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0}, Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog;->isAddWhitelistButtonEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog;->mIsPositiveButtonEnabled:Z

    invoke-direct {p0}, Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog;->updatePositiveButton()V

    return-void
.end method

.method public setCancelButton(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, -0x3

    invoke-virtual {p0, v0, p1, p0}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public setWhiteButton(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p0}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method
