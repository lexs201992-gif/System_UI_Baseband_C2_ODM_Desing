.class public Landroidx/room/migration/bundle/SchemaBundle;
.super Ljava/lang/Object;
.source "SchemaBundle.java"

# interfaces
.implements Landroidx/room/migration/bundle/SchemaEquality;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/room/migration/bundle/SchemaEquality<",
        "Landroidx/room/migration/bundle/SchemaBundle;",
        ">;"
    }
.end annotation


# static fields
.field private static final CHARSET:Ljava/lang/String; = "UTF-8"

.field private static final GSON:Lcom/google/gson/Gson;

.field public static final LATEST_FORMAT:I = 0x1


# instance fields
.field private mDatabase:Landroidx/room/migration/bundle/DatabaseBundle;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "database"
    .end annotation
.end field

.field private mFormatVersion:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "formatVersion"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->setPrettyPrinting()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    sput-object v0, Landroidx/room/migration/bundle/SchemaBundle;->GSON:Lcom/google/gson/Gson;

    return-void
.end method

.method public constructor <init>(ILandroidx/room/migration/bundle/DatabaseBundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/room/migration/bundle/SchemaBundle;->mFormatVersion:I

    iput-object p2, p0, Landroidx/room/migration/bundle/SchemaBundle;->mDatabase:Landroidx/room/migration/bundle/DatabaseBundle;

    return-void
.end method

.method public static deserialize(Ljava/io/InputStream;)Landroidx/room/migration/bundle/SchemaBundle;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    new-instance v0, Ljava/io/InputStreamReader;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    :try_start_0
    sget-object v1, Landroidx/room/migration/bundle/SchemaBundle;->GSON:Lcom/google/gson/Gson;

    const-class v2, Landroidx/room/migration/bundle/SchemaBundle;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/room/migration/bundle/SchemaBundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Landroidx/room/migration/bundle/SchemaBundle;->safeClose(Ljava/io/Closeable;)V

    invoke-static {p0}, Landroidx/room/migration/bundle/SchemaBundle;->safeClose(Ljava/io/Closeable;)V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-static {v0}, Landroidx/room/migration/bundle/SchemaBundle;->safeClose(Ljava/io/Closeable;)V

    invoke-static {p0}, Landroidx/room/migration/bundle/SchemaBundle;->safeClose(Ljava/io/Closeable;)V

    throw v1
.end method

.method private static safeClose(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public static serialize(Landroidx/room/migration/bundle/SchemaBundle;Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    new-instance p1, Ljava/io/OutputStreamWriter;

    const-string v1, "UTF-8"

    invoke-direct {p1, v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    :try_start_0
    sget-object v1, Landroidx/room/migration/bundle/SchemaBundle;->GSON:Lcom/google/gson/Gson;

    invoke-virtual {v1, p0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/Appendable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1}, Landroidx/room/migration/bundle/SchemaBundle;->safeClose(Ljava/io/Closeable;)V

    invoke-static {v0}, Landroidx/room/migration/bundle/SchemaBundle;->safeClose(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p1}, Landroidx/room/migration/bundle/SchemaBundle;->safeClose(Ljava/io/Closeable;)V

    invoke-static {v0}, Landroidx/room/migration/bundle/SchemaBundle;->safeClose(Ljava/io/Closeable;)V

    throw p0
.end method


# virtual methods
.method public getDatabase()Landroidx/room/migration/bundle/DatabaseBundle;
    .locals 1

    iget-object v0, p0, Landroidx/room/migration/bundle/SchemaBundle;->mDatabase:Landroidx/room/migration/bundle/DatabaseBundle;

    return-object v0
.end method

.method public getFormatVersion()I
    .locals 1

    iget v0, p0, Landroidx/room/migration/bundle/SchemaBundle;->mFormatVersion:I

    return v0
.end method

.method public isSchemaEqual(Landroidx/room/migration/bundle/SchemaBundle;)Z
    .locals 2

    iget-object v0, p0, Landroidx/room/migration/bundle/SchemaBundle;->mDatabase:Landroidx/room/migration/bundle/DatabaseBundle;

    iget-object v1, p1, Landroidx/room/migration/bundle/SchemaBundle;->mDatabase:Landroidx/room/migration/bundle/DatabaseBundle;

    invoke-static {v0, v1}, Landroidx/room/migration/bundle/SchemaEqualityUtil;->checkSchemaEquality(Landroidx/room/migration/bundle/SchemaEquality;Landroidx/room/migration/bundle/SchemaEquality;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/room/migration/bundle/SchemaBundle;->mFormatVersion:I

    iget p1, p1, Landroidx/room/migration/bundle/SchemaBundle;->mFormatVersion:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic isSchemaEqual(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Landroidx/room/migration/bundle/SchemaBundle;

    invoke-virtual {p0, p1}, Landroidx/room/migration/bundle/SchemaBundle;->isSchemaEqual(Landroidx/room/migration/bundle/SchemaBundle;)Z

    move-result p1

    return p1
.end method
