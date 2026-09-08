.class public Lgov/nist/javax/sip/address/TelephoneNumber;
.super Lgov/nist/javax/sip/address/NetObject;
.source "TelephoneNumber.java"


# instance fields
.field protected isglobal:Z

.field protected parameters:Lgov/nist/core/NameValueList;

.field protected phoneNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lgov/nist/javax/sip/address/NetObject;-><init>()V

    new-instance v0, Lgov/nist/core/NameValueList;

    invoke-direct {v0}, Lgov/nist/core/NameValueList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->parameters:Lgov/nist/core/NameValueList;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lgov/nist/core/GenericObject;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/address/TelephoneNumber;

    iget-object p0, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->parameters:Lgov/nist/core/NameValueList;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lgov/nist/core/NameValueList;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgov/nist/core/NameValueList;

    iput-object p0, v0, Lgov/nist/javax/sip/address/TelephoneNumber;->parameters:Lgov/nist/core/NameValueList;

    :cond_0
    return-object v0
.end method

.method public encode()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/address/TelephoneNumber;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1

    iget-boolean v0, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->isglobal:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x2b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->phoneNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v0}, Lgov/nist/core/NameValueList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {p0, p1}, Lgov/nist/core/NameValueList;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    :cond_1
    return-object p1
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->parameters:Lgov/nist/core/NameValueList;

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

    iget-object p0, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {p0}, Lgov/nist/core/NameValueList;->getNames()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public setGlobal(Z)V
    .locals 0

    iput-boolean p1, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->isglobal:Z

    return-void
.end method

.method public setParameters(Lgov/nist/core/NameValueList;)V
    .locals 0

    iput-object p1, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->parameters:Lgov/nist/core/NameValueList;

    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->phoneNumber:Ljava/lang/String;

    return-void
.end method
