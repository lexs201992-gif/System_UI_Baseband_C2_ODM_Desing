.class public Lgov/nist/core/DuplicateNameValueList;
.super Ljava/lang/Object;
.source "DuplicateNameValueList.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final serialVersionUID:J = -0x4ddf7598584c3ad8L


# instance fields
.field private nameValueMap:Lgov/nist/core/MultiValueMapImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgov/nist/core/MultiValueMapImpl<",
            "Lgov/nist/core/NameValue;",
            ">;"
        }
    .end annotation
.end field

.field private separator:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lgov/nist/core/MultiValueMapImpl;

    invoke-direct {v0}, Lgov/nist/core/MultiValueMapImpl;-><init>()V

    iput-object v0, p0, Lgov/nist/core/DuplicateNameValueList;->nameValueMap:Lgov/nist/core/MultiValueMapImpl;

    const-string v0, ";"

    iput-object v0, p0, Lgov/nist/core/DuplicateNameValueList;->separator:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lgov/nist/core/DuplicateNameValueList;

    invoke-direct {v0}, Lgov/nist/core/DuplicateNameValueList;-><init>()V

    iget-object v1, p0, Lgov/nist/core/DuplicateNameValueList;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lgov/nist/core/DuplicateNameValueList;->setSeparator(Ljava/lang/String;)V

    iget-object p0, p0, Lgov/nist/core/DuplicateNameValueList;->nameValueMap:Lgov/nist/core/MultiValueMapImpl;

    invoke-virtual {p0}, Lgov/nist/core/MultiValueMapImpl;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/core/NameValue;

    invoke-virtual {v1}, Lgov/nist/core/NameValue;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/core/NameValue;

    invoke-virtual {v0, v1}, Lgov/nist/core/DuplicateNameValueList;->set(Lgov/nist/core/NameValue;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public encode()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/core/DuplicateNameValueList;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 3

    iget-object v0, p0, Lgov/nist/core/DuplicateNameValueList;->nameValueMap:Lgov/nist/core/MultiValueMapImpl;

    invoke-virtual {v0}, Lgov/nist/core/MultiValueMapImpl;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lgov/nist/core/DuplicateNameValueList;->nameValueMap:Lgov/nist/core/MultiValueMapImpl;

    invoke-virtual {v0}, Lgov/nist/core/MultiValueMapImpl;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lgov/nist/core/GenericObject;

    if-eqz v2, :cond_0

    check-cast v1, Lgov/nist/core/GenericObject;

    invoke-virtual {v1, p1}, Lgov/nist/core/GenericObject;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lgov/nist/core/DuplicateNameValueList;->separator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    check-cast p1, Lgov/nist/core/DuplicateNameValueList;

    iget-object v1, p0, Lgov/nist/core/DuplicateNameValueList;->nameValueMap:Lgov/nist/core/MultiValueMapImpl;

    invoke-virtual {v1}, Lgov/nist/core/MultiValueMapImpl;->size()I

    move-result v1

    iget-object v2, p1, Lgov/nist/core/DuplicateNameValueList;->nameValueMap:Lgov/nist/core/MultiValueMapImpl;

    invoke-virtual {v2}, Lgov/nist/core/MultiValueMapImpl;->size()I

    move-result v2

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    iget-object v1, p0, Lgov/nist/core/DuplicateNameValueList;->nameValueMap:Lgov/nist/core/MultiValueMapImpl;

    invoke-virtual {v1}, Lgov/nist/core/MultiValueMapImpl;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lgov/nist/core/DuplicateNameValueList;->getNameValue(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v3

    iget-object v4, p1, Lgov/nist/core/DuplicateNameValueList;->nameValueMap:Lgov/nist/core/MultiValueMapImpl;

    invoke-virtual {v4, v2}, Lgov/nist/core/MultiValueMapImpl;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_4

    return v0

    :cond_4
    invoke-interface {v2, v3}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v0

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method public getNameValue(Ljava/lang/String;)Ljava/util/Collection;
    .locals 0

    iget-object p0, p0, Lgov/nist/core/DuplicateNameValueList;->nameValueMap:Lgov/nist/core/MultiValueMapImpl;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgov/nist/core/MultiValueMapImpl;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lgov/nist/core/DuplicateNameValueList;->nameValueMap:Lgov/nist/core/MultiValueMapImpl;

    invoke-virtual {p0}, Lgov/nist/core/MultiValueMapImpl;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->hashCode()I

    move-result p0

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lgov/nist/core/DuplicateNameValueList;->nameValueMap:Lgov/nist/core/MultiValueMapImpl;

    invoke-virtual {p0}, Lgov/nist/core/MultiValueMapImpl;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public set(Lgov/nist/core/NameValue;)V
    .locals 1

    iget-object p0, p0, Lgov/nist/core/DuplicateNameValueList;->nameValueMap:Lgov/nist/core/MultiValueMapImpl;

    invoke-virtual {p1}, Lgov/nist/core/NameValue;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lgov/nist/core/MultiValueMapImpl;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    return-void
.end method

.method public setSeparator(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lgov/nist/core/DuplicateNameValueList;->separator:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lgov/nist/core/DuplicateNameValueList;->encode()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
