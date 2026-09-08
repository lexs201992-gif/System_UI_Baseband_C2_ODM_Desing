.class public Lcom/unisoc/settings/utils/UniSettingsUtils;
.super Ljava/lang/Object;
.source "UniSettingsUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UniSettingsUtils"

.field public static sUniSettingsUtilsInstance:Lcom/unisoc/settings/utils/UniSettingsUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/unisoc/settings/utils/UniSettingsUtils;
    .locals 2

    const-class v0, Lcom/unisoc/settings/utils/UniSettingsUtils;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/unisoc/settings/utils/UniSettingsUtils;->sUniSettingsUtilsInstance:Lcom/unisoc/settings/utils/UniSettingsUtils;

    if-nez v1, :cond_0

    new-instance v1, Lcom/unisoc/settings/utils/UniSettingsUtils;

    invoke-direct {v1}, Lcom/unisoc/settings/utils/UniSettingsUtils;-><init>()V

    sput-object v1, Lcom/unisoc/settings/utils/UniSettingsUtils;->sUniSettingsUtilsInstance:Lcom/unisoc/settings/utils/UniSettingsUtils;

    :cond_0
    sget-object v1, Lcom/unisoc/settings/utils/UniSettingsUtils;->sUniSettingsUtilsInstance:Lcom/unisoc/settings/utils/UniSettingsUtils;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public addPreferenceController(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public isSupportLocalUpdate(Landroid/content/res/Resources;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setPreferenceEnabled(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public uniDoUpdateTilesList(Ljava/lang/String;Ljava/lang/StringBuilder;ZLcom/android/settings/SettingsActivity;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
