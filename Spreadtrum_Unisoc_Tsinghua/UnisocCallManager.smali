.class public Lcom/unisoc/services/telephony/UnisocCallManager;
.super Ljava/lang/Object;
.source "UnisocCallManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisoc/services/telephony/UnisocCallManager$UnisocCallManagerListener;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/unisoc/services/telephony/UnisocCallManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/unisoc/services/telephony/UnisocCallManager;
    .locals 1

    sget-object v0, Lcom/unisoc/services/telephony/UnisocCallManager;->sInstance:Lcom/unisoc/services/telephony/UnisocCallManager;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/unisoc/phone/UniTeleServiceComponentFactory;->getInstance(Landroid/content/Context;)Lcom/unisoc/phone/UniTeleServiceComponentFactory;

    move-result-object p0

    invoke-virtual {p0}, Lcom/unisoc/phone/UniTeleServiceComponentFactory;->makeUnisocCallManager()Lcom/unisoc/services/telephony/UnisocCallManager;

    move-result-object p0

    sput-object p0, Lcom/unisoc/services/telephony/UnisocCallManager;->sInstance:Lcom/unisoc/services/telephony/UnisocCallManager;

    :cond_0
    sget-object p0, Lcom/unisoc/services/telephony/UnisocCallManager;->sInstance:Lcom/unisoc/services/telephony/UnisocCallManager;

    return-object p0
.end method


# virtual methods
.method public addUnisocCallManagerListener(Lcom/unisoc/services/telephony/UnisocCallManager$UnisocCallManagerListener;)V
    .locals 0

    return-void
.end method

.method public getCarrierBooleanByKey(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Z)Z
    .locals 0

    return p3
.end method

.method public getConnectionIndex(Lcom/android/internal/telephony/Connection;)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getHdEnabled(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getServiceStateForVowifiOr5gOnly(Lcom/android/internal/telephony/Phone;)I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public handleVideoCallScreenInteraction(Landroid/os/Bundle;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Phone;)V
    .locals 0

    return-void
.end method

.method public isAvailableForEcallOverAPM(Lcom/android/internal/telephony/Phone;ILcom/android/internal/telephony/satellite/SatelliteController;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isFakeEmergencyNumber(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isNoActiveSimCard()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isShowManageConference(Lcom/android/internal/telephony/Phone;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportHdAudio(Lcom/android/internal/telephony/Phone;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportVoiceClearCode(Lcom/android/internal/telephony/Phone;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isVoWifiRegistered()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public notifyCallInforChanged(Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public registerHdStatusChanged(Landroid/content/Context;I)V
    .locals 0

    return-void
.end method

.method public registerImsCsfbVendorCause(Landroid/content/Context;I)V
    .locals 0

    return-void
.end method

.method public registerPhoneStateChanged(Landroid/content/Context;I)V
    .locals 0

    return-void
.end method

.method public removeUnisocCallManagerListener(Lcom/unisoc/services/telephony/UnisocCallManager$UnisocCallManagerListener;)V
    .locals 0

    return-void
.end method

.method public unregisterHdStatusChanged(Landroid/content/Context;I)V
    .locals 0

    return-void
.end method

.method public unregisterImsCsfbVendorCause(Landroid/content/Context;I)V
    .locals 0

    return-void
.end method

.method public unregisterPhoneStateChanged(I)V
    .locals 0

    return-void
.end method
