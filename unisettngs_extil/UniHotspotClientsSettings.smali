.class public Lcom/unisoc/settings/wifi/tether/UniHotspotClientsSettings;
.super Lcom/unisoc/settings/wifi/tether/UniWifiTetherBaseFragment;
.source "UniHotspotClientsSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisoc/settings/wifi/tether/UniHotspotClientsSettings$SearchIndexProvider;
    }
.end annotation


# static fields
.field static final KEY_HOTSPOT_CONNECTED_CLIENTS:Ljava/lang/String; = "hotspot_connected_clients"

.field static final KEY_HOTSPOT_NO_CONNECTED_CLIENT:Ljava/lang/String; = "hotspot_no_connected_client"

.field static final KEY_HOTSPOT_WHITE:Ljava/lang/String; = "hotspot_white"

.field private static final KEY_WIFI_TETHER_SCREEN:Ljava/lang/String; = "wifi_tether_settings_screen"

.field private static final MSG_UPDATE_CONNECTED_CLIENTS_PREFREENCE:I = 0x0

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/unisoc/settings/wifi/tether/UniHotspotClientsSettings$SearchIndexProvider;

.field private static final TAG:Ljava/lang/String; = "UniHotspotClientsSettings"


# instance fields
.field private mConnectedClientTitle:Ljava/lang/String;

.field private mConnectedClientsCategory:Landroidx/preference/PreferenceCategory;

.field private mHotspotNoConnectedClient:Landroidx/preference/Preference;

.field private mHotspotWhitePref:Landroidx/preference/Preference;

.field private mNoClientConnectTitle:Ljava/lang/String;

.field private mTetheringCallback:Landroid/net/TetheringManager$TetheringEventCallback;


