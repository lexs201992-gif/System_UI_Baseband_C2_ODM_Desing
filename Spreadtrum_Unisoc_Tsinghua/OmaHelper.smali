.class public Lcom/unisoc/phone/OmaHelper;
.super Ljava/lang/Object;
.source "OmaHelper.java"


# static fields
.field private static final EPDG_FQDN_KEY:Ljava/lang/String; = "epdg fqdn"

.field public static final OMA_WFC_ENABLE:Ljava/lang/String; = "oma.wfc.enable"

.field private static final OMA_WIFI_CALLING_ACTION:Ljava/lang/String; = "com.andorid.VowifiDataConfig"

.field public static final TAG:Ljava/lang/String; = "OmaHelper"

.field private static final VOWIFI_DATA:Ljava/lang/String; = "vowifiData"

.field private static final VOWIFI_SIZE:Ljava/lang/String; = "vowifi_size"

.field private static final VOWIFI_SUBID:Ljava/lang/String; = "subid"

.field private static sInstance:Lcom/unisoc/phone/OmaHelper;


# instance fields
.field private mApplication:Lcom/android/phone/PhoneGlobals;

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private final mOmaReceiver:Landroid/content/BroadcastReceiver;

.field private mPreference:Landroid/content/SharedPreferences;


# direct methods
.method static bridge synthetic -$$Nest$fgetmApplication(Lcom/unisoc/phone/OmaHelper;)Lcom/android/phone/PhoneGlobals;
    .locals 0

    iget-object p0, p0, Lcom/unisoc/phone/OmaHelper;->mApplication:Lcom/android/phone/PhoneGlobals;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetIntCarrierConfig(Lcom/unisoc/phone/OmaHelper;Landroid/content/Context;ILjava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/unisoc/phone/OmaHelper;->getIntCarrierConfig(Landroid/content/Context;ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetStringCarrierConfig(Lcom/unisoc/phone/OmaHelper;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/unisoc/phone/OmaHelper;->getStringCarrierConfig(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smlog(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/unisoc/phone/OmaHelper;->log(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/unisoc/phone/OmaHelper$1;

    invoke-direct {v0, p0}, Lcom/unisoc/phone/OmaHelper$1;-><init>(Lcom/unisoc/phone/OmaHelper;)V

    iput-object v0, p0, Lcom/unisoc/phone/OmaHelper;->mOmaReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iput-object v1, p0, Lcom/unisoc/phone/OmaHelper;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/unisoc/phone/OmaHelper;->TAG:Ljava/lang/String;

    iget-object v3, p0, Lcom/unisoc/phone/OmaHelper;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    iget-object v3, p0, Lcom/unisoc/phone/OmaHelper;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/unisoc/phone/OmaHelper;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Lcom/unisoc/phone/OmaHelper;->mEditor:Landroid/content/SharedPreferences$Editor;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.andorid.VowifiDataConfig"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/unisoc/phone/OmaHelper;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {p0, v0, v1, v3}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method public static getInstance()Lcom/unisoc/phone/OmaHelper;
    .locals 1

    sget-object v0, Lcom/unisoc/phone/OmaHelper;->sInstance:Lcom/unisoc/phone/OmaHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/unisoc/phone/OmaHelper;

    invoke-direct {v0}, Lcom/unisoc/phone/OmaHelper;-><init>()V

    sput-object v0, Lcom/unisoc/phone/OmaHelper;->sInstance:Lcom/unisoc/phone/OmaHelper;

    :cond_0
    sget-object v0, Lcom/unisoc/phone/OmaHelper;->sInstance:Lcom/unisoc/phone/OmaHelper;

    return-object v0
.end method

.method private getIntCarrierConfig(Landroid/content/Context;ILjava/lang/String;)I
    .locals 0

    const-string p0, "carrier_config"

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/CarrierConfigManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0, p3}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    const-string p0, "use default config"

    invoke-static {p0}, Lcom/unisoc/phone/OmaHelper;->log(Ljava/lang/String;)V

    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private getStringCarrierConfig(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p0, "carrier_config"

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/CarrierConfigManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0, p3, p4}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getStringCarrierConfig, key = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", ret = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/unisoc/phone/OmaHelper;->log(Ljava/lang/String;)V

    return-object p4
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/unisoc/phone/OmaHelper;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
