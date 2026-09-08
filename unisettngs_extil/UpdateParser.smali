.class Lcom/unisoc/settings/deviceinfo/UpdateParser;
.super Ljava/lang/Object;
.source "UpdateParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisoc/settings/deviceinfo/UpdateParser$ParsedUpdate;
    }
.end annotation


# static fields
.field private static final FILE_URL_PREFIX:Ljava/lang/String; = "file://"

.field private static final PAYLOAD_BIN_FILE:Ljava/lang/String; = "payload.bin"

.field private static final PAYLOAD_PROPERTIES:Ljava/lang/String; = "payload_properties.txt"

.field private static final TAG:Ljava/lang/String; = "LocalSystemUpdate"

.field private static final ZIP_FILE_HEADER:I = 0x1e


# direct methods
.method public static synthetic $r8$lambda$2X65a9m5n17rC6j9AmPTVAnAXns(I)[Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/unisoc/settings/deviceinfo/UpdateParser;->lambda$parse$0(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic lambda$parse$0(I)[Ljava/lang/String;
    .locals 0

    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method static parse(Ljava/io/File;)Lcom/unisoc/settings/deviceinfo/UpdateParser$ParsedUpdate;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "LocalSystemUpdate"

    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/zip/ZipFile;

    move-object/from16 v3, p0

    invoke-direct {v1, v3}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    :try_start_0
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    move-object v9, v7

    const/4 v10, 0x0

    move-wide v7, v4

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/zip/ZipEntry;

    invoke-virtual {v11}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v12

    if-nez v10, :cond_0

    invoke-virtual {v11}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, 0x1e

    int-to-long v14, v14

    add-long/2addr v4, v14

    invoke-virtual {v11}, Ljava/util/zip/ZipEntry;->getExtra()[B

    move-result-object v14

    if-eqz v14, :cond_0

    invoke-virtual {v11}, Ljava/util/zip/ZipEntry;->getExtra()[B

    move-result-object v14

    array-length v14, v14

    int-to-long v14, v14

    add-long/2addr v4, v14

    :cond_0
    invoke-virtual {v11}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v14

    if-eqz v14, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v11}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "payload.bin"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    const/4 v15, 0x1

    if-eqz v14, :cond_2

    move-wide v7, v12

    move v10, v15

    goto :goto_2

    :cond_2
    invoke-virtual {v11}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v6, "payload_properties.txt"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v6, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-virtual {v1, v11}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v14

    invoke-direct {v9, v14}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->lines()Ljava/util/stream/Stream;

    move-result-object v9

    new-instance v14, Lcom/unisoc/settings/deviceinfo/UpdateParser$$ExternalSyntheticLambda0;

    invoke-direct {v14}, Lcom/unisoc/settings/deviceinfo/UpdateParser$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v9, v14}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v0

    :try_start_3
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v2

    :cond_3
    :goto_2
    if-nez v10, :cond_4

    add-long/2addr v4, v12

    :cond_4
    const/4 v6, 0x3

    invoke-static {v0, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "Entry %s"

    new-array v12, v15, [Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x0

    aput-object v11, v12, v13

    invoke-static {v6, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto/16 :goto_0

    :cond_5
    const/4 v13, 0x0

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    new-instance v0, Lcom/unisoc/settings/deviceinfo/UpdateParser$ParsedUpdate;

    move-object v2, v0

    move-object/from16 v3, p0

    move-wide v6, v7

    move-object v8, v9

    invoke-direct/range {v2 .. v8}, Lcom/unisoc/settings/deviceinfo/UpdateParser$ParsedUpdate;-><init>(Ljava/io/File;JJ[Ljava/lang/String;)V

    return-object v0

    :catchall_2
    move-exception v0

    move-object v2, v0

    :try_start_5
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v1, v0

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v2
.end method
