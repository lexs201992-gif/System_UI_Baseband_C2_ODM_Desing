.class public final Lcom/speedymovil/contenedor/utils/TelephonyDualSim;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/speedymovil/contenedor/utils/TelephonyDualSim$GeminiMethodNotFoundException;
    }
.end annotation


# static fields
.field private static final INDEX_SIM1:I = 0x0

.field private static final INDEX_SIM2:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TelephonyDualSim"

.field private static telephonyInfo:Lcom/speedymovil/contenedor/utils/TelephonyDualSim;


# instance fields
.field private imeiSIM1:Ljava/lang/String;

.field private imeiSIM2:Ljava/lang/String;

.field private imsiSIM1:Ljava/lang/String;

.field private imsiSIM2:Ljava/lang/String;

.field private isSIM1Ready:Z

.field private isSIM2Ready:Z

.field private msisdn1:Ljava/lang/String;

.field private msisdn2:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDeviceIdBySlot(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/speedymovil/contenedor/utils/TelephonyDualSim$GeminiMethodNotFoundException;
        }
    .end annotation

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, p1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v4

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p0, Lcom/speedymovil/contenedor/utils/TelephonyDualSim$GeminiMethodNotFoundException;

    invoke-direct {p0, p1}, Lcom/speedymovil/contenedor/utils/TelephonyDualSim$GeminiMethodNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getImsiBySlot(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/speedymovil/contenedor/utils/TelephonyDualSim$GeminiMethodNotFoundException;
        }
    .end annotation

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    sget-object v0, Lcom/speedymovil/contenedor/utils/TelephonyDualSim;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getImsiBySlot slotID =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/speedymovil/contenedor/utils/LogUtils;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "getSubscriberId"

    const/4 v1, 0x1

    :try_start_0
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v1, v3

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p0, Lcom/speedymovil/contenedor/utils/TelephonyDualSim$GeminiMethodNotFoundException;

    invoke-direct {p0, v0}, Lcom/speedymovil/contenedor/utils/TelephonyDualSim$GeminiMethodNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getInstance()Lcom/speedymovil/contenedor/utils/TelephonyDualSim;
    .locals 1

    sget-object v0, Lcom/speedymovil/contenedor/utils/TelephonyDualSim;->telephonyInfo:Lcom/speedymovil/contenedor/utils/TelephonyDualSim;

    if-nez v0, :cond_0

    new-instance v0, Lcom/speedymovil/contenedor/utils/TelephonyDualSim;

    invoke-direct {v0}, Lcom/speedymovil/contenedor/utils/TelephonyDualSim;-><init>()V

    sput-object v0, Lcom/speedymovil/contenedor/utils/TelephonyDualSim;->telephonyInfo:Lcom/speedymovil/contenedor/utils/TelephonyDualSim;

    :cond_0
    sget-object v0, Lcom/speedymovil/contenedor/utils/TelephonyDualSim;->telephonyInfo:Lcom/speedymovil/contenedor/utils/TelephonyDualSim;

    return-object v0
.end method

