.class public Lgov/nist/core/Host;
.super Lgov/nist/core/GenericObject;
.source "Host.java"


# static fields
.field private static final serialVersionUID:J = -0x6462c89aa1f7b990L


# instance fields
.field protected addressType:I

.field protected hostname:Ljava/lang/String;

.field private inetAddress:Ljava/net/InetAddress;

.field private stripAddressScopeZones:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lgov/nist/core/GenericObject;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lgov/nist/core/Host;->stripAddressScopeZones:Z

    const/4 v0, 0x1

    iput v0, p0, Lgov/nist/core/Host;->addressType:I

    const-string v0, "gov.nist.core.STRIP_ADDR_SCOPES"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lgov/nist/core/Host;->stripAddressScopeZones:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0}, Lgov/nist/core/GenericObject;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lgov/nist/core/Host;->stripAddressScopeZones:Z

    if-eqz p1, :cond_0

    const-string v0, "gov.nist.core.STRIP_ADDR_SCOPES"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lgov/nist/core/Host;->stripAddressScopeZones:Z

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lgov/nist/core/Host;->setHost(Ljava/lang/String;I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "null host name"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private isIPv6Address(Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_0

    const/16 p0, 0x3a

    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isIPv6Reference(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v1, 0x5d

    if-ne p0, v1, :cond_0

    move v0, v2

    :cond_0
    return v0
.end method

.method private setHost(Ljava/lang/String;I)V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/core/Host;->inetAddress:Ljava/net/InetAddress;

    invoke-direct {p0, p1}, Lgov/nist/core/Host;->isIPv6Address(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    iput v1, p0, Lgov/nist/core/Host;->addressType:I

    goto :goto_0

    :cond_0
    iput p2, p0, Lgov/nist/core/Host;->addressType:I

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    iget p2, p0, Lgov/nist/core/Host;->addressType:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    :cond_1
    iget p1, p0, Lgov/nist/core/Host;->addressType:I

    if-ne p1, v1, :cond_2

    iget-boolean p1, p0, Lgov/nist/core/Host;->stripAddressScopeZones:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    const/16 p2, 0x25

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_2

    iget-object p2, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    :cond_2
    return-void
.end method


# virtual methods
.method public encode()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/core/Host;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2

    iget v0, p0, Lgov/nist/core/Host;->addressType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    invoke-static {v0}, Lgov/nist/core/Host;->isIPv6Reference(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x5b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 p0, 0x5d

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    check-cast p1, Lgov/nist/core/Host;

    iget-object p1, p1, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    iget-object p0, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getHostname()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    invoke-virtual {p0}, Lgov/nist/core/Host;->getHostname()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method
