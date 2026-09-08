.class public Lcom/unisoc/settings/wifi/tether/UniHotspotAddWhiteListPreference;
.super Lcom/android/settingslib/CustomDialogPreferenceCompat;
.source "UniHotspotAddWhiteListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# static fields
.field private static final CLIENT_DETAILINFO_AVAILABLED_ACTION:Ljava/lang/String; = "android.net.wifi.WIFI_AP_CLIENT_DETAILINFO_AVAILABLE_ACTION"

.field private static final PATTERNSTR:Ljava/lang/String; = "^[A-Fa-f0-9]{2}(:[A-Fa-f0-9]{2}){5}$"

.field protected static final WHITE_SHARED_PREFERENCE_PATH:Ljava/lang/String; = "com.android.settings.wifi.tether.UniWhiteListWifiTetherClientsPreference"


# instance fields
.field mAddTextChangedListener:Landroid/text/TextWatcher;

.field private mContext:Landroid/content/Context;

.field private mIsPositiveButtonEnabled:Z

.field private mMacText:Lcom/unisoc/settings/widget/MacAddressEditText;

.field mMacTextChangedListener:Lcom/unisoc/settings/widget/MacAddressEditText$MacWatcher;

.field private mNameText:Landroid/widget/EditText;

.field private mWhiteSharedPreferences:Landroid/content/SharedPreferences;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static bridge synthetic -$$Nest$fputmIsPositiveButtonEnabled(Lcom/unisoc/settings/wifi/tether/UniHotspotAddWhiteListPreference;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unisoc/settings/wifi/tether/UniHotspotAddWhiteListPreference;->mIsPositiveButtonEnabled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$misAddWhitelistButtonEnabled(Lcom/unisoc/settings/wifi/tether/UniHotspotAddWhiteListPreference;)Z
    .locals 0

    invoke-direct {p0}, Lcom/unisoc/settings/wifi/tether/UniHotspotAddWhiteListPreference;->isAddWhitelistButtonEnabled()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mupdatePositiveButton(Lcom/unisoc/settings/wifi/tether/UniHotspotAddWhiteListPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/unisoc/settings/wifi/tether/UniHotspotAddWhiteListPreference;->updatePositiveButton()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settingslib/CustomDialogPreferenceCompat;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisoc/settings/wifi/tether/UniHotspotAddWhiteListPreference;->mIsPositiveButtonEnabled:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisoc/settings/wifi/tether/UniHotspotAddWhiteListPreference;->mWhiteSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v0, Lcom/unisoc/settings/wifi/tether/UniHotspotAddWhiteListPreference$1;

    invoke-direct {v0, p0}, Lcom/unisoc/settings/wifi/tether/UniHotspotAddWhiteListPreference$1;-><init>(Lcom/unisoc/settings/wifi/tether/UniHotspotAddWhiteListPreference;)V

    iput-object v0, p0, Lcom/unisoc/settings/wifi/tether/UniHotspotAddWhiteListPreference;->mAddTextChangedListener:Landroid/text/TextWatcher;

    new-instance v0, Lcom/unisoc/settings/wifi/tether/UniHotspotAddWhiteListPreference$2;

    invoke-direct {v0, p0}, Lcom/unisoc/settings/wifi/tether/UniHotspotAddWhiteListPreference$2;-><init>(Lcom/unisoc/settings/wifi/tether/UniHotspotAddWhiteListPreference;)V

    iput-object v0, p0, Lcom/unisoc/settings/wifi/tether/UniHotspotAddWhiteListPreference;->mMacTextChangedListener:Lcom/unisoc/settings/widget/MacAddressEditText$MacWatcher;

    iput-object p1, p0, Lcom/unisoc/settings/wifi/tether/UniHotspotAddWhiteListPreference;->mContext:Landroid/content/Context;

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/unisoc/settings/wifi/tether/UniHotspotAddWhiteListPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/CustomDialogPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/unisoc/settings/wifi/tether/UniHotspotAddWhiteListPreference;->mIsPositiveButtonEnabled:Z

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/unisoc/settings/wifi/tether/UniHotspotAddWhiteListPreference;->mWhiteSharedPreferences:Landroid/content/SharedPreferences;

    new-instance p2, Lcom/unisoc/settings/wifi/tether/UniHotspotAddWhiteListPreference$1;

    invoke-direct {p2, p0}, Lcom/unisoc/settings/wifi/tether/UniHotspotAddWhiteListPreference$1;-><init>(Lcom/unisoc/settings/wifi/tether/UniHotspotAddWhiteListPreference;)V

    iput-object p2, p0, Lcom/unisoc/settings/wifi/tether/UniHotspotAddWhiteListPreference;->mAddTextChangedListener:Landroid/text/TextWatcher;

    new-instance p2, Lcom/unisoc/settings/wifi/tether/UniHotspotAddWhiteListPreference$2;

    invoke-direct {p2, p0}, Lcom/unisoc/settings/wifi/tether/UniHotspotAddWhiteListPreference$2;-><init>(Lcom/unisoc/settings/wifi/tether/UniHotspotAddWhiteListPreference;)V

    iput-object p2, p0, Lcom/unisoc/settings/wifi/tether/UniHotspotAddWhiteListPreference;->mMacTextChangedListener:Lcom/unisoc/settings/widget/MacAddressEditText$MacWatcher;

    const-string p2, "wifi"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/unisoc/settings/wifi/tether/UniHotspotAddWhiteListPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/CustomDialogPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/unisoc/settings/wifi/tether/UniHotspotAddWhiteListPreference;->mIsPositiveButtonEnabled:Z

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/unisoc/settings/wifi/tether/UniHotspotAddWhiteListPreference;->mWhiteSharedPreferences:Landroid/content/SharedPreferences;

    new-instance p2, Lcom/unisoc/settings/wifi/tether/UniHotspotAddWhiteListPreference$1;

    invoke-direct {p2, p0}, Lcom/unisoc/settings/wifi/tether/UniHotspotAddWhiteListPreference$1;-><init>(Lcom/unisoc/settings/wifi/tether/UniHotspotAddWhiteListPreference;)V

    iput-object p2, p0, Lcom/unisoc/settings/wifi/tether/UniHotspotAddWhiteListPreference;->mAddTextChangedListener:Landroid/text/TextWatcher;

    new-instance p2, Lcom/unisoc/settings/wifi/tether/UniHotspotAddWhiteListPreference$2;

    invoke-direct {p2, p0}, Lcom/unisoc/settings/wifi/tether/UniHotspotAddWhiteListPreference$2;-><init>(Lcom/unisoc/settings/wifi/tether/UniHotspotAddWhiteListPreference;)V

    iput-object p2, p0, Lcom/unisoc/settings/wifi/tether/UniHotspotAddWhiteListPreference;->mMacTextChangedListener:Lcom/unisoc/settings/widget/MacAddressEditText$MacWatcher;

    const-string p2, "wifi"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/unisoc/settings/wifi/tether/UniHotspotAddWhiteListPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/CustomDialogPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/unisoc/settings/wifi/tether/UniHotspotAddWhiteListPreference;->mIsPositiveButtonEnabled:Z

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/unisoc/settings/wifi/tether/UniHotspotAddWhiteListPreference;->mWhiteSharedPreferences:Landroid/content/SharedPreferences;

    new-instance p2, Lcom/unisoc/settings/wifi/tether/UniHotspotAddWhiteListPreference$1;

    invoke-direct {p2, p0}, Lcom/unisoc/settings/wifi/tether/UniHotspotAddWhiteListPreference$1;-><init>(Lcom/unisoc/settings/wifi/tether/UniHotspotAddWhiteListPreference;)V

    iput-object p2, p0, Lcom/unisoc/settings/wifi/tether/UniHotspotAddWhiteListPreference;->mAddTextChangedListener:Landroid/text/TextWatcher;

    new-instance p2, Lcom/unisoc/settings/wifi/tether/UniHotspotAddWhiteListPreference$2;

    invoke-direct {p2, p0}, Lcom/unisoc/settings/wifi/tether/UniHotspotAddWhiteListPreference$2;-><init>(Lcom/unisoc/settings/wifi/tether/UniHotspotAddWhiteListPreference;)V

    iput-object p2, p0, Lcom/unisoc/settings/wifi/tether/UniHotspotAddWhiteListPreference;->mMacTextChangedListener:Lcom/unisoc/settings/widget/MacAddressEditText$MacWatcher;

    const-string p2, "wifi"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/unisoc/settings/wifi/tether/UniHotspotAddWhiteListPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method private addWhiteListViews(Landroid/widget/ScrollView;)V
    .locals 1

    sget v0, Lcom/android/settings/R$id;->nameText:I

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/unisoc/settings/wifi/tether/UniHotspotAddWhiteListPreference;->mNameText:Landroid/widget/EditText;

    sget v0, Lcom/android/settings/R$id;->macText:I

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/unisoc/settings/widget/MacAddressEditText;

    iput-object p1, p0, Lcom/unisoc/settings/wifi/tether/UniHotspotAddWhiteListPreference;->mMacText:Lcom/unisoc/settings/widget/MacAddressEditText;

    iget-object p1, p0, Lcom/unisoc/settings/wifi/tether/UniHotspotAddWhiteListPreference;->mNameText:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/unisoc/settings/wifi/tether/UniHotspotAddWhiteListPreference;->mAddTextChangedListener:Landroid/text/TextWatcher;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p0, Lcom/unisoc/settings/wifi/tether/UniHotspotAddWhiteListPreference;->mMacText:Lcom/unisoc/settings/widget/MacAddressEditText;

    iget-object p0, p0, Lcom/unisoc/settings/wifi/tether/UniHotspotAddWhiteListPreference;->mMacTextChangedListener:Lcom/unisoc/settings/widget/MacAddressEditText$MacWatcher;

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

.method private isAddWhitelistButtonEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/unisoc/settings/wifi/tether/UniHotspotAddWhiteListPreference;->mMacText:Lcom/unisoc/settings/widget/MacAddressEditText;

    invoke-virtual {v0}, Lcom/unisoc/settings/widget/MacAddressEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/unisoc/settings/wifi/tether/UniHotspotAddWhiteListPreference;->mMacText:Lcom/unisoc/settings/widget/MacAddressEditText;

    invoke-virtual {v0}, Lcom/unisoc/settings/widget/MacAddressEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisoc/settings/wifi/tether/UniHotspotAddWhiteListPreference;->checkMac(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/unisoc/settings/wifi/tether/UniHotspotAddWhiteListPreference;->mNameText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/unisoc/settings/wifi/tether/UniHotspotAddWhiteListPreference;->mNameText:Landroid/widget/EditText;

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

    invoke-virtual {p0}, Lcom/android/settingslib/CustomDialogPreferenceCompat;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AlertDialog;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/unisoc/settings/wifi/tether/UniHotspotAddWhiteListPreference;->mNameText:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/unisoc/settings/wifi/tether/UniHotspotAddWhiteListPreference;->mMacText:Lcom/unisoc/settings/widget/MacAddressEditText;

    if-eqz v1, :cond_1

    iget-boolean p0, p0, Lcom/unisoc/settings/wifi/tether/UniHotspotAddWhiteListPreference;->mIsPositiveButtonEnabled:Z

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settingslib/CustomDialogPreferenceCompat;->onBindDialogView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.settings.wifi.tether.UniWhiteListWifiTetherClientsPreference"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/unisoc/settings/wifi/tether/UniHotspotAddWhiteListPreference;->mWhiteSharedPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p0, p0}, Lcom/android/settingslib/CustomDialogPreferenceCompat;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    check-cast p1, Landroid/widget/ScrollView;

    invoke-direct {p0, p1}, Lcom/unisoc/settings/wifi/tether/UniHotspotAddWhiteListPreference;->addWhiteListViews(Landroid/widget/ScrollView;)V

    return-void
.end method

.method protected onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Lcom/unisoc/settings/wifi/tether/UniHotspotAddWhiteListPreference;->mMacText:Lcom/unisoc/settings/widget/MacAddressEditText;

    invoke-virtual {p1}, Lcom/unisoc/settings/widget/MacAddressEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object p1

    iget-object p2, p0, Lcom/unisoc/settings/wifi/tether/UniHotspotAddWhiteListPreference;->mNameText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/unisoc/settings/wifi/tether/UniHotspotAddWhiteListPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    new-instance v1, Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-direct {v1, v0}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>(Landroid/net/wifi/SoftApConfiguration;)V

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getAllowedClientList()Ljava/util/List;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v0}, Landroid/net/wifi/SoftApConfiguration$Builder;->setAllowedClientList(Ljava/util/List;)Landroid/net/wifi/SoftApConfiguration$Builder;

    iget-object v0, p0, Lcom/unisoc/settings/wifi/tether/UniHotspotAddWhiteListPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)Z

    iget-object v0, p0, Lcom/unisoc/settings/wifi/tether/UniHotspotAddWhiteListPreference;->mWhiteSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.net.wifi.WIFI_AP_CLIENT_DETAILINFO_AVAILABLE_ACTION"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p2, 0x4000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p2

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p2, p1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0}, Lcom/unisoc/settings/wifi/tether/UniHotspotAddWhiteListPreference;->isAddWhitelistButtonEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/unisoc/settings/wifi/tether/UniHotspotAddWhiteListPreference;->mIsPositiveButtonEnabled:Z

    invoke-direct {p0}, Lcom/unisoc/settings/wifi/tether/UniHotspotAddWhiteListPreference;->updatePositiveButton()V

    return-void
.end method
