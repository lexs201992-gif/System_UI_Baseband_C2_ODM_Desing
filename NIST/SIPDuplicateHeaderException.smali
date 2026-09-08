.class public Lgov/nist/javax/sip/message/SIPDuplicateHeaderException;
.super Ljava/text/ParseException;
.source "SIPDuplicateHeaderException.java"


# static fields
.field private static final serialVersionUID:J = 0x725e4b654221d27bL


# instance fields
.field protected sipHeader:Lgov/nist/javax/sip/header/SIPHeader;

.field protected sipMessage:Lgov/nist/javax/sip/message/SIPMessage;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    return-void
.end method
