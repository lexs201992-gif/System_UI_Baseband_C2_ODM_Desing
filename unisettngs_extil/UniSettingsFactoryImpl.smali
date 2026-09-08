.class public Lcom/unisoc/settings/UniSettingsFactoryImpl;
.super Lcom/unisoc/settings/UniSettingsFactory;
.source "UniSettingsFactoryImpl.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UniSettingsFactoryImpl"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    sget-object v0, Lcom/android/settings/core/gateway/SettingsGateway;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_5

    const-class v1, Lcom/unisoc/settings/navigation/NavigationBarFooFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/settings/core/gateway/SettingsGateway;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "UniSettingsFactoryImpl"

    if-eqz v1, :cond_0

    const-class v1, Lcom/unisoc/settings/navigation/NavigationBarSettingsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    const-string v1, "add NavigationBarSettingsFragment"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    const-class v1, Lcom/unisoc/settings/smartcontrols/SmartMotionForFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aget-object v4, v2, v0

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-class v1, Lcom/unisoc/settings/smartcontrols/SmartMotionFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    const-string v1, "add SmartMotionFragment"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-class v1, Lcom/unisoc/settings/smartcontrols/SmartControlsForFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aget-object v4, v2, v0

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-class v1, Lcom/unisoc/settings/smartcontrols/SmartControlsSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    const-string v1, "add SmartControlsSettings"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-class v1, Lcom/unisoc/settings/smartcontrols/PocketModeForFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aget-object v4, v2, v0

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-class v1, Lcom/unisoc/settings/smartcontrols/PocketModeFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    const-string v1, "add PocketModeFragment"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-class v1, Lcom/unisoc/settings/connecteddevice/WiredScreenCastSettingsForFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aget-object v4, v2, v0

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-class v1, Lcom/unisoc/settings/connecteddevice/WiredScreenCastSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    const-string v0, "add WiredScreenCastSettings"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :cond_5
    :goto_2
    sget-object v0, Lcom/android/settings/dashboard/DashboardFragmentRegistry;->PARENT_TO_CATEGORY_KEY_MAP:Ljava/util/Map;

    const-class v1, Lcom/unisoc/settings/navigation/NavigationBarSettingsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.settings.category.ia.device"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/settings/dashboard/DashboardFragmentRegistry;->CATEGORY_KEY_TO_PARENT_MAP:Ljava/util/Map;

    const-class v1, Lcom/unisoc/settings/navigation/NavigationBarSettingsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/unisoc/settings/UniSettingsFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public getDynaNavigationBarInstance()Lcom/unisoc/settings/navigation/INavigationBarSettings;
    .locals 0

    invoke-static {}, Lcom/unisoc/settings/navigation/NavigationBarSettingsImpl;->getDynaNavigationBarInstance()Lcom/unisoc/settings/navigation/NavigationBarSettingsImpl;

    move-result-object p0

    return-object p0
.end method

.method public getFlashingIndicatorInstance()Lcom/unisoc/settings/flashing/SettingsFlashingIndicatorController;
    .locals 0

    invoke-static {}, Lcom/unisoc/settings/flashing/SettingsFlashingIndicatorControllerImpl;->getFlashingIndicatorInstance()Lcom/unisoc/settings/flashing/SettingsFlashingIndicatorControllerImpl;

    move-result-object p0

    return-object p0
.end method

.method public getFormatStorageInstance()Lcom/unisoc/settings/format/UniFormatInternalStorageBase;
    .locals 0

    invoke-static {}, Lcom/unisoc/settings/format/UniFormatInternalStorageImpl;->getFormatStorageInstance()Lcom/unisoc/settings/format/UniFormatInternalStorageImpl;

    move-result-object p0

    return-object p0
.end method

.method public getLottieResInstance()Lcom/unisoc/settings/lottie/UniSettingsLottieResBase;
    .locals 0

    invoke-static {}, Lcom/unisoc/settings/lottie/UniSettingsLottieResImpl;->getLottieResInstance()Lcom/unisoc/settings/lottie/UniSettingsLottieResImpl;

    move-result-object p0

    return-object p0
.end method

.method public getRamShowInstance()Lcom/unisoc/settings/ramshow/SettingsRamShowController;
    .locals 0

    invoke-static {}, Lcom/unisoc/settings/ramshow/SettingsRamShowControllerImpl;->getRamShowInstance()Lcom/unisoc/settings/ramshow/SettingsRamShowControllerImpl;

    move-result-object p0

    return-object p0
