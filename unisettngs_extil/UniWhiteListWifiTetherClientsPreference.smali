.class public Lcom/unisoc/settings/wifi/tether/UniWhiteListWifiTetherClientsPreference;
.super Lcom/unisoc/settings/wifi/tether/UniWifiTetherClientsPreference;
.source "UniWhiteListWifiTetherClientsPreference.java"


# static fields
.field protected static final SHARED_PREFERENCE_PATH:Ljava/lang/String; = "com.android.settings.wifi.tether.UniWhiteListWifiTetherClientsPreference"


# instance fields
.field mHostName:Ljava/lang/String;

.field mMacAddress:Landroid/net/MacAddress;

.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/MacAddress;Ljava/lang/String;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/unisoc/settings/wifi/tether/UniWifiTetherClientsPreference;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/MacAddress;Ljava/lang/String;I)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/unisoc/settings/wifi/tether/UniWhiteListWifiTetherClientsPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lcom/unisoc/settings/wifi/tether/UniWhiteListWifiTetherClientsPreference;->mMacAddress:Landroid/net/MacAddress;

    const-string p2, "com.android.settings.wifi.tether.UniWhiteListWifiTetherClientsPreference"

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/unisoc/settings/wifi/tether/UniWhiteListWifiTetherClientsPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/unisoc/settings/wifi/tether/UniWhiteListWifiTetherClientsPreference;->displayWhiteListPre()V

    return-void
.end method


# virtual methods
.method public displayWhiteListPre()V
    .locals 3

    iget-object v0, p0, Lcom/unisoc/settings/wifi/tether/UniWhiteListWifiTetherClientsPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/unisoc/settings/wifi/tether/UniWhiteListWifiTetherClientsPreference;->mMacAddress:Landroid/net/MacAddress;

    invoke-virtual {v1}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisoc/settings/wifi/tether/UniWhiteListWifiTetherClientsPreference;->mHostName:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "displayWhiteListPref mHostName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unisoc/settings/wifi/tether/UniWhiteListWifiTetherClientsPreference;->mHostName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WhiteListWifiTetherPref"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/unisoc/settings/wifi/tether/UniWhiteListWifiTetherClientsPreference;->mHostName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unisoc/settings/wifi/tether/UniWhiteListWifiTetherClientsPreference;->mHostName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MAC: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unisoc/settings/wifi/tether/UniWhiteListWifiTetherClientsPreference;->mMacAddress:Landroid/net/MacAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/unisoc/settings/wifi/tether/UniWhiteListWifiTetherClientsPreference;->mMacAddress:Landroid/net/MacAddress;

    invoke-virtual {v0}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public getHostName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/unisoc/settings/wifi/tether/UniWhiteListWifiTetherClientsPreference;->mHostName:Ljava/lang/String;

    return-object p0
.end method

.method public getMacAddress()Landroid/net/MacAddress;
    .locals 0

    iget-object p0, p0, Lcom/unisoc/settings/wifi/tether/UniWhiteListWifiTetherClientsPreference;->mMacAddress:Landroid/net/MacAddress;

    return-object p0
.end method
