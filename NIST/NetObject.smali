.class public abstract Lgov/nist/javax/sip/address/NetObject;
.super Lgov/nist/core/GenericObject;
.source "NetObject.java"


# static fields
.field protected static final CORE_PACKAGE:Ljava/lang/String; = "gov.nist.core"

.field protected static final GRUU:Ljava/lang/String; = "gr"

.field protected static final LR:Ljava/lang/String; = "lr"

.field protected static final MADDR:Ljava/lang/String; = "maddr"

.field protected static final METHOD:Ljava/lang/String; = "method"

.field protected static final NET_PACKAGE:Ljava/lang/String; = "gov.nist.javax.sip.address"

.field protected static final PARSER_PACKAGE:Ljava/lang/String; = "gov.nist.javax.sip.parser"

.field protected static final PHONE:Ljava/lang/String; = "phone"

.field protected static final SIP:Ljava/lang/String; = "sip"

.field protected static final SIPS:Ljava/lang/String; = "sips"

.field protected static final TCP:Ljava/lang/String; = "tcp"

.field protected static final TLS:Ljava/lang/String; = "tls"

.field protected static final TRANSPORT:Ljava/lang/String; = "transport"

.field protected static final TTL:Ljava/lang/String; = "ttl"

.field protected static final UDP:Ljava/lang/String; = "udp"

.field protected static final USER:Ljava/lang/String; = "user"

.field protected static final serialVersionUID:J = 0x5558ed4c6a6e4319L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgov/nist/core/GenericObject;-><init>()V

    return-void
.end method


