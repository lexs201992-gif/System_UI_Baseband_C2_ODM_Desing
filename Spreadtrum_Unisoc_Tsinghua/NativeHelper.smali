.class public Lcom/spreadtrum/ims/n3am/util/NativeHelper;
.super Ljava/lang/Object;
.source "NativeHelper.java"


# static fields
.field private static sInstance:Lcom/spreadtrum/ims/n3am/util/NativeHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "n3am_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/spreadtrum/ims/n3am/util/NativeHelper;->sInstance:Lcom/spreadtrum/ims/n3am/util/NativeHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/spreadtrum/ims/n3am/util/NativeHelper;
    .locals 1

    sget-object v0, Lcom/spreadtrum/ims/n3am/util/NativeHelper;->sInstance:Lcom/spreadtrum/ims/n3am/util/NativeHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/spreadtrum/ims/n3am/util/NativeHelper;

    invoke-direct {v0}, Lcom/spreadtrum/ims/n3am/util/NativeHelper;-><init>()V

    sput-object v0, Lcom/spreadtrum/ims/n3am/util/NativeHelper;->sInstance:Lcom/spreadtrum/ims/n3am/util/NativeHelper;

    :cond_0
    sget-object v0, Lcom/spreadtrum/ims/n3am/util/NativeHelper;->sInstance:Lcom/spreadtrum/ims/n3am/util/NativeHelper;

    return-object v0
.end method


# virtual methods
.method public native native_observe_wifi_start()V
.end method

.method public native native_observe_wifi_stop()V
.end method
