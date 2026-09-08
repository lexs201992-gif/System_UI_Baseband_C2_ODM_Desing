.class public Lgov/nist/javax/sip/parser/WarningParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "WarningParser.java"


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    new-instance v0, Lgov/nist/javax/sip/header/WarningList;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/WarningList;-><init>()V

    sget-boolean v1, Lgov/nist/core/ParserCore;->debug:Z

    const-string v2, "WarningParser.parse"

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2}, Lgov/nist/core/ParserCore;->dbg_enter(Ljava/lang/String;)V

    :cond_0
    const/16 v1, 0x81e

    :try_start_0
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/HeaderParser;->headerName(I)V

    :cond_1
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v1

    const/16 v4, 0xa

    if-eq v1, v4, :cond_4

    new-instance v1, Lgov/nist/javax/sip/header/Warning;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/Warning;-><init>()V

    const-string v4, "Warning"

    invoke-virtual {v1, v4}, Lgov/nist/javax/sip/header/SIPHeader;->setHeaderName(Ljava/lang/String;)V

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v5, 0xfff

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v4}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lgov/nist/javax/sip/header/Warning;->setCode(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v4

    iget-object v6, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6, v3}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v7, ":"

    const/16 v8, 0x3a

    if-ne v6, v8, :cond_2

    :try_start_3
    iget-object v6, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6, v8}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v6, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v6, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lgov/nist/javax/sip/header/Warning;->setAgent(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lgov/nist/javax/sip/header/Warning;->setAgent(Ljava/lang/String;)V

    :goto_0
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->quotedString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lgov/nist/javax/sip/header/Warning;->setText(Ljava/lang/String;)V

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPHeaderList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    :goto_1
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1, v3}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v1

    const/16 v4, 0x2c

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    new-instance v1, Lgov/nist/javax/sip/header/Warning;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/Warning;-><init>()V

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v4}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lgov/nist/javax/sip/header/Warning;->setCode(I)V
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v4

    iget-object v6, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6, v3}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v6

    if-ne v6, v8, :cond_3

    iget-object v6, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6, v8}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v6, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v6, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lgov/nist/javax/sip/header/Warning;->setAgent(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v4}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lgov/nist/javax/sip/header/Warning;->setAgent(Ljava/lang/String;)V

    :goto_2
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->quotedString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lgov/nist/javax/sip/header/Warning;->setText(Ljava/lang/String;)V

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPHeaderList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/Parser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v0

    throw v0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/Parser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v0

    throw v0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/Parser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v0

    throw v0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/Parser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v0

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_4
    sget-boolean v1, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v1, :cond_5

    invoke-virtual {p0, v2}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    :cond_5
    return-object v0

    :catchall_0
    move-exception v0

    sget-boolean v1, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v1, :cond_6

    invoke-virtual {p0, v2}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    :cond_6
    throw v0
.end method
