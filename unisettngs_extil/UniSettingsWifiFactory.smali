.class public Lcom/unisoc/settings/wifi/UniSettingsWifiFactory;
.super Ljava/lang/Object;
.source "UniSettingsWifiFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UniSettingsWifiFactory"

.field private static sWifiInstance:Lcom/unisoc/settings/wifi/UniSettingsWifiFactory;


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

.method public static getInstance(Landroid/content/Context;)Lcom/unisoc/settings/wifi/UniSettingsWifiFactory;
    .locals 1

    invoke-static {p0}, Lcom/unisoc/settings/UniSettingsComponentFactory;->getInstance(Landroid/content/Context;)Lcom/unisoc/settings/UniSettingsComponentFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/unisoc/settings/UniSettingsComponentFactory;->getWifiInstance(Landroid/content/Context;)Lcom/unisoc/settings/wifi/UniSettingsWifiFactory;

    move-result-object p0

    return-object p0
.end method

.method public static getWifiInstance(Landroid/content/Context;)Lcom/unisoc/settings/wifi/UniSettingsWifiFactory;
    .locals 1

    const-class p0, Lcom/unisoc/settings/wifi/UniSettingsWifiFactory;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/unisoc/settings/wifi/UniSettingsWifiFactory;->sWifiInstance:Lcom/unisoc/settings/wifi/UniSettingsWifiFactory;

    if-nez v0, :cond_0

    new-instance v0, Lcom/unisoc/settings/wifi/UniSettingsWifiFactory;

    invoke-direct {v0}, Lcom/unisoc/settings/wifi/UniSettingsWifiFactory;-><init>()V

    sput-object v0, Lcom/unisoc/settings/wifi/UniSettingsWifiFactory;->sWifiInstance:Lcom/unisoc/settings/wifi/UniSettingsWifiFactory;

    :cond_0
    sget-object v0, Lcom/unisoc/settings/wifi/UniSettingsWifiFactory;->sWifiInstance:Lcom/unisoc/settings/wifi/UniSettingsWifiFactory;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public addPreference(Landroid/content/Context;Landroidx/preference/PreferenceScreen;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public addPreferenceController(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public addWifiSecuritySummary(Lcom/android/wifitrackerlib/WifiEntry;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/android/wifitrackerlib/WifiEntry;->getSummary(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public canEnableWifiTether(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getAirplaneMode(Landroid/content/Context;)Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance p0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    return-object p0
.end method

.method public getConnectedWifiClients(Landroid/content/Context;)Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiClient;",
            ">;>;"
        }
    .end annotation

    new-instance p0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    return-object p0
.end method

.method public getEapMethods(Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSoftApState(Landroid/content/Context;)Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance p0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    return-object p0
.end method

.method public getUniWifiTetherSearchIndexableRaw(Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getWapiCertAlias(Ljava/lang/String;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getWifiCountryCode(Landroid/content/Context;)Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    return-object p0
.end method

.method public getWifiTextComponentInputFilter(I)Landroid/text/InputFilter;
    .locals 0

    new-instance p0, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {p0, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    return-object p0
.end method

.method public hasAnyWapiCertInstalled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public installWapiCredentials(Landroid/os/Bundle;Ljava/lang/String;Lcom/android/settings/security/CredentialStorage;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isValidWepPassword(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public parseZxingWifiQrCode(Ljava/lang/String;)Lcom/android/settings/wifi/dpp/WifiNetworkConfig;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public removeWapiCredential(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public showWepKeyIndex(ILandroid/view/View;Landroid/widget/Spinner;I)V
    .locals 0

    return-void
.end method

.method public updateTrustedWifiEntryPreferences(Lcom/android/wifitrackerlib/WifiEntry;Ljava/util/List;Landroidx/preference/PreferenceCategory;Lcom/android/settings/network/NetworkProviderSettings;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/wifitrackerlib/WifiEntry;",
            "Ljava/util/List<",
            "Lcom/android/wifitrackerlib/WifiEntry;",
            ">;",
            "Landroidx/preference/PreferenceCategory;",
            "Lcom/android/settings/network/NetworkProviderSettings;",
            ")Z"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public updateWifiPreferenceLabel(Landroidx/preference/PreferenceCategory;Z)V
    .locals 0

    return-void
.end method
