.class public Lgov/nist/javax/sip/parser/UserAgentParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "UserAgentParser.java"


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    sget-boolean v0, Lgov/nist/core/ParserCore;->debug:Z

    const-string v1, "UserAgentParser.parse"

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_enter(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/UserAgent;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/UserAgent;-><init>()V

    const/16 v2, 0x811

    :try_start_0
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/HeaderParser;->headerName(I)V

    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v2

    const/16 v4, 0xa

    if-eq v2, v4, :cond_7

    :goto_0
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2, v3}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v2

    if-eq v2, v4, :cond_5

    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2, v3}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2, v3}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v2

    const/16 v5, 0x28

    if-ne v2, v5, :cond_1

    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->comment()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/UserAgent;->addProductToken(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/Parser;->getLexer()Lgov/nist/javax/sip/parser/Lexer;

    move-result-object v2

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->byteStringNoSlash()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->peekNextToken()Lgov/nist/core/Token;

    move-result-object v2

    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenType()I

    move-result v2

    const/16 v6, 0x2f

    if-ne v2, v6, :cond_3

    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/Parser;->getLexer()Lgov/nist/javax/sip/parser/Lexer;

    move-result-object v2

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->byteStringNoSlash()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    const-string v0, "Expected product version"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/Parser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v0

    throw v0

    :cond_3
    :goto_1
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/UserAgent;->addProductToken(Ljava/lang/String;)V

    :goto_2
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    goto/16 :goto_0

    :cond_4
    const-string v0, "Expected product string"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/Parser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v0

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    sget-boolean v2, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v2, :cond_6

    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    :cond_6
    return-object v0

    :cond_7
    :try_start_1
    const-string v0, "empty header"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/Parser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    sget-boolean v2, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v2, :cond_8

    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    :cond_8
    throw v0
.end method
