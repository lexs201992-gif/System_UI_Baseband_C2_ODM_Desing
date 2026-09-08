.class public Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "SecurityAgreeParser.java"


# virtual methods
.method public parse(Lgov/nist/javax/sip/header/ims/SecurityAgree;)Lgov/nist/javax/sip/header/SIPHeaderList;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Lgov/nist/javax/sip/header/ims/SecurityClient;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/ims/SecurityClient;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lgov/nist/javax/sip/header/ims/SecurityClientList;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/SecurityClientList;-><init>()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Lgov/nist/javax/sip/header/ims/SecurityServer;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/ims/SecurityServer;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lgov/nist/javax/sip/header/ims/SecurityServerList;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/SecurityServerList;-><init>()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Lgov/nist/javax/sip/header/ims/SecurityVerify;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/ims/SecurityVerify;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Lgov/nist/javax/sip/header/ims/SecurityVerifyList;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/SecurityVerifyList;-><init>()V

    :goto_0
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v2, 0xfff

    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v1

    invoke-virtual {v1}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lgov/nist/javax/sip/header/ims/SecurityAgree;->setSecurityMechanism(Ljava/lang/String;)V

    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v1

    const/16 v4, 0xa

    if-ne v1, v4, :cond_2

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/SIPHeaderList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    return-object v0

    :cond_2
    const/16 v5, 0x3b

    if-ne v1, v5, :cond_3

    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    :cond_3
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    :goto_1
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1, v3}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v1

    if-eq v1, v4, :cond_a

    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->parseParameter(Lgov/nist/javax/sip/header/ims/SecurityAgree;)V

    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1, v3}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v1

    if-eq v1, v4, :cond_a

    if-nez v1, :cond_4

    goto/16 :goto_3

    :cond_4
    const/16 v6, 0x2c

    if-ne v1, v6, :cond_8

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/SIPHeaderList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v7, Lgov/nist/javax/sip/header/ims/SecurityClient;

    invoke-direct {v7}, Lgov/nist/javax/sip/header/ims/SecurityClient;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance p1, Lgov/nist/javax/sip/header/ims/SecurityClient;

    invoke-direct {p1}, Lgov/nist/javax/sip/header/ims/SecurityClient;-><init>()V

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v7, Lgov/nist/javax/sip/header/ims/SecurityServer;

    invoke-direct {v7}, Lgov/nist/javax/sip/header/ims/SecurityServer;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance p1, Lgov/nist/javax/sip/header/ims/SecurityServer;

    invoke-direct {p1}, Lgov/nist/javax/sip/header/ims/SecurityServer;-><init>()V

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v7, Lgov/nist/javax/sip/header/ims/SecurityVerify;

    invoke-direct {v7}, Lgov/nist/javax/sip/header/ims/SecurityVerify;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance p1, Lgov/nist/javax/sip/header/ims/SecurityVerify;

    invoke-direct {p1}, Lgov/nist/javax/sip/header/ims/SecurityVerify;-><init>()V

    :cond_7
    :goto_2
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v1

    invoke-virtual {v1}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lgov/nist/javax/sip/header/ims/SecurityAgree;->setSecurityMechanism(Ljava/lang/String;)V

    :cond_8
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1, v3}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v1

    if-ne v1, v5, :cond_9

    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    :cond_9
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    goto/16 :goto_1

    :cond_a
    :goto_3
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/SIPHeaderList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    return-object v0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method protected parseParameter(Lgov/nist/javax/sip/header/ims/SecurityAgree;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    sget-boolean v0, Lgov/nist/core/ParserCore;->debug:Z

    const-string v1, "parseParameter"

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_enter(Ljava/lang/String;)V

    :cond_0
    const/16 v2, 0x3d

    :try_start_0
    invoke-virtual {p0, v2}, Lgov/nist/core/ParserCore;->nameValue(C)Lgov/nist/core/NameValue;

    move-result-object v2

    invoke-virtual {p1, v2}, Lgov/nist/javax/sip/header/ParametersHeader;->setParameter(Lgov/nist/core/NameValue;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    sget-boolean v0, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    :cond_2
    throw p1
.end method
