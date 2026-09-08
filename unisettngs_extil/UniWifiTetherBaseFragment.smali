.class public abstract Lcom/unisoc/settings/wifi/tether/UniWifiTetherBaseFragment;
.super Lcom/android/settings/dashboard/RestrictedDashboardFragment;
.source "UniWifiTetherBaseFragment.java"

# interfaces
.implements Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;
.implements Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog$SoftApClientsDialogListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisoc/settings/wifi/tether/UniWifiTetherBaseFragment$SearchIndexProvider;,
        Lcom/unisoc/settings/wifi/tether/UniWifiTetherBaseFragment$WifiRestriction;
    }
.end annotation


# static fields
.field private static final BUTTON_NEUTRAL:I = 0x1

.field private static final BUTTON_POSITIVE:I = 0x0

.field private static final CLIENTDATA:Ljava/lang/String; = "clientdata"

.field private static final SAVE_PREFERENCE_TYPES:Ljava/lang/String; = "preference_type"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/unisoc/settings/wifi/tether/UniWifiTetherBaseFragment$SearchIndexProvider;

.field private static final SOFTAP_CLIENT_DIALOG_ID:I = 0x1

.field private static final TAG:Ljava/lang/String; = "UniWifiTetherBaseFragment"

.field protected static final WHITE_SHARED_PREFERENCE_PATH:Ljava/lang/String; = "com.android.settings.wifi.tether.UniWhiteListWifiTetherClientsPreference"


# instance fields
.field private mClientData:Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog$ClientData;

.field protected mContext:Landroid/content/Context;

.field protected mHandler:Landroid/os/Handler;

.field private mPreference:Landroidx/preference/Preference;

.field private mPreferenceTypes:I

.field private mSoftApClientsDialog:Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog;

.field protected mTetheringManager:Landroid/net/TetheringManager;

.field private mWhiteSharedPreferences:Landroid/content/SharedPreferences;

.field protected mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/unisoc/settings/wifi/tether/UniWifiTetherBaseFragment$SearchIndexProvider;

    sget v1, Lcom/android/settings/R$xml;->uni_hotspot_clients_settings:I

    invoke-direct {v0, v1}, Lcom/unisoc/settings/wifi/tether/UniWifiTetherBaseFragment$SearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/unisoc/settings/wifi/tether/UniWifiTetherBaseFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/unisoc/settings/wifi/tether/UniWifiTetherBaseFragment$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "no_config_tethering"

    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisoc/settings/wifi/tether/UniWifiTetherBaseFragment;->mWhiteSharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method protected static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method private clientsOperations(Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog;I)V
    .locals 5

    invoke-virtual {p1}, Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog;->getPreferenceTypes()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/unisoc/settings/wifi/tether/UniWifiTetherBaseFragment;->mClientData:Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog$ClientData;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog$ClientData;->getHostName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/unisoc/settings/wifi/tether/UniWifiTetherBaseFragment;->mClientData:Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog$ClientData;

    invoke-virtual {v2}, Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog$ClientData;->getIpAddress()Ljava/lang/String;

    iget-object v2, p0, Lcom/unisoc/settings/wifi/tether/UniWifiTetherBaseFragment;->mClientData:Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog$ClientData;

    invoke-virtual {v2}, Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog$ClientData;->getMacAddress()Landroid/net/MacAddress;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    invoke-virtual {p1}, Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog;->getSoftApConfig()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p1

    new-instance v3, Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-direct {v3, p1}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>(Landroid/net/wifi/SoftApConfiguration;)V

    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getAllowedClientList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-eqz p2, :cond_1

    goto :goto_2

    :cond_1
    const/4 p2, -0x1

    if-ne v4, p2, :cond_2

    if-nez v0, :cond_3

    if-eqz v2, :cond_3

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/unisoc/settings/wifi/tether/UniWifiTetherBaseFragment;->mWhiteSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-virtual {v2}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {v3, p1}, Landroid/net/wifi/SoftApConfiguration$Builder;->setAllowedClientList(Ljava/util/List;)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_1

    :cond_2
    if-eq v4, p2, :cond_3

    const/4 p2, 0x1

    if-ne v0, p2, :cond_3

    if-eqz v2, :cond_3

    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/unisoc/settings/wifi/tether/UniWifiTetherBaseFragment;->mWhiteSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-virtual {v2}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {v3, p1}, Landroid/net/wifi/SoftApConfiguration$Builder;->setAllowedClientList(Ljava/util/List;)Landroid/net/wifi/SoftApConfiguration$Builder;

    :cond_3
    :goto_1
    invoke-virtual {p0, p1}, Lcom/unisoc/settings/wifi/tether/UniWifiTetherBaseFragment;->updateWhilteListClientsPreference(Ljava/util/List;)V

    :goto_2
    :try_start_0
    iget-object p0, p0, Lcom/unisoc/settings/wifi/tether/UniWifiTetherBaseFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->setSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    const-string p0, "UniWifiTetherBaseFragment"

    const-string p1, "setSoftApConfiguration failed"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void
