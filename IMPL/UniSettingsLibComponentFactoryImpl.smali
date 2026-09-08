.class public Lcom/unisoc/settingslib/UniSettingsLibComponentFactoryImpl;
.super Lcom/unisoc/settingslib/UniSettingsLibComponentFactory;
.source "UniSettingsLibComponentFactoryImpl.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/unisoc/settingslib/UniSettingsLibComponentFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public getChargingFastThreshold(Landroid/content/Context;)I
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settingslib/R$integer;->config_chargingFastThreshold_unisoc:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    return p0
.end method

.method public getMacAddressInstance()Lcom/unisoc/settingslib/macaddress/UniSettingsLibMacAddressBase;
    .locals 0

    invoke-static {}, Lcom/unisoc/settingslib/macaddress/UniSettingsLibMacAddressImpl;->getMacAddressInstance()Lcom/unisoc/settingslib/macaddress/UniSettingsLibMacAddressImpl;

    move-result-object p0

    return-object p0
.end method

.method public makeMobileMappingsMgr(Landroid/content/Context;)Lcom/unisoc/settingslib/mobile/UniMobileMappingsMgr;
    .locals 0

    new-instance p0, Lcom/unisoc/settingslib/mobile/UniMobileMappingsMgrImpl;

    invoke-direct {p0, p1}, Lcom/unisoc/settingslib/mobile/UniMobileMappingsMgrImpl;-><init>(Landroid/content/Context;)V

    return-object p0
.end method
