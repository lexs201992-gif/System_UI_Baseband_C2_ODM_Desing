.class public interface abstract Ljavax/sip/header/ViaHeader;
.super Ljava/lang/Object;
.source "ViaHeader.java"

# interfaces
.implements Ljavax/sip/header/Header;
.implements Ljavax/sip/header/Parameters;


# virtual methods
.method public abstract getHost()Ljava/lang/String;
.end method

.method public abstract getPort()I
.end method

.method public abstract getProtocol()Ljava/lang/String;
.end method

.method public abstract getTransport()Ljava/lang/String;
.end method
