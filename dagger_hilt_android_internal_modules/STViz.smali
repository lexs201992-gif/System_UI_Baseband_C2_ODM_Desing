.class public Lorg/stringtemplate/v4/gui/STViz;
.super Ljava/lang/Object;
.source "STViz.java"


# static fields
.field protected static final WINDOWS_LINE_ENDINGS:Ljava/lang/String; = "WINDOWS_LINE_ENDINGS"


# instance fields
.field public allEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/stringtemplate/v4/debug/InterpEvent;",
            ">;"
        }
    .end annotation
.end field

.field public currentEvent:Lorg/stringtemplate/v4/debug/InterpEvent;

.field public currentScope:Lorg/stringtemplate/v4/InstanceScope;

.field public errMgr:Lorg/stringtemplate/v4/misc/ErrorManager;

.field public errors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/stringtemplate/v4/misc/STMessage;",
            ">;"
        }
    .end annotation
.end field

.field public interp:Lorg/stringtemplate/v4/Interpreter;

.field public output:Ljava/lang/String;

.field public root:Lorg/stringtemplate/v4/debug/EvalTemplateEvent;

.field public tmodel:Lorg/stringtemplate/v4/gui/JTreeSTModel;

.field public trace:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final updateDepth:Ljava/util/concurrent/atomic/AtomicInteger;

.field public viewFrame:Lorg/stringtemplate/v4/gui/STViewFrame;


