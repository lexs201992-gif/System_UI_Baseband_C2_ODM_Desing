.class public Lgov/nist/javax/sip/parser/StringMsgParser;
.super Ljava/lang/Object;
.source "StringMsgParser.java"


# instance fields
.field protected readBody:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov/nist/javax/sip/parser/StringMsgParser;->readBody:Z

    return-void
.end method


# virtual methods
.method public parseSIPHeader(Ljava/lang/String;)Lgov/nist/javax/sip/header/SIPHeader;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    :try_start_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-gt v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v3
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-gt v3, v4, :cond_1

    add-int/lit8 p0, p0, -0x1

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/lang/StringBuffer;

    add-int/lit8 v5, p0, 0x1

    invoke-direct {v3, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    move v6, v1

    move v5, v2

    :goto_2
    const/16 v7, 0xa

    if-gt v2, p0, :cond_7

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0xd

    if-eq v8, v9, :cond_5

    if-ne v8, v7, :cond_2

    goto :goto_4

    :cond_2
    if-eqz v6, :cond_6

    if-eq v8, v4, :cond_4

    const/16 v5, 0x9

    if-ne v8, v5, :cond_3

    goto :goto_3

    :cond_3
    move v6, v1

    move v5, v2

    goto :goto_5

    :cond_4
    :goto_3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v2, 0x1

    move v6, v1

    goto :goto_5

    :cond_5
    :goto_4
    if-nez v6, :cond_6

    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v6, v0

    :cond_6
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lgov/nist/javax/sip/parser/ParserFactory;->createParser(Ljava/lang/String;)Lgov/nist/javax/sip/parser/HeaderParser;

    move-result-object p0

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/HeaderParser;->parse()Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object p0

    return-object p0

    :cond_8
    new-instance p0, Ljava/text/ParseException;

    const-string p1, "could not create parser"

    invoke-direct {p0, p1, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p0

    :catch_0
    new-instance p0, Ljava/text/ParseException;

    const-string p1, "Empty header."

    invoke-direct {p0, p1, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method
