.class public Lorg/sqlite/JDBC;
.super Ljava/lang/Object;
.source "JDBC.java"

# interfaces
.implements Ljava/sql/Driver;


# static fields
.field public static final PREFIX:Ljava/lang/String; = "jdbc:sqlite:"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    new-instance v0, Lorg/sqlite/JDBC;

    invoke-direct {v0}, Lorg/sqlite/JDBC;-><init>()V

    invoke-static {v0}, Ljava/sql/DriverManager;->registerDriver(Ljava/sql/Driver;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createConnection(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    invoke-static {p0}, Lorg/sqlite/JDBC;->isValidURL(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lorg/sqlite/SQLiteConnection;

    invoke-static {p0}, Lorg/sqlite/JDBC;->extractAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lorg/sqlite/SQLiteConnection;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;)V

    return-object v0
.end method

.method static extractAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "jdbc:sqlite:"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ":memory:"

    goto :goto_0

    :cond_0
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static isValidURL(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "jdbc:sqlite:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public acceptsURL(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Lorg/sqlite/JDBC;->isValidURL(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public connect(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    invoke-static {p1, p2}, Lorg/sqlite/JDBC;->createConnection(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;

    move-result-object p1

    return-object p1
.end method

.method public getMajorVersion()I
    .locals 1

    invoke-static {}, Lorg/sqlite/SQLiteJDBCLoader;->getMajorVersion()I

    move-result v0

    return v0
.end method

.method public getMinorVersion()I
    .locals 1

    invoke-static {}, Lorg/sqlite/SQLiteJDBCLoader;->getMinorVersion()I

    move-result v0

    return v0
.end method

.method public getParentLogger()Ljava/util/logging/Logger;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLFeatureNotSupportedException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPropertyInfo(Ljava/lang/String;Ljava/util/Properties;)[Ljava/sql/DriverPropertyInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    invoke-static {}, Lorg/sqlite/SQLiteConfig;->getDriverPropertyInfo()[Ljava/sql/DriverPropertyInfo;

    move-result-object p1

    return-object p1
.end method

.method public jdbcCompliant()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
