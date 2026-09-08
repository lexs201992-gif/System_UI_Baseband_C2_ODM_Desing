.class public Lgov/nist/javax/sip/parser/ims/PrivacyParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "PrivacyParser.java"


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    sget-boolean v0, Lgov/nist/core/ParserCore;->debug:Z

    const-string v1, "PrivacyParser.parse"

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_enter(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/ims/PrivacyList;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PrivacyList;-><init>()V

    const/16 v2, 0x84e

    :try_start_0
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/HeaderParser;->headerName(I)V

    :cond_1
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v2

    const/16 v4, 0xa

    if-eq v2, v4, :cond_2

    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    new-instance v2, Lgov/nist/javax/sip/header/ims/Privacy;

    invoke-direct {v2}, Lgov/nist/javax/sip/header/ims/Privacy;-><init>()V

    const-string v4, "Privacy"

    invoke-virtual {v2, v4}, Lgov/nist/javax/sip/header/SIPHeader;->setHeaderName(Ljava/lang/String;)V

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v5, 0xfff

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v4

    invoke-virtual {v4}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lgov/nist/javax/sip/header/ims/Privacy;->setPrivacy(Ljava/lang/String;)V

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/SIPHeaderList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    :goto_0
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2, v3}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v2

    const/16 v4, 0x3b

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    new-instance v2, Lgov/nist/javax/sip/header/ims/Privacy;

    invoke-direct {v2}, Lgov/nist/javax/sip/header/ims/Privacy;-><init>()V

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v4

    invoke-virtual {v4}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lgov/nist/javax/sip/header/ims/Privacy;->setPrivacy(Ljava/lang/String;)V

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/SIPHeaderList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    sget-boolean v2, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v2, :cond_3

    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    :cond_3
    return-object v0

    :catchall_0
    move-exception v0

    sget-boolean v2, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v2, :cond_4

    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    :cond_4
    throw v0
.end method
