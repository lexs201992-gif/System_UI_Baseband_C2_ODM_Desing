.class public Lgov/nist/javax/sip/message/MessageFactoryImpl;
.super Ljava/lang/Object;
.source "MessageFactoryImpl.java"


# static fields
.field private static defaultContentEncodingCharset:Ljava/lang/String; = "UTF-8"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static getDefaultContentEncodingCharset()Ljava/lang/String;
    .locals 1

    sget-object v0, Lgov/nist/javax/sip/message/MessageFactoryImpl;->defaultContentEncodingCharset:Ljava/lang/String;

    return-object v0
.end method
