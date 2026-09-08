.class public Lcom/unisoc/phone/UniTeleServiceComponentFactoryImpl;
.super Lcom/unisoc/phone/UniTeleServiceComponentFactory;
.source "UniTeleServiceComponentFactoryImpl.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "UniTeleServiceCompFacImpl"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/unisoc/phone/UniTeleServiceComponentFactory;-><init>()V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 0

    const-string p0, "UniTeleServiceCompFacImpl"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public makeSimLockManager(Landroid/content/Context;)Lcom/unisoc/phone/simlock/TeleSimLockManager;
    .locals 1

    const-string v0, "makeSimLockManager"

    invoke-direct {p0, v0}, Lcom/unisoc/phone/UniTeleServiceComponentFactoryImpl;->log(Ljava/lang/String;)V

    new-instance p0, Lcom/unisoc/phone/simlock/TeleSimLockManagerImpl;

    invoke-direct {p0, p1}, Lcom/unisoc/phone/simlock/TeleSimLockManagerImpl;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public makeUnisocCallManager()Lcom/unisoc/services/telephony/UnisocCallManager;
    .locals 1

    const-string v0, "UnisocCallManagerImpl"

    invoke-direct {p0, v0}, Lcom/unisoc/phone/UniTeleServiceComponentFactoryImpl;->log(Ljava/lang/String;)V

    new-instance p0, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;

    invoke-direct {p0}, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;-><init>()V

    return-object p0
.end method

.method public makeUnisocCallSettingManager()Lcom/unisoc/phone/UnisocCallSettingManager;
    .locals 1

    const-string v0, "UnisocCallSettingManagerImpl"

    invoke-direct {p0, v0}, Lcom/unisoc/phone/UniTeleServiceComponentFactoryImpl;->log(Ljava/lang/String;)V

    new-instance p0, Lcom/unisoc/phone/UnisocCallSettingManagerImpl;

    invoke-direct {p0}, Lcom/unisoc/phone/UnisocCallSettingManagerImpl;-><init>()V

    return-object p0
.end method
