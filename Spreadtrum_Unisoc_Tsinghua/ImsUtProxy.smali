.class public Lcom/spreadtrum/ims/ut/ImsUtProxy;
.super Lcom/android/ims/internal/IImsUt$Stub;
.source "ImsUtProxy.java"


# static fields
.field private static final ACTION_CHANGE_CB_PW:I = 0x14

.field private static final ACTION_QUERY_CB:I = 0x1

.field private static final ACTION_QUERY_CF:I = 0x2

.field private static final ACTION_QUERY_CF_EX:I = 0x10

.field private static final ACTION_QUERY_CLIP:I = 0x5

.field private static final ACTION_QUERY_CLIR:I = 0x4

.field private static final ACTION_QUERY_COLP:I = 0x7

.field private static final ACTION_QUERY_COLR:I = 0x6

.field private static final ACTION_QUERY_CW:I = 0x3

.field private static final ACTION_TRANSACT:I = 0x8

.field private static final ACTION_UPDATE_CB:I = 0x9

.field private static final ACTION_UPDATE_CF:I = 0xa

.field private static final ACTION_UPDATE_CF_EX:I = 0x11

.field private static final ACTION_UPDATE_CLIP:I = 0xd

.field private static final ACTION_UPDATE_CLIR:I = 0xc

.field private static final ACTION_UPDATE_CLOR:I = 0xe

.field private static final ACTION_UPDATE_COLP:I = 0xf

.field private static final ACTION_UPDATE_CW:I = 0xb

.field private static final EXTRA_ACTION:Ljava/lang/String; = "action"

.field private static final EXTRA_BARR_LIST:Ljava/lang/String; = "barrList"

.field private static final EXTRA_CFACTION:Ljava/lang/String; = "CFAction"

.field private static final EXTRA_CFREASON:Ljava/lang/String; = "CFReason"

.field private static final EXTRA_CLIR_MODE:Ljava/lang/String; = "clirMode"

.field private static final EXTRA_DIALING_NUM:Ljava/lang/String; = "dialingNumber"

.field private static final EXTRA_FACILITY:Ljava/lang/String; = "facility"

.field private static final EXTRA_ID:Ljava/lang/String; = "id"

.field private static final EXTRA_LOCK_STATE:Ljava/lang/String; = "lockState"

.field private static final EXTRA_OLD_PASSWORD:Ljava/lang/String; = "oldPassword"

.field private static final EXTRA_PASSWORD:Ljava/lang/String; = "password"

.field private static final EXTRA_RULE_SET:Ljava/lang/String; = "ruleSet"

.field private static final EXTRA_SERVICE_CLASS:Ljava/lang/String; = "serviceClass"

.field private static final EXTRA_TIMER_SECONDS:Ljava/lang/String; = "timerSeconds"

.field private static final INVALID_ID:I = -0x1

.field private static final PRIORITY_VOLTE_UT:I = 0x0

.field private static final PRIORITY_VOWIFI_UT:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static final VOWIFI_QUERY_ID:I = 0x64


# instance fields
.field private mContext:Landroid/content/Context;

.field private mImsService:Lcom/spreadtrum/ims/ImsService;

.field private final mImsUtListener:Lcom/android/ims/internal/IImsUtListener$Stub;

.field private final mImsUtListenerExBinder:Lcom/android/ims/internal/IImsUtListenerEx$Stub;

.field private mListener:Lcom/android/ims/internal/IImsUtListener;

.field private mListenerEx:Lcom/android/ims/internal/IImsUtListenerEx;

.field private mPendingMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mPriority:I

.field private mQueryOnVoLTE:Z

.field private mQueryOnVoLTEId:Landroid/util/SparseIntArray;

.field private mServiceId:I

.field private mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

.field private mVoWifiUtImpl:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;


