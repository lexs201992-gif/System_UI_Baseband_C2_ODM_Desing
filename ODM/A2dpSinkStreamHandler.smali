.class public Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;
.super Landroid/os/Handler;
.source "A2dpSinkStreamHandler.java"


# static fields
.field public static final AUDIO_FOCUS_CHANGE:I = 0x7

.field public static final DBG:Z

.field public static final DEFAULT_DUCK_PERCENT:I = 0x19

.field public static final DISCONNECT:I = 0x6

.field public static final REQUEST_FOCUS:I = 0x8

.field public static final SETTLE_TIMEOUT:I = 0x190

.field public static final SNK_PAUSE:I = 0x3

.field public static final SNK_PLAY:I = 0x2

.field public static final SRC_PAUSE:I = 0x5

.field public static final SRC_PLAY:I = 0x4

.field public static final SRC_STR_START:I = 0x0

.field public static final SRC_STR_STOP:I = 0x1

.field public static final STATE_FOCUS_GRANTED:I = 0x1

.field public static final STATE_FOCUS_LOST:I = 0x0

.field public static final TAG:Ljava/lang/String; = "A2dpSinkStreamHandler"


# instance fields
.field public mA2dpSinkService:Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

.field public mAudioFocus:I

.field public mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field public mAudioManager:Landroid/media/AudioManager;

.field public mMediaPlayer:Landroid/media/MediaPlayer;

.field public mNativeInterface:Lcom/android/bluetooth/a2dpsink/A2dpSinkNativeInterface;

.field public mStreamAvailable:Z


# direct methods
.method public static synthetic $r8$lambda$LVt0a-rXlxRy17IuJe1bDpGR4RU(Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;Landroid/media/MediaPlayer;II)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->lambda$requestMediaKeyFocus$0(Landroid/media/MediaPlayer;II)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$sfgetDBG()Z
    .locals 1

    sget-boolean v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->DBG:Z

    return v0
.end method

