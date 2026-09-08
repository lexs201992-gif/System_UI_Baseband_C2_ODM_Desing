.class public abstract Lgov/nist/core/GenericObjectList;
.super Ljava/util/LinkedList;
.source "GenericObjectList.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedList<",
        "Lgov/nist/core/GenericObject;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field protected indentation:I

.field protected listName:Ljava/lang/String;

.field protected myClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private myListIterator:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator<",
            "+",
            "Lgov/nist/core/GenericObject;",
            ">;"
        }
    .end annotation
.end field

.field protected separator:Ljava/lang/String;

.field private stringRep:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/core/GenericObjectList;->listName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lgov/nist/core/GenericObjectList;->stringRep:Ljava/lang/String;

    const-string v0, ";"

    iput-object v0, p0, Lgov/nist/core/GenericObjectList;->separator:Ljava/lang/String;

    return-void
.end method

.method public static isMySubclass(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const-class v0, Lgov/nist/core/GenericObjectList;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method private sprint(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lgov/nist/core/GenericObjectList;->stringRep:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lgov/nist/core/GenericObjectList;->getIndentation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgov/nist/core/GenericObjectList;->stringRep:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lgov/nist/core/GenericObjectList;->stringRep:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<null>\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgov/nist/core/GenericObjectList;->stringRep:Ljava/lang/String;

    return-void

    :cond_0
    const-string v0, "}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget v0, p0, Lgov/nist/core/GenericObjectList;->indentation:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgov/nist/core/GenericObjectList;->indentation:I

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov/nist/core/GenericObjectList;->stringRep:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lgov/nist/core/GenericObjectList;->getIndentation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/core/GenericObjectList;->stringRep:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov/nist/core/GenericObjectList;->stringRep:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/core/GenericObjectList;->stringRep:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov/nist/core/GenericObjectList;->stringRep:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/core/GenericObjectList;->stringRep:Ljava/lang/String;

    const-string v0, "{"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_4

    :cond_3
    iget p1, p0, Lgov/nist/core/GenericObjectList;->indentation:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lgov/nist/core/GenericObjectList;->indentation:I

    :cond_4
    return-void
.end method


# virtual methods
.method public addFirst(Lgov/nist/core/GenericObject;)V
    .locals 1

    iget-object v0, p0, Lgov/nist/core/GenericObjectList;->myClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lgov/nist/core/GenericObjectList;->myClass:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic addFirst(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lgov/nist/core/GenericObject;

    invoke-virtual {p0, p1}, Lgov/nist/core/GenericObjectList;->addFirst(Lgov/nist/core/GenericObject;)V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    invoke-super {p0}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgov/nist/core/GenericObjectList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/core/GenericObject;

    invoke-virtual {v1}, Lgov/nist/core/GenericObject;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/core/GenericObject;

    invoke-interface {v0, v1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public debugDump()Ljava/lang/String;
    .locals 2

    const-string v0, ""

    iput-object v0, p0, Lgov/nist/core/GenericObjectList;->stringRep:Ljava/lang/String;

    invoke-virtual {p0}, Lgov/nist/core/GenericObjectList;->first()Lgov/nist/core/GenericObject;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "<null>"

    return-object p0

    :cond_0
    const-string v1, "listName:"

    invoke-direct {p0, v1}, Lgov/nist/core/GenericObjectList;->sprint(Ljava/lang/String;)V

    iget-object v1, p0, Lgov/nist/core/GenericObjectList;->listName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lgov/nist/core/GenericObjectList;->sprint(Ljava/lang/String;)V

    const-string v1, "{"

    invoke-direct {p0, v1}, Lgov/nist/core/GenericObjectList;->sprint(Ljava/lang/String;)V

    :goto_0
    if-eqz v0, :cond_1

    const-string v1, "["

    invoke-direct {p0, v1}, Lgov/nist/core/GenericObjectList;->sprint(Ljava/lang/String;)V

    iget v1, p0, Lgov/nist/core/GenericObjectList;->indentation:I

    invoke-virtual {v0, v1}, Lgov/nist/core/GenericObject;->debugDump(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lgov/nist/core/GenericObjectList;->sprint(Ljava/lang/String;)V

    invoke-virtual {p0}, Lgov/nist/core/GenericObjectList;->next()Lgov/nist/core/GenericObject;

    move-result-object v0

    const-string v1, "]"

    invoke-direct {p0, v1}, Lgov/nist/core/GenericObjectList;->sprint(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "}"

    invoke-direct {p0, v0}, Lgov/nist/core/GenericObjectList;->sprint(Ljava/lang/String;)V

    iget-object p0, p0, Lgov/nist/core/GenericObjectList;->stringRep:Ljava/lang/String;

    return-object p0
.end method

.method public debugDump(I)Ljava/lang/String;
    .locals 1

    iget v0, p0, Lgov/nist/core/GenericObjectList;->indentation:I

    iput p1, p0, Lgov/nist/core/GenericObjectList;->indentation:I

    invoke-virtual {p0}, Lgov/nist/core/GenericObjectList;->debugDump()Ljava/lang/String;

    move-result-object p1

    iput v0, p0, Lgov/nist/core/GenericObjectList;->indentation:I

    return-object p1
.end method

.method public encode()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lgov/nist/core/GenericObject;

    if-eqz v3, :cond_1

    check-cast v2, Lgov/nist/core/GenericObject;

    invoke-virtual {v2}, Lgov/nist/core/GenericObject;->encode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lgov/nist/core/GenericObjectList;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    check-cast p1, Lgov/nist/core/GenericObjectList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    invoke-virtual {p0}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    :cond_3
    :try_start_0
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_3

    goto :goto_0

    :catch_0
    return v0

    :cond_4
    invoke-virtual {p1}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    :cond_5
    :try_start_1
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v3, :cond_5

    goto :goto_1

    :catch_1
    return v0

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method protected first()Lgov/nist/core/GenericObject;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/core/GenericObjectList;->myListIterator:Ljava/util/ListIterator;

    :try_start_0
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgov/nist/core/GenericObject;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected getIndentation()Ljava/lang/String;
    .locals 1

    iget p0, p0, Lgov/nist/core/GenericObjectList;->indentation:I

    new-array p0, p0, [C

    const/16 v0, 0x20

    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([CC)V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public hashCode()I
    .locals 0

    const/16 p0, 0x2a

    return p0
.end method

.method public match(Ljava/lang/Object;)Z
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lgov/nist/core/GenericObjectList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lgov/nist/core/GenericObject;

    if-eqz v2, :cond_2

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to match  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, v0

    check-cast v4, Lgov/nist/core/GenericObject;

    invoke-virtual {v4}, Lgov/nist/core/GenericObject;->encode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lgov/nist/core/GenericObject;->isMySubclass(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, v0

    check-cast v2, Lgov/nist/core/GenericObject;

    invoke-virtual {v2, p1}, Lgov/nist/core/GenericObject;->match(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lgov/nist/core/GenericObjectList;->isMySubclass(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    check-cast v0, Lgov/nist/core/GenericObjectList;

    invoke-virtual {v0, p1}, Lgov/nist/core/GenericObjectList;->match(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_4
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    check-cast p1, Lgov/nist/core/GenericObject;

    invoke-virtual {p1}, Lgov/nist/core/GenericObject;->encode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v1

    :cond_5
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method protected next()Lgov/nist/core/GenericObject;
    .locals 1

    iget-object v0, p0, Lgov/nist/core/GenericObjectList;->myListIterator:Ljava/util/ListIterator;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/core/GenericObjectList;->myListIterator:Ljava/util/ListIterator;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lgov/nist/core/GenericObjectList;->myListIterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/core/GenericObject;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/core/GenericObjectList;->myListIterator:Ljava/util/ListIterator;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lgov/nist/core/GenericObjectList;->encode()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
