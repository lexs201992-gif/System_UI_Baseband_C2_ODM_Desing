.class public interface abstract Ljavax/sip/address/SipURI;
.super Ljava/lang/Object;
.source "SipURI.java"

# interfaces
.implements Ljavax/sip/address/URI;
.implements Ljavax/sip/header/Parameters;


# virtual methods
.method public abstract getHeader(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getHeaderNames()Ljava/util/Iterator;
.end method

.method public abstract getHost()Ljava/lang/String;
.end method

.method public abstract getMAddrParam()Ljava/lang/String;
.end method

.method public abstract getMethodParam()Ljava/lang/String;
.end method

.method public abstract getPort()I
.end method

.method public abstract getTTLParam()I
.end method

.method public abstract getTransportParam()Ljava/lang/String;
.end method

.method public abstract getUser()Ljava/lang/String;
.end method

.method public abstract getUserParam()Ljava/lang/String;
.end method

.method public abstract getUserPassword()Ljava/lang/String;
.end method

.method public abstract isSecure()Z
.end method