# direct methods
.method static bridge synthetic -$$Nest$fgetmListener(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Lcom/android/ims/internal/IImsUtListener;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mListener:Lcom/android/ims/internal/IImsUtListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmListenerEx(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Lcom/android/ims/internal/IImsUtListenerEx;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mListenerEx:Lcom/android/ims/internal/IImsUtListenerEx;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPendingMap(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mPendingMap:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmQueryOnVoLTE(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mQueryOnVoLTE:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmQueryOnVoLTEId(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Landroid/util/SparseIntArray;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mQueryOnVoLTEId:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$monConfigurationFailed(Lcom/spreadtrum/ims/ut/ImsUtProxy;Landroid/os/Bundle;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->onConfigurationFailed(Landroid/os/Bundle;)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/spreadtrum/ims/ImsService;Lcom/spreadtrum/ims/ut/ImsUtImpl;Lcom/spreadtrum/ims/vowifi/ImsUtImpl;I)V
    .locals 1

    invoke-direct {p0}, Lcom/android/ims/internal/IImsUt$Stub;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mPriority:I

    iput-boolean v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mQueryOnVoLTE:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mServiceId:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mPendingMap:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mQueryOnVoLTEId:Landroid/util/SparseIntArray;

    new-instance v0, Lcom/spreadtrum/ims/ut/ImsUtProxy$1;

    invoke-direct {v0, p0}, Lcom/spreadtrum/ims/ut/ImsUtProxy$1;-><init>(Lcom/spreadtrum/ims/ut/ImsUtProxy;)V

    iput-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mImsUtListener:Lcom/android/ims/internal/IImsUtListener$Stub;

    new-instance v0, Lcom/spreadtrum/ims/ut/ImsUtProxy$2;

    invoke-direct {v0, p0}, Lcom/spreadtrum/ims/ut/ImsUtProxy$2;-><init>(Lcom/spreadtrum/ims/ut/ImsUtProxy;)V

    iput-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mImsUtListenerExBinder:Lcom/android/ims/internal/IImsUtListenerEx$Stub;

    iput-object p1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    iput-object p4, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoWifiUtImpl:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    iput p5, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mServiceId:I

    iput-object p2, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mImsService:Lcom/spreadtrum/ims/ImsService;

    return-void
.end method

.method private changeBarringPassword(Landroid/os/Bundle;)I
    .locals 4

    const-string v0, "facility"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "oldPassword"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "password"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v3, v0, v2, v1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    return v3
.end method

.method private getCallForwardingOption(Landroid/os/Bundle;)I
    .locals 4

    const-string v0, "CFReason"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "serviceClass"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "ruleSet"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v3, v0, v1, v2}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->getCallForwardingOption(IILjava/lang/String;)I

    move-result v3

    return v3
.end method

.method private getUTConfig()V
    .locals 4

    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mImsService:Lcom/spreadtrum/ims/ImsService;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsService;->isVoWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "getUTConfig primaryCardImsFeature is not wifi"

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mServiceId:I

    invoke-static {v1}, Lcom/spreadtrum/ims/ImsService;->getSubIdByServiceId(I)I

    move-result v1

    invoke-static {}, Lcom/android/ims/internal/ImsManagerEx;->isSingleImsStack()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration;->isSupportUT(Landroid/content/Context;I)Z

    move-result v0

    iput v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mPriority:I

    iput-boolean v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mQueryOnVoLTE:Z

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUTConfig isVowifiSupportUT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mPriority: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mPriority:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->log(Ljava/lang/String;)V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mServiceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onConfigurationFailed(Landroid/os/Bundle;)I
    .locals 4

    const/4 v0, -0x1

    const/4 v1, -0x1

    if-eqz p1, :cond_0

    const-string v2, "action"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConfigurationFailed action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->log(Ljava/lang/String;)V

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->changeBarringPassword(Landroid/os/Bundle;)I

    move-result v1

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->setCallForwardingOption(Landroid/os/Bundle;)I

    move-result v1

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->getCallForwardingOption(Landroid/os/Bundle;)I

    move-result v1

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->updateCLIR(Landroid/os/Bundle;)I

    move-result v1

    goto :goto_0

    :pswitch_5
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->updateCallWaiting(Landroid/os/Bundle;)I

    move-result v1

    goto :goto_0

    :pswitch_6
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->updateCallForward(Landroid/os/Bundle;)I

    move-result v1

    goto :goto_0

    :pswitch_7
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->updateCallBarring(Landroid/os/Bundle;)I

    move-result v1

    goto :goto_0

    :pswitch_8
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->queryCOLP(Landroid/os/Bundle;)I

    move-result v1

    goto :goto_0

    :pswitch_9
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->queryCOLR(Landroid/os/Bundle;)I

    move-result v1

    goto :goto_0

    :pswitch_a
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->queryCLIP(Landroid/os/Bundle;)I

    move-result v1

    goto :goto_0

    :pswitch_b
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->queryCLIR(Landroid/os/Bundle;)I

    move-result v1

    goto :goto_0

    :pswitch_c
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->queryCallWaiting(Landroid/os/Bundle;)I

    move-result v1

    goto :goto_0

    :pswitch_d
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->queryCallForward(Landroid/os/Bundle;)I

    move-result v1

    goto :goto_0

    :pswitch_e
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->queryCallBarring(Landroid/os/Bundle;)I

    move-result v1

    nop

    :cond_0
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private queryCLIP(Landroid/os/Bundle;)I
    .locals 1

    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->queryCLIP()I

    move-result v0

    return v0
.end method

.method private queryCLIR(Landroid/os/Bundle;)I
    .locals 1

    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->queryCLIR()I

    move-result v0

    return v0
.end method

.method private queryCOLP(Landroid/os/Bundle;)I
    .locals 1

    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->queryCOLP()I

    move-result v0

    return v0
.end method

.method private queryCOLR(Landroid/os/Bundle;)I
    .locals 1

    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->queryCOLR()I

    move-result v0

    return v0
.end method

.method private queryCallBarring(Landroid/os/Bundle;)I
    .locals 2

    const-string v0, "facility"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v1, v0}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->queryCallBarring(I)I

    move-result v1

    return v1
.end method

.method private queryCallForward(Landroid/os/Bundle;)I
    .locals 3

    const-string v0, "CFReason"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "dialingNumber"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v2, v0, v1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->queryCallForward(ILjava/lang/String;)I

    move-result v2

    return v2
.end method

.method private queryCallWaiting(Landroid/os/Bundle;)I
    .locals 1

    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->queryCallWaiting()I

    move-result v0

    return v0
.end method

.method private setCallForwardingOption(Landroid/os/Bundle;)I
    .locals 13

    const-string v0, "CFReason"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "CFAction"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    const-string v2, "serviceClass"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    const-string v2, "timerSeconds"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "dialingNumber"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v2, "ruleSet"

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iget-object v2, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    move v3, v9

    move v4, v0

    move v5, v10

    move-object v6, v11

    move v7, v1

    move-object v8, v12

    invoke-virtual/range {v2 .. v8}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->setCallForwardingOption(IIILjava/lang/String;ILjava/lang/String;)I

    move-result v2

    return v2
.end method

.method private updateCLIR(Landroid/os/Bundle;)I
    .locals 2

    const-string v0, "clirMode"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v1, v0}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->updateCLIR(I)I

    move-result v1

    return v1
.end method

.method private updateCallBarring(Landroid/os/Bundle;)I
    .locals 5

    const-string v0, "facility"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "lockState"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "barrList"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    :cond_0
    iget-object v4, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v4, v0, v1, v3}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->updateCallBarring(II[Ljava/lang/String;)I

    move-result v4

    return v4
.end method

.method private updateCallForward(Landroid/os/Bundle;)I
    .locals 11

    const-string v0, "CFAction"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "CFReason"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    const-string v2, "serviceClass"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    const-string v2, "dialingNumber"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v2, "timerSeconds"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    move v3, v0

    move v4, v8

    move-object v5, v10

    move v6, v9

    move v7, v1

    invoke-virtual/range {v2 .. v7}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->updateCallForward(IILjava/lang/String;II)I

    move-result v2

    return v2
.end method

.method private updateCallWaiting(Landroid/os/Bundle;)I
    .locals 3

    const-string v0, "lockState"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "serviceClass"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v2, v0, v1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->updateCallWaiting(ZI)I

    move-result v2

    return v2
.end method


# virtual methods
.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    invoke-virtual {p0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->isVowifiUtEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoWifiUtImpl:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mQueryOnVoLTE:Z

    if-eqz v1, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "action"

    const/16 v3, 0x14

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "facility"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "oldPassword"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "password"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mPendingMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    if-gez v0, :cond_2

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mQueryOnVoLTE:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CBP id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->log(Ljava/lang/String;)V

    return v0
.end method

.method public close()V
    .locals 1

    invoke-virtual {p0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->isVowifiUtEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoWifiUtImpl:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->close()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->close()V

    :goto_0
    return-void
.end method

.method public getCallForwardingOption(IILjava/lang/String;)I
    .locals 4

    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->isVowifiUtEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoWifiUtImpl:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->getCallForwardingOption(IILjava/lang/String;)I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mQueryOnVoLTE:Z

    if-eqz v1, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "action"

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "CFReason"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "serviceClass"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "ruleSet"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mPendingMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    if-gez v0, :cond_2

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mQueryOnVoLTE:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->getCallForwardingOption(IILjava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->getCallForwardingOption(IILjava/lang/String;)I

    move-result v0

    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCallForwardingOption id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->log(Ljava/lang/String;)V

    return v0
.end method

.method public isVowifiUtEnable()Z
    .locals 2

    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoWifiUtImpl:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mPriority:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mImsService:Lcom/spreadtrum/ims/ImsService;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsService;->isVoWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public queryCLIP()I
    .locals 4

    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->isVowifiUtEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoWifiUtImpl:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-virtual {v1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->queryCLIP()I

    move-result v1

    move v0, v1

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mQueryOnVoLTE:Z

    if-eqz v1, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "action"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mPendingMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    if-gez v0, :cond_2

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mQueryOnVoLTE:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->queryCLIP()I

    move-result v1

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->queryCLIP()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :cond_2
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryCLIP id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->log(Ljava/lang/String;)V

    return v0
.end method

.method public queryCLIR()I
    .locals 4

    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->isVowifiUtEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoWifiUtImpl:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-virtual {v1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->queryCLIR()I

    move-result v1

    move v0, v1

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mQueryOnVoLTE:Z

    if-eqz v1, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "action"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mPendingMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    if-gez v0, :cond_2

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mQueryOnVoLTE:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->queryCLIR()I

    move-result v1

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->queryCLIR()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :cond_2
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryCLIR id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->log(Ljava/lang/String;)V

    return v0
.end method

.method public queryCOLP()I
    .locals 4

    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->isVowifiUtEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoWifiUtImpl:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-virtual {v1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->queryCOLP()I

    move-result v1

    move v0, v1

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mQueryOnVoLTE:Z

    if-eqz v1, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "action"

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mPendingMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    if-gez v0, :cond_2

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mQueryOnVoLTE:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->queryCOLP()I

    move-result v1

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->queryCOLP()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :cond_2
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryCOLP id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->log(Ljava/lang/String;)V

    return v0
.end method

.method public queryCOLR()I
    .locals 4

    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->isVowifiUtEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoWifiUtImpl:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-virtual {v1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->queryCOLR()I

    move-result v1

    move v0, v1

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mQueryOnVoLTE:Z

    if-eqz v1, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "action"

    const/4 v3, 0x6

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mPendingMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    if-gez v0, :cond_2

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mQueryOnVoLTE:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->queryCOLR()I

    move-result v1

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->queryCOLR()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :cond_2
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryCOLR id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->log(Ljava/lang/String;)V

    return v0
.end method

.method public queryCallBarring(I)I
    .locals 4

    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->isVowifiUtEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoWifiUtImpl:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-virtual {v1, p1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->queryCallBarring(I)I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mQueryOnVoLTE:Z

    if-eqz v1, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "action"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "facility"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mPendingMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    if-gez v0, :cond_2

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mQueryOnVoLTE:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v1, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->queryCallBarring(I)I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v1, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->queryCallBarring(I)I

    move-result v0

    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryCB id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->log(Ljava/lang/String;)V

    return v0
.end method

.method public queryCallBarringForServiceClass(II)I
    .locals 4

    invoke-virtual {p0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->isVowifiUtEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoWifiUtImpl:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->queryCallBarring(I)I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mQueryOnVoLTE:Z

    if-eqz v1, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "action"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "facility"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "serviceClass"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mPendingMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    if-gez v0, :cond_2

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mQueryOnVoLTE:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v1, p1, p2}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->queryCallBarringForServiceClass(II)I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v0, p1, p2}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->queryCallBarringForServiceClass(II)I

    move-result v0

    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryCB id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->log(Ljava/lang/String;)V

    return v0
.end method

.method public queryCallForward(ILjava/lang/String;)I
    .locals 4

    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->isVowifiUtEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoWifiUtImpl:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-virtual {v1, p1, p2}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->queryCallForward(ILjava/lang/String;)I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mQueryOnVoLTE:Z

    if-eqz v1, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "action"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "CFReason"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "dialingNumber"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mPendingMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    if-gez v0, :cond_2

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mQueryOnVoLTE:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v1, p1, p2}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->queryCallForward(ILjava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v1, p1, p2}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->queryCallForward(ILjava/lang/String;)I

    move-result v0

    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryCF id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->log(Ljava/lang/String;)V

    return v0
.end method

.method public queryCallWaiting()I
    .locals 4

    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->isVowifiUtEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoWifiUtImpl:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-virtual {v1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->queryCallWaiting()I

    move-result v1

    move v0, v1

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mQueryOnVoLTE:Z

    if-eqz v1, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "action"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mPendingMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    if-gez v0, :cond_2

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mQueryOnVoLTE:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->queryCallWaiting()I

    move-result v1

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->queryCallWaiting()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :cond_2
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryCW id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->log(Ljava/lang/String;)V

    return v0
.end method

.method public setCallForwardingOption(IIILjava/lang/String;ILjava/lang/String;)I
    .locals 9

    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->isVowifiUtEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoWifiUtImpl:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move-object v8, p6

    invoke-virtual/range {v2 .. v8}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->setCallForwardingOption(IIILjava/lang/String;ILjava/lang/String;)I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mQueryOnVoLTE:Z

    if-eqz v1, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "action"

    const/16 v3, 0x11

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "CFReason"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "CFAction"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "serviceClass"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "dialingNumber"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "timerSeconds"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "ruleSet"

    invoke-virtual {v1, v2, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mPendingMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    if-gez v0, :cond_2

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mQueryOnVoLTE:Z

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move-object v8, p6

    invoke-virtual/range {v2 .. v8}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->setCallForwardingOption(IIILjava/lang/String;ILjava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->setCallForwardingOption(IIILjava/lang/String;ILjava/lang/String;)I

    move-result v0

    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCallForwardingOption id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->log(Ljava/lang/String;)V

    return v0
.end method

.method public setListener(Lcom/android/ims/internal/IImsUtListener;)V
    .locals 2

    iput-object p1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mListener:Lcom/android/ims/internal/IImsUtListener;

    invoke-direct {p0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->getUTConfig()V

    :try_start_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoWifiUtImpl:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mImsUtListener:Lcom/android/ims/internal/IImsUtListener$Stub;

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->setListener(Lcom/android/ims/internal/IImsUtListener;)V

    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mImsUtListener:Lcom/android/ims/internal/IImsUtListener$Stub;

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->setListener(Lcom/android/ims/internal/IImsUtListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setListenerEx(Lcom/android/ims/internal/IImsUtListenerEx;)V
    .locals 2

    iput-object p1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mListenerEx:Lcom/android/ims/internal/IImsUtListenerEx;

    invoke-direct {p0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->getUTConfig()V

    const-string v0, "setListenerEx"

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoWifiUtImpl:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mImsUtListenerExBinder:Lcom/android/ims/internal/IImsUtListenerEx$Stub;

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->setListenerEx(Lcom/android/ims/internal/IImsUtListenerEx;)V

    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mImsUtListenerExBinder:Lcom/android/ims/internal/IImsUtListenerEx$Stub;

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->setListenerEx(Lcom/android/ims/internal/IImsUtListenerEx;)V

    return-void
.end method

.method public transact(Landroid/os/Bundle;)I
    .locals 2

    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->isVowifiUtEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoWifiUtImpl:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-virtual {v1, p1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->transact(Landroid/os/Bundle;)I

    move-result v0

    if-gez v0, :cond_1

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mQueryOnVoLTE:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v1, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->transact(Landroid/os/Bundle;)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v1, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->transact(Landroid/os/Bundle;)I

    move-result v0

    :cond_1
    :goto_0
    return v0
.end method

.method public updateCLIP(Z)I
    .locals 3

    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->isVowifiUtEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoWifiUtImpl:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-virtual {v1, p1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->updateCLIP(Z)I

    move-result v1

    move v0, v1

    if-gez v0, :cond_1

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mQueryOnVoLTE:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v1, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->updateCLIP(Z)I

    move-result v1

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v1, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->updateCLIP(Z)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :cond_1
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCLIP id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->log(Ljava/lang/String;)V

    return v0
.end method

.method public updateCLIR(I)I
    .locals 4

    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->isVowifiUtEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoWifiUtImpl:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-virtual {v1, p1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->updateCLIR(I)I

    move-result v1

    move v0, v1

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mQueryOnVoLTE:Z

    if-eqz v1, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "action"

    const/16 v3, 0xc

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "clirMode"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mPendingMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    if-gez v0, :cond_2

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mQueryOnVoLTE:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v1, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->updateCLIR(I)I

    move-result v1

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v1, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->updateCLIR(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :cond_2
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCLIR id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->log(Ljava/lang/String;)V

    return v0
.end method

.method public updateCOLP(Z)I
    .locals 3

    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->isVowifiUtEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoWifiUtImpl:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-virtual {v1, p1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->updateCOLP(Z)I

    move-result v1

    move v0, v1

    if-gez v0, :cond_1

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mQueryOnVoLTE:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v1, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->updateCOLP(Z)I

    move-result v1

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v1, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->updateCOLP(Z)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :cond_1
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCOLP id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->log(Ljava/lang/String;)V

    return v0
.end method

.method public updateCOLR(I)I
    .locals 3

    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->isVowifiUtEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoWifiUtImpl:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-virtual {v1, p1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->updateCOLR(I)I

    move-result v1

    move v0, v1

    if-gez v0, :cond_1

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mQueryOnVoLTE:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v1, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->updateCOLR(I)I

    move-result v1

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v1, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->updateCOLR(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :cond_1
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCOLR id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->log(Ljava/lang/String;)V

    return v0
.end method

.method public updateCallBarring(II[Ljava/lang/String;)I
    .locals 5

    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->isVowifiUtEnable()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoWifiUtImpl:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->updateCallBarring(II[Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mQueryOnVoLTE:Z

    if-eqz v1, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_0

    const/4 v3, 0x0

    :goto_0
    array-length v4, p3

    if-ge v3, v4, :cond_0

    aget-object v4, p3, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string v3, "action"

    const/16 v4, 0x9

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "facility"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "lockState"

    invoke-virtual {v1, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "barrList"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mPendingMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    if-gez v0, :cond_3

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mQueryOnVoLTE:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->updateCallBarring(II[Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->updateCallBarring(II[Ljava/lang/String;)I

    move-result v0

    :cond_3
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCB id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->log(Ljava/lang/String;)V

    return v0
.end method

.method public updateCallBarringForServiceClass(II[Ljava/lang/String;I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->isVowifiUtEnable()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoWifiUtImpl:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->updateCallBarring(II[Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mQueryOnVoLTE:Z

    if-eqz v1, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_0

    const/4 v3, 0x0

    :goto_0
    array-length v4, p3

    if-ge v3, v4, :cond_0

    aget-object v4, p3, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string v3, "action"

    const/16 v4, 0x9

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "facility"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "lockState"

    invoke-virtual {v1, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "barrList"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "serviceClass"

    invoke-virtual {v1, v3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mPendingMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    if-gez v0, :cond_3

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mQueryOnVoLTE:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->updateCallBarringForServiceClass(II[Ljava/lang/String;I)I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->updateCallBarringForServiceClass(II[Ljava/lang/String;I)I

    move-result v0

    :cond_3
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCB id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->log(Ljava/lang/String;)V

    return v0
.end method

.method public updateCallBarringWithPassword(II[Ljava/lang/String;ILjava/lang/String;)I
    .locals 8

    invoke-virtual {p0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->isVowifiUtEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoWifiUtImpl:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->updateCallBarring(II[Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mQueryOnVoLTE:Z

    if-eqz v1, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_0

    const/4 v3, 0x0

    :goto_0
    array-length v4, p3

    if-ge v3, v4, :cond_0

    aget-object v4, p3, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string v3, "action"

    const/16 v4, 0x9

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "facility"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "lockState"

    invoke-virtual {v1, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "barrList"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "serviceClass"

    invoke-virtual {v1, v3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mPendingMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    if-gez v0, :cond_3

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mQueryOnVoLTE:Z

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    move v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->updateCallBarringWithPassword(II[Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->updateCallBarringWithPassword(II[Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    :cond_3
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCB id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->log(Ljava/lang/String;)V

    return v0
.end method

.method public updateCallForward(IILjava/lang/String;II)I
    .locals 8

    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->isVowifiUtEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoWifiUtImpl:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    move v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->updateCallForward(IILjava/lang/String;II)I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mQueryOnVoLTE:Z

    if-eqz v1, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "action"

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "CFAction"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "CFReason"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "dialingNumber"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "serviceClass"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "timerSeconds"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mPendingMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    if-gez v0, :cond_2

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mQueryOnVoLTE:Z

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    move v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->updateCallForward(IILjava/lang/String;II)I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->updateCallForward(IILjava/lang/String;II)I

    move-result v0

    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCF id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->log(Ljava/lang/String;)V

    return v0
.end method

.method public updateCallWaiting(ZI)I
    .locals 4

    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->isVowifiUtEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoWifiUtImpl:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-virtual {v1, p1, p2}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->updateCallWaiting(ZI)I

    move-result v1

    move v0, v1

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mQueryOnVoLTE:Z

    if-eqz v1, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "action"

    const/16 v3, 0xb

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "lockState"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "serviceClass"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mPendingMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    if-gez v0, :cond_2

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mQueryOnVoLTE:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v1, p1, p2}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->updateCallWaiting(ZI)I

    move-result v1

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v1, p1, p2}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->updateCallWaiting(ZI)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :cond_2
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCW id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->log(Ljava/lang/String;)V

    return v0
.end method

.method public updateUtConfig(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;)V
    .locals 2

    invoke-direct {p0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->getUTConfig()V

    iput-object p1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoWifiUtImpl:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mImsUtListener:Lcom/android/ims/internal/IImsUtListener$Stub;

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->setListener(Lcom/android/ims/internal/IImsUtListener;)V

    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoWifiUtImpl:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mImsUtListenerExBinder:Lcom/android/ims/internal/IImsUtListenerEx$Stub;

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->setListenerEx(Lcom/android/ims/internal/IImsUtListenerEx;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    :cond_0
    :goto_0
    nop

    :goto_1
    return-void
.end method
