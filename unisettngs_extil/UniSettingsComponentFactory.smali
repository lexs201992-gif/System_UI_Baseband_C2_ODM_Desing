.class public Lcom/unisoc/settings/UniSettingsComponentFactory;
.super Ljava/lang/Object;
.source "UniSettingsComponentFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UniSettingsComponentFactory"

.field private static sInstance:Lcom/unisoc/settings/UniSettingsComponentFactory;


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

.method public static getInstance(Landroid/content/Context;)Lcom/unisoc/settings/UniSettingsComponentFactory;
    .locals 4

    const-class v0, Lcom/unisoc/settings/UniSettingsComponentFactory;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/unisoc/settings/UniSettingsComponentFactory;->sInstance:Lcom/unisoc/settings/UniSettingsComponentFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    const-string v1, "com.unisoc.settings.UniSettingsComponentFactoryImpl"

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unisoc/settings/UniSettingsComponentFactory;

    sput-object p0, Lcom/unisoc/settings/UniSettingsComponentFactory;->sInstance:Lcom/unisoc/settings/UniSettingsComponentFactory;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    sget-object v1, Lcom/unisoc/settings/UniSettingsComponentFactory;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInstance: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/unisoc/settings/UniSettingsComponentFactory;

    invoke-direct {p0}, Lcom/unisoc/settings/UniSettingsComponentFactory;-><init>()V

    sput-object p0, Lcom/unisoc/settings/UniSettingsComponentFactory;->sInstance:Lcom/unisoc/settings/UniSettingsComponentFactory;

    :cond_0
    :goto_0
    sget-object p0, Lcom/unisoc/settings/UniSettingsComponentFactory;->sInstance:Lcom/unisoc/settings/UniSettingsComponentFactory;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method


# virtual methods
.method public getCallSettingInstance(Landroid/content/Context;)Lcom/unisoc/settings/callsetting/UniSettingsCallSettingManager;
    .locals 0

    invoke-static {p1}, Lcom/unisoc/settings/callsetting/UniSettingsCallSettingManager;->getCallSettingInstance(Landroid/content/Context;)Lcom/unisoc/settings/callsetting/UniSettingsCallSettingManager;

    move-result-object p0

    return-object p0
.end method

.method public getDataInstance(Landroid/content/Context;)Lcom/unisoc/settings/data/UniSettingsDataManager;
    .locals 0

    invoke-static {p1}, Lcom/unisoc/settings/data/UniSettingsDataManager;->getDataInstance(Landroid/content/Context;)Lcom/unisoc/settings/data/UniSettingsDataManager;

    move-result-object p0

    return-object p0
.end method

.method public getFaceInstance(Landroid/content/Context;)Lcom/unisoc/settings/biometrics/face/UniSettingsFaceFactory;
    .locals 0

    invoke-static {p1}, Lcom/unisoc/settings/biometrics/face/UniSettingsFaceFactory;->getFaceInstance(Landroid/content/Context;)Lcom/unisoc/settings/biometrics/face/UniSettingsFaceFactory;

    move-result-object p0

    return-object p0
.end method

.method public getFingerprintInstance(Landroid/content/Context;)Lcom/unisoc/settings/biometrics/fingerprint/UniSettingsFingerprintFactory;
    .locals 0

    invoke-static {p1}, Lcom/unisoc/settings/biometrics/fingerprint/UniSettingsFingerprintFactory;->getFingerprintInstance(Landroid/content/Context;)Lcom/unisoc/settings/biometrics/fingerprint/UniSettingsFingerprintFactory;

    move-result-object p0

    return-object p0
.end method

.method public getLocationInstance(Landroid/content/Context;)Lcom/unisoc/settings/location/UniSettingsLocationFactory;
    .locals 0

    invoke-static {p1}, Lcom/unisoc/settings/location/UniSettingsLocationFactory;->getLocationInstance(Landroid/content/Context;)Lcom/unisoc/settings/location/UniSettingsLocationFactory;

    move-result-object p0

    return-object p0
.end method

.method public getNetworkInstance(Landroid/content/Context;)Lcom/unisoc/settings/network/UniSettingsNetworkFactory;
    .locals 0

    invoke-static {p1}, Lcom/unisoc/settings/network/UniSettingsNetworkFactory;->getNetworkInstance(Landroid/content/Context;)Lcom/unisoc/settings/network/UniSettingsNetworkFactory;

    move-result-object p0

    return-object p0
.end method

.method public getSimInstance(Landroid/content/Context;)Lcom/unisoc/settings/sim/UniSettingsSimFactory;
    .locals 0

    invoke-static {p1}, Lcom/unisoc/settings/sim/UniSettingsSimFactory;->getSimInstance(Landroid/content/Context;)Lcom/unisoc/settings/sim/UniSettingsSimFactory;

    move-result-object p0

    return-object p0
.end method

.method public getSimLockManager(Landroid/content/Context;)Lcom/unisoc/settings/network/telephony/simlock/UniSettingsSimLockMgr;
    .locals 0

    invoke-static {p1}, Lcom/unisoc/settings/network/telephony/simlock/UniSettingsSimLockMgr;->getSimLockManager(Landroid/content/Context;)Lcom/unisoc/settings/network/telephony/simlock/UniSettingsSimLockMgr;

    move-result-object p0

    return-object p0
.end method

.method public getWifiInstance(Landroid/content/Context;)Lcom/unisoc/settings/wifi/UniSettingsWifiFactory;
    .locals 0

    invoke-static {p1}, Lcom/unisoc/settings/wifi/UniSettingsWifiFactory;->getWifiInstance(Landroid/content/Context;)Lcom/unisoc/settings/wifi/UniSettingsWifiFactory;

    move-result-object p0

    return-object p0
.end method