.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "A2dpSinkStreamHandler"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/bluetooth/a2dpsink/A2dpSinkService;Lcom/android/bluetooth/a2dpsink/A2dpSinkNativeInterface;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mStreamAvailable:Z

    iput v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mAudioFocus:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler$1;-><init>(Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;)V

    iput-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    iput-object p1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mA2dpSinkService:Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    iput-object p2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mNativeInterface:Lcom/android/bluetooth/a2dpsink/A2dpSinkNativeInterface;

    const-class p2, Landroid/media/AudioManager;

    invoke-virtual {p1, p2}, Landroid/app/Service;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method private synthetic lambda$requestMediaKeyFocus$0(Landroid/media/MediaPlayer;II)Z
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Silent media player error: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "A2dpSinkStreamHandler"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->releaseMediaKeyFocus()V

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final declared-synchronized abandonAudioFocus()V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "A2dpSinkStreamHandler"

    const-string v1, "abandonAudioFocus()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->stopFluorideStreaming()V

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mAudioFocus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public cleanup()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->abandonAudioFocus()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public getFocusState()I
    .locals 0

    iget p0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mAudioFocus:I

    return p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    sget-boolean v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->DBG:Z

    const-string v1, "A2dpSinkStreamHandler"

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " process message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " current audioFocus state =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mAudioFocus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v2, :pswitch_data_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Received unexpected event: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->requestAudioFocusIfNone()V

    goto/16 :goto_1

    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz v0, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New audioFocus =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Previous audio focus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mAudioFocus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput p1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mAudioFocus:I

    const/4 v2, -0x3

    if-eq p1, v2, :cond_5

    const/4 v0, -0x2

    if-eq p1, v0, :cond_4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    if-eq p1, v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->startFluorideStreaming()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->abandonAudioFocus()V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->setFluorideAudioTrackGain(F)V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mA2dpSinkService:Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    invoke-virtual {v2}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-ltz v2, :cond_6

    const/16 v3, 0x64

    if-le v2, v3, :cond_7

    :cond_6
    const-string v2, "Invalid duck percent using default."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x19

    :cond_7
    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting reduce gain on transient loss gain="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-virtual {p0, v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->setFluorideAudioTrackGain(F)V

    :goto_0
    invoke-static {}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->getAvrcpControllerService()Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;

    move-result-object p0

    if-eqz p0, :cond_9

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->onAudioFocusStateChanged(I)V

    goto :goto_1

    :cond_9
    const-string p0, "AVRCP Controller Service not available to send focus events to."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_2
    iput-boolean v3, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mStreamAvailable:Z

    goto :goto_1

    :pswitch_3
    iput-boolean v3, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mStreamAvailable:Z

    goto :goto_1

    :pswitch_4
    iput-boolean v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mStreamAvailable:Z

    invoke-virtual {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->isIotDevice()Z

    move-result p1

    if-nez p1, :cond_a

    invoke-virtual {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->isTvDevice()Z

    move-result p1

    if-nez p1, :cond_a

    invoke-virtual {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->shouldRequestFocus()Z

    move-result p1

    if-eqz p1, :cond_c

    :cond_a
    invoke-virtual {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->requestAudioFocusIfNone()V

    goto :goto_1

    :pswitch_5
    iput-boolean v3, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mStreamAvailable:Z

    goto :goto_1

    :pswitch_6
    invoke-virtual {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->requestAudioFocusIfNone()V

    goto :goto_1

    :pswitch_7
    iput-boolean v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mStreamAvailable:Z

    invoke-virtual {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->isTvDevice()Z

    move-result p1

    if-nez p1, :cond_b

    invoke-virtual {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->shouldRequestFocus()Z

    move-result p1

    if-eqz p1, :cond_c

    :cond_b
    invoke-virtual {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->requestAudioFocusIfNone()V

    :cond_c
    :goto_1
    :pswitch_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final isIotDevice()Z
    .locals 1

    iget-object p0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mA2dpSinkService:Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    invoke-virtual {p0}, Landroid/app/Service;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.type.embedded"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isPlaying()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mStreamAvailable:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mAudioFocus:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, -0x3

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public final isTvDevice()Z
    .locals 1

    iget-object p0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mA2dpSinkService:Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    invoke-virtual {p0}, Landroid/app/Service;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.software.leanback"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final declared-synchronized releaseMediaKeyFocus()V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "A2dpSinkStreamHandler"

    const-string v1, "releaseMediaKeyFocus()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mMediaPlayer:Landroid/media/MediaPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mMediaPlayer:Landroid/media/MediaPlayer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized requestAudioFocus()I
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "A2dpSinkStreamHandler"

    const-string v1, "requestAudioFocus()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    new-instance v2, Landroid/media/AudioFocusRequest$Builder;

    invoke-direct {v2, v1}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    invoke-virtual {v2, v0}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v2, p0}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v0

    iget-object v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v0}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result v0

    if-ne v0, v1, :cond_1

    iput v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mAudioFocus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {p0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    const-string v1, "A2dpSinkStreamHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Audio focus was not granted:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public requestAudioFocus(Z)V
    .locals 1

    const/16 v0, 0x8

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final requestAudioFocusIfNone()V
    .locals 2

    sget-boolean v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "A2dpSinkStreamHandler"

    const-string v1, "requestAudioFocusIfNone()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mAudioFocus:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->requestAudioFocus()I

    :cond_1
    return-void
.end method

.method public final declared-synchronized requestMediaKeyFocus()V
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "A2dpSinkStreamHandler"

    const-string v1, "requestMediaKeyFocus()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_2

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mA2dpSinkService:Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    iget-object v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->generateAudioSessionId()I

    move-result v2

    const/high16 v3, 0x7f0b0000

    invoke-static {v1, v3, v0, v2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;ILandroid/media/AudioAttributes;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    const-string v0, "A2dpSinkStreamHandler"

    const-string v1, "Failed to initialize media player. You may not get media key events"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final setFluorideAudioTrackGain(F)V
    .locals 0

    iget-object p0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mNativeInterface:Lcom/android/bluetooth/a2dpsink/A2dpSinkNativeInterface;

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkNativeInterface;->informAudioTrackGain(F)V

    return-void
.end method

.method public final shouldRequestFocus()Z
    .locals 1

    iget-object p0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mA2dpSinkService:Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/high16 v0, 0x7f020000

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public final startFluorideStreaming()V
    .locals 2

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mNativeInterface:Lcom/android/bluetooth/a2dpsink/A2dpSinkNativeInterface;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkNativeInterface;->informAudioFocusState(I)V

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mNativeInterface:Lcom/android/bluetooth/a2dpsink/A2dpSinkNativeInterface;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkNativeInterface;->informAudioTrackGain(F)V

    invoke-virtual {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->requestMediaKeyFocus()V

    return-void
.end method

.method public final stopFluorideStreaming()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->releaseMediaKeyFocus()V

    iget-object p0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mNativeInterface:Lcom/android/bluetooth/a2dpsink/A2dpSinkNativeInterface;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkNativeInterface;->informAudioFocusState(I)V

    return-void
.end method
