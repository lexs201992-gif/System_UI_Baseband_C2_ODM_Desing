.class public abstract Lgov/nist/core/GenericObject;
.super Ljava/lang/Object;
.source "GenericObject.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field protected static final AND:Ljava/lang/String; = "&"

.field protected static final AT:Ljava/lang/String; = "@"

.field protected static final COLON:Ljava/lang/String; = ":"

.field protected static final COMMA:Ljava/lang/String; = ","

.field protected static final DOT:Ljava/lang/String; = "."

.field protected static final DOUBLE_QUOTE:Ljava/lang/String; = "\""

.field protected static final EQUALS:Ljava/lang/String; = "="

.field protected static final GREATER_THAN:Ljava/lang/String; = ">"

.field protected static final HT:Ljava/lang/String; = "\t"

.field protected static final LESS_THAN:Ljava/lang/String; = "<"

.field protected static final LPAREN:Ljava/lang/String; = "("

.field protected static final NEWLINE:Ljava/lang/String; = "\r\n"

.field protected static final PERCENT:Ljava/lang/String; = "%"

.field protected static final POUND:Ljava/lang/String; = "#"

.field protected static final QUESTION:Ljava/lang/String; = "?"

.field protected static final QUOTE:Ljava/lang/String; = "\'"

.field protected static final RETURN:Ljava/lang/String; = "\n"

.field protected static final RPAREN:Ljava/lang/String; = ")"

.field protected static final SEMICOLON:Ljava/lang/String; = ";"

.field protected static final SLASH:Ljava/lang/String; = "/"

.field protected static final SP:Ljava/lang/String; = " "

.field protected static final STAR:Ljava/lang/String; = "*"

