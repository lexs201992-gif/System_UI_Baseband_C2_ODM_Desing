.class public Lcom/unisoc/settingslib/mobile/UniMobileMappingsMgr;
.super Ljava/lang/Object;
.source "UniMobileMappingsMgr.java"


# static fields
.field private static sInstance:Lcom/unisoc/settingslib/mobile/UniMobileMappingsMgr;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/unisoc/settingslib/mobile/UniMobileMappingsMgr;
    .locals 1

    sget-object v0, Lcom/unisoc/settingslib/mobile/UniMobileMappingsMgr;->sInstance:Lcom/unisoc/settingslib/mobile/UniMobileMappingsMgr;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/unisoc/settingslib/UniSettingsLibComponentFactory;->getInstance()Lcom/unisoc/settingslib/UniSettingsLibComponentFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/unisoc/settingslib/UniSettingsLibComponentFactory;->makeMobileMappingsMgr(Landroid/content/Context;)Lcom/unisoc/settingslib/mobile/UniMobileMappingsMgr;

    move-result-object p0

    sput-object p0, Lcom/unisoc/settingslib/mobile/UniMobileMappingsMgr;->sInstance:Lcom/unisoc/settingslib/mobile/UniMobileMappingsMgr;

    :cond_0
    sget-object p0, Lcom/unisoc/settingslib/mobile/UniMobileMappingsMgr;->sInstance:Lcom/unisoc/settingslib/mobile/UniMobileMappingsMgr;

    return-object p0
.end method


# virtual methods
.method public getDefaultDataSubId(I)I
    .locals 0

    return p1
.end method

.method public updateUnisocConfig(Lcom/android/settingslib/mobile/MobileMappings$Config;Landroid/os/PersistableBundle;I)V
    .locals 0

    return-void
.end method
