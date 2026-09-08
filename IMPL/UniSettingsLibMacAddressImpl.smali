.class public Lcom/unisoc/settingslib/macaddress/UniSettingsLibMacAddressImpl;
.super Lcom/unisoc/settingslib/macaddress/UniSettingsLibMacAddressBase;
.source "UniSettingsLibMacAddressImpl.java"


# static fields
.field private static final MACID_FILE_PATH:Ljava/lang/String; = "/mnt/vendor/wifimac.txt"

.field private static final TAG:Ljava/lang/String; = "UniSettingsLibMacAddressImpl"

.field private static macAddressInstance:Lcom/unisoc/settingslib/macaddress/UniSettingsLibMacAddressImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/unisoc/settingslib/macaddress/UniSettingsLibMacAddressBase;-><init>()V

    return-void
.end method

.method public static getMacAddressInstance()Lcom/unisoc/settingslib/macaddress/UniSettingsLibMacAddressImpl;
    .locals 2

    const-class v0, Lcom/unisoc/settingslib/macaddress/UniSettingsLibMacAddressImpl;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/unisoc/settingslib/macaddress/UniSettingsLibMacAddressImpl;->macAddressInstance:Lcom/unisoc/settingslib/macaddress/UniSettingsLibMacAddressImpl;

    if-nez v1, :cond_0

    new-instance v1, Lcom/unisoc/settingslib/macaddress/UniSettingsLibMacAddressImpl;

    invoke-direct {v1}, Lcom/unisoc/settingslib/macaddress/UniSettingsLibMacAddressImpl;-><init>()V

    sput-object v1, Lcom/unisoc/settingslib/macaddress/UniSettingsLibMacAddressImpl;->macAddressInstance:Lcom/unisoc/settingslib/macaddress/UniSettingsLibMacAddressImpl;

    :cond_0
    sget-object v1, Lcom/unisoc/settingslib/macaddress/UniSettingsLibMacAddressImpl;->macAddressInstance:Lcom/unisoc/settingslib/macaddress/UniSettingsLibMacAddressImpl;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getMacFromFile()Ljava/lang/String;
    .locals 5

    const-string p0, "reader close exception"

    new-instance v0, Ljava/io/File;

    const-string v1, "/mnt/vendor/wifimac.txt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_0

    move-object v1, v0

    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    sget-object v0, Lcom/unisoc/settingslib/macaddress/UniSettingsLibMacAddressImpl;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v2, v1

    :goto_1
    :try_start_3
    sget-object v3, Lcom/unisoc/settingslib/macaddress/UniSettingsLibMacAddressImpl;->TAG:Ljava/lang/String;

    const-string v4, "get mac from file caught exception"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v2, :cond_1

    goto :goto_0

    :catch_4
    move-exception v0

    move-object v2, v1

    :goto_2
    sget-object v3, Lcom/unisoc/settingslib/macaddress/UniSettingsLibMacAddressImpl;->TAG:Ljava/lang/String;

    const-string v4, "Mac file not exist"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    :goto_3
    return-object v1

    :catchall_1
    move-exception v0

    move-object v1, v2

    :goto_4
    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_5

    :catch_5
    sget-object v1, Lcom/unisoc/settingslib/macaddress/UniSettingsLibMacAddressImpl;->TAG:Ljava/lang/String;

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_5
    throw v0
.end method


# virtual methods
.method public getAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settingslib/R$bool;->config_enableGetWifiMacFromFile:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/unisoc/settingslib/macaddress/UniSettingsLibMacAddressImpl;->getMacFromFile()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settingslib/R$string;->status_unavailable:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method