.field static final immutableClassNames:[Ljava/lang/String;

.field protected static final immutableClasses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected indentation:I

.field protected matchExpression:Lgov/nist/core/Match;

.field protected stringRepresentation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lgov/nist/core/GenericObject;->immutableClasses:Ljava/util/Set;

    const-string v2, "String"

    const-string v3, "Character"

    const-string v4, "Boolean"

    const-string v5, "Byte"

    const-string v6, "Short"

    const-string v7, "Integer"

    const-string v8, "Long"

    const-string v9, "Float"

    const-string v10, "Double"

    filled-new-array/range {v2 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgov/nist/core/GenericObject;->immutableClassNames:[Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    sget-object v1, Lgov/nist/core/GenericObject;->immutableClassNames:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    sget-object v2, Lgov/nist/core/GenericObject;->immutableClasses:Ljava/util/Set;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "java.lang."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v1, v0

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Internal error"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lgov/nist/core/GenericObject;->indentation:I

    const-string v0, ""

    iput-object v0, p0, Lgov/nist/core/GenericObject;->stringRepresentation:Ljava/lang/String;

    return-void
.end method

.method public static getClassFromName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    const/4 p0, 0x0

    return-object p0
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

    const-class v0, Lgov/nist/core/GenericObject;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method public static makeClone(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lgov/nist/core/GenericObject;->immutableClasses:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_1

    check-cast p0, [Ljava/lang/Object;

    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_1

    :cond_1
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_2

    move-object v1, p0

    check-cast v1, [C

    invoke-virtual {v1}, [C->clone()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_2
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_3

    move-object v1, p0

    check-cast v1, [Z

    invoke-virtual {v1}, [Z->clone()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_3
    move-object v1, p0

    :goto_0
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_4

    check-cast p0, [B

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_1

    :cond_4
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_5

    check-cast p0, [S

    invoke-virtual {p0}, [S->clone()Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_1

    :cond_5
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_6

    check-cast p0, [I

    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_6
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_7

    check-cast p0, [J

    invoke-virtual {p0}, [J->clone()Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_7
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_8

    check-cast p0, [F

    invoke-virtual {p0}, [F->clone()Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_8
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_9

    check-cast p0, [D

    invoke-virtual {p0}, [D->clone()Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_9
    move-object p0, v1

    goto :goto_1

    :cond_a
    const-class v1, Lgov/nist/core/GenericObject;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_b

    check-cast p0, Lgov/nist/core/GenericObject;

    invoke-virtual {p0}, Lgov/nist/core/GenericObject;->clone()Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_b
    const-class v1, Lgov/nist/core/GenericObjectList;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_c

    check-cast p0, Lgov/nist/core/GenericObjectList;

    invoke-virtual {p0}, Lgov/nist/core/GenericObjectList;->clone()Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_c
    const-class v1, Ljava/lang/Cloneable;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_d

    :try_start_0
    const-string v1, "clone"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    :catch_1
    :cond_d
    :goto_1
    return-object p0

    :cond_e
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "null obj!"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Internal error"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected dbgPrint()V
    .locals 0

    invoke-virtual {p0}, Lgov/nist/core/GenericObject;->debugDump()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lgov/nist/core/Debug;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected dbgPrint(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lgov/nist/core/Debug;->println(Ljava/lang/String;)V

    return-void
.end method

.method public debugDump()Ljava/lang/String;
    .locals 9

    const-string v0, ""

    iput-object v0, p0, Lgov/nist/core/GenericObject;->stringRepresentation:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    const-string v1, "{"

    invoke-virtual {p0, v1}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    const-string v4, "}"

    if-ge v2, v3, :cond_11

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    const/4 v6, 0x2

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "stringRepresentation"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_1

    goto/16 :goto_3

    :cond_1
    const-string v7, "indentation"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_2

    goto/16 :goto_3

    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {v5}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    const-string v5, "int"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p0, v3}, Lgov/nist/core/GenericObject;->sprint(I)V

    goto/16 :goto_3

    :cond_3
    const-string v5, "short"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v3

    invoke-virtual {p0, v3}, Lgov/nist/core/GenericObject;->sprint(S)V

    goto/16 :goto_3

    :cond_4
    const-string v5, "char"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v3

    invoke-virtual {p0, v3}, Lgov/nist/core/GenericObject;->sprint(C)V

    goto/16 :goto_3

    :cond_5
    const-string v5, "long"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lgov/nist/core/GenericObject;->sprint(J)V

    goto/16 :goto_3

    :cond_6
    const-string v5, "boolean"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {p0, v3}, Lgov/nist/core/GenericObject;->sprint(Z)V

    goto/16 :goto_3

    :cond_7
    const-string v5, "double"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lgov/nist/core/GenericObject;->sprint(D)V

    goto/16 :goto_3

    :cond_8
    const-string v5, "float"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_10

    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v3

    invoke-virtual {p0, v3}, Lgov/nist/core/GenericObject;->sprint(F)V

    goto/16 :goto_3

    :cond_9
    const-class v7, Lgov/nist/core/GenericObject;

    invoke-virtual {v7, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, "<null>"

    if-eqz v7, :cond_b

    :try_start_1
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgov/nist/core/GenericObject;

    iget v4, p0, Lgov/nist/core/GenericObject;->indentation:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Lgov/nist/core/GenericObject;->debugDump(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_a
    invoke-virtual {p0, v8}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_b
    const-class v7, Lgov/nist/core/GenericObjectList;

    invoke-virtual {v7, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgov/nist/core/GenericObjectList;

    iget v4, p0, Lgov/nist/core/GenericObject;->indentation:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Lgov/nist/core/GenericObjectList;->debugDump(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    goto :goto_3

    :cond_c
    invoke-virtual {p0, v8}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    goto :goto_3

    :cond_d
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    goto :goto_1

    :cond_e
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0, v1}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_f

    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    goto :goto_2

    :cond_f
    invoke-virtual {p0, v8}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p0, v4}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v3

    invoke-static {v3}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    :catch_1
    :cond_10
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_11
    invoke-virtual {p0, v4}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    iget-object p0, p0, Lgov/nist/core/GenericObject;->stringRepresentation:Ljava/lang/String;

    return-object p0
.end method

.method public debugDump(I)Ljava/lang/String;
    .locals 1

    iput p1, p0, Lgov/nist/core/GenericObject;->indentation:I

    invoke-virtual {p0}, Lgov/nist/core/GenericObject;->debugDump()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    iput v0, p0, Lgov/nist/core/GenericObject;->indentation:I

    return-object p1
.end method

.method public abstract encode()Ljava/lang/String;
.end method

.method public encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 0

    invoke-virtual {p0}, Lgov/nist/core/GenericObject;->encode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 12

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
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    move v5, v0

    :goto_1
    array-length v6, v3

    const/4 v7, 0x1

    if-ge v5, v6, :cond_11

    aget-object v6, v3, v5

    aget-object v8, v4, v5

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v9

    const/4 v10, 0x2

    and-int/2addr v9, v10

    if-ne v9, v10, :cond_2

    goto/16 :goto_2

    :cond_2
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "stringRepresentation"

    invoke-virtual {v10, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_3

    goto/16 :goto_2

    :cond_3
    const-string v11, "indentation"

    invoke-virtual {v10, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_4

    goto/16 :goto_2

    :cond_4
    :try_start_0
    invoke-virtual {v9}, Ljava/lang/Class;->isPrimitive()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-virtual {v9}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "int"

    invoke-virtual {v7, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_5

    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v8, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v7

    if-eq v6, v7, :cond_10

    return v0

    :cond_5
    const-string v9, "short"

    invoke-virtual {v7, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_6

    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v6

    invoke-virtual {v8, p1}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v7

    if-eq v6, v7, :cond_10

    return v0

    :cond_6
    const-string v9, "char"

    invoke-virtual {v7, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_7

    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v6

    invoke-virtual {v8, p1}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v7

    if-eq v6, v7, :cond_10

    return v0

    :cond_7
    const-string v9, "long"

    invoke-virtual {v7, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_8

    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v6

    invoke-virtual {v8, p1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_10

    return v0

    :cond_8
    const-string v9, "boolean"

    invoke-virtual {v7, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_9

    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v8, p1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v7

    if-eq v6, v7, :cond_10

    return v0

    :cond_9
    const-string v9, "double"

    invoke-virtual {v7, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_a

    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v6

    invoke-virtual {v8, p1}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v8

    cmpl-double v6, v6, v8

    if-eqz v6, :cond_10

    return v0

    :cond_a
    const-string v9, "float"

    invoke-virtual {v7, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_10

    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v6

    invoke-virtual {v8, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v7

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_10

    return v0

    :cond_b
    invoke-virtual {v8, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-ne v9, v10, :cond_c

    return v7

    :cond_c
    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_d

    return v0

    :cond_d
    invoke-virtual {v8, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_e

    return v0

    :cond_e
    invoke-virtual {v8, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_f

    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_f

    return v0

    :cond_f
    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v8, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v6, :cond_10

    return v0

    :catch_0
    move-exception v6

    invoke-static {v6}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    :cond_10
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_11
    const-class v3, Lgov/nist/core/GenericObject;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    return v7

    :cond_12
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    goto/16 :goto_0
.end method

.method protected getIndentation()Ljava/lang/String;
    .locals 1

    iget p0, p0, Lgov/nist/core/GenericObject;->indentation:I

    new-array p0, p0, [C

    const/16 v0, 0x20

    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([CC)V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public getMatcher()Lgov/nist/core/Match;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public match(Ljava/lang/Object;)Z
    .locals 10

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lgov/nist/core/GenericObject;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p1

    move v4, v2

    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_13

    aget-object v5, v3, v4

    aget-object v6, p1, v4

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v7

    const/4 v8, 0x2

    and-int/2addr v7, v8

    if-ne v7, v8, :cond_2

    goto/16 :goto_1

    :cond_2
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "stringRepresentation"

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_3

    goto/16 :goto_1

    :cond_3
    const-string v9, "indentation"

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_4

    goto/16 :goto_1

    :cond_4
    :try_start_0
    invoke-virtual {v7}, Ljava/lang/Class;->isPrimitive()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-virtual {v7}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "int"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v6, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6

    if-eq v5, v6, :cond_12

    return v2

    :cond_5
    const-string v8, "short"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_6

    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v5

    invoke-virtual {v6, v1}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v6

    if-eq v5, v6, :cond_12

    return v2

    :cond_6
    const-string v8, "char"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_7

    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v5

    invoke-virtual {v6, v1}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v6

    if-eq v5, v6, :cond_12

    return v2

    :cond_7
    const-string v8, "long"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_8

    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v7

    invoke-virtual {v6, v1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v5

    cmp-long v5, v7, v5

    if-eqz v5, :cond_12

    return v2

    :cond_8
    const-string v8, "boolean"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_9

    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v6, v1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v6

    if-eq v5, v6, :cond_12

    return v2

    :cond_9
    const-string v8, "double"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_a

    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v7

    invoke-virtual {v6, v1}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v5

    cmpl-double v5, v7, v5

    if-eqz v5, :cond_12

    return v2

    :cond_a
    const-string v8, "float"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_12

    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v5

    invoke-virtual {v6, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v6

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_12

    return v2

    :cond_b
    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v6, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_c

    if-nez v5, :cond_c

    return v2

    :cond_c
    if-nez v6, :cond_d

    if-eqz v5, :cond_d

    goto :goto_1

    :cond_d
    if-nez v6, :cond_e

    if-nez v5, :cond_e

    goto :goto_1

    :cond_e
    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_10

    instance-of v7, v5, Ljava/lang/String;

    if-eqz v7, :cond_10

    move-object v7, v6

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    goto :goto_1

    :cond_f
    check-cast v5, Ljava/lang/String;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_12

    return v2

    :cond_10
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7}, Lgov/nist/core/GenericObject;->isMySubclass(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_11

    move-object v7, v5

    check-cast v7, Lgov/nist/core/GenericObject;

    invoke-virtual {v7, v6}, Lgov/nist/core/GenericObject;->match(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    return v2

    :cond_11
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7}, Lgov/nist/core/GenericObjectList;->isMySubclass(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_12

    check-cast v5, Lgov/nist/core/GenericObjectList;

    invoke-virtual {v5, v6}, Lgov/nist/core/GenericObjectList;->match(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v5, :cond_12

    return v2

    :catch_0
    move-exception v5

    invoke-static {v5}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    :cond_12
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_13
    return v0
.end method

.method public merge(Ljava/lang/Object;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_10

    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v5

    if-eqz v5, :cond_2

    goto/16 :goto_1

    :cond_2
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-eqz v5, :cond_3

    goto/16 :goto_1

    :cond_3
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isInterface(I)Z

    move-result v4

    if-eqz v4, :cond_4

    goto/16 :goto_1

    :cond_4
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v5

    :try_start_0
    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "int"

    invoke-virtual {v5, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :cond_5
    const-string v4, "short"

    invoke-virtual {v5, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v4

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Field;->setShort(Ljava/lang/Object;S)V

    goto/16 :goto_1

    :cond_6
    const-string v4, "char"

    invoke-virtual {v5, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v4

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Field;->setChar(Ljava/lang/Object;C)V

    goto :goto_1

    :cond_7
    const-string v4, "long"

    invoke-virtual {v5, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v4

    invoke-virtual {v3, p0, v4, v5}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V

    goto :goto_1

    :cond_8
    const-string v4, "boolean"

    invoke-virtual {v5, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    goto :goto_1

    :cond_9
    const-string v4, "double"

    invoke-virtual {v5, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v4

    invoke-virtual {v3, p0, v4, v5}, Ljava/lang/reflect/Field;->setDouble(Ljava/lang/Object;D)V

    goto :goto_1

    :cond_a
    const-string v4, "float"

    invoke-virtual {v5, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_f

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v4

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V

    goto :goto_1

    :cond_b
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_c

    goto :goto_1

    :cond_c
    if-nez v4, :cond_d

    invoke-virtual {v3, p0, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_d
    instance-of v6, v4, Lgov/nist/core/GenericObject;

    if-eqz v6, :cond_e

    check-cast v4, Lgov/nist/core/GenericObject;

    invoke-virtual {v4, v5}, Lgov/nist/core/GenericObject;->merge(Ljava/lang/Object;)V

    goto :goto_1

    :cond_e
    invoke-virtual {v3, p0, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :cond_f
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_10
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lgov/nist/core/GenericObject;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Bad override object"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMatcher(Lgov/nist/core/Match;)V
    .locals 0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "null arg!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected sprint(C)V
    .locals 0

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    return-void
.end method

.method protected sprint(D)V
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    return-void
.end method

.method protected sprint(F)V
    .locals 0

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    return-void
.end method

.method protected sprint(I)V
    .locals 0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    return-void
.end method

.method protected sprint(J)V
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    return-void
.end method

.method protected sprint(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    return-void
.end method

.method protected sprint(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lgov/nist/core/GenericObject;->stringRepresentation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lgov/nist/core/GenericObject;->getIndentation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgov/nist/core/GenericObject;->stringRepresentation:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lgov/nist/core/GenericObject;->stringRepresentation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<null>\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgov/nist/core/GenericObject;->stringRepresentation:Ljava/lang/String;

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
    iget v0, p0, Lgov/nist/core/GenericObject;->indentation:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgov/nist/core/GenericObject;->indentation:I

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov/nist/core/GenericObject;->stringRepresentation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lgov/nist/core/GenericObject;->getIndentation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/core/GenericObject;->stringRepresentation:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov/nist/core/GenericObject;->stringRepresentation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/core/GenericObject;->stringRepresentation:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov/nist/core/GenericObject;->stringRepresentation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/core/GenericObject;->stringRepresentation:Ljava/lang/String;

    const-string v0, "{"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_4

    :cond_3
    iget p1, p0, Lgov/nist/core/GenericObject;->indentation:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lgov/nist/core/GenericObject;->indentation:I

    :cond_4
    return-void
.end method

.method protected sprint(S)V
    .locals 0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    return-void
.end method

.method protected sprint(Z)V
    .locals 0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    return-void
.end method