# direct methods
.method static bridge synthetic -$$Nest$fgetmConnectedClientsCategory(Lcom/unisoc/settings/wifi/tether/UniHotspotClientsSettings;)Landroidx/preference/PreferenceCategory;
    .locals 0

    iget-object p0, p0, Lcom/unisoc/settings/wifi/tether/UniHotspotClientsSettings;->mConnectedClientsCategory:Landroidx/preference/PreferenceCategory;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHotspotNoConnectedClient(Lcom/unisoc/settings/wifi/tether/UniHotspotClientsSettings;)Landroidx/preference/Preference;
    .locals 0

    iget-object p0, p0, Lcom/unisoc/settings/wifi/tether/UniHotspotClientsSettings;->mHotspotNoConnectedClient:Landroidx/preference/Preference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNoClientConnectTitle(Lcom/unisoc/settings/wifi/tether/UniHotspotClientsSettings;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/unisoc/settings/wifi/tether/UniHotspotClientsSettings;->mNoClientConnectTitle:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateConnectedClientsPreference(Lcom/unisoc/settings/wifi/tether/UniHotspotClientsSettings;Ljava/util/Collection;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unisoc/settings/wifi/tether/UniHotspotClientsSettings;->updateConnectedClientsPreference(Ljava/util/Collection;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/unisoc/settings/wifi/tether/UniHotspotClientsSettings$SearchIndexProvider;

    sget v1, Lcom/android/settings/R$xml;->uni_hotspot_clients_settings:I

    invoke-direct {v0, v1}, Lcom/unisoc/settings/wifi/tether/UniHotspotClientsSettings$SearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/unisoc/settings/wifi/tether/UniHotspotClientsSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/unisoc/settings/wifi/tether/UniHotspotClientsSettings$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/unisoc/settings/wifi/tether/UniWifiTetherBaseFragment;-><init>()V

    new-instance v0, Lcom/unisoc/settings/wifi/tether/UniHotspotClientsSettings$1;

    invoke-direct {v0, p0}, Lcom/unisoc/settings/wifi/tether/UniHotspotClientsSettings$1;-><init>(Lcom/unisoc/settings/wifi/tether/UniHotspotClientsSettings;)V

    iput-object v0, p0, Lcom/unisoc/settings/wifi/tether/UniHotspotClientsSettings;->mTetheringCallback:Landroid/net/TetheringManager$TetheringEventCallback;

    return-void
.end method

.method private updateConnectedClientsPreference(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/net/TetheredClient;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/unisoc/settings/wifi/tether/UniWifiTetherBaseFragment;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method protected createHandler()Landroid/os/Handler;
    .locals 1

    new-instance v0, Lcom/unisoc/settings/wifi/tether/UniHotspotClientsSettings$2;

    invoke-direct {v0, p0}, Lcom/unisoc/settings/wifi/tether/UniHotspotClientsSettings$2;-><init>(Lcom/unisoc/settings/wifi/tether/UniHotspotClientsSettings;)V

    return-object v0
.end method

.method public bridge synthetic getHelpResource()I
    .locals 0

    invoke-super {p0}, Lcom/android/settings/support/actionbar/HelpResourceProvider;->getHelpResource()I

    move-result p0

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "UniHotspotClientsSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x3f6

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    sget p0, Lcom/android/settings/R$xml;->uni_hotspot_clients_settings:I

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/unisoc/settings/wifi/tether/UniWifiTetherBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    const-string v0, "hotspot_connected_clients"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/unisoc/settings/wifi/tether/UniHotspotClientsSettings;->mConnectedClientsCategory:Landroidx/preference/PreferenceCategory;

    const-string v0, "hotspot_no_connected_client"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/unisoc/settings/wifi/tether/UniHotspotClientsSettings;->mHotspotNoConnectedClient:Landroidx/preference/Preference;

    const-string v0, "hotspot_white"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/unisoc/settings/wifi/tether/UniHotspotClientsSettings;->mHotspotWhitePref:Landroidx/preference/Preference;

    iget-object v0, p0, Lcom/unisoc/settings/wifi/tether/UniWifiTetherBaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$bool;->config_uniwifi_show_wifi_tether_client_info:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/unisoc/settings/wifi/tether/UniHotspotClientsSettings;->mConnectedClientsCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    iget-object v0, p0, Lcom/unisoc/settings/wifi/tether/UniWifiTetherBaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$bool;->config_uniwifi_addAndShow_tetherAllowedClientSupport:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/unisoc/settings/wifi/tether/UniHotspotClientsSettings;->mHotspotWhitePref:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_1
    sget v0, Lcom/android/settings/R$string;->hotspot_connected_clients:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/unisoc/settings/wifi/tether/UniHotspotClientsSettings;->mNoClientConnectTitle:Ljava/lang/String;

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/unisoc/settings/wifi/tether/UniWifiTetherBaseFragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onStart()V
    .locals 3

    invoke-super {p0}, Lcom/unisoc/settings/wifi/tether/UniWifiTetherBaseFragment;->onStart()V

    iget-object v0, p0, Lcom/unisoc/settings/wifi/tether/UniWifiTetherBaseFragment;->mTetheringManager:Landroid/net/TetheringManager;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/os/HandlerExecutor;

    iget-object v2, p0, Lcom/unisoc/settings/wifi/tether/UniWifiTetherBaseFragment;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object p0, p0, Lcom/unisoc/settings/wifi/tether/UniHotspotClientsSettings;->mTetheringCallback:Landroid/net/TetheringManager$TetheringEventCallback;

    invoke-virtual {v0, v1, p0}, Landroid/net/TetheringManager;->registerTetheringEventCallback(Ljava/util/concurrent/Executor;Landroid/net/TetheringManager$TetheringEventCallback;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lcom/unisoc/settings/wifi/tether/UniWifiTetherBaseFragment;->onStop()V

    iget-object v0, p0, Lcom/unisoc/settings/wifi/tether/UniWifiTetherBaseFragment;->mTetheringManager:Landroid/net/TetheringManager;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/unisoc/settings/wifi/tether/UniHotspotClientsSettings;->mTetheringCallback:Landroid/net/TetheringManager$TetheringEventCallback;

    invoke-virtual {v0, p0}, Landroid/net/TetheringManager;->unregisterTetheringEventCallback(Landroid/net/TetheringManager$TetheringEventCallback;)V

    :cond_0
    return-void
.end method