.method private static getSIMStateBySlot(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/speedymovil/contenedor/utils/TelephonyDualSim$GeminiMethodNotFoundException;
        }
    .end annotation

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, p1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v4

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x5

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    return v1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p0, Lcom/speedymovil/contenedor/utils/TelephonyDualSim$GeminiMethodNotFoundException;

    invoke-direct {p0, p1}, Lcom/speedymovil/contenedor/utils/TelephonyDualSim$GeminiMethodNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getSubscriptionId(Landroid/content/Context;)[I
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [I

    :try_start_0
    invoke-static {p1}, Lcom/speedymovil/contenedor/utils/CommonUtil;->getSubscriptionManager(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-static {p1, v2}, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object p1

    sget-object v1, Lcom/speedymovil/contenedor/utils/TelephonyDualSim;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current list = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/speedymovil/contenedor/utils/LogUtils;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    aput v4, v0, v1

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    aput v1, v0, v2

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/speedymovil/contenedor/utils/TelephonyDualSim;->msisdn1:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/speedymovil/contenedor/utils/TelephonyDualSim;->msisdn2:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public getImeiSIM1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/speedymovil/contenedor/utils/TelephonyDualSim;->imeiSIM1:Ljava/lang/String;

    return-object v0
.end method

.method public getImeiSIM2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/speedymovil/contenedor/utils/TelephonyDualSim;->imeiSIM2:Ljava/lang/String;

    return-object v0
.end method

.method public getImsiSIM1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/speedymovil/contenedor/utils/TelephonyDualSim;->imsiSIM1:Ljava/lang/String;

    return-object v0
.end method

.method public getImsiSIM2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/speedymovil/contenedor/utils/TelephonyDualSim;->imsiSIM2:Ljava/lang/String;

    return-object v0
.end method

.method public getMsisdn1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/speedymovil/contenedor/utils/TelephonyDualSim;->msisdn1:Ljava/lang/String;

    return-object v0
.end method

.method public getMsisdn2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/speedymovil/contenedor/utils/TelephonyDualSim;->msisdn2:Ljava/lang/String;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 10

    const-string v0, "getSimState"

    const-string v1, "getSimStateGemini"

    const-string v2, "getDeviceId"

    const-string v3, "getDeviceIdGemini"

    const-string v4, "phone"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, p1}, Lcom/speedymovil/contenedor/utils/TelephonyDualSim;->isDualSIM(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-direct {p0, p1}, Lcom/speedymovil/contenedor/utils/TelephonyDualSim;->getSubscriptionId(Landroid/content/Context;)[I

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x1

    if-le v6, v7, :cond_1

    const/4 v6, 0x0

    aget v8, v5, v6

    aget v5, v5, v7

    invoke-static {p1}, Lcom/speedymovil/contenedor/utils/CommonUtil;->getImeiNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/speedymovil/contenedor/utils/TelephonyDualSim;->imeiSIM1:Ljava/lang/String;

    const/4 v9, 0x0

    iput-object v9, p0, Lcom/speedymovil/contenedor/utils/TelephonyDualSim;->imeiSIM2:Ljava/lang/String;

    :try_start_0
    invoke-static {p1, v3, v8}, Lcom/speedymovil/contenedor/utils/TelephonyDualSim;->getDeviceIdBySlot(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/speedymovil/contenedor/utils/TelephonyDualSim;->imeiSIM1:Ljava/lang/String;

    invoke-static {p1, v3, v5}, Lcom/speedymovil/contenedor/utils/TelephonyDualSim;->getDeviceIdBySlot(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/speedymovil/contenedor/utils/TelephonyDualSim;->imeiSIM2:Ljava/lang/String;
    :try_end_0
    .catch Lcom/speedymovil/contenedor/utils/TelephonyDualSim$GeminiMethodNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :try_start_1
    invoke-static {p1, v2, v8}, Lcom/speedymovil/contenedor/utils/TelephonyDualSim;->getDeviceIdBySlot(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/speedymovil/contenedor/utils/TelephonyDualSim;->imeiSIM1:Ljava/lang/String;

    invoke-static {p1, v2, v5}, Lcom/speedymovil/contenedor/utils/TelephonyDualSim;->getDeviceIdBySlot(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/speedymovil/contenedor/utils/TelephonyDualSim;->imeiSIM2:Ljava/lang/String;
    :try_end_1
    .catch Lcom/speedymovil/contenedor/utils/TelephonyDualSim$GeminiMethodNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    move v7, v6

    :goto_1
    iput-boolean v7, p0, Lcom/speedymovil/contenedor/utils/TelephonyDualSim;->isSIM1Ready:Z

    iput-boolean v6, p0, Lcom/speedymovil/contenedor/utils/TelephonyDualSim;->isSIM2Ready:Z

    :try_start_2
    invoke-static {p1, v1, v8}, Lcom/speedymovil/contenedor/utils/TelephonyDualSim;->getSIMStateBySlot(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/speedymovil/contenedor/utils/TelephonyDualSim;->isSIM1Ready:Z

    invoke-static {p1, v1, v5}, Lcom/speedymovil/contenedor/utils/TelephonyDualSim;->getSIMStateBySlot(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/speedymovil/contenedor/utils/TelephonyDualSim;->isSIM2Ready:Z
    :try_end_2
    .catch Lcom/speedymovil/contenedor/utils/TelephonyDualSim$GeminiMethodNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :try_start_3
    invoke-static {p1, v0, v8}, Lcom/speedymovil/contenedor/utils/TelephonyDualSim;->getSIMStateBySlot(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/speedymovil/contenedor/utils/TelephonyDualSim;->isSIM1Ready:Z

    invoke-static {p1, v0, v5}, Lcom/speedymovil/contenedor/utils/TelephonyDualSim;->getSIMStateBySlot(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/speedymovil/contenedor/utils/TelephonyDualSim;->isSIM2Ready:Z
    :try_end_3
    .catch Lcom/speedymovil/contenedor/utils/TelephonyDualSim$GeminiMethodNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    :try_start_4
    invoke-static {p1, v8}, Lcom/speedymovil/contenedor/utils/TelephonyDualSim;->getImsiBySlot(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/speedymovil/contenedor/utils/TelephonyDualSim;->imsiSIM1:Ljava/lang/String;

    invoke-static {p1, v5}, Lcom/speedymovil/contenedor/utils/TelephonyDualSim;->getImsiBySlot(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/speedymovil/contenedor/utils/TelephonyDualSim;->imsiSIM2:Ljava/lang/String;
    :try_end_4
    .catch Lcom/speedymovil/contenedor/utils/TelephonyDualSim$GeminiMethodNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_3

    :catch_4
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_3
    return-void
.end method

.method public isDualSIM(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/speedymovil/contenedor/utils/CommonUtil;->getSubscriptionManager(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p1

    sget-object v1, Lcom/speedymovil/contenedor/appdelegate/AppDelegate;->M:Lcom/speedymovil/contenedor/appdelegate/AppDelegate$a;

    invoke-virtual {v1}, Lcom/speedymovil/contenedor/appdelegate/AppDelegate$a;->b()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-static {v1, v2}, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    if-le p1, v1, :cond_1

    move v0, v1

    :cond_1
    return v0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public isSIM1Ready()Z
    .locals 1

    iget-boolean v0, p0, Lcom/speedymovil/contenedor/utils/TelephonyDualSim;->isSIM1Ready:Z

    return v0
.end method

.method public isSIM2Ready()Z
    .locals 1

    iget-boolean v0, p0, Lcom/speedymovil/contenedor/utils/TelephonyDualSim;->isSIM2Ready:Z

    return v0
.end method
