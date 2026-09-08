.class public final Lcom/android/bluetooth/audio_util/MediaBrowserFactory;
.super Ljava/lang/Object;
.source "MediaBrowserFactory.java"


# static fields
.field public static sInjectedBrowser:Lcom/android/bluetooth/audio_util/MediaBrowser;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lcom/android/bluetooth/audio_util/MediaBrowser;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    sput-object p0, Lcom/android/bluetooth/audio_util/MediaBrowserFactory;->sInjectedBrowser:Lcom/android/bluetooth/audio_util/MediaBrowser;

    return-void
.end method

.method public static make(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/bluetooth/audio_util/MediaBrowser$ConnectionCallback;Landroid/os/Bundle;)Lcom/android/bluetooth/audio_util/MediaBrowser;
    .locals 1

    sget-object v0, Lcom/android/bluetooth/audio_util/MediaBrowserFactory;->sInjectedBrowser:Lcom/android/bluetooth/audio_util/MediaBrowser;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/bluetooth/audio_util/MediaBrowser;->testInit(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/bluetooth/audio_util/MediaBrowser$ConnectionCallback;Landroid/os/Bundle;)V

    sget-object p0, Lcom/android/bluetooth/audio_util/MediaBrowserFactory;->sInjectedBrowser:Lcom/android/bluetooth/audio_util/MediaBrowser;

    return-object p0

    :cond_0
    new-instance v0, Lcom/android/bluetooth/audio_util/MediaBrowser;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/bluetooth/audio_util/MediaBrowser;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/bluetooth/audio_util/MediaBrowser$ConnectionCallback;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static wrap(Landroid/media/browse/MediaBrowser;)Lcom/android/bluetooth/audio_util/MediaBrowser;
    .locals 1

    sget-object v0, Lcom/android/bluetooth/audio_util/MediaBrowserFactory;->sInjectedBrowser:Lcom/android/bluetooth/audio_util/MediaBrowser;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lcom/android/bluetooth/audio_util/MediaBrowser;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/audio_util/MediaBrowser;-><init>(Landroid/media/browse/MediaBrowser;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
