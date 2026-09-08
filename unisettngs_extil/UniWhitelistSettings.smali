.class public Lcom/unisoc/settings/wifi/tether/UniWhitelistSettings;
.super Lcom/unisoc/settings/wifi/tether/UniWifiTetherBaseFragment;
.source "UniWhitelistSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisoc/settings/wifi/tether/UniWhitelistSettings$SearchIndexProvider;
    }
.end annotation


# static fields
.field private static final CLIENT_DETAILINFO_AVAILABLED_ACTION:Ljava/lang/String; = "android.net.wifi.WIFI_AP_CLIENT_DETAILINFO_AVAILABLE_ACTION"

.field static final KEY_HOTSPOT_MANULLY_ADD_WHITE_CLIENT:Ljava/lang/String; = "hotspot_add_whiltelist"

.field static final KEY_HOTSPOT_WHITELIST_CLIENTS:Ljava/lang/String; = "hotspot_whitelist_clients"

.field private static final KEY_WIFI_TETHER_SCREEN:Ljava/lang/String; = "wifi_tether_settings_screen"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/unisoc/settings/wifi/tether/UniWhitelistSettings$SearchIndexProvider;

.field private static final TAG:Ljava/lang/String; = "UniWhitelistSettings"

.field private static final TETHER_STATE_CHANGE_FILTER:Landroid/content/IntentFilter;


# instance fields
.field private mConnectedWhiteListCategory:Landroidx/preference/PreferenceCategory;

.field private mManullyAddWhiteClientPref:Landroidx/preference/Preference;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_CLIENT_DETAILINFO_AVAILABLE_ACTION"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/unisoc/settings/wifi/tether/UniWhitelistSettings;->TETHER_STATE_CHANGE_FILTER:Landroid/content/IntentFilter;

    new-instance v0, Lcom/unisoc/settings/wifi/tether/UniWhitelistSettings$SearchIndexProvider;

    sget v1, Lcom/android/settings/R$xml;->uni_hotspot_whitelist_settings:I

    invoke-direct {v0, v1}, Lcom/unisoc/settings/wifi/tether/UniWhitelistSettings$SearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/unisoc/settings/wifi/tether/UniWhitelistSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/unisoc/settings/wifi/tether/UniWhitelistSettings$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/unisoc/settings/wifi/tether/UniWifiTetherBaseFragment;-><init>()V

    new-instance v0, Lcom/unisoc/settings/wifi/tether/UniWhitelistSettings$1;

    invoke-direct {v0, p0}, Lcom/unisoc/settings/wifi/tether/UniWhitelistSettings$1;-><init>(Lcom/unisoc/settings/wifi/tether/UniWhitelistSettings;)V

    iput-object v0, p0, Lcom/unisoc/settings/wifi/tether/UniWhitelistSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public bridge synthetic getHelpResource()I
    .locals 0

    invoke-super {p0}, Lcom/android/settings/support/actionbar/HelpResourceProvider;->getHelpResource()I

    move-result p0

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "UniWhitelistSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x3f6

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    sget p0, Lcom/android/settings/R$xml;->uni_hotspot_whitelist_settings:I

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/unisoc/settings/wifi/tether/UniWifiTetherBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string p1, "hotspot_whitelist_clients"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/unisoc/settings/wifi/tether/UniWhitelistSettings;->mConnectedWhiteListCategory:Landroidx/preference/PreferenceCategory;

    const-string p1, "hotspot_add_whiltelist"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/unisoc/settings/wifi/tether/UniWhitelistSettings;->mManullyAddWhiteClientPref:Landroidx/preference/Preference;

    return-void
.end method

.method public onStart()V
    .locals 4

    invoke-super {p0}, Lcom/unisoc/settings/wifi/tether/UniWifiTetherBaseFragment;->onStart()V

    iget-object v0, p0, Lcom/unisoc/settings/wifi/tether/UniWifiTetherBaseFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/unisoc/settings/wifi/tether/UniWhitelistSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/unisoc/settings/wifi/tether/UniWhitelistSettings;->TETHER_STATE_CHANGE_FILTER:Landroid/content/IntentFilter;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/unisoc/settings/wifi/tether/UniWifiTetherBaseFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getAllowedClientList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/unisoc/settings/wifi/tether/UniWhitelistSettings;->updateWhilteListClientsPreference(Ljava/util/List;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lcom/unisoc/settings/wifi/tether/UniWifiTetherBaseFragment;->onStop()V

    iget-object v0, p0, Lcom/unisoc/settings/wifi/tether/UniWifiTetherBaseFragment;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/unisoc/settings/wifi/tether/UniWhitelistSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected updateWhilteListClientsPreference(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/MacAddress;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/unisoc/settings/wifi/tether/UniWhitelistSettings;->mConnectedWhiteListCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/net/MacAddress;

    new-instance v0, Lcom/unisoc/settings/wifi/tether/UniWhiteListWifiTetherClientsPreference;

    iget-object v2, p0, Lcom/unisoc/settings/wifi/tether/UniWifiTetherBaseFragment;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/unisoc/settings/wifi/tether/UniWhiteListWifiTetherClientsPreference;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/MacAddress;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/unisoc/settings/wifi/tether/UniWhitelistSettings;->mConnectedWhiteListCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_0
    return-void
.end method
