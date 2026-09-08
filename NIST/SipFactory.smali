.class public Ljavax/sip/SipFactory;
.super Ljava/lang/Object;
.source "SipFactory.java"


# static fields
.field private static sSipFactory:Ljavax/sip/SipFactory;


# instance fields
.field private mNameSipStackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljavax/sip/SipFactory;->mNameSipStackMap:Ljava/util/Map;

    return-void
.end method

.method public static declared-synchronized getInstance()Ljavax/sip/SipFactory;
    .locals 2

    const-class v0, Ljavax/sip/SipFactory;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ljavax/sip/SipFactory;->sSipFactory:Ljavax/sip/SipFactory;

    if-nez v1, :cond_0

    new-instance v1, Ljavax/sip/SipFactory;

    invoke-direct {v1}, Ljavax/sip/SipFactory;-><init>()V

    sput-object v1, Ljavax/sip/SipFactory;->sSipFactory:Ljavax/sip/SipFactory;

    :cond_0
    sget-object v1, Ljavax/sip/SipFactory;->sSipFactory:Ljavax/sip/SipFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public createHeaderFactory()Ljavax/sip/header/HeaderFactory;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/PeerUnavailableException;
        }
    .end annotation

    :try_start_0
    new-instance p0, Lgov/nist/javax/sip/header/HeaderFactoryImpl;

    invoke-direct {p0}, Lgov/nist/javax/sip/header/HeaderFactoryImpl;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    instance-of v0, p0, Ljavax/sip/PeerUnavailableException;

    if-eqz v0, :cond_0

    check-cast p0, Ljavax/sip/PeerUnavailableException;

    throw p0

    :cond_0
    new-instance v0, Ljavax/sip/PeerUnavailableException;

    const-string v1, "Failed to create HeaderFactory"

    invoke-direct {v0, v1, p0}, Ljavax/sip/PeerUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
