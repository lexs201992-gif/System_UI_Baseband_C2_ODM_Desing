.class public Lcom/unisoc/phone/UniAppComponentFactory;
.super Landroid/app/AppComponentFactory;
.source "UniAppComponentFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/unisoc/phone/UniAppComponentFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unisoc/phone/UniAppComponentFactory;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/AppComponentFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public instantiateActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const-string v0, ".CallFeaturesSetting"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "com.unisoc.phone.CallFeaturesSetting"

    goto/16 :goto_0

    :cond_0
    const-string v0, ".GsmUmtsCallForwardOptions"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p2, "com.unisoc.phone.GsmUmtsCallForwardOptions"

    goto :goto_0

    :cond_1
    const-string v0, ".GsmUmtsCallOptions"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p2, "com.unisoc.phone.GsmUmtsCallOptions"

    goto :goto_0

    :cond_2
    const-string v0, ".GsmUmtsCallBarringOptions"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p2, "com.unisoc.phone.GsmUmtsCallBarringOptions"

    goto :goto_0

    :cond_3
    const-string v0, ".GsmUmtsAdditionalCallOptions"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p2, "com.unisoc.phone.GsmUmtsAdditionalCallOptions"

    goto :goto_0

    :cond_4
    const-string v0, ".VoicemailSettingsActivity"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p2, "com.unisoc.phone.settings.VoicemailSettingsActivity"

    goto :goto_0

    :cond_5
    const-string v0, ".FdnSetting"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p2, "com.unisoc.phone.settings.fdn.FdnSetting"

    goto :goto_0

    :cond_6
    const-string v0, ".DeleteFdnContactScreen"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p2, "com.unisoc.phone.settings.fdn.DeleteFdnContactScreen"

    goto :goto_0

    :cond_7
    const-string v0, ".EditFdnContactScreen"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p2, "com.unisoc.phone.settings.fdn.EditFdnContactScreen"

    goto :goto_0

    :cond_8
    const-string v0, ".GetPin2Screen"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p2, "com.unisoc.phone.settings.fdn.GetPin2Screen"

    goto :goto_0

    :cond_9
    const-string v0, ".FdnList"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string p2, "com.unisoc.phone.settings.fdn.FdnList"

    :cond_a
    :goto_0
    sget-object v0, Lcom/unisoc/phone/UniAppComponentFactory;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start unisoc class :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2, p3}, Landroid/app/AppComponentFactory;->instantiateActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method