# virtual methods
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
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

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
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
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

    iget v0, p0, Lgov/nist/core/GenericObject;->indentation:I

    iput p1, p0, Lgov/nist/core/GenericObject;->indentation:I

    invoke-virtual {p0}, Lgov/nist/javax/sip/address/NetObject;->debugDump()Ljava/lang/String;

    move-result-object p1

    iput v0, p0, Lgov/nist/core/GenericObject;->indentation:I

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 11

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
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    move v5, v1

    :goto_1
    array-length v6, v3

    if-ge v5, v6, :cond_f

    aget-object v6, v3, v5

    aget-object v7, v4, v5

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v8

    const/4 v9, 0x2

    and-int/2addr v8, v9

    if-ne v8, v9, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "stringRepresentation"

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_2

    goto/16 :goto_2

    :cond_2
    const-string v10, "indentation"

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_3

    goto/16 :goto_2

    :cond_3
    :try_start_0
    invoke-virtual {v8}, Ljava/lang/Class;->isPrimitive()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-virtual {v8}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "int"

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v7, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v7

    if-eq v6, v7, :cond_e

    return v1

    :cond_4
    const-string v9, "short"

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_5

    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v6

    invoke-virtual {v7, p1}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v7

    if-eq v6, v7, :cond_e

    return v1

    :cond_5
    const-string v9, "char"

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_6

    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v6

    invoke-virtual {v7, p1}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v7

    if-eq v6, v7, :cond_e

    return v1

    :cond_6
    const-string v9, "long"

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_7

    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v8

    invoke-virtual {v7, p1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v6

    cmp-long v6, v8, v6

    if-eqz v6, :cond_e

    return v1

    :cond_7
    const-string v9, "boolean"

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_8

    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v7, p1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v7

    if-eq v6, v7, :cond_e

    return v1

    :cond_8
    const-string v9, "double"

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_9

    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v8

    invoke-virtual {v7, p1}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v6

    cmpl-double v6, v8, v6

    if-eqz v6, :cond_e

    return v1

    :cond_9
    const-string v9, "float"

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_e

    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v6

    invoke-virtual {v7, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v7

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_e

    return v1

    :cond_a
    invoke-virtual {v7, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-ne v8, v9, :cond_b

    goto :goto_2

    :cond_b
    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_c

    invoke-virtual {v7, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_c

    return v1

    :cond_c
    invoke-virtual {v7, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_d

    invoke-virtual {v6, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_d

    return v1

    :cond_d
    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v7, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v6, :cond_e

    return v1

    :catch_0
    move-exception v6

    invoke-static {v6}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    :cond_e
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_f
    const-class v3, Lgov/nist/javax/sip/address/NetObject;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    goto/16 :goto_0
.end method

.method public match(Ljava/lang/Object;)Z
    .locals 12

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

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    :goto_0
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    move v6, v2

    :goto_1
    array-length v7, v4

    if-ge v6, v7, :cond_14

    aget-object v7, v4, v6

    aget-object v8, v5, v6

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v9

    const/4 v10, 0x2

    and-int/2addr v9, v10

    if-ne v9, v10, :cond_2

    goto/16 :goto_2

    :cond_2
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

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

    move-result-object v9

    const-string v10, "int"

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_5

    invoke-virtual {v7, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v8, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v8

    if-eq v7, v8, :cond_13

    return v2

    :cond_5
    const-string v10, "short"

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_6

    invoke-virtual {v7, p0}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v7

    invoke-virtual {v8, v1}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v8

    if-eq v7, v8, :cond_13

    return v2

    :cond_6
    const-string v10, "char"

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_7

    invoke-virtual {v7, p0}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v7

    invoke-virtual {v8, v1}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v8

    if-eq v7, v8, :cond_13

    return v2

    :cond_7
    const-string v10, "long"

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_8

    invoke-virtual {v7, p0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {v8, v1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v7

    cmp-long v7, v9, v7

    if-eqz v7, :cond_13

    return v2

    :cond_8
    const-string v10, "boolean"

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_9

    invoke-virtual {v7, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v8, v1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v8

    if-eq v7, v8, :cond_13

    return v2

    :cond_9
    const-string v10, "double"

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_a

    invoke-virtual {v7, p0}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v9

    invoke-virtual {v8, v1}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v7

    cmpl-double v7, v9, v7

    if-eqz v7, :cond_13

    return v2

    :cond_a
    const-string v10, "float"

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_13

    invoke-virtual {v7, p0}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v7

    invoke-virtual {v8, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v8

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_13

    return v2

    :cond_b
    invoke-virtual {v7, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v8, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_c

    if-nez v7, :cond_c

    return v2

    :cond_c
    if-nez v8, :cond_d

    if-eqz v7, :cond_d

    goto/16 :goto_2

    :cond_d
    if-nez v8, :cond_e

    if-nez v7, :cond_e

    goto/16 :goto_2

    :cond_e
    instance-of v9, v8, Ljava/lang/String;

    if-eqz v9, :cond_10

    instance-of v9, v7, Ljava/lang/String;

    if-eqz v9, :cond_10

    move-object v9, v8

    check-cast v9, Ljava/lang/String;

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    goto :goto_2

    :cond_f
    check-cast v7, Ljava/lang/String;

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_13

    return v2

    :cond_10
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-static {v9}, Lgov/nist/core/GenericObject;->isMySubclass(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-static {v9}, Lgov/nist/core/GenericObject;->isMySubclass(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    move-object v9, v8

    check-cast v9, Lgov/nist/core/GenericObject;

    invoke-virtual {v9}, Lgov/nist/core/GenericObject;->getMatcher()Lgov/nist/core/Match;

    :cond_11
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-static {v9}, Lgov/nist/core/GenericObject;->isMySubclass(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_12

    move-object v9, v7

    check-cast v9, Lgov/nist/core/GenericObject;

    invoke-virtual {v9, v8}, Lgov/nist/core/GenericObject;->match(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_12

    return v2

    :cond_12
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-static {v9}, Lgov/nist/core/GenericObjectList;->isMySubclass(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_13

    check-cast v7, Lgov/nist/core/GenericObjectList;

    invoke-virtual {v7, v8}, Lgov/nist/core/GenericObjectList;->match(Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v7, :cond_13

    return v2

    :catch_0
    move-exception v7

    invoke-static {v7}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    :cond_13
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_14
    const-class v4, Lgov/nist/javax/sip/address/NetObject;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    return v0

    :cond_15
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lgov/nist/core/GenericObject;->encode()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
