.class public Lcom/unisoc/settingslib/macaddress/UniSettingsLibMacAddressBase;
.super Ljava/lang/Object;
.source "UniSettingsLibMacAddressBase.java"


# static fields
.field private static macAddressInstance:Lcom/unisoc/settingslib/macaddress/UniSettingsLibMacAddressBase;


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

.method public static getMacAddressInstance()Lcom/unisoc/settingslib/macaddress/UniSettingsLibMacAddressBase;
    .locals 2

    const-class v0, Lcom/unisoc/settingslib/macaddress/UniSettingsLibMacAddressBase;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/unisoc/settingslib/macaddress/UniSettingsLibMacAddressBase;->macAddressInstance:Lcom/unisoc/settingslib/macaddress/UniSettingsLibMacAddressBase;

    if-nez v1, :cond_0

    new-instance v1, Lcom/unisoc/settingslib/macaddress/UniSettingsLibMacAddressBase;

    invoke-direct {v1}, Lcom/unisoc/settingslib/macaddress/UniSettingsLibMacAddressBase;-><init>()V

    sput-object v1, Lcom/unisoc/settingslib/macaddress/UniSettingsLibMacAddressBase;->macAddressInstance:Lcom/unisoc/settingslib/macaddress/UniSettingsLibMacAddressBase;

    :cond_0
    sget-object v1, Lcom/unisoc/settingslib/macaddress/UniSettingsLibMacAddressBase;->macAddressInstance:Lcom/unisoc/settingslib/macaddress/UniSettingsLibMacAddressBase;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
