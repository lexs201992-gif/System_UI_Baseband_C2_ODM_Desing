.class public Lcom/unisoc/phone/UniTeleServiceComponentFactory;
.super Ljava/lang/Object;
.source "UniTeleServiceComponentFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UniTeleServiceComponentFactory"

.field private static sInstance:Lcom/unisoc/phone/UniTeleServiceComponentFactory;


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

.method public static getInstance(Landroid/content/Context;)Lcom/unisoc/phone/UniTeleServiceComponentFactory;
    .locals 3

    sget-object v0, Lcom/unisoc/phone/UniTeleServiceComponentFactory;->sInstance:Lcom/unisoc/phone/UniTeleServiceComponentFactory;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const-string v0, "com.unisoc.phone.UniTeleServiceComponentFactoryImpl"

    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unisoc/phone/UniTeleServiceComponentFactory;

    sput-object p0, Lcom/unisoc/phone/UniTeleServiceComponentFactory;->sInstance:Lcom/unisoc/phone/UniTeleServiceComponentFactory;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/unisoc/phone/UniTeleServiceComponentFactory;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "instantiating failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p0

    sget-object v0, Lcom/unisoc/phone/UniTeleServiceComponentFactory;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    sget-object p0, Lcom/unisoc/phone/UniTeleServiceComponentFactory;->sInstance:Lcom/unisoc/phone/UniTeleServiceComponentFactory;

    if-nez p0, :cond_1

    new-instance p0, Lcom/unisoc/phone/UniTeleServiceComponentFactory;

    invoke-direct {p0}, Lcom/unisoc/phone/UniTeleServiceComponentFactory;-><init>()V

    sput-object p0, Lcom/unisoc/phone/UniTeleServiceComponentFactory;->sInstance:Lcom/unisoc/phone/UniTeleServiceComponentFactory;

    :cond_1
    sget-object p0, Lcom/unisoc/phone/UniTeleServiceComponentFactory;->sInstance:Lcom/unisoc/phone/UniTeleServiceComponentFactory;

    return-object p0
.end method


# virtual methods
.method public makeSimLockManager(Landroid/content/Context;)Lcom/unisoc/phone/simlock/TeleSimLockManager;
    .locals 0

    new-instance p0, Lcom/unisoc/phone/simlock/TeleSimLockManager;

    invoke-direct {p0}, Lcom/unisoc/phone/simlock/TeleSimLockManager;-><init>()V

    return-object p0
.end method

.method public makeUnisocCallManager()Lcom/unisoc/services/telephony/UnisocCallManager;
    .locals 1

    sget-object p0, Lcom/unisoc/phone/UniTeleServiceComponentFactory;->TAG:Ljava/lang/String;

    const-string v0, "makeUnisocCallManager()"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/unisoc/services/telephony/UnisocCallManager;

    invoke-direct {p0}, Lcom/unisoc/services/telephony/UnisocCallManager;-><init>()V

    return-object p0
.end method

.method public makeUnisocCallSettingManager()Lcom/unisoc/phone/UnisocCallSettingManager;
    .locals 1

    sget-object p0, Lcom/unisoc/phone/UniTeleServiceComponentFactory;->TAG:Ljava/lang/String;

    const-string v0, "makeUnisocCallSettingManager"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/unisoc/phone/UnisocCallSettingManager;

    invoke-direct {p0}, Lcom/unisoc/phone/UnisocCallSettingManager;-><init>()V

    return-object p0
.end method