.end method

.method private showDialog(Landroidx/preference/Preference;I)V
    .locals 2

    iget-object v0, p0, Lcom/unisoc/settings/wifi/tether/UniWifiTetherBaseFragment;->mSoftApClientsDialog:Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removeDialog(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisoc/settings/wifi/tether/UniWifiTetherBaseFragment;->mSoftApClientsDialog:Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog;

    :cond_0
    iput-object p1, p0, Lcom/unisoc/settings/wifi/tether/UniWifiTetherBaseFragment;->mPreference:Landroidx/preference/Preference;

    iput p2, p0, Lcom/unisoc/settings/wifi/tether/UniWifiTetherBaseFragment;->mPreferenceTypes:I

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    return-void
.end method


# virtual methods
.method protected createHandler()Landroid/os/Handler;
    .locals 1

    new-instance v0, Lcom/unisoc/settings/wifi/tether/UniWifiTetherBaseFragment$1;

    invoke-direct {v0, p0}, Lcom/unisoc/settings/wifi/tether/UniWifiTetherBaseFragment$1;-><init>(Lcom/unisoc/settings/wifi/tether/UniWifiTetherBaseFragment;)V

    return-object v0
.end method

.method public getDialogMetricsCategory(I)I
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0x25b

    return p0
.end method

.method public bridge synthetic getHelpResource()I
    .locals 0

    invoke-super {p0}, Lcom/android/settings/support/actionbar/HelpResourceProvider;->getHelpResource()I

    move-result p0

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "UniWifiTetherBaseFragment"

    return-object p0
.end method

.method public abstract synthetic getMetricsCategory()I
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/android/settings/SettingsActivity;

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/unisoc/settings/wifi/tether/UniWifiTetherBaseFragment;->mContext:Landroid/content/Context;

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/unisoc/settings/wifi/tether/UniWifiTetherBaseFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/net/TetheringManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/TetheringManager;

    iput-object p1, p0, Lcom/unisoc/settings/wifi/tether/UniWifiTetherBaseFragment;->mTetheringManager:Landroid/net/TetheringManager;

    iget-object p1, p0, Lcom/unisoc/settings/wifi/tether/UniWifiTetherBaseFragment;->mContext:Landroid/content/Context;

    const-string v0, "com.android.settings.wifi.tether.UniWhiteListWifiTetherClientsPreference"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/unisoc/settings/wifi/tether/UniWifiTetherBaseFragment;->mWhiteSharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public onCancel(Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/unisoc/settings/wifi/tether/UniWifiTetherBaseFragment;->clientsOperations(Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog;I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "preference_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/unisoc/settings/wifi/tether/UniWifiTetherBaseFragment;->mPreferenceTypes:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPreferenceTypes is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/unisoc/settings/wifi/tether/UniWifiTetherBaseFragment;->mPreferenceTypes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniWifiTetherBaseFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/unisoc/settings/wifi/tether/UniWifiTetherBaseFragment;->mPreferenceTypes:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-string v0, "clientdata"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog$ClientData;

    iput-object p1, p0, Lcom/unisoc/settings/wifi/tether/UniWifiTetherBaseFragment;->mClientData:Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog$ClientData;

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->setIfOnlyAvailableForAdmins(Z)V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object p0

    return-object p0

    :cond_0
    iget p1, p0, Lcom/unisoc/settings/wifi/tether/UniWifiTetherBaseFragment;->mPreferenceTypes:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/unisoc/settings/wifi/tether/UniWifiTetherBaseFragment;->mPreference:Landroidx/preference/Preference;

    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/unisoc/settings/wifi/tether/UniWifiTetherClientsPreference;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/unisoc/settings/wifi/tether/UniWifiTetherClientsPreference;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/unisoc/settings/wifi/tether/UniWifiTetherClientsPreference;->getHostName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/unisoc/settings/wifi/tether/UniWifiTetherClientsPreference;->getMacAddress()Landroid/net/MacAddress;

    move-result-object v1

    invoke-virtual {p1}, Lcom/unisoc/settings/wifi/tether/UniWifiTetherClientsPreference;->getIpAddress()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog$ClientData;

    invoke-direct {v2, v0, v1, p1}, Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog$ClientData;-><init>(Ljava/lang/String;Landroid/net/MacAddress;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/unisoc/settings/wifi/tether/UniWifiTetherBaseFragment;->mClientData:Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog$ClientData;

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/unisoc/settings/wifi/tether/UniWifiTetherBaseFragment;->mClientData:Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog$ClientData;

    iget v1, p0, Lcom/unisoc/settings/wifi/tether/UniWifiTetherBaseFragment;->mPreferenceTypes:I

    invoke-static {p1, p0, v0, v1}, Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog;->createModal(Landroid/content/Context;Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog$SoftApClientsDialogListener;Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog$ClientData;I)Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/unisoc/settings/wifi/tether/UniWifiTetherBaseFragment;->mSoftApClientsDialog:Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog;

    return-object p1
.end method

.method public onDetach()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDetach()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisoc/settings/wifi/tether/UniWifiTetherBaseFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/unisoc/settings/wifi/tether/UniWifiTetherBaseFragment;->mSoftApClientsDialog:Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog;

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 1

    invoke-virtual {p1}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    :cond_0
    instance-of v0, p1, Lcom/unisoc/settings/wifi/tether/UniWifiTetherClientsPreference;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/unisoc/settings/wifi/tether/UniWifiTetherClientsPreference;

    invoke-virtual {v0}, Lcom/unisoc/settings/wifi/tether/UniWifiTetherClientsPreference;->getPreferenceTypes()I

    move-result v0

    iput v0, p0, Lcom/unisoc/settings/wifi/tether/UniWifiTetherBaseFragment;->mPreferenceTypes:I

    invoke-direct {p0, p1, v0}, Lcom/unisoc/settings/wifi/tether/UniWifiTetherBaseFragment;->showDialog(Landroidx/preference/Preference;I)V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/unisoc/settings/wifi/tether/UniWifiTetherBaseFragment;->mSoftApClientsDialog:Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog;

    if-eqz v0, :cond_0

    const-string v0, "preference_type"

    iget v1, p0, Lcom/unisoc/settings/wifi/tether/UniWifiTetherBaseFragment;->mPreferenceTypes:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v0, p0, Lcom/unisoc/settings/wifi/tether/UniWifiTetherBaseFragment;->mPreferenceTypes:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-string v0, "clientdata"

    iget-object p0, p0, Lcom/unisoc/settings/wifi/tether/UniWifiTetherBaseFragment;->mClientData:Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog$ClientData;

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    invoke-virtual {p0}, Lcom/unisoc/settings/wifi/tether/UniWifiTetherBaseFragment;->createHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/unisoc/settings/wifi/tether/UniWifiTetherBaseFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStop()V

    return-void
.end method

.method public onTetherConfigUpdated(Lcom/android/settingslib/core/AbstractPreferenceController;)V
    .locals 0

    return-void
.end method

.method public onWhite(Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/unisoc/settings/wifi/tether/UniWifiTetherBaseFragment;->clientsOperations(Lcom/unisoc/settings/wifi/tether/UniSoftApClientsDialog;I)V

    return-void
.end method

.method protected updateWhilteListClientsPreference(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/MacAddress;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
