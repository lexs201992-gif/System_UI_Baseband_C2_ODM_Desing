.class public Lcom/unisoc/settings/UniSettingsFactory;
.super Ljava/lang/Object;
.source "UniSettingsFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UniSettingsFactory"

.field private static sInstance:Lcom/unisoc/settings/UniSettingsFactory;


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

.method public static getInstance()Lcom/unisoc/settings/UniSettingsFactory;
    .locals 5

    const-class v0, Lcom/unisoc/settings/UniSettingsFactory;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/unisoc/settings/UniSettingsFactory;->sInstance:Lcom/unisoc/settings/UniSettingsFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    const-string v1, "com.unisoc.settings.UniSettingsFactoryImpl"

    const-class v2, Lcom/unisoc/settings/UniSettingsFactory;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unisoc/settings/UniSettingsFactory;

    sput-object v1, Lcom/unisoc/settings/UniSettingsFactory;->sInstance:Lcom/unisoc/settings/UniSettingsFactory;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    sget-object v2, Lcom/unisoc/settings/UniSettingsFactory;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getInstance: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/unisoc/settings/UniSettingsFactory;

    invoke-direct {v1}, Lcom/unisoc/settings/UniSettingsFactory;-><init>()V

    sput-object v1, Lcom/unisoc/settings/UniSettingsFactory;->sInstance:Lcom/unisoc/settings/UniSettingsFactory;

    :cond_0
    :goto_0
    sget-object v1, Lcom/unisoc/settings/UniSettingsFactory;->sInstance:Lcom/unisoc/settings/UniSettingsFactory;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method public getDynaNavigationBarInstance()Lcom/unisoc/settings/navigation/INavigationBarSettings;
    .locals 0

    invoke-static {}, Lcom/unisoc/settings/navigation/NavigationBarSettingsBase;->getDynaNavigationBarInstance()Lcom/unisoc/settings/navigation/NavigationBarSettingsBase;

    move-result-object p0

    return-object p0
.end method

.method public getFlashingIndicatorInstance()Lcom/unisoc/settings/flashing/SettingsFlashingIndicatorController;
    .locals 0

    invoke-static {}, Lcom/unisoc/settings/flashing/SettingsFlashingIndicatorController;->getFlashingIndicatorInstance()Lcom/unisoc/settings/flashing/SettingsFlashingIndicatorController;

    move-result-object p0

    return-object p0
.end method

.method public getFormatStorageInstance()Lcom/unisoc/settings/format/UniFormatInternalStorageBase;
    .locals 0

    invoke-static {}, Lcom/unisoc/settings/format/UniFormatInternalStorageBase;->getFormatStorageInstance()Lcom/unisoc/settings/format/UniFormatInternalStorageBase;

    move-result-object p0

    return-object p0
.end method

.method public getLottieResInstance()Lcom/unisoc/settings/lottie/UniSettingsLottieResBase;
    .locals 0

    invoke-static {}, Lcom/unisoc/settings/lottie/UniSettingsLottieResBase;->getLottieResInstance()Lcom/unisoc/settings/lottie/UniSettingsLottieResBase;

    move-result-object p0

    return-object p0
.end method

.method public getRamShowInstance()Lcom/unisoc/settings/ramshow/SettingsRamShowController;
    .locals 0

    invoke-static {}, Lcom/unisoc/settings/ramshow/SettingsRamShowController;->getRamShowInstance()Lcom/unisoc/settings/ramshow/SettingsRamShowController;

    move-result-object p0

    return-object p0
.end method

.method public getRingtoneInstance()Lcom/unisoc/settings/ringtone/UniDoubleRingtoneBase;
    .locals 0

    invoke-static {}, Lcom/unisoc/settings/ringtone/UniDoubleRingtoneBase;->getRingtoneInstance()Lcom/unisoc/settings/ringtone/UniDoubleRingtoneBase;

    move-result-object p0

    return-object p0
.end method

.method public getSideFingerInstance()Lcom/unisoc/settings/sidefingerprint/UniSettingsSideFingerprintBase;
    .locals 0

    invoke-static {}, Lcom/unisoc/settings/sidefingerprint/UniSettingsSideFingerprintBase;->getSideFingerInstance()Lcom/unisoc/settings/sidefingerprint/UniSettingsSideFingerprintBase;

    move-result-object p0

    return-object p0
.end method

.method public getUniMainClearHelperInstance(Landroid/content/Context;Landroid/os/Bundle;)Lcom/unisoc/settings/system/UniMainClearHelper;
    .locals 0

    invoke-static {p1, p2}, Lcom/unisoc/settings/system/UniMainClearHelper;->getInstance(Landroid/content/Context;Landroid/os/Bundle;)Lcom/unisoc/settings/system/UniMainClearHelper;

    move-result-object p0

    return-object p0
.end method

.method public getUniTimerPowerHelperInstance()Lcom/unisoc/settings/timepower/UniTimerPowerHelper;
    .locals 0

    invoke-static {}, Lcom/unisoc/settings/timepower/UniTimerPowerHelper;->getInstance()Lcom/unisoc/settings/timepower/UniTimerPowerHelper;

    move-result-object p0

    return-object p0
.end method

.method public getUnisocAIPQ()Lcom/unisoc/settings/aipq/UniAIPQBase;
    .locals 0

    invoke-static {}, Lcom/unisoc/settings/aipq/UniAIPQBase;->getAipqInstance()Lcom/unisoc/settings/aipq/UniAIPQBase;

    move-result-object p0

    return-object p0
.end method

.method public getUtils()Lcom/unisoc/settings/utils/UniSettingsUtils;
    .locals 0

    invoke-static {}, Lcom/unisoc/settings/utils/UniSettingsUtils;->getInstance()Lcom/unisoc/settings/utils/UniSettingsUtils;

    move-result-object p0

    return-object p0
.end method

.method public getVersionShowInstance()Lcom/unisoc/settings/version/SettingsVersionShowController;
    .locals 0

    invoke-static {}, Lcom/unisoc/settings/version/SettingsVersionShowController;->getVersionShowInstance()Lcom/unisoc/settings/version/SettingsVersionShowController;

    move-result-object p0

    return-object p0
.end method

.method public makeUnisocSettingsRefreshFactory(Landroid/content/Context;)Lcom/unisoc/settings/refresh/UnisocSettingsRefreshFactory;
    .locals 0

    invoke-static {p1}, Lcom/unisoc/settings/refresh/UnisocSettingsRefreshFactory;->getInstance(Landroid/content/Context;)Lcom/unisoc/settings/refresh/UnisocSettingsRefreshFactory;

    move-result-object p0

    return-object p0
.end method

.method public makeUnisocSettingsResolutionFactory(Landroid/content/Context;)Lcom/unisoc/settings/resolution/UnisocSettingsResolutionFactory;
    .locals 0

    invoke-static {p1}, Lcom/unisoc/settings/resolution/UnisocSettingsResolutionFactory;->getInstance(Landroid/content/Context;)Lcom/unisoc/settings/resolution/UnisocSettingsResolutionFactory;

    move-result-object p0

    return-object p0
.end method

.method public makeUnisocSettingsSavingFactory(Landroid/content/Context;)Lcom/unisoc/settings/saving/UnisocSettingsSavingFactory;
    .locals 0

    invoke-static {p1}, Lcom/unisoc/settings/saving/UnisocSettingsSavingFactory;->getInstance(Landroid/content/Context;)Lcom/unisoc/settings/saving/UnisocSettingsSavingFactory;

    move-result-object p0

    return-object p0
.end method