# direct methods
.method public constructor <init>(Lorg/stringtemplate/v4/misc/ErrorManager;Lorg/stringtemplate/v4/debug/EvalTemplateEvent;Ljava/lang/String;Lorg/stringtemplate/v4/Interpreter;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/stringtemplate/v4/misc/ErrorManager;",
            "Lorg/stringtemplate/v4/debug/EvalTemplateEvent;",
            "Ljava/lang/String;",
            "Lorg/stringtemplate/v4/Interpreter;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lorg/stringtemplate/v4/misc/STMessage;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/stringtemplate/v4/gui/STViz;->updateDepth:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Lorg/stringtemplate/v4/gui/STViz;->errMgr:Lorg/stringtemplate/v4/misc/ErrorManager;

    iput-object p2, p0, Lorg/stringtemplate/v4/gui/STViz;->currentEvent:Lorg/stringtemplate/v4/debug/InterpEvent;

    iget-object p1, p2, Lorg/stringtemplate/v4/debug/EvalTemplateEvent;->scope:Lorg/stringtemplate/v4/InstanceScope;

    iput-object p1, p0, Lorg/stringtemplate/v4/gui/STViz;->currentScope:Lorg/stringtemplate/v4/InstanceScope;

    iput-object p3, p0, Lorg/stringtemplate/v4/gui/STViz;->output:Ljava/lang/String;

    iput-object p4, p0, Lorg/stringtemplate/v4/gui/STViz;->interp:Lorg/stringtemplate/v4/Interpreter;

    invoke-virtual {p4}, Lorg/stringtemplate/v4/Interpreter;->getEvents()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/stringtemplate/v4/gui/STViz;->allEvents:Ljava/util/List;

    iput-object p5, p0, Lorg/stringtemplate/v4/gui/STViz;->trace:Ljava/util/List;

    iput-object p6, p0, Lorg/stringtemplate/v4/gui/STViz;->errors:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lorg/stringtemplate/v4/gui/STViz;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Lorg/stringtemplate/v4/gui/STViz;->updateDepth:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic access$100(Lorg/stringtemplate/v4/gui/STViz;Lorg/stringtemplate/v4/gui/STViewFrame;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/stringtemplate/v4/gui/STViz;->updateCurrentST(Lorg/stringtemplate/v4/gui/STViewFrame;)V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    aget-object v0, p0, v1

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/stringtemplate/v4/gui/STViz;->test1()V

    goto :goto_0

    :cond_0
    array-length v0, p0

    if-lez v0, :cond_1

    aget-object v0, p0, v1

    const-string v2, "2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/stringtemplate/v4/gui/STViz;->test2()V

    goto :goto_0

    :cond_1
    array-length v0, p0

    if-lez v0, :cond_2

    aget-object v0, p0, v1

    const-string v2, "3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lorg/stringtemplate/v4/gui/STViz;->test3()V

    goto :goto_0

    :cond_2
    array-length v0, p0

    if-lez v0, :cond_3

    aget-object p0, p0, v1

    const-string v0, "4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Lorg/stringtemplate/v4/gui/STViz;->test4()V

    :cond_3
    :goto_0
    return-void
.end method

.method public static test1()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "java.io.tmpdir"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "t.stg"

    const-string v2, "method(type,name,locals,args,stats) ::= <<\npublic <type> <name>(<args:{a| int <a>}; separator=\", \">) {\n    <if(locals)>int locals[<locals>];<endif>\n    <stats;separator=\"\\n\">\n}\n>>\nassign(a,b) ::= \"<a> = <b>;\"\nreturn(x) ::= <<return <x>;>>\nparen(x) ::= \"(<x>)\"\n"

    invoke-static {v0, v1, v2}, Lorg/stringtemplate/v4/gui/STViz;->writeFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/stringtemplate/v4/STGroupFile;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/stringtemplate/v4/STGroupFile;-><init>(Ljava/lang/String;)V

    const-string v0, "method"

    invoke-virtual {v2, v0}, Lorg/stringtemplate/v4/STGroup;->getInstanceOf(Ljava/lang/String;)Lorg/stringtemplate/v4/ST;

    move-result-object v0

    iget-object v1, v0, Lorg/stringtemplate/v4/ST;->impl:Lorg/stringtemplate/v4/compiler/CompiledST;

    invoke-virtual {v1}, Lorg/stringtemplate/v4/compiler/CompiledST;->dump()V

    const-string v1, "type"

    const-string v3, "float"

    invoke-virtual {v0, v1, v3}, Lorg/stringtemplate/v4/ST;->add(Ljava/lang/String;Ljava/lang/Object;)Lorg/stringtemplate/v4/ST;

    const-string v1, "name"

    const-string v3, "foo"

    invoke-virtual {v0, v1, v3}, Lorg/stringtemplate/v4/ST;->add(Ljava/lang/String;Ljava/lang/Object;)Lorg/stringtemplate/v4/ST;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "locals"

    invoke-virtual {v0, v3, v1}, Lorg/stringtemplate/v4/ST;->add(Ljava/lang/String;Ljava/lang/Object;)Lorg/stringtemplate/v4/ST;

    const-string v1, "x"

    const-string v3, "y"

    const-string v4, "z"

    filled-new-array {v1, v3, v4}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "args"

    invoke-virtual {v0, v6, v5}, Lorg/stringtemplate/v4/ST;->add(Ljava/lang/String;Ljava/lang/Object;)Lorg/stringtemplate/v4/ST;

    const-string v5, "assign"

    invoke-virtual {v2, v5}, Lorg/stringtemplate/v4/STGroup;->getInstanceOf(Ljava/lang/String;)Lorg/stringtemplate/v4/ST;

    move-result-object v6

    const-string v7, "paren"

    invoke-virtual {v2, v7}, Lorg/stringtemplate/v4/STGroup;->getInstanceOf(Ljava/lang/String;)Lorg/stringtemplate/v4/ST;

    move-result-object v7

    invoke-virtual {v7, v1, v1}, Lorg/stringtemplate/v4/ST;->add(Ljava/lang/String;Ljava/lang/Object;)Lorg/stringtemplate/v4/ST;

    const-string v8, "a"

    invoke-virtual {v6, v8, v7}, Lorg/stringtemplate/v4/ST;->add(Ljava/lang/String;Ljava/lang/Object;)Lorg/stringtemplate/v4/ST;

    const-string v7, "b"

    invoke-virtual {v6, v7, v3}, Lorg/stringtemplate/v4/ST;->add(Ljava/lang/String;Ljava/lang/Object;)Lorg/stringtemplate/v4/ST;

    invoke-virtual {v2, v5}, Lorg/stringtemplate/v4/STGroup;->getInstanceOf(Ljava/lang/String;)Lorg/stringtemplate/v4/ST;

    move-result-object v5

    invoke-virtual {v5, v8, v3}, Lorg/stringtemplate/v4/ST;->add(Ljava/lang/String;Ljava/lang/Object;)Lorg/stringtemplate/v4/ST;

    invoke-virtual {v5, v7, v4}, Lorg/stringtemplate/v4/ST;->add(Ljava/lang/String;Ljava/lang/Object;)Lorg/stringtemplate/v4/ST;

    const-string v3, "return"

    invoke-virtual {v2, v3}, Lorg/stringtemplate/v4/STGroup;->getInstanceOf(Ljava/lang/String;)Lorg/stringtemplate/v4/ST;

    move-result-object v2

    const-string v3, "3.14159"

    invoke-virtual {v2, v1, v3}, Lorg/stringtemplate/v4/ST;->add(Ljava/lang/String;Ljava/lang/Object;)Lorg/stringtemplate/v4/ST;

    const-string v1, "stats"

    invoke-virtual {v0, v1, v6}, Lorg/stringtemplate/v4/ST;->add(Ljava/lang/String;Ljava/lang/Object;)Lorg/stringtemplate/v4/ST;

    invoke-virtual {v0, v1, v5}, Lorg/stringtemplate/v4/ST;->add(Ljava/lang/String;Ljava/lang/Object;)Lorg/stringtemplate/v4/ST;

    invoke-virtual {v0, v1, v2}, Lorg/stringtemplate/v4/ST;->add(Ljava/lang/String;Ljava/lang/Object;)Lorg/stringtemplate/v4/ST;

    invoke-virtual {v0}, Lorg/stringtemplate/v4/ST;->inspect()Lorg/stringtemplate/v4/gui/STViz;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Lorg/stringtemplate/v4/ST;->render()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static test2()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "java.io.tmpdir"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "t.stg"

    const-string v2, "t1(q1=\"Some\\nText\") ::= <<\n<q1>\n>>\n\nt2(p1) ::= <<\n<p1>\n>>\n\nmain() ::= <<\nSTART-<t1()>-END\n\nSTART-<t2(p1=\"Some\\nText\")>-END\n>>\n"

    invoke-static {v0, v1, v2}, Lorg/stringtemplate/v4/gui/STViz;->writeFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/stringtemplate/v4/STGroupFile;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/stringtemplate/v4/STGroupFile;-><init>(Ljava/lang/String;)V

    const-string v0, "main"

    invoke-virtual {v2, v0}, Lorg/stringtemplate/v4/STGroup;->getInstanceOf(Ljava/lang/String;)Lorg/stringtemplate/v4/ST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/stringtemplate/v4/ST;->inspect()Lorg/stringtemplate/v4/gui/STViz;

    return-void
.end method

.method public static test3()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "java.io.tmpdir"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "t.stg"

    const-string v2, "main() ::= <<\nFoo: <{bar};format=\"lower\">\n>>\n"

    invoke-static {v0, v1, v2}, Lorg/stringtemplate/v4/gui/STViz;->writeFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/stringtemplate/v4/STGroupFile;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/stringtemplate/v4/STGroupFile;-><init>(Ljava/lang/String;)V

    const-string v0, "main"

    invoke-virtual {v2, v0}, Lorg/stringtemplate/v4/STGroup;->getInstanceOf(Ljava/lang/String;)Lorg/stringtemplate/v4/ST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/stringtemplate/v4/ST;->inspect()Lorg/stringtemplate/v4/gui/STViz;

    return-void
.end method

.method public static test4()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/stringtemplate/v4/STGroupString;

    const-string v1, "main(t) ::= <<\nhi: <t>\n>>\nfoo(x,y={hi}) ::= \"<bar(x,y)>\"\nbar(x,y) ::= << <y> >>\nignore(m) ::= \"<m>\"\n"

    invoke-direct {v0, v1}, Lorg/stringtemplate/v4/STGroupString;-><init>(Ljava/lang/String;)V

    const-string v1, "main"

    invoke-virtual {v0, v1}, Lorg/stringtemplate/v4/STGroup;->getInstanceOf(Ljava/lang/String;)Lorg/stringtemplate/v4/ST;

    move-result-object v1

    const-string v2, "foo"

    invoke-virtual {v0, v2}, Lorg/stringtemplate/v4/STGroup;->getInstanceOf(Ljava/lang/String;)Lorg/stringtemplate/v4/ST;

    move-result-object v2

    const-string v3, "t"

    invoke-virtual {v1, v3, v2}, Lorg/stringtemplate/v4/ST;->add(Ljava/lang/String;Ljava/lang/Object;)Lorg/stringtemplate/v4/ST;

    const-string v3, "ignore"

    invoke-virtual {v0, v3}, Lorg/stringtemplate/v4/STGroup;->getInstanceOf(Ljava/lang/String;)Lorg/stringtemplate/v4/ST;

    move-result-object v0

    const-string v3, "m"

    invoke-virtual {v0, v3, v2}, Lorg/stringtemplate/v4/ST;->add(Ljava/lang/String;Ljava/lang/Object;)Lorg/stringtemplate/v4/ST;

    invoke-virtual {v1}, Lorg/stringtemplate/v4/ST;->inspect()Lorg/stringtemplate/v4/gui/STViz;

    invoke-virtual {v1}, Lorg/stringtemplate/v4/ST;->render()Ljava/lang/String;

    return-void
.end method

.method private updateCurrentST(Lorg/stringtemplate/v4/gui/STViewFrame;)V
    .locals 4

    iget-object v0, p0, Lorg/stringtemplate/v4/gui/STViz;->currentScope:Lorg/stringtemplate/v4/InstanceScope;

    invoke-virtual {p0, v0, p1}, Lorg/stringtemplate/v4/gui/STViz;->updateStack(Lorg/stringtemplate/v4/InstanceScope;Lorg/stringtemplate/v4/gui/STViewFrame;)V

    iget-object v0, p0, Lorg/stringtemplate/v4/gui/STViz;->currentScope:Lorg/stringtemplate/v4/InstanceScope;

    invoke-virtual {p0, v0, p1}, Lorg/stringtemplate/v4/gui/STViz;->updateAttributes(Lorg/stringtemplate/v4/InstanceScope;Lorg/stringtemplate/v4/gui/STViewFrame;)V

    iget-object v0, p1, Lorg/stringtemplate/v4/gui/STViewFrame;->bytecode:Ljavax/swing/JTextPane;

    iget-object v1, p0, Lorg/stringtemplate/v4/gui/STViz;->currentScope:Lorg/stringtemplate/v4/InstanceScope;

    iget-object v1, v1, Lorg/stringtemplate/v4/InstanceScope;->st:Lorg/stringtemplate/v4/ST;

    iget-object v1, v1, Lorg/stringtemplate/v4/ST;->impl:Lorg/stringtemplate/v4/compiler/CompiledST;

    invoke-virtual {v1}, Lorg/stringtemplate/v4/compiler/CompiledST;->disasm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/stringtemplate/v4/gui/STViz;->setText(Ljavax/swing/JEditorPane;Ljava/lang/String;)V

    iget-object v0, p1, Lorg/stringtemplate/v4/gui/STViewFrame;->template:Ljavax/swing/JTextPane;

    iget-object v1, p0, Lorg/stringtemplate/v4/gui/STViz;->currentScope:Lorg/stringtemplate/v4/InstanceScope;

    iget-object v1, v1, Lorg/stringtemplate/v4/InstanceScope;->st:Lorg/stringtemplate/v4/ST;

    iget-object v1, v1, Lorg/stringtemplate/v4/ST;->impl:Lorg/stringtemplate/v4/compiler/CompiledST;

    iget-object v1, v1, Lorg/stringtemplate/v4/compiler/CompiledST;->template:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/stringtemplate/v4/gui/STViz;->setText(Ljavax/swing/JEditorPane;Ljava/lang/String;)V

    new-instance v0, Lorg/stringtemplate/v4/gui/JTreeASTModel;

    new-instance v1, Lorg/antlr/runtime/tree/CommonTreeAdaptor;

    invoke-direct {v1}, Lorg/antlr/runtime/tree/CommonTreeAdaptor;-><init>()V

    iget-object v2, p0, Lorg/stringtemplate/v4/gui/STViz;->currentScope:Lorg/stringtemplate/v4/InstanceScope;

    iget-object v2, v2, Lorg/stringtemplate/v4/InstanceScope;->st:Lorg/stringtemplate/v4/ST;

    iget-object v2, v2, Lorg/stringtemplate/v4/ST;->impl:Lorg/stringtemplate/v4/compiler/CompiledST;

    iget-object v2, v2, Lorg/stringtemplate/v4/compiler/CompiledST;->ast:Lorg/antlr/runtime/tree/CommonTree;

    invoke-direct {v0, v1, v2}, Lorg/stringtemplate/v4/gui/JTreeASTModel;-><init>(Lorg/antlr/runtime/tree/TreeAdaptor;Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/stringtemplate/v4/gui/STViz;->viewFrame:Lorg/stringtemplate/v4/gui/STViewFrame;

    iget-object v1, v1, Lorg/stringtemplate/v4/gui/STViewFrame;->ast:Ljavax/swing/JTree;

    invoke-virtual {v1, v0}, Ljavax/swing/JTree;->setModel(Ljavax/swing/tree/TreeModel;)V

    iget-object v0, p0, Lorg/stringtemplate/v4/gui/STViz;->currentEvent:Lorg/stringtemplate/v4/debug/InterpEvent;

    instance-of v1, v0, Lorg/stringtemplate/v4/debug/EvalExprEvent;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/stringtemplate/v4/debug/EvalExprEvent;

    iget-object v1, p1, Lorg/stringtemplate/v4/gui/STViewFrame;->output:Ljavax/swing/JTextPane;

    iget v2, v0, Lorg/stringtemplate/v4/debug/EvalExprEvent;->outputStartChar:I

    iget v3, v0, Lorg/stringtemplate/v4/debug/EvalExprEvent;->outputStopChar:I

    invoke-virtual {p0, v1, v2, v3}, Lorg/stringtemplate/v4/gui/STViz;->highlight(Ljavax/swing/text/JTextComponent;II)V

    iget-object p1, p1, Lorg/stringtemplate/v4/gui/STViewFrame;->template:Ljavax/swing/JTextPane;

    iget v1, v0, Lorg/stringtemplate/v4/debug/EvalExprEvent;->exprStartChar:I

    iget v0, v0, Lorg/stringtemplate/v4/debug/EvalExprEvent;->exprStopChar:I

    invoke-virtual {p0, p1, v1, v0}, Lorg/stringtemplate/v4/gui/STViz;->highlight(Ljavax/swing/text/JTextComponent;II)V

    goto :goto_1

    :cond_0
    instance-of v1, v0, Lorg/stringtemplate/v4/debug/EvalTemplateEvent;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/stringtemplate/v4/debug/EvalTemplateEvent;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/stringtemplate/v4/gui/STViz;->currentScope:Lorg/stringtemplate/v4/InstanceScope;

    iget-object v0, v0, Lorg/stringtemplate/v4/InstanceScope;->events:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/stringtemplate/v4/debug/EvalTemplateEvent;

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p1, Lorg/stringtemplate/v4/gui/STViewFrame;->output:Ljavax/swing/JTextPane;

    iget v2, v0, Lorg/stringtemplate/v4/debug/EvalTemplateEvent;->outputStartChar:I

    iget v0, v0, Lorg/stringtemplate/v4/debug/EvalTemplateEvent;->outputStopChar:I

    invoke-virtual {p0, v1, v2, v0}, Lorg/stringtemplate/v4/gui/STViz;->highlight(Ljavax/swing/text/JTextComponent;II)V

    :cond_2
    iget-object v0, p0, Lorg/stringtemplate/v4/gui/STViz;->currentScope:Lorg/stringtemplate/v4/InstanceScope;

    iget-object v0, v0, Lorg/stringtemplate/v4/InstanceScope;->st:Lorg/stringtemplate/v4/ST;

    invoke-virtual {v0}, Lorg/stringtemplate/v4/ST;->isAnonSubtemplate()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/stringtemplate/v4/gui/STViz;->currentScope:Lorg/stringtemplate/v4/InstanceScope;

    iget-object v0, v0, Lorg/stringtemplate/v4/InstanceScope;->st:Lorg/stringtemplate/v4/ST;

    iget-object v0, v0, Lorg/stringtemplate/v4/ST;->impl:Lorg/stringtemplate/v4/compiler/CompiledST;

    invoke-virtual {v0}, Lorg/stringtemplate/v4/compiler/CompiledST;->getTemplateRange()Lorg/stringtemplate/v4/misc/Interval;

    move-result-object v0

    iget-object p1, p1, Lorg/stringtemplate/v4/gui/STViewFrame;->template:Ljavax/swing/JTextPane;

    iget v1, v0, Lorg/stringtemplate/v4/misc/Interval;->a:I

    iget v0, v0, Lorg/stringtemplate/v4/misc/Interval;->b:I

    invoke-virtual {p0, p1, v1, v0}, Lorg/stringtemplate/v4/gui/STViz;->highlight(Ljavax/swing/text/JTextComponent;II)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static writeFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance p0, Ljava/io/FileWriter;

    invoke-direct {p0, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    new-instance p1, Ljava/io/BufferedWriter;

    invoke-direct {p1, p0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p1, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->close()V

    invoke-virtual {p0}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p2, "can\'t write file"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, p1}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public findEventAtOutputLocation(Ljava/util/List;I)Lorg/stringtemplate/v4/debug/InterpEvent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/stringtemplate/v4/debug/InterpEvent;",
            ">;I)",
            "Lorg/stringtemplate/v4/debug/InterpEvent;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/stringtemplate/v4/debug/InterpEvent;

    iget-object v1, v0, Lorg/stringtemplate/v4/debug/InterpEvent;->scope:Lorg/stringtemplate/v4/InstanceScope;

    iget-boolean v1, v1, Lorg/stringtemplate/v4/InstanceScope;->earlyEval:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget v1, v0, Lorg/stringtemplate/v4/debug/InterpEvent;->outputStartChar:I

    if-lt p2, v1, :cond_0

    iget v1, v0, Lorg/stringtemplate/v4/debug/InterpEvent;->outputStopChar:I

    if-gt p2, v1, :cond_0

    return-object v0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method protected final highlight(Ljavax/swing/text/JTextComponent;II)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/stringtemplate/v4/gui/STViz;->highlight(Ljavax/swing/text/JTextComponent;IIZ)V

    return-void
.end method

.method protected highlight(Ljavax/swing/text/JTextComponent;IIZ)V
    .locals 3

    invoke-virtual {p1}, Ljavax/swing/text/JTextComponent;->getHighlighter()Ljavax/swing/text/Highlighter;

    move-result-object v0

    invoke-interface {v0}, Ljavax/swing/text/Highlighter;->removeAllHighlights()V

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/stringtemplate/v4/gui/STViz;->toComponentPosition(Ljavax/swing/text/JTextComponent;I)I

    move-result p2

    invoke-virtual {p0, p1, p3}, Lorg/stringtemplate/v4/gui/STViz;->toComponentPosition(Ljavax/swing/text/JTextComponent;I)I

    move-result p3

    add-int/lit8 v1, p3, 0x1

    sget-object v2, Ljavax/swing/text/DefaultHighlighter;->DefaultPainter:Ljavax/swing/text/LayeredHighlighter$LayerPainter;

    invoke-interface {v0, p2, v1, v2}, Ljavax/swing/text/Highlighter;->addHighlight(IILjavax/swing/text/Highlighter$HighlightPainter;)Ljava/lang/Object;

    if-eqz p4, :cond_1

    invoke-virtual {p1}, Ljavax/swing/text/JTextComponent;->getCaretPosition()I

    move-result p4

    if-lt p4, p2, :cond_0

    invoke-virtual {p1}, Ljavax/swing/text/JTextComponent;->getCaretPosition()I

    move-result p4

    if-le p4, p3, :cond_1

    :cond_0
    invoke-virtual {p1, p2}, Ljavax/swing/text/JTextComponent;->moveCaretPosition(I)V

    invoke-virtual {p1, p2}, Ljavax/swing/text/JTextComponent;->modelToView(I)Ljava/awt/Rectangle;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljavax/swing/text/JTextComponent;->scrollRectToVisible(Ljava/awt/Rectangle;)V
    :try_end_0
    .catch Ljavax/swing/text/BadLocationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p2, p0, Lorg/stringtemplate/v4/gui/STViz;->errMgr:Lorg/stringtemplate/v4/misc/ErrorManager;

    iget-object p3, p0, Lorg/stringtemplate/v4/gui/STViz;->tmodel:Lorg/stringtemplate/v4/gui/JTreeSTModel;

    iget-object p3, p3, Lorg/stringtemplate/v4/gui/JTreeSTModel;->root:Lorg/stringtemplate/v4/gui/JTreeSTModel$Wrapper;

    iget-object p3, p3, Lorg/stringtemplate/v4/gui/JTreeSTModel$Wrapper;->event:Lorg/stringtemplate/v4/debug/EvalTemplateEvent;

    iget-object p3, p3, Lorg/stringtemplate/v4/debug/EvalTemplateEvent;->scope:Lorg/stringtemplate/v4/InstanceScope;

    iget-object p3, p3, Lorg/stringtemplate/v4/InstanceScope;->st:Lorg/stringtemplate/v4/ST;

    const-string p4, "bad highlight location"

    invoke-virtual {p2, p3, p4, p1}, Lorg/stringtemplate/v4/misc/ErrorManager;->internalError(Lorg/stringtemplate/v4/ST;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public open()V
    .locals 5

    new-instance v0, Lorg/stringtemplate/v4/gui/STViewFrame;

    invoke-direct {v0}, Lorg/stringtemplate/v4/gui/STViewFrame;-><init>()V

    iput-object v0, p0, Lorg/stringtemplate/v4/gui/STViz;->viewFrame:Lorg/stringtemplate/v4/gui/STViewFrame;

    iget-object v1, p0, Lorg/stringtemplate/v4/gui/STViz;->currentScope:Lorg/stringtemplate/v4/InstanceScope;

    invoke-virtual {p0, v1, v0}, Lorg/stringtemplate/v4/gui/STViz;->updateStack(Lorg/stringtemplate/v4/InstanceScope;Lorg/stringtemplate/v4/gui/STViewFrame;)V

    iget-object v0, p0, Lorg/stringtemplate/v4/gui/STViz;->currentScope:Lorg/stringtemplate/v4/InstanceScope;

    iget-object v1, p0, Lorg/stringtemplate/v4/gui/STViz;->viewFrame:Lorg/stringtemplate/v4/gui/STViewFrame;

    invoke-virtual {p0, v0, v1}, Lorg/stringtemplate/v4/gui/STViz;->updateAttributes(Lorg/stringtemplate/v4/InstanceScope;Lorg/stringtemplate/v4/gui/STViewFrame;)V

    iget-object v0, p0, Lorg/stringtemplate/v4/gui/STViz;->currentScope:Lorg/stringtemplate/v4/InstanceScope;

    iget-object v0, v0, Lorg/stringtemplate/v4/InstanceScope;->events:Ljava/util/List;

    new-instance v1, Lorg/stringtemplate/v4/gui/JTreeSTModel;

    iget-object v2, p0, Lorg/stringtemplate/v4/gui/STViz;->interp:Lorg/stringtemplate/v4/Interpreter;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/stringtemplate/v4/debug/EvalTemplateEvent;

    invoke-direct {v1, v2, v0}, Lorg/stringtemplate/v4/gui/JTreeSTModel;-><init>(Lorg/stringtemplate/v4/Interpreter;Lorg/stringtemplate/v4/debug/EvalTemplateEvent;)V

    iput-object v1, p0, Lorg/stringtemplate/v4/gui/STViz;->tmodel:Lorg/stringtemplate/v4/gui/JTreeSTModel;

    iget-object v0, p0, Lorg/stringtemplate/v4/gui/STViz;->viewFrame:Lorg/stringtemplate/v4/gui/STViewFrame;

    iget-object v0, v0, Lorg/stringtemplate/v4/gui/STViewFrame;->tree:Ljavax/swing/JTree;

    iget-object v1, p0, Lorg/stringtemplate/v4/gui/STViz;->tmodel:Lorg/stringtemplate/v4/gui/JTreeSTModel;

    invoke-virtual {v0, v1}, Ljavax/swing/JTree;->setModel(Ljavax/swing/tree/TreeModel;)V

    iget-object v0, p0, Lorg/stringtemplate/v4/gui/STViz;->viewFrame:Lorg/stringtemplate/v4/gui/STViewFrame;

    iget-object v0, v0, Lorg/stringtemplate/v4/gui/STViewFrame;->tree:Ljavax/swing/JTree;

    new-instance v1, Lorg/stringtemplate/v4/gui/STViz$1;

    invoke-direct {v1, p0}, Lorg/stringtemplate/v4/gui/STViz$1;-><init>(Lorg/stringtemplate/v4/gui/STViz;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JTree;->addTreeSelectionListener(Ljavax/swing/event/TreeSelectionListener;)V

    new-instance v0, Lorg/stringtemplate/v4/gui/JTreeASTModel;

    new-instance v1, Lorg/antlr/runtime/tree/CommonTreeAdaptor;

    invoke-direct {v1}, Lorg/antlr/runtime/tree/CommonTreeAdaptor;-><init>()V

    iget-object v2, p0, Lorg/stringtemplate/v4/gui/STViz;->currentScope:Lorg/stringtemplate/v4/InstanceScope;

    iget-object v2, v2, Lorg/stringtemplate/v4/InstanceScope;->st:Lorg/stringtemplate/v4/ST;

    iget-object v2, v2, Lorg/stringtemplate/v4/ST;->impl:Lorg/stringtemplate/v4/compiler/CompiledST;

    iget-object v2, v2, Lorg/stringtemplate/v4/compiler/CompiledST;->ast:Lorg/antlr/runtime/tree/CommonTree;

    invoke-direct {v0, v1, v2}, Lorg/stringtemplate/v4/gui/JTreeASTModel;-><init>(Lorg/antlr/runtime/tree/TreeAdaptor;Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/stringtemplate/v4/gui/STViz;->viewFrame:Lorg/stringtemplate/v4/gui/STViewFrame;

    iget-object v1, v1, Lorg/stringtemplate/v4/gui/STViewFrame;->ast:Ljavax/swing/JTree;

    invoke-virtual {v1, v0}, Ljavax/swing/JTree;->setModel(Ljavax/swing/tree/TreeModel;)V

    iget-object v0, p0, Lorg/stringtemplate/v4/gui/STViz;->viewFrame:Lorg/stringtemplate/v4/gui/STViewFrame;

    iget-object v0, v0, Lorg/stringtemplate/v4/gui/STViewFrame;->ast:Ljavax/swing/JTree;

    new-instance v1, Lorg/stringtemplate/v4/gui/STViz$2;

    invoke-direct {v1, p0}, Lorg/stringtemplate/v4/gui/STViz$2;-><init>(Lorg/stringtemplate/v4/gui/STViz;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JTree;->addTreeSelectionListener(Ljavax/swing/event/TreeSelectionListener;)V

    new-instance v0, Lorg/stringtemplate/v4/gui/STViz$3;

    invoke-direct {v0, p0}, Lorg/stringtemplate/v4/gui/STViz$3;-><init>(Lorg/stringtemplate/v4/gui/STViz;)V

    iget-object v1, p0, Lorg/stringtemplate/v4/gui/STViz;->viewFrame:Lorg/stringtemplate/v4/gui/STViewFrame;

    iget-object v1, v1, Lorg/stringtemplate/v4/gui/STViewFrame;->output:Ljavax/swing/JTextPane;

    invoke-virtual {v1, v0}, Ljavax/swing/JTextPane;->addCaretListener(Ljavax/swing/event/CaretListener;)V

    iget-object v0, p0, Lorg/stringtemplate/v4/gui/STViz;->errors:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljavax/swing/DefaultListModel;

    invoke-direct {v0}, Ljavax/swing/DefaultListModel;-><init>()V

    iget-object v1, p0, Lorg/stringtemplate/v4/gui/STViz;->errors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/stringtemplate/v4/misc/STMessage;

    invoke-virtual {v0, v2}, Ljavax/swing/DefaultListModel;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/stringtemplate/v4/gui/STViz;->viewFrame:Lorg/stringtemplate/v4/gui/STViewFrame;

    iget-object v1, v1, Lorg/stringtemplate/v4/gui/STViewFrame;->errorList:Ljavax/swing/JList;

    invoke-virtual {v1, v0}, Ljavax/swing/JList;->setModel(Ljavax/swing/ListModel;)V

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/stringtemplate/v4/gui/STViz;->viewFrame:Lorg/stringtemplate/v4/gui/STViewFrame;

    iget-object v0, v0, Lorg/stringtemplate/v4/gui/STViewFrame;->errorScrollPane:Ljavax/swing/JScrollPane;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/swing/JScrollPane;->setVisible(Z)V

    :goto_2
    iget-object v0, p0, Lorg/stringtemplate/v4/gui/STViz;->viewFrame:Lorg/stringtemplate/v4/gui/STViewFrame;

    iget-object v0, v0, Lorg/stringtemplate/v4/gui/STViewFrame;->errorList:Ljavax/swing/JList;

    new-instance v1, Lorg/stringtemplate/v4/gui/STViz$4;

    invoke-direct {v1, p0}, Lorg/stringtemplate/v4/gui/STViz$4;-><init>(Lorg/stringtemplate/v4/gui/STViz;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JList;->addListSelectionListener(Ljavax/swing/event/ListSelectionListener;)V

    invoke-static {}, Ljavax/swing/BorderFactory;->createEmptyBorder()Ljavax/swing/border/Border;

    move-result-object v0

    iget-object v1, p0, Lorg/stringtemplate/v4/gui/STViz;->viewFrame:Lorg/stringtemplate/v4/gui/STViewFrame;

    iget-object v1, v1, Lorg/stringtemplate/v4/gui/STViewFrame;->treeContentSplitPane:Ljavax/swing/JSplitPane;

    invoke-virtual {v1, v0}, Ljavax/swing/JSplitPane;->setBorder(Ljavax/swing/border/Border;)V

    iget-object v1, p0, Lorg/stringtemplate/v4/gui/STViz;->viewFrame:Lorg/stringtemplate/v4/gui/STViewFrame;

    iget-object v1, v1, Lorg/stringtemplate/v4/gui/STViewFrame;->outputTemplateSplitPane:Ljavax/swing/JSplitPane;

    invoke-virtual {v1, v0}, Ljavax/swing/JSplitPane;->setBorder(Ljavax/swing/border/Border;)V

    iget-object v1, p0, Lorg/stringtemplate/v4/gui/STViz;->viewFrame:Lorg/stringtemplate/v4/gui/STViewFrame;

    iget-object v1, v1, Lorg/stringtemplate/v4/gui/STViewFrame;->templateBytecodeTraceTabPanel:Ljavax/swing/JTabbedPane;

    invoke-virtual {v1, v0}, Ljavax/swing/JTabbedPane;->setBorder(Ljavax/swing/border/Border;)V

    iget-object v1, p0, Lorg/stringtemplate/v4/gui/STViz;->viewFrame:Lorg/stringtemplate/v4/gui/STViewFrame;

    iget-object v1, v1, Lorg/stringtemplate/v4/gui/STViewFrame;->treeAttributesSplitPane:Ljavax/swing/JSplitPane;

    invoke-virtual {v1, v0}, Ljavax/swing/JSplitPane;->setBorder(Ljavax/swing/border/Border;)V

    iget-object v0, p0, Lorg/stringtemplate/v4/gui/STViz;->viewFrame:Lorg/stringtemplate/v4/gui/STViewFrame;

    iget-object v0, v0, Lorg/stringtemplate/v4/gui/STViewFrame;->treeContentSplitPane:Ljavax/swing/JSplitPane;

    invoke-virtual {v0, v4}, Ljavax/swing/JSplitPane;->setOneTouchExpandable(Z)V

    iget-object v0, p0, Lorg/stringtemplate/v4/gui/STViz;->viewFrame:Lorg/stringtemplate/v4/gui/STViewFrame;

    iget-object v0, v0, Lorg/stringtemplate/v4/gui/STViewFrame;->outputTemplateSplitPane:Ljavax/swing/JSplitPane;

    invoke-virtual {v0, v4}, Ljavax/swing/JSplitPane;->setOneTouchExpandable(Z)V

    iget-object v0, p0, Lorg/stringtemplate/v4/gui/STViz;->viewFrame:Lorg/stringtemplate/v4/gui/STViewFrame;

    iget-object v0, v0, Lorg/stringtemplate/v4/gui/STViewFrame;->treeContentSplitPane:Ljavax/swing/JSplitPane;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljavax/swing/JSplitPane;->setDividerSize(I)V

    iget-object v0, p0, Lorg/stringtemplate/v4/gui/STViz;->viewFrame:Lorg/stringtemplate/v4/gui/STViewFrame;

    iget-object v0, v0, Lorg/stringtemplate/v4/gui/STViewFrame;->outputTemplateSplitPane:Ljavax/swing/JSplitPane;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljavax/swing/JSplitPane;->setDividerSize(I)V

    iget-object v0, p0, Lorg/stringtemplate/v4/gui/STViz;->viewFrame:Lorg/stringtemplate/v4/gui/STViewFrame;

    iget-object v0, v0, Lorg/stringtemplate/v4/gui/STViewFrame;->treeContentSplitPane:Ljavax/swing/JSplitPane;

    invoke-virtual {v0, v4}, Ljavax/swing/JSplitPane;->setContinuousLayout(Z)V

    iget-object v0, p0, Lorg/stringtemplate/v4/gui/STViz;->viewFrame:Lorg/stringtemplate/v4/gui/STViewFrame;

    iget-object v0, v0, Lorg/stringtemplate/v4/gui/STViewFrame;->treeAttributesSplitPane:Ljavax/swing/JSplitPane;

    invoke-virtual {v0, v4}, Ljavax/swing/JSplitPane;->setContinuousLayout(Z)V

    iget-object v0, p0, Lorg/stringtemplate/v4/gui/STViz;->viewFrame:Lorg/stringtemplate/v4/gui/STViewFrame;

    iget-object v0, v0, Lorg/stringtemplate/v4/gui/STViewFrame;->outputTemplateSplitPane:Ljavax/swing/JSplitPane;

    invoke-virtual {v0, v4}, Ljavax/swing/JSplitPane;->setContinuousLayout(Z)V

    iget-object v0, p0, Lorg/stringtemplate/v4/gui/STViz;->viewFrame:Lorg/stringtemplate/v4/gui/STViewFrame;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/stringtemplate/v4/gui/STViewFrame;->setDefaultCloseOperation(I)V

    iget-object v0, p0, Lorg/stringtemplate/v4/gui/STViz;->viewFrame:Lorg/stringtemplate/v4/gui/STViewFrame;

    invoke-virtual {v0}, Lorg/stringtemplate/v4/gui/STViewFrame;->pack()V

    iget-object v0, p0, Lorg/stringtemplate/v4/gui/STViz;->viewFrame:Lorg/stringtemplate/v4/gui/STViewFrame;

    const/16 v1, 0x384

    const/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2}, Lorg/stringtemplate/v4/gui/STViewFrame;->setSize(II)V

    iget-object v0, p0, Lorg/stringtemplate/v4/gui/STViz;->viewFrame:Lorg/stringtemplate/v4/gui/STViewFrame;

    iget-object v0, v0, Lorg/stringtemplate/v4/gui/STViewFrame;->output:Ljavax/swing/JTextPane;

    iget-object v1, p0, Lorg/stringtemplate/v4/gui/STViz;->output:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/stringtemplate/v4/gui/STViz;->setText(Ljavax/swing/JEditorPane;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/stringtemplate/v4/gui/STViz;->viewFrame:Lorg/stringtemplate/v4/gui/STViewFrame;

    iget-object v0, v0, Lorg/stringtemplate/v4/gui/STViewFrame;->template:Ljavax/swing/JTextPane;

    iget-object v1, p0, Lorg/stringtemplate/v4/gui/STViz;->currentScope:Lorg/stringtemplate/v4/InstanceScope;

    iget-object v1, v1, Lorg/stringtemplate/v4/InstanceScope;->st:Lorg/stringtemplate/v4/ST;

    iget-object v1, v1, Lorg/stringtemplate/v4/ST;->impl:Lorg/stringtemplate/v4/compiler/CompiledST;

    iget-object v1, v1, Lorg/stringtemplate/v4/compiler/CompiledST;->template:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/stringtemplate/v4/gui/STViz;->setText(Ljavax/swing/JEditorPane;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/stringtemplate/v4/gui/STViz;->viewFrame:Lorg/stringtemplate/v4/gui/STViewFrame;

    iget-object v0, v0, Lorg/stringtemplate/v4/gui/STViewFrame;->bytecode:Ljavax/swing/JTextPane;

    iget-object v1, p0, Lorg/stringtemplate/v4/gui/STViz;->currentScope:Lorg/stringtemplate/v4/InstanceScope;

    iget-object v1, v1, Lorg/stringtemplate/v4/InstanceScope;->st:Lorg/stringtemplate/v4/ST;

    iget-object v1, v1, Lorg/stringtemplate/v4/ST;->impl:Lorg/stringtemplate/v4/compiler/CompiledST;

    invoke-virtual {v1}, Lorg/stringtemplate/v4/compiler/CompiledST;->disasm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/stringtemplate/v4/gui/STViz;->setText(Ljavax/swing/JEditorPane;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/stringtemplate/v4/gui/STViz;->viewFrame:Lorg/stringtemplate/v4/gui/STViewFrame;

    iget-object v0, v0, Lorg/stringtemplate/v4/gui/STViewFrame;->trace:Ljavax/swing/JTextPane;

    iget-object v1, p0, Lorg/stringtemplate/v4/gui/STViz;->trace:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, "\n"

    invoke-static {v1, v2}, Lorg/stringtemplate/v4/misc/Misc;->join(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/stringtemplate/v4/gui/STViz;->setText(Ljavax/swing/JEditorPane;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/stringtemplate/v4/gui/STViz;->viewFrame:Lorg/stringtemplate/v4/gui/STViewFrame;

    invoke-virtual {v0, v4}, Lorg/stringtemplate/v4/gui/STViewFrame;->setVisible(Z)V

    return-void
.end method

.method protected setText(Ljavax/swing/JEditorPane;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    const-string v3, "\r\n"

    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-gez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [I

    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p1, p2}, Ljavax/swing/JEditorPane;->setText(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljavax/swing/JEditorPane;->getDocument()Ljavax/swing/text/Document;

    move-result-object p1

    const-string p2, "WINDOWS_LINE_ENDINGS"

    invoke-interface {p1, p2, v2}, Ljavax/swing/text/Document;->putProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method protected toComponentPosition(Ljavax/swing/text/JTextComponent;I)I
    .locals 1

    invoke-virtual {p1}, Ljavax/swing/text/JTextComponent;->getDocument()Ljavax/swing/text/Document;

    move-result-object p1

    const-string v0, "WINDOWS_LINE_ENDINGS"

    invoke-interface {p1, v0}, Ljavax/swing/text/Document;->getProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    check-cast p1, [I

    if-eqz p1, :cond_2

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p1

    if-ltz p1, :cond_1

    sub-int/2addr p2, p1

    return p2

    :cond_1
    neg-int p1, p1

    add-int/lit8 p1, p1, -0x1

    sub-int/2addr p2, p1

    :cond_2
    :goto_0
    return p2
.end method

.method protected toEventPosition(Ljavax/swing/text/JTextComponent;I)I
    .locals 2

    move v0, p2

    :goto_0
    invoke-virtual {p0, p1, v0}, Lorg/stringtemplate/v4/gui/STViz;->toComponentPosition(Ljavax/swing/text/JTextComponent;I)I

    move-result v1

    if-ge v1, p2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method protected updateAttributes(Lorg/stringtemplate/v4/InstanceScope;Lorg/stringtemplate/v4/gui/STViewFrame;)V
    .locals 2

    iget-object v0, p2, Lorg/stringtemplate/v4/gui/STViewFrame;->attributes:Ljavax/swing/JTree;

    new-instance v1, Lorg/stringtemplate/v4/gui/JTreeScopeStackModel;

    invoke-direct {v1, p1}, Lorg/stringtemplate/v4/gui/JTreeScopeStackModel;-><init>(Lorg/stringtemplate/v4/InstanceScope;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JTree;->setModel(Ljavax/swing/tree/TreeModel;)V

    iget-object p1, p2, Lorg/stringtemplate/v4/gui/STViewFrame;->attributes:Ljavax/swing/JTree;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljavax/swing/JTree;->setRootVisible(Z)V

    iget-object p1, p2, Lorg/stringtemplate/v4/gui/STViewFrame;->attributes:Ljavax/swing/JTree;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljavax/swing/JTree;->setShowsRootHandles(Z)V

    return-void
.end method

.method protected updateStack(Lorg/stringtemplate/v4/InstanceScope;Lorg/stringtemplate/v4/gui/STViewFrame;)V
    .locals 2

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/stringtemplate/v4/Interpreter;->getEnclosingInstanceStack(Lorg/stringtemplate/v4/InstanceScope;Z)Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "STViz - ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string v1, " "

    invoke-static {p1, v1}, Lorg/stringtemplate/v4/misc/Misc;->join(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/stringtemplate/v4/gui/STViewFrame;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public waitForClose()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lorg/stringtemplate/v4/gui/STViz$5;

    invoke-direct {v1, p0, v0}, Lorg/stringtemplate/v4/gui/STViz$5;-><init>(Lorg/stringtemplate/v4/gui/STViz;Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    iget-object v2, p0, Lorg/stringtemplate/v4/gui/STViz;->viewFrame:Lorg/stringtemplate/v4/gui/STViewFrame;

    new-instance v3, Lorg/stringtemplate/v4/gui/STViz$6;

    invoke-direct {v3, p0, v0}, Lorg/stringtemplate/v4/gui/STViz$6;-><init>(Lorg/stringtemplate/v4/gui/STViz;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lorg/stringtemplate/v4/gui/STViewFrame;->addWindowListener(Ljava/awt/event/WindowListener;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    return-void
.end method
