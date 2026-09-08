.class public Lgov/nist/javax/sip/address/SipUri;
.super Lgov/nist/javax/sip/address/GenericURI;
.source "SipUri.java"

# interfaces
.implements Ljavax/sip/address/SipURI;


# static fields
.field private static final serialVersionUID:J = 0x6b8cc0d42713c224L


# instance fields
.field protected authority:Lgov/nist/javax/sip/address/Authority;

.field protected qheaders:Lgov/nist/core/NameValueList;

.field protected telephoneSubscriber:Lgov/nist/javax/sip/address/TelephoneNumber;

.field protected uriParms:Lgov/nist/core/NameValueList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lgov/nist/javax/sip/address/GenericURI;-><init>()V

    const-string v0, "sip"

    iput-object v0, p0, Lgov/nist/javax/sip/address/GenericURI;->scheme:Ljava/lang/String;

    new-instance v0, Lgov/nist/core/NameValueList;

    invoke-direct {v0}, Lgov/nist/core/NameValueList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    new-instance v0, Lgov/nist/core/NameValueList;

    invoke-direct {v0}, Lgov/nist/core/NameValueList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    const-string p0, "&"

    invoke-virtual {v0, p0}, Lgov/nist/core/NameValueList;->setSeparator(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    invoke-super {p0}, Lgov/nist/core/GenericObject;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/address/SipUri;

    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lgov/nist/javax/sip/address/Authority;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/address/Authority;

    iput-object v1, v0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    :cond_0
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/core/NameValueList;

    iput-object v1, v0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    :cond_1
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/core/NameValueList;

    iput-object v1, v0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    :cond_2
    iget-object p0, p0, Lgov/nist/javax/sip/address/SipUri;->telephoneSubscriber:Lgov/nist/javax/sip/address/TelephoneNumber;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lgov/nist/javax/sip/address/TelephoneNumber;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgov/nist/javax/sip/address/TelephoneNumber;

    iput-object p0, v0, Lgov/nist/javax/sip/address/SipUri;->telephoneSubscriber:Lgov/nist/javax/sip/address/TelephoneNumber;

    :cond_3
    return-object v0
.end method

.method public encode()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/address/SipUri;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/address/GenericURI;->scheme:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/Authority;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    invoke-virtual {v0}, Lgov/nist/core/NameValueList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    invoke-virtual {v0}, Lgov/nist/core/NameValueList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    invoke-virtual {p0, p1}, Lgov/nist/core/NameValueList;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    :cond_2
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ljavax/sip/address/SipURI;

    const/4 v2, 0x0

    if-eqz v1, :cond_27

    check-cast p1, Ljavax/sip/address/SipURI;

    invoke-interface {p0}, Ljavax/sip/address/SipURI;->isSecure()Z

    move-result v1

    invoke-interface {p1}, Ljavax/sip/address/SipURI;->isSecure()Z

    move-result v3

    xor-int/2addr v1, v3

    if-eqz v1, :cond_1

    return v2

    :cond_1
    invoke-interface {p0}, Ljavax/sip/address/SipURI;->getUser()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    invoke-interface {p1}, Ljavax/sip/address/SipURI;->getUser()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    move v3, v0

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_1
    xor-int/2addr v1, v3

    if-eqz v1, :cond_4

    return v2

    :cond_4
    invoke-interface {p0}, Ljavax/sip/address/SipURI;->getUserPassword()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    move v1, v0

    goto :goto_2

    :cond_5
    move v1, v2

    :goto_2
    invoke-interface {p1}, Ljavax/sip/address/SipURI;->getUserPassword()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6

    move v3, v0

    goto :goto_3

    :cond_6
    move v3, v2

    :goto_3
    xor-int/2addr v1, v3

    if-eqz v1, :cond_7

    return v2

    :cond_7
    invoke-interface {p0}, Ljavax/sip/address/SipURI;->getUser()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-interface {p0}, Ljavax/sip/address/SipURI;->getUser()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lgov/nist/javax/sip/address/RFC2396UrlDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Ljavax/sip/address/SipURI;->getUser()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lgov/nist/javax/sip/address/RFC2396UrlDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    invoke-interface {p0}, Ljavax/sip/address/SipURI;->getUserPassword()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-interface {p0}, Ljavax/sip/address/SipURI;->getUserPassword()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lgov/nist/javax/sip/address/RFC2396UrlDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Ljavax/sip/address/SipURI;->getUserPassword()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lgov/nist/javax/sip/address/RFC2396UrlDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    invoke-interface {p0}, Ljavax/sip/address/SipURI;->getHost()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    move v1, v0

    goto :goto_4

    :cond_a
    move v1, v2

    :goto_4
    invoke-interface {p1}, Ljavax/sip/address/SipURI;->getHost()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_b

    move v3, v0

    goto :goto_5

    :cond_b
    move v3, v2

    :goto_5
    xor-int/2addr v1, v3

    if-eqz v1, :cond_c

    return v2

    :cond_c
    invoke-interface {p0}, Ljavax/sip/address/SipURI;->getHost()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-interface {p0}, Ljavax/sip/address/SipURI;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Ljavax/sip/address/SipURI;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    invoke-interface {p0}, Ljavax/sip/address/SipURI;->getPort()I

    move-result v1

    invoke-interface {p1}, Ljavax/sip/address/SipURI;->getPort()I

    move-result v3

    if-eq v1, v3, :cond_e

    return v2

    :cond_e
    invoke-interface {p0}, Ljavax/sip/header/Parameters;->getParameterNames()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p0, v3}, Ljavax/sip/header/Parameters;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v3}, Ljavax/sip/header/Parameters;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v4, :cond_f

    if-eqz v3, :cond_f

    invoke-static {v4}, Lgov/nist/javax/sip/address/RFC2396UrlDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Lgov/nist/javax/sip/address/RFC2396UrlDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    return v2

    :cond_10
    invoke-interface {p0}, Ljavax/sip/address/SipURI;->getTransportParam()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_11

    move v1, v0

    goto :goto_6

    :cond_11
    move v1, v2

    :goto_6
    invoke-interface {p1}, Ljavax/sip/address/SipURI;->getTransportParam()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_12

    move v3, v0

    goto :goto_7

    :cond_12
    move v3, v2

    :goto_7
    xor-int/2addr v1, v3

    if-eqz v1, :cond_13

    return v2

    :cond_13
    invoke-interface {p0}, Ljavax/sip/address/SipURI;->getUserParam()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_14

    move v1, v0

    goto :goto_8

    :cond_14
    move v1, v2

    :goto_8
    invoke-interface {p1}, Ljavax/sip/address/SipURI;->getUserParam()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_15

    move v3, v0

    goto :goto_9

    :cond_15
    move v3, v2

    :goto_9
    xor-int/2addr v1, v3

    if-eqz v1, :cond_16

    return v2

    :cond_16
    invoke-interface {p0}, Ljavax/sip/address/SipURI;->getTTLParam()I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_17

    move v1, v0

    goto :goto_a

    :cond_17
    move v1, v2

    :goto_a
    invoke-interface {p1}, Ljavax/sip/address/SipURI;->getTTLParam()I

    move-result v4

    if-ne v4, v3, :cond_18

    move v3, v0

    goto :goto_b

    :cond_18
    move v3, v2

    :goto_b
    xor-int/2addr v1, v3

    if-eqz v1, :cond_19

    return v2

    :cond_19
    invoke-interface {p0}, Ljavax/sip/address/SipURI;->getMethodParam()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1a

    move v1, v0

    goto :goto_c

    :cond_1a
    move v1, v2

    :goto_c
    invoke-interface {p1}, Ljavax/sip/address/SipURI;->getMethodParam()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1b

    move v3, v0

    goto :goto_d

    :cond_1b
    move v3, v2

    :goto_d
    xor-int/2addr v1, v3

    if-eqz v1, :cond_1c

    return v2

    :cond_1c
    invoke-interface {p0}, Ljavax/sip/address/SipURI;->getMAddrParam()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1d

    move v1, v0

    goto :goto_e

    :cond_1d
    move v1, v2

    :goto_e
    invoke-interface {p1}, Ljavax/sip/address/SipURI;->getMAddrParam()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1e

    move v3, v0

    goto :goto_f

    :cond_1e
    move v3, v2

    :goto_f
    xor-int/2addr v1, v3

    if-eqz v1, :cond_1f

    return v2

    :cond_1f
    invoke-interface {p0}, Ljavax/sip/address/SipURI;->getHeaderNames()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {p1}, Ljavax/sip/address/SipURI;->getHeaderNames()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_20

    return v2

    :cond_20
    invoke-interface {p0}, Ljavax/sip/address/SipURI;->getHeaderNames()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_21

    invoke-interface {p1}, Ljavax/sip/address/SipURI;->getHeaderNames()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    return v2

    :cond_21
    invoke-interface {p0}, Ljavax/sip/address/SipURI;->getHeaderNames()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {p1}, Ljavax/sip/address/SipURI;->getHeaderNames()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    :try_start_0
    invoke-static {}, Ljavax/sip/SipFactory;->getInstance()Ljavax/sip/SipFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/sip/SipFactory;->createHeaderFactory()Ljavax/sip/header/HeaderFactory;

    move-result-object v1
    :try_end_0
    .catch Ljavax/sip/PeerUnavailableException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-interface {p0}, Ljavax/sip/address/SipURI;->getHeaderNames()Ljava/util/Iterator;

    move-result-object v3

    :cond_22
    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {p0, v4}, Ljavax/sip/address/SipURI;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v4}, Ljavax/sip/address/SipURI;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v5, :cond_23

    if-eqz v6, :cond_23

    return v2

    :cond_23
    if-nez v6, :cond_24

    if-eqz v5, :cond_24

    return v2

    :cond_24
    if-nez v5, :cond_25

    if-nez v6, :cond_25

    goto :goto_10

    :cond_25
    :try_start_1
    invoke-static {v5}, Lgov/nist/javax/sip/address/RFC2396UrlDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljavax/sip/header/HeaderFactory;->createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v5

    invoke-static {v6}, Lgov/nist/javax/sip/address/RFC2396UrlDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v4, v6}, Ljavax/sip/header/HeaderFactory;->createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v4

    invoke-interface {v5, v4}, Ljavax/sip/header/Header;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v4, :cond_22

    return v2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot parse one of the header of the sip uris to compare "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lgov/nist/core/Debug;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    return v2

    :catch_1
    move-exception p0

    const-string p1, "Cannot get the header factory to parse the header of the sip uris to compare"

    invoke-static {p1, p0}, Lgov/nist/core/Debug;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    return v2

    :cond_26
    return v0

    :cond_27
    return v2
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    invoke-virtual {p0, p1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getHeaderNames()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    invoke-virtual {p0}, Lgov/nist/core/NameValueList;->getNames()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public getHost()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lgov/nist/javax/sip/address/Authority;->getHost()Lgov/nist/core/Host;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    iget-object p0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {p0}, Lgov/nist/javax/sip/address/Authority;->getHost()Lgov/nist/core/Host;

    move-result-object p0

    invoke-virtual {p0}, Lgov/nist/core/Host;->encode()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getHostPort()Lgov/nist/core/HostPort;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lgov/nist/javax/sip/address/Authority;->getHost()Lgov/nist/core/Host;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {p0}, Lgov/nist/javax/sip/address/Authority;->getHostPort()Lgov/nist/core/HostPort;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMAddrParam()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    const-string v0, "maddr"

    invoke-virtual {p0, v0}, Lgov/nist/core/NameValueList;->getNameValue(Ljava/lang/String;)Lgov/nist/core/NameValue;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lgov/nist/core/NameValue;->getValueAsObject()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getMethodParam()Ljava/lang/String;
    .locals 1

    const-string v0, "method"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/address/SipUri;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    invoke-virtual {p0, p1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of p1, p0, Lgov/nist/core/GenericObject;

    if-eqz p1, :cond_1

    check-cast p0, Lgov/nist/core/GenericObject;

    invoke-virtual {p0}, Lgov/nist/core/GenericObject;->encode()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getParameterNames()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    invoke-virtual {p0}, Lgov/nist/core/NameValueList;->getNames()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public getPort()I
    .locals 0

    invoke-virtual {p0}, Lgov/nist/javax/sip/address/SipUri;->getHostPort()Lgov/nist/core/HostPort;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Lgov/nist/core/HostPort;->getPort()I

    move-result p0

    return p0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lgov/nist/javax/sip/address/GenericURI;->scheme:Ljava/lang/String;

    return-object p0
.end method

.method public getTTLParam()I
    .locals 1

    iget-object p0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    const-string v0, "ttl"

    invoke-virtual {p0, v0}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getTransportParam()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    if-eqz p0, :cond_0

    const-string v0, "transport"

    invoke-virtual {p0, v0}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getUser()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {p0}, Lgov/nist/javax/sip/address/Authority;->getUser()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUserParam()Ljava/lang/String;
    .locals 1

    const-string v0, "user"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/address/SipUri;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUserPassword()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/address/Authority;->getPassword()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isSecure()Z
    .locals 1

    invoke-virtual {p0}, Lgov/nist/javax/sip/address/SipUri;->getScheme()Ljava/lang/String;

    move-result-object p0

    const-string v0, "sips"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSipURI()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public setHostPort(Lgov/nist/core/HostPort;)V
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    if-nez v0, :cond_0

    new-instance v0, Lgov/nist/javax/sip/address/Authority;

    invoke-direct {v0}, Lgov/nist/javax/sip/address/Authority;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    :cond_0
    iget-object p0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/address/Authority;->setHostPort(Lgov/nist/core/HostPort;)V

    return-void
.end method

.method public setQHeader(Lgov/nist/core/NameValue;)V
    .locals 0

    iget-object p0, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    invoke-virtual {p0, p1}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    return-void
.end method

.method public setScheme(Ljava/lang/String;)V
    .locals 2

    const-string v0, "sip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "sips"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bad scheme "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgov/nist/javax/sip/address/GenericURI;->scheme:Ljava/lang/String;

    return-void
.end method

.method public setUriParameter(Lgov/nist/core/NameValue;)V
    .locals 0

    iget-object p0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    invoke-virtual {p0, p1}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    if-nez v0, :cond_0

    new-instance v0, Lgov/nist/javax/sip/address/Authority;

    invoke-direct {v0}, Lgov/nist/javax/sip/address/Authority;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    :cond_0
    iget-object p0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/address/Authority;->setUser(Ljava/lang/String;)V

    return-void
.end method

.method public setUserPassword(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    if-nez v0, :cond_0

    new-instance v0, Lgov/nist/javax/sip/address/Authority;

    invoke-direct {v0}, Lgov/nist/javax/sip/address/Authority;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    :cond_0
    iget-object p0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/address/Authority;->setPassword(Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lgov/nist/javax/sip/address/SipUri;->encode()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