.end method

.method public getRingtoneInstance()Lcom/unisoc/settings/ringtone/UniDoubleRingtoneBase;
    .locals 0

    invoke-static {}, Lcom/unisoc/settings/ringtone/UniDoubleRingtoneImpl;->getRingtoneInstance()Lcom/unisoc/settings/ringtone/UniDoubleRingtoneImpl;

    move-result-object p0

    return-object p0
.end method

.method public getSideFingerInstance()Lcom/unisoc/settings/sidefingerprint/UniSettingsSideFingerprintBase;
    .locals 0

    invoke-static {}, Lcom/unisoc/settings/sidefingerprint/UniSettingsSideFingerprintImpl;->getSideFingerInstance()Lcom/unisoc/settings/sidefingerprint/UniSettingsSideFingerprintImpl;

    move-result-object p0

    return-object p0
.end method

.method public getUniMainClearHelperInstance(Landroid/content/Context;Landroid/os/Bundle;)Lcom/unisoc/settings/system/UniMainClearHelper;
    .locals 0

    invoke-static {p1, p2}, Lcom/unisoc/settings/system/UniMainClearHelperImpl;->getInstance(Landroid/content/Context;Landroid/os/Bundle;)Lcom/unisoc/settings/system/UniMainClearHelperImpl;

    move-result-object p0

    return-object p0
.end method

.method public getUniTimerPowerHelperInstance()Lcom/unisoc/settings/timepower/UniTimerPowerHelper;
    .locals 0

    invoke-static {}, Lcom/unisoc/settings/timepower/UniTimerPowerHelperImpl;->getInstance()Lcom/unisoc/settings/timepower/UniTimerPowerHelperImpl;

    move-result-object p0

    return-object p0
.end method

.method public getUnisocAIPQ()Lcom/unisoc/settings/aipq/UniAIPQBase;
    .locals 0

    invoke-static {}, Lcom/unisoc/settings/aipq/UniAIPQImpl;->getAipqInstance()Lcom/unisoc/settings/aipq/UniAIPQImpl;

    move-result-object p0

    return-object p0
.end method

.method public getUtils()Lcom/unisoc/settings/utils/UniSettingsUtils;
    .locals 0

    invoke-static {}, Lcom/unisoc/settings/utils/UniSettingsUtilsImpl;->getInstance()Lcom/unisoc/settings/utils/UniSettingsUtilsImpl;

    move-result-object p0

    return-object p0
.end method

.method public getVersionShowInstance()Lcom/unisoc/settings/version/SettingsVersionShowController;
    .locals 0

    invoke-static {}, Lcom/unisoc/settings/version/SettingsVersionShowControllerImpl;->getVersionShowInstance()Lcom/unisoc/settings/version/SettingsVersionShowControllerImpl;

    move-result-object p0

    return-object p0
.end method

.method public makeUnisocSettingsRefreshFactory(Landroid/content/Context;)Lcom/unisoc/settings/refresh/UnisocSettingsRefreshFactory;
    .locals 0

    invoke-static {p1}, Lcom/unisoc/settings/refresh/UnisocSettingsRefreshFactoryImpl;->getInstance(Landroid/content/Context;)Lcom/unisoc/settings/refresh/UnisocSettingsRefreshFactory;

    move-result-object p0

    return-object p0
.end method

.method public makeUnisocSettingsResolutionFactory(Landroid/content/Context;)Lcom/unisoc/settings/resolution/UnisocSettingsResolutionFactory;
    .locals 0

    invoke-static {p1}, Lcom/unisoc/settings/resolution/UnisocSettingsResolutionFactoryImpl;->getInstance(Landroid/content/Context;)Lcom/unisoc/settings/resolution/UnisocSettingsResolutionFactory;

    move-result-object p0

    return-object p0
.end method

.method public makeUnisocSettingsSavingFactory(Landroid/content/Context;)Lcom/unisoc/settings/saving/UnisocSettingsSavingFactory;
    .locals 0

    invoke-static {p1}, Lcom/unisoc/settings/saving/UnisocSettingsSavingFactoryImpl;->getInstance(Landroid/content/Context;)Lcom/unisoc/settings/saving/UnisocSettingsSavingFactory;

    move-result-object p0

    return-object p0
.end method
