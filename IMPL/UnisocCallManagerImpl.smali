.class public Lcom/unisoc/services/telephony/UnisocCallManagerImpl;
.super Lcom/unisoc/services/telephony/UnisocCallManager;
.source "UnisocCallManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisoc/services/telephony/UnisocCallManagerImpl$NetworkClass;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "UnisocCallManagerImpl"


# instance fields
.field private isNoActiveSimCard:Z

.field private mIsHdEnabled:[Z

.field private final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/unisoc/services/telephony/UnisocCallManager$UnisocCallManagerListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

.field private mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

.field private mRadioInteractorForClearCode:Lcom/android/unisoc/telephony/RadioInteractor;

.field private mRadioInteractorForHD:Lcom/android/unisoc/telephony/RadioInteractor;

.field private mRadioInteractorListenerForClearCode:[Lcom/android/unisoc/telephony/RadioInteractorListener;

.field private mRadioInteractorListenerForHD:[Lcom/android/unisoc/telephony/RadioInteractorListener;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmIsHdEnabled(Lcom/unisoc/services/telephony/UnisocCallManagerImpl;)[Z
    .locals 0

    iget-object p0, p0, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->mIsHdEnabled:[Z

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmListeners(Lcom/unisoc/services/telephony/UnisocCallManagerImpl;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    iget-object p0, p0, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msendHDBroadcast(Lcom/unisoc/services/telephony/UnisocCallManagerImpl;Landroid/content/Context;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->sendHDBroadcast(Landroid/content/Context;II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/unisoc/services/telephony/UnisocCallManager;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->mIsHdEnabled:[Z

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method private final getPhoneStateListener(Landroid/content/Context;II)Landroid/telephony/PhoneStateListener;
    .locals 1

    new-instance v0, Lcom/unisoc/services/telephony/UnisocCallManagerImpl$3;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/unisoc/services/telephony/UnisocCallManagerImpl$3;-><init>(Lcom/unisoc/services/telephony/UnisocCallManagerImpl;ILandroid/content/Context;I)V

    return-object v0
.end method

.method private getRadioInteractorListener(Landroid/content/Context;I)Lcom/android/unisoc/telephony/RadioInteractorListener;
    .locals 1

    new-instance v0, Lcom/unisoc/services/telephony/UnisocCallManagerImpl$1;

    invoke-direct {v0, p0, p2, p1, p2}, Lcom/unisoc/services/telephony/UnisocCallManagerImpl$1;-><init>(Lcom/unisoc/services/telephony/UnisocCallManagerImpl;ILandroid/content/Context;I)V

    return-object v0
.end method

.method private getRadioInteractorListenerForHD(Landroid/content/Context;II)Lcom/android/unisoc/telephony/RadioInteractorListener;
    .locals 7

    new-instance v6, Lcom/unisoc/services/telephony/UnisocCallManagerImpl$2;

    move-object v0, v6

    move-object v1, p0

    move v2, p2

    move v3, p2

    move-object v4, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/unisoc/services/telephony/UnisocCallManagerImpl$2;-><init>(Lcom/unisoc/services/telephony/UnisocCallManagerImpl;IILandroid/content/Context;I)V

    return-object v6
.end method

.method private isCellularNetworkAvailableForECalls(Lcom/android/internal/telephony/Phone;I)Z
    .locals 1

    const/4 p0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p2

    iget-object p2, p2, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object p2

    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq p2, v0, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p2

    iget-object p2, p2, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getState()I

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p1

    iget-object p1, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p0, 0x1

    :cond_2
    :goto_0
    return p0
.end method

.method private isSupportVoiceClearCodeCSFB(ILandroid/content/Context;)Z
    .locals 1

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    move-result p0

    const-string p1, "carrier_config"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CarrierConfigManager;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    const-string p1, "support_voice_clear_code_volte_csfb"

    invoke-virtual {p0, p1, p2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    :cond_0
    sget-object p0, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isSupportVoiceClearCodeCSFB = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p2
.end method

.method private sendHDBroadcast(Landroid/content/Context;II)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    if-ge v1, p2, :cond_1

    iget-object v3, p0, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->mIsHdEnabled:[Z

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_0

    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->isSupportHdAudio(Lcom/android/internal/telephony/Phone;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    move v3, v0

    :goto_1
    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sendHDBroadcast enabled = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "  phoneId:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/content/Intent;

    const-string p2, "android.intent.action.HIGH_DEF_AUDIO_SUPPORT"

    invoke-direct {p0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "isHdVoiceSupport"

    invoke-virtual {p0, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "phoneId"

    invoke-virtual {p0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "com.unisoc.permisson.HIGH_DEF_AUDIO"

    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addUnisocCallManagerListener(Lcom/unisoc/services/telephony/UnisocCallManager$UnisocCallManagerListener;)V
    .locals 0

    iget-object p0, p0, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCarrierBooleanByKey(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Z)Z
    .locals 1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "carrier_config"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/CarrierConfigManager;

    if-nez p0, :cond_1

    return p3

    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    invoke-static {p0}, Landroid/telephony/CarrierConfigManager;->isConfigForIdentifiedCarrier(Landroid/os/PersistableBundle;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, p2, p3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    sget-object p0, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getCarrierBooleanByKey, key = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", keyValue = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return p3

    :cond_3
    :goto_0
    sget-object p0, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->LOG_TAG:Ljava/lang/String;

    const-string p1, "getCarrierBooleanByKey: phone is null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p3
.end method

.method public getConnectionIndex(Lcom/android/internal/telephony/Connection;)I
    .locals 4

    const/4 p0, -0x1

    if-nez p1, :cond_0

    sget-object p1, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->LOG_TAG:Ljava/lang/String;

    const-string v0, "getConnectionIndex: originalConnection is null"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getPhoneType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    instance-of v1, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    if-eqz v1, :cond_3

    check-cast p1, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ims/ImsCall;->getSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallSession;->getCallId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_2
    instance-of v1, p1, Lcom/android/internal/telephony/GsmCdmaConnection;

    if-eqz v1, :cond_3

    check-cast p1, Lcom/android/internal/telephony/GsmCdmaConnection;

    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->getGsmCdmaIndex()I

    move-result p0
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v1, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIndex exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallStateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    sget-object p1, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConnectionIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " phoneType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public getHdEnabled(I)Z
    .locals 0

    iget-object p0, p0, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->mIsHdEnabled:[Z

    aget-boolean p0, p0, p1

    return p0
.end method

.method public getServiceStateForVowifiOr5gOnly(Lcom/android/internal/telephony/Phone;)I
    .locals 4

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getState()I

    move-result p0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->isImsRegistered()Z

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result p1

    const/16 v1, 0x14

    const/4 v2, 0x0

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    if-nez v0, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    move p0, v2

    :cond_2
    sget-object v1, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getServiceStateForVowifiOr5gOnly mIsImsRegistered: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mIs5gSA:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public handleVideoCallScreenInteraction(Landroid/os/Bundle;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Phone;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->LOG_TAG:Ljava/lang/String;

    const-string v3, "handleVideoCallScreenInteraction enter"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v3, p2

    invoke-virtual {v0, v3}, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->getConnectionIndex(Lcom/android/internal/telephony/Connection;)I

    move-result v11

    const/4 v3, -0x1

    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    move v12, v4

    goto :goto_0

    :cond_0
    move v12, v3

    :goto_0
    const/4 v4, 0x0

    const-string v5, ""

    if-eqz v1, :cond_6

    const-string v6, "ims_call_extra_function_flag"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    :cond_1
    const-string v6, "ims_call_extra_screen_interaction_cap_ack"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_1

    :cond_2
    move v6, v4

    :goto_1
    const-string v7, "ims_call_extra_event_type"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    goto :goto_2

    :cond_3
    move v7, v4

    :goto_2
    const-string v8, "ims_call_extra_digits"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_4
    const-string v8, "ims_call_extra_touch_duration"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    :cond_5
    move v1, v3

    move v15, v4

    move-object v10, v5

    move v13, v6

    move v14, v7

    goto :goto_3

    :cond_6
    move v1, v3

    move v13, v4

    move v14, v13

    move v15, v14

    move-object v10, v5

    :goto_3
    iget-object v3, v0, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

    if-nez v3, :cond_7

    if-eqz p3, :cond_7

    new-instance v3, Lcom/android/unisoc/telephony/RadioInteractor;

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/unisoc/telephony/RadioInteractor;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

    :cond_7
    if-lez v11, :cond_8

    const/4 v3, 0x1

    if-ne v13, v3, :cond_8

    iget-object v3, v0, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

    move v4, v1

    move v5, v11

    move v6, v13

    move v7, v14

    move-object v8, v10

    move v9, v15

    move-object v0, v10

    move v10, v12

    invoke-virtual/range {v3 .. v10}, Lcom/android/unisoc/telephony/RadioInteractor;->sendScreenInteractionExtras(IIIILjava/lang/String;II)V

    goto :goto_4

    :cond_8
    move-object v0, v10

    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleVideoCallScreenInteraction founctionFlag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " imsCallId="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " interactTextflag="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " eventType="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " digits="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " duration="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " phoneId="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public isAvailableForEcallOverAPM(Lcom/android/internal/telephony/Phone;ILcom/android/internal/telephony/satellite/SatelliteController;)Z
    .locals 4

    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getActiveSubInfoCount(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->isNoActiveSimCard:Z

    const-string v0, "force_cellular_network_available_for_ecall"

    invoke-virtual {p0, p1, v0, v2}, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->getCarrierBooleanByKey(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0}, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->isVoWifiRegistered()Z

    move-result v3

    if-nez v3, :cond_4

    if-nez v0, :cond_4

    iget-boolean v3, p0, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->isNoActiveSimCard:Z

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object p0

    sget-object p2, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq p0, p2, :cond_3

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->isRadioOn()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p3}, Lcom/android/internal/telephony/satellite/SatelliteController;->isSatelliteEnabled()Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :cond_3
    :goto_1
    return v1

    :cond_4
    :goto_2
    sget-object p3, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isOkToCall forceApply = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isNoActiveSimCard "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->isNoActiveSimCard:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->isCellularNetworkAvailableForECalls(Lcom/android/internal/telephony/Phone;I)Z

    move-result p0

    return p0
.end method

.method public isFakeEmergencyNumber(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getEmergencyNumberList()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/emergency/EmergencyNumber;

    invoke-virtual {v2}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyCallRouting()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    sget-object p0, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->LOG_TAG:Ljava/lang/String;

    const-string p1, "isFakeEmergencyNumber the emergency routing is normal"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_4
    return v1
.end method

.method public isNoActiveSimCard()Z
    .locals 2

    sget-object v0, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "isNoActiveSimCard"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p0, p0, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->isNoActiveSimCard:Z

    return p0
.end method

.method public isShowManageConference(Lcom/android/internal/telephony/Phone;)Z
    .locals 2

    const-string v0, "manage_conference_even_csfb_bool"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->getCarrierBooleanByKey(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Z)Z

    move-result p0

    sget-object p1, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isShowManageConference = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isSupportHdAudio(Lcom/android/internal/telephony/Phone;)Z
    .locals 2

    const-string v0, "gsm_cdma_calls_can_be_hd_audio"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->getCarrierBooleanByKey(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isSupportVoiceClearCode(Lcom/android/internal/telephony/Phone;)Z
    .locals 2

    const-string v0, "support_voice_clear_code"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->getCarrierBooleanByKey(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Z)Z

    move-result p0

    sget-object p1, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "supportVoiceClearCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isVoWifiRegistered()Z
    .locals 4

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->isWifiCallingEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public notifyCallInforChanged(Ljava/util/Map;Ljava/util/Map;)V
    .locals 6
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

    new-instance p0, Lcom/android/ims/internal/ImsCallIdsInfor;

    invoke-direct {p0}, Lcom/android/ims/internal/ImsCallIdsInfor;-><init>()V

    const-string v0, ", callsessionId:"

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v3, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyCallInforChanged connectionCallIndex:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/ims/internal/ImsCallIdsInfor;->mImsCallSessionIdByConnCallIds:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    sget-object v2, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyCallInforChanged conferenceCallIndex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/ims/internal/ImsCallIdsInfor;->mImsCallSessionIdByConfCallIds:Ljava/util/Map;

    invoke-interface {v2, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/android/ims/internal/ImsManagerEx;->getIImsServiceEx()Lcom/android/ims/internal/IImsServiceEx;

    move-result-object p1

    if-eqz p1, :cond_2

    sget-object p2, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->LOG_TAG:Ljava/lang/String;

    const-string v0, "notifyCallInforChanged."

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1, p0}, Lcom/android/ims/internal/IImsServiceEx;->setCallInfor(Lcom/android/ims/internal/ImsCallIdsInfor;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    sget-object p1, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "notifyCallInforChanged catch the RemoteException: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    return-void
.end method

.method public registerHdStatusChanged(Landroid/content/Context;I)V
    .locals 5

    sget-object v0, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerHdStatusChanged phoneCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->mRadioInteractorForHD:Lcom/android/unisoc/telephony/RadioInteractor;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/unisoc/telephony/RadioInteractor;

    invoke-direct {v0, p1}, Lcom/android/unisoc/telephony/RadioInteractor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->mRadioInteractorForHD:Lcom/android/unisoc/telephony/RadioInteractor;

    :cond_0
    iget-object v0, p0, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->mRadioInteractorListenerForHD:[Lcom/android/unisoc/telephony/RadioInteractorListener;

    if-nez v0, :cond_1

    new-array v0, p2, [Lcom/android/unisoc/telephony/RadioInteractorListener;

    iput-object v0, p0, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->mRadioInteractorListenerForHD:[Lcom/android/unisoc/telephony/RadioInteractorListener;

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_3

    iget-object v1, p0, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->mRadioInteractorListenerForHD:[Lcom/android/unisoc/telephony/RadioInteractorListener;

    invoke-direct {p0, p1, v0, p2}, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->getRadioInteractorListenerForHD(Landroid/content/Context;II)Lcom/android/unisoc/telephony/RadioInteractorListener;

    move-result-object v2

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->mRadioInteractorForHD:Lcom/android/unisoc/telephony/RadioInteractor;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->mRadioInteractorListenerForHD:[Lcom/android/unisoc/telephony/RadioInteractorListener;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    sget-object v1, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->LOG_TAG:Ljava/lang/String;

    const-string v2, "RadioInteractorListener.LISTEN_HD_STATUS_CHANGED_EVENT"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->mRadioInteractorForHD:Lcom/android/unisoc/telephony/RadioInteractor;

    iget-object v2, p0, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->mRadioInteractorListenerForHD:[Lcom/android/unisoc/telephony/RadioInteractorListener;

    aget-object v2, v2, v0

    const/high16 v3, 0x80000

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/unisoc/telephony/RadioInteractor;->listen(Lcom/android/unisoc/telephony/RadioInteractorListener;IZ)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public registerImsCsfbVendorCause(Landroid/content/Context;I)V
    .locals 5

    sget-object v0, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerImsCsfbVendorCause phoneCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->mRadioInteractorForClearCode:Lcom/android/unisoc/telephony/RadioInteractor;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/unisoc/telephony/RadioInteractor;

    invoke-direct {v0, p1}, Lcom/android/unisoc/telephony/RadioInteractor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->mRadioInteractorForClearCode:Lcom/android/unisoc/telephony/RadioInteractor;

    :cond_0
    iget-object v0, p0, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->mRadioInteractorListenerForClearCode:[Lcom/android/unisoc/telephony/RadioInteractorListener;

    if-nez v0, :cond_1

    new-array v0, p2, [Lcom/android/unisoc/telephony/RadioInteractorListener;

    iput-object v0, p0, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->mRadioInteractorListenerForClearCode:[Lcom/android/unisoc/telephony/RadioInteractorListener;

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_3

    iget-object v2, p0, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->mRadioInteractorListenerForClearCode:[Lcom/android/unisoc/telephony/RadioInteractorListener;

    invoke-direct {p0, p1, v1}, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->getRadioInteractorListener(Landroid/content/Context;I)Lcom/android/unisoc/telephony/RadioInteractorListener;

    move-result-object v3

    aput-object v3, v2, v1

    iget-object v2, p0, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->mRadioInteractorForClearCode:Lcom/android/unisoc/telephony/RadioInteractor;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->mRadioInteractorListenerForClearCode:[Lcom/android/unisoc/telephony/RadioInteractorListener;

    aget-object v2, v2, v1

    if-eqz v2, :cond_2

    invoke-direct {p0, v1, p1}, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->isSupportVoiceClearCodeCSFB(ILandroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->LOG_TAG:Ljava/lang/String;

    const-string v3, "RadioInteractorListener.LISTEN_IMS_CSFB_VENDOR_CAUSE_EVENT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->mRadioInteractorForClearCode:Lcom/android/unisoc/telephony/RadioInteractor;

    iget-object v3, p0, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->mRadioInteractorListenerForClearCode:[Lcom/android/unisoc/telephony/RadioInteractorListener;

    aget-object v3, v3, v1

    const/high16 v4, 0x200000

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/unisoc/telephony/RadioInteractor;->listen(Lcom/android/unisoc/telephony/RadioInteractorListener;IZ)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public registerPhoneStateChanged(Landroid/content/Context;I)V
    .locals 4

    new-array v0, p2, [Landroid/telephony/PhoneStateListener;

    iput-object v0, p0, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    invoke-virtual {p0, p2}, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->unregisterPhoneStateChanged(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_2

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    invoke-direct {p0, p1, v0, p2}, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->getPhoneStateListener(Landroid/content/Context;II)Landroid/telephony/PhoneStateListener;

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    new-instance v2, Landroid/telephony/TelephonyManager;

    invoke-direct {v2, p1, v1}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v1, v1, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public removeUnisocCallManagerListener(Lcom/unisoc/services/telephony/UnisocCallManager$UnisocCallManagerListener;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public unregisterHdStatusChanged(Landroid/content/Context;I)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_2

    iget-object v2, p0, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->mRadioInteractorForHD:Lcom/android/unisoc/telephony/RadioInteractor;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->mRadioInteractorListenerForHD:[Lcom/android/unisoc/telephony/RadioInteractorListener;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->mIsHdEnabled:[Z

    aget-boolean v3, v2, v1

    if-eqz v3, :cond_0

    aput-boolean v0, v2, v1

    invoke-direct {p0, p1, p2, v1}, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->sendHDBroadcast(Landroid/content/Context;II)V

    :cond_0
    iget-object v2, p0, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->mRadioInteractorForHD:Lcom/android/unisoc/telephony/RadioInteractor;

    iget-object v3, p0, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->mRadioInteractorListenerForHD:[Lcom/android/unisoc/telephony/RadioInteractorListener;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3, v0, v0}, Lcom/android/unisoc/telephony/RadioInteractor;->listen(Lcom/android/unisoc/telephony/RadioInteractorListener;IZ)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public unregisterImsCsfbVendorCause(Landroid/content/Context;I)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_1

    iget-object v2, p0, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->mRadioInteractorForClearCode:Lcom/android/unisoc/telephony/RadioInteractor;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->mRadioInteractorListenerForClearCode:[Lcom/android/unisoc/telephony/RadioInteractorListener;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    invoke-direct {p0, v1, p1}, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->isSupportVoiceClearCodeCSFB(ILandroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->mRadioInteractorForClearCode:Lcom/android/unisoc/telephony/RadioInteractor;

    iget-object v3, p0, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->mRadioInteractorListenerForClearCode:[Lcom/android/unisoc/telephony/RadioInteractorListener;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3, v0, v0}, Lcom/android/unisoc/telephony/RadioInteractor;->listen(Lcom/android/unisoc/telephony/RadioInteractorListener;IZ)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public unregisterPhoneStateChanged(I)V
    .locals 4

    iget-object v0, p0, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_2

    iget-object v2, p0, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v2, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/unisoc/services/telephony/UnisocCallManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method
