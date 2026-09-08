.class public final Lcom/motorola/enterprise/adapter/service/utils/DeviceAndBuildInformation;
.super Ljava/lang/Object;
.source "DeviceAndBuildInformation.java"


# direct methods
.method public static getSerial(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/motorola/enterprise/adapter/service/enterprise/InternalManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/motorola/enterprise/adapter/service/enterprise/InternalManagerAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/motorola/enterprise/adapter/service/enterprise/InternalManagerAdapter;->getSerialNumber()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DeviceAndBuildInformation"

    const-string v1, "Serial Number got from getSerialFromBuild()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object p0
.end method

.method public static isDebuggable()Z
    .locals 3

    :try_start_0
    const-class v0, Landroid/os/Build;

    const-string v1, "IS_DEBUGGABLE"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "DeviceAndBuildInformation"

    const-string v2, "Cannot get IS_DEBUGGABLE"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0
.end method
