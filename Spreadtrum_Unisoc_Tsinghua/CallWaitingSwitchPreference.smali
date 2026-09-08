.class public Lcom/unisoc/phone/CallWaitingSwitchPreference;
.super Landroid/preference/SwitchPreference;
.source "CallWaitingSwitchPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisoc/phone/CallWaitingSwitchPreference$MyHandler;
    }
.end annotation


# static fields
.field private static final DELAY_MILLIS_FOR_USSD:I = 0x3e8

.field private static final LOG_TAG:Ljava/lang/String; = "UniCallWaitingSwitchPreference"


# instance fields
.field private final DBG:Z

.field private mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private final mHandler:Lcom/unisoc/phone/CallWaitingSwitchPreference$MyHandler;

.field private mIsDuringUpdateProcess:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mQueryStatus:I

.field private mTcpListener:Lcom/unisoc/phone/TimeConsumingPreferenceListener;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUpdateStatus:I

.field private mUssdMode:Z


# direct methods
.method public static synthetic $r8$lambda$8xQTzXPYdAJsYzRER9bClEzpCAE(Lcom/unisoc/phone/CallWaitingSwitchPreference;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unisoc/phone/CallWaitingSwitchPreference;->queryStatusCallBack(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$s7nVki37dW9Jy1GQljjyuSJhvP8(Lcom/unisoc/phone/CallWaitingSwitchPreference;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unisoc/phone/CallWaitingSwitchPreference;->updateStatusCallBack(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmExecutor(Lcom/unisoc/phone/CallWaitingSwitchPreference;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    iget-object p0, p0, Lcom/unisoc/phone/CallWaitingSwitchPreference;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsDuringUpdateProcess(Lcom/unisoc/phone/CallWaitingSwitchPreference;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/unisoc/phone/CallWaitingSwitchPreference;->mIsDuringUpdateProcess:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmQueryStatus(Lcom/unisoc/phone/CallWaitingSwitchPreference;)I
    .locals 0

    iget p0, p0, Lcom/unisoc/phone/CallWaitingSwitchPreference;->mQueryStatus:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTcpListener(Lcom/unisoc/phone/CallWaitingSwitchPreference;)Lcom/unisoc/phone/TimeConsumingPreferenceListener;
    .locals 0

    iget-object p0, p0, Lcom/unisoc/phone/CallWaitingSwitchPreference;->mTcpListener:Lcom/unisoc/phone/TimeConsumingPreferenceListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTelephonyManager(Lcom/unisoc/phone/CallWaitingSwitchPreference;)Landroid/telephony/TelephonyManager;
    .locals 0

    iget-object p0, p0, Lcom/unisoc/phone/CallWaitingSwitchPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUpdateStatus(Lcom/unisoc/phone/CallWaitingSwitchPreference;)I
    .locals 0

    iget p0, p0, Lcom/unisoc/phone/CallWaitingSwitchPreference;->mUpdateStatus:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmIsDuringUpdateProcess(Lcom/unisoc/phone/CallWaitingSwitchPreference;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unisoc/phone/CallWaitingSwitchPreference;->mIsDuringUpdateProcess:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/unisoc/phone/CallWaitingSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101036d

    invoke-direct {p0, p1, p2, v0}, Lcom/unisoc/phone/CallWaitingSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/unisoc/phone/CallWaitingSwitchPreference;->DBG:Z

    new-instance p2, Lcom/unisoc/phone/CallWaitingSwitchPreference$MyHandler;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/unisoc/phone/CallWaitingSwitchPreference$MyHandler;-><init>(Lcom/unisoc/phone/CallWaitingSwitchPreference;Lcom/unisoc/phone/CallWaitingSwitchPreference$MyHandler-IA;)V

    iput-object p2, p0, Lcom/unisoc/phone/CallWaitingSwitchPreference;->mHandler:Lcom/unisoc/phone/CallWaitingSwitchPreference$MyHandler;

    iput-boolean p1, p0, Lcom/unisoc/phone/CallWaitingSwitchPreference;->mIsDuringUpdateProcess:Z

    const/4 p2, 0x3

    iput p2, p0, Lcom/unisoc/phone/CallWaitingSwitchPreference;->mUpdateStatus:I

    iput p2, p0, Lcom/unisoc/phone/CallWaitingSwitchPreference;->mQueryStatus:I

    iput-boolean p1, p0, Lcom/unisoc/phone/CallWaitingSwitchPreference;->mUssdMode:Z

    return-void
.end method

.method private queryStatusCallBack(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryStatusCallBack: CW state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniCallWaitingSwitchPreference"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/unisoc/phone/CallWaitingSwitchPreference;->mQueryStatus:I

    iget-object p0, p0, Lcom/unisoc/phone/CallWaitingSwitchPreference;->mHandler:Lcom/unisoc/phone/CallWaitingSwitchPreference$MyHandler;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private updateStatusCallBack(I)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateStatusCallBack: CW state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", and re get"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniCallWaitingSwitchPreference"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/unisoc/phone/CallWaitingSwitchPreference;->mUpdateStatus:I

    iget-boolean p1, p0, Lcom/unisoc/phone/CallWaitingSwitchPreference;->mUssdMode:Z

    if-eqz p1, :cond_0

    const-string p1, "updateStatusCallBack: USSD mode needs to wait 1s since Framework has the limitation"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/unisoc/phone/CallWaitingSwitchPreference$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/unisoc/phone/CallWaitingSwitchPreference$$ExternalSyntheticLambda0;-><init>(Lcom/unisoc/phone/CallWaitingSwitchPreference;)V

    :try_start_0
    iget-object v0, p0, Lcom/unisoc/phone/CallWaitingSwitchPreference;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/unisoc/phone/CallWaitingSwitchPreference$1;

    invoke-direct {v2, p0, p1}, Lcom/unisoc/phone/CallWaitingSwitchPreference$1;-><init>(Lcom/unisoc/phone/CallWaitingSwitchPreference;Ljava/util/function/Consumer;)V

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x3e8

    invoke-interface {v0, v2, v3, v4, p0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception while waiting: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/unisoc/phone/CallWaitingSwitchPreference;->mTcpListener:Lcom/unisoc/phone/TimeConsumingPreferenceListener;

    if-eqz p1, :cond_1

    check-cast p1, Lcom/unisoc/phone/TimeConsumingPreferenceActivity;

    invoke-virtual {p1}, Lcom/unisoc/phone/TimeConsumingPreferenceActivity;->suppServiceEnd()V

    :cond_1
    iget-object p1, p0, Lcom/unisoc/phone/CallWaitingSwitchPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/unisoc/phone/CallWaitingSwitchPreference;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/unisoc/phone/CallWaitingSwitchPreference$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/unisoc/phone/CallWaitingSwitchPreference$$ExternalSyntheticLambda0;-><init>(Lcom/unisoc/phone/CallWaitingSwitchPreference;)V

    invoke-virtual {p1, v0, v1}, Landroid/telephony/TelephonyManager;->getCallWaitingStatus(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    :goto_0
    return-void
.end method


# virtual methods
.method init(Lcom/unisoc/phone/TimeConsumingPreferenceListener;ZLcom/android/internal/telephony/Phone;)V
    .locals 1

    iput-object p3, p0, Lcom/unisoc/phone/CallWaitingSwitchPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    iput-object p1, p0, Lcom/unisoc/phone/CallWaitingSwitchPreference;->mTcpListener:Lcom/unisoc/phone/TimeConsumingPreferenceListener;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/unisoc/phone/CallWaitingSwitchPreference;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {p0}, Landroid/preference/SwitchPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/unisoc/phone/CallWaitingSwitchPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/preference/SwitchPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    const-string v0, "use_call_waiting_ussd_bool"

    invoke-virtual {p1, v0, p3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    :cond_0
    iput-boolean p3, p0, Lcom/unisoc/phone/CallWaitingSwitchPreference;->mUssdMode:Z

    if-nez p2, :cond_1

    const-string p1, "UniCallWaitingSwitchPreference"

    const-string p2, "init getCallWaitingStatus"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/unisoc/phone/CallWaitingSwitchPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object p2, p0, Lcom/unisoc/phone/CallWaitingSwitchPreference;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance p3, Lcom/unisoc/phone/CallWaitingSwitchPreference$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/unisoc/phone/CallWaitingSwitchPreference$$ExternalSyntheticLambda0;-><init>(Lcom/unisoc/phone/CallWaitingSwitchPreference;)V

    invoke-virtual {p1, p2, p3}, Landroid/telephony/TelephonyManager;->getCallWaitingStatus(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    iget-object p1, p0, Lcom/unisoc/phone/CallWaitingSwitchPreference;->mTcpListener:Lcom/unisoc/phone/TimeConsumingPreferenceListener;

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    invoke-interface {p1, p0, p2}, Lcom/unisoc/phone/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    :cond_1
    return-void
.end method

.method protected onClick()V
    .locals 4

    invoke-super {p0}, Landroid/preference/SwitchPreference;->onClick()V

    iget-object v0, p0, Lcom/unisoc/phone/CallWaitingSwitchPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    iget-object v2, p0, Lcom/unisoc/phone/CallWaitingSwitchPreference;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lcom/unisoc/phone/CallWaitingSwitchPreference$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/unisoc/phone/CallWaitingSwitchPreference$$ExternalSyntheticLambda1;-><init>(Lcom/unisoc/phone/CallWaitingSwitchPreference;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/telephony/TelephonyManager;->setCallWaitingEnabled(ZLjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/unisoc/phone/CallWaitingSwitchPreference;->mTcpListener:Lcom/unisoc/phone/TimeConsumingPreferenceListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/unisoc/phone/CallWaitingSwitchPreference;->mIsDuringUpdateProcess:Z

    check-cast v0, Lcom/unisoc/phone/TimeConsumingPreferenceActivity;

    invoke-virtual {v0}, Lcom/unisoc/phone/TimeConsumingPreferenceActivity;->suppServiceStart()V

    iget-object v0, p0, Lcom/unisoc/phone/CallWaitingSwitchPreference;->mTcpListener:Lcom/unisoc/phone/TimeConsumingPreferenceListener;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/unisoc/phone/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    invoke-virtual {p0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_0
    return-void
.end method
