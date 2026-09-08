.class public Lcom/spreadtrum/ims/vt/VTManagerProxy;
.super Ljava/lang/Object;
.source "VTManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spreadtrum/ims/vt/VTManagerProxy$VTHandler;
    }
.end annotation


# static fields
.field private static final EVENT_CONNECTION_AUDIO_QUALITY_CHANGED:I = 0x194

.field private static final EVENT_CONNECTION_LOCAL_VIDEO_CAPABILITY_CHANGED:I = 0x191

.field private static final EVENT_CONNECTION_REMOTE_VIDEO_CAPABILITY_CHANGED:I = 0x192

.field private static final EVENT_CONNECTION_VIDEO_PROVIDER_CHANGED:I = 0x193

.field private static final EVENT_CONNECTION_VIDEO_STATE_CHANGED:I = 0x190

.field private static final EVENT_HANDOVER_STATE_CHANGED:I = 0x67

.field private static final EVENT_IMS_VIDEO_QOS:I = 0x12f

.field public static final EVENT_ON_SET_CAMERA:I = 0xc8

.field public static final EVENT_ON_SET_DEVICE_ORIENTATION:I = 0xcc

.field public static final EVENT_ON_SET_DISPLAY_SURFACE:I = 0xca

.field public static final EVENT_ON_SET_PAUSE_IMAGE:I = 0xcb

.field public static final EVENT_ON_SET_PREVIEW_SURFACE:I = 0xc9

.field public static final EVENT_ON_VT_DISCONNECT:I = 0x259

.field public static final EVENT_ON_VT_ESTABLISH:I = 0x258

.field private static final EVENT_VIDEO_CALL_CODEC:I = 0x12c

.field private static final EVENT_VIDEO_CALL_FALL_BACK:I = 0x12e

.field private static final TAG:Ljava/lang/String; = "ImsVTManagerProxy"

.field private static mInstance:Lcom/spreadtrum/ims/vt/VTManagerProxy;

.field private static final mLock:Ljava/lang/Object;

.field private static final mObj:Ljava/lang/Object;


# instance fields
.field private mActiveImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

.field private mContext:Landroid/content/Context;

.field private mDisplaySurface:Landroid/view/Surface;

.field public mHandler:Lcom/spreadtrum/ims/vt/VTManagerProxy$VTHandler;

.field private mImsService:Lcom/spreadtrum/ims/ImsService;

.field private mImsVideoQos:I

.field private mPeerHeight:I

.field private mPeerWidth:I

.field public mPreviewHeight:I

.field private mPreviewSurface:Landroid/view/Surface;

.field public mPreviewWidth:I

.field private mRIL:Lcom/spreadtrum/ims/ImsRadioInterface;

.field private mRotation:I

.field private mVideoCallCameraManager:Lcom/spreadtrum/ims/vt/VideoCallCameraManager;

.field private mVideoCallEngine:Lcom/spreadtrum/ims/vt/VideoCallEngine;


# direct methods
.method static bridge synthetic -$$Nest$mhandleDisconnect(Lcom/spreadtrum/ims/vt/VTManagerProxy;Lcom/spreadtrum/ims/ImsCallSessionImpl;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->handleDisconnect(Lcom/spreadtrum/ims/ImsCallSessionImpl;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleImsQosReport(Lcom/spreadtrum/ims/vt/VTManagerProxy;Landroid/os/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->handleImsQosReport(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSetCamera(Lcom/spreadtrum/ims/vt/VTManagerProxy;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->handleSetCamera(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSetDeviceOrientation(Lcom/spreadtrum/ims/vt/VTManagerProxy;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->handleSetDeviceOrientation(Ljava/lang/Integer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSetDisplaySurface(Lcom/spreadtrum/ims/vt/VTManagerProxy;Landroid/view/Surface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->handleSetDisplaySurface(Landroid/view/Surface;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSetPauseImage(Lcom/spreadtrum/ims/vt/VTManagerProxy;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->handleSetPauseImage(Landroid/net/Uri;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSetPreviewSurface(Lcom/spreadtrum/ims/vt/VTManagerProxy;Landroid/view/Surface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->handleSetPreviewSurface(Landroid/view/Surface;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mlog(Lcom/spreadtrum/ims/vt/VTManagerProxy;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->log(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mObj:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/spreadtrum/ims/ImsService;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1e0

    iput v0, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mPeerWidth:I

    const/16 v1, 0x280

    iput v1, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mPeerHeight:I

    iput v0, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mPreviewWidth:I

    iput v1, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mPreviewHeight:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mRotation:I

    iput-object p2, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mImsService:Lcom/spreadtrum/ims/ImsService;

    iput-object p1, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/spreadtrum/ims/vt/VTManagerProxy$VTHandler;

    iget-object v1, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/spreadtrum/ims/vt/VTManagerProxy$VTHandler;-><init>(Lcom/spreadtrum/ims/vt/VTManagerProxy;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mHandler:Lcom/spreadtrum/ims/vt/VTManagerProxy$VTHandler;

    return-void
.end method

.method public static getInstance()Lcom/spreadtrum/ims/vt/VTManagerProxy;
    .locals 2

    sget-object v0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mObj:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mInstance:Lcom/spreadtrum/ims/vt/VTManagerProxy;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleDisconnect(Lcom/spreadtrum/ims/ImsCallSessionImpl;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDisconnect->imsCallSessionImpl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->log(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mActiveImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    if-ne p1, v0, :cond_1

    iget-object v0, p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsServiceCallTracker:Lcom/spreadtrum/ims/ImsServiceCallTracker;

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->getAliveVideoCallSession(Lcom/spreadtrum/ims/ImsCallSessionImpl;)Lcom/spreadtrum/ims/ImsCallSessionImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mActiveImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    const-string v1, "has other active video call, NO disconnected!"

    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->putSurfaceExtra(Landroid/view/Surface;)V

    invoke-virtual {p0}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->onVTConnectionDisconnected()V

    :cond_1
    :goto_0
    return-void
.end method

.method private handleImsQosReport(Landroid/os/AsyncResult;)V
    .locals 3

    if-eqz p1, :cond_2

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    array-length v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_1

    const/4 v1, 0x3

    aget v1, v0, v1

    iput v1, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mImsVideoQos:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleImsQosReport : qos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mImsVideoQos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->log(Ljava/lang/String;)V

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleImsQosReport : result.length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mVideoCallEngine:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mVideoCallEngine:Lcom/spreadtrum/ims/vt/VideoCallEngine;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->log(Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleImsQosReport : ar = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "exception = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p1, :cond_3

    move-object v2, v1

    goto :goto_1

    :cond_3
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ar.result= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->log(Ljava/lang/String;)V

    return-void
.end method

.method private handleSetCamera(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSetCamera->cameraId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mVideoCallCameraManager:Lcom/spreadtrum/ims/vt/VideoCallCameraManager;

    if-nez v0, :cond_0

    const-string v0, "handleSetCamera mVideoCallCameraManager is null!"

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->handleSetCamera(Ljava/lang/String;)V

    return-void
.end method

.method private handleSetDeviceOrientation(Ljava/lang/Integer;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSetDeviceOrientation->rotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  mRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mVideoCallCameraManager:Lcom/spreadtrum/ims/vt/VideoCallCameraManager;

    if-nez v0, :cond_0

    const-string v0, "handleSetDeviceOrientation-->mVideoCallCameraManager is null"

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mRotation:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mRotation:I

    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mVideoCallCameraManager:Lcom/spreadtrum/ims/vt/VideoCallCameraManager;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->onSetDeviceRotation(I)V

    :cond_1
    return-void
.end method

.method private handleSetDisplaySurface(Landroid/view/Surface;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSetDisplaySurface->Surface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->log(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mDisplaySurface:Landroid/view/Surface;

    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mVideoCallEngine:Lcom/spreadtrum/ims/vt/VideoCallEngine;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->setImsRemoteSurface(Landroid/view/Surface;)V

    :cond_0
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mPeerWidth:I

    iget v1, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mPeerHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->setPeerDimensions(II)V

    :cond_1
    return-void
.end method

.method private handleSetPauseImage(Landroid/net/Uri;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSetPauseImage->uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mVideoCallEngine:Lcom/spreadtrum/ims/vt/VideoCallEngine;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->setImsPauseImage(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method private handleSetPreviewSurface(Landroid/view/Surface;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSetPreviewSurface->Surface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->log(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mPreviewSurface:Landroid/view/Surface;

    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mVideoCallEngine:Lcom/spreadtrum/ims/vt/VideoCallEngine;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->setImsLocalSurface(Landroid/view/Surface;)V

    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mVideoCallCameraManager:Lcom/spreadtrum/ims/vt/VideoCallCameraManager;

    if-nez v0, :cond_1

    const-string v0, "handleSetPreviewSurface-->mVideoCallCameraManager is null"

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->log(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->handleSetCameraPreSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public static init(Landroid/content/Context;Lcom/spreadtrum/ims/ImsService;)Lcom/spreadtrum/ims/vt/VTManagerProxy;
    .locals 2

    sget-object v0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mObj:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mInstance:Lcom/spreadtrum/ims/vt/VTManagerProxy;

    if-nez v1, :cond_0

    new-instance v1, Lcom/spreadtrum/ims/vt/VTManagerProxy;

    invoke-direct {v1, p0, p1}, Lcom/spreadtrum/ims/vt/VTManagerProxy;-><init>(Landroid/content/Context;Lcom/spreadtrum/ims/ImsService;)V

    sput-object v1, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mInstance:Lcom/spreadtrum/ims/vt/VTManagerProxy;

    :cond_0
    sget-object v1, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mInstance:Lcom/spreadtrum/ims/vt/VTManagerProxy;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isVideoCall()Z
    .locals 1

    invoke-virtual {p0}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->isImsCallAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mActiveImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mActiveImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsDriverCall;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "ImsVTManagerProxy"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateSessionModificationState()V
    .locals 3

    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mActiveImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    if-nez v0, :cond_0

    const-string v0, "updateSessionModificationState mActiveImsCallSessionImpl is null!"

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    nop

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getImsVideoCallProvider()Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "updateSessionModificationState receiveSessionModifyResponse"

    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->log(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public handleVTConnectionEstablished(Lcom/spreadtrum/ims/ImsCallSessionImpl;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VTConnectionEstablished->imsCallSessionImpl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->isImsCallAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    iget-object v0, v0, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    sget-object v1, Lcom/spreadtrum/ims/ImsDriverCall$State;->INCOMING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    iget-object v0, v0, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    sget-object v1, Lcom/spreadtrum/ims/ImsDriverCall$State;->DIALING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    iget-object v0, v0, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    sget-object v1, Lcom/spreadtrum/ims/ImsDriverCall$State;->ALERTING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    iget-object v0, v0, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    sget-object v1, Lcom/spreadtrum/ims/ImsDriverCall$State;->ACTIVE:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-ne v0, v1, :cond_1

    :cond_0
    iput-object p1, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mActiveImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    :cond_1
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->isImsCallAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleVTConnectionEstablished->Don\'t create VTManager cause : isVideoCallAlive()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->isImsCallAlive()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->log(Ljava/lang/String;)V

    return-void

    :cond_2
    iput-object p1, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mActiveImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    iget-object v0, p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iput-object v0, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mRIL:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v1, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mVideoCallEngine:Lcom/spreadtrum/ims/vt/VideoCallEngine;

    if-nez v1, :cond_4

    invoke-virtual {p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getServiceId()I

    move-result v1

    iget-object v2, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mImsService:Lcom/spreadtrum/ims/ImsService;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Lcom/spreadtrum/ims/ImsService;->getImsConfig(I)Lcom/spreadtrum/ims/ImsConfigImpl;

    move-result-object v2

    if-eqz v2, :cond_3

    new-instance v2, Lcom/spreadtrum/ims/vt/VideoCallEngine;

    iget-object v3, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mImsService:Lcom/spreadtrum/ims/ImsService;

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v4, v5}, Lcom/spreadtrum/ims/ImsService;->getImsConfig(I)Lcom/spreadtrum/ims/ImsConfigImpl;

    move-result-object v4

    invoke-direct {v2, v0, v3, v4}, Lcom/spreadtrum/ims/vt/VideoCallEngine;-><init>(Lcom/spreadtrum/ims/ImsRadioInterface;Landroid/content/Context;Lcom/spreadtrum/ims/ImsConfigImpl;)V

    iput-object v2, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mVideoCallEngine:Lcom/spreadtrum/ims/vt/VideoCallEngine;

    new-instance v2, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;

    iget-object v3, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mVideoCallEngine:Lcom/spreadtrum/ims/vt/VideoCallEngine;

    iget-object v4, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v4, p0}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;-><init>(Lcom/spreadtrum/ims/vt/VideoCallEngine;Landroid/content/Context;Lcom/spreadtrum/ims/vt/VTManagerProxy;)V

    iput-object v2, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mVideoCallCameraManager:Lcom/spreadtrum/ims/vt/VideoCallCameraManager;

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleVTConnectionEstablished mVideoCallEngine and mVideoCallCameraManager have been created mVideoCallEngine: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mVideoCallEngine:Lcom/spreadtrum/ims/vt/VideoCallEngine;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->log(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public hasPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p1, p2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isImsCallAlive()Z
    .locals 1

    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mActiveImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public notifyImsEventListener(II)V
    .locals 2

    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mImsService:Lcom/spreadtrum/ims/ImsService;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/spreadtrum/ims/ImsService;->notifyImsEventListener(IILandroid/telephony/ims/ImsSuppServiceNotification;)V

    return-void
.end method

.method public notifyLocalResoulutionChanged(II)V
    .locals 1

    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mVideoCallCameraManager:Lcom/spreadtrum/ims/vt/VideoCallCameraManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->updatePreviewSurfaceSize(II)V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->setPreviewSize(II)V

    return-void
.end method

.method public onVTConnectionDisconnected()V
    .locals 2

    invoke-virtual {p0}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->isImsCallAlive()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "No active video call!"

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mVideoCallEngine:Lcom/spreadtrum/ims/vt/VideoCallEngine;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->releaseVideocallEngine()V

    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mVideoCallCameraManager:Lcom/spreadtrum/ims/vt/VideoCallCameraManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->releaseVideoCamera()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mVideoCallCameraManager:Lcom/spreadtrum/ims/vt/VideoCallCameraManager;

    iput-object v0, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mVideoCallEngine:Lcom/spreadtrum/ims/vt/VideoCallEngine;

    iput-object v0, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mActiveImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    const/16 v0, 0x1e0

    iput v0, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mPeerWidth:I

    const/16 v1, 0x280

    iput v1, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mPeerHeight:I

    iput v0, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mPreviewWidth:I

    iput v1, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mPreviewHeight:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mRotation:I

    const-string v0, "onVTConnectionDisconnected::"

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->log(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public putSurfaceExtra(Landroid/view/Surface;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "putSurfaceExtra surface = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mActiveImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->putScreenSurfaceExtra(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method public requestDownToAudio()V
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mContext:Landroid/content/Context;

    const-string v2, "carrier_config"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestDownToAudio-> isVideoCall="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->isVideoCall()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->isVideoCall()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mActiveImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v2}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getServiceId()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eqz v1, :cond_1

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1, v3}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v4

    :cond_0
    invoke-static {v4}, Landroid/telephony/CarrierConfigManager;->isConfigForIdentifiedCarrier(Landroid/os/PersistableBundle;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "carrier_downgrade_to_voice_when_rtp_timeout"

    invoke-virtual {v4, v5}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :cond_1
    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mRIL:Lcom/spreadtrum/ims/ImsRadioInterface;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mActiveImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v3}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mRIL:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v4, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mActiveImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v4}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v4, v6}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestVolteCallMediaChange(IILandroid/os/Message;)V

    :cond_2
    return-void
.end method

.method public setIsInScreenShare(Z)V
    .locals 1

    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mActiveImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getImsVideoCallProvider()Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mActiveImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getImsVideoCallProvider()Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->setIsInScreenShare(Z)V

    :cond_0
    return-void
.end method

.method public setPeerDimensions(II)V
    .locals 3

    iput p1, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mPeerWidth:I

    iput p2, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mPeerHeight:I

    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mActiveImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    if-eqz v0, :cond_0

    nop

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getImsVideoCallProvider()Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPeerDimensions->width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->log(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->changePeerDimensions(II)V

    :cond_0
    return-void
.end method

.method public setPreviewSize()V
    .locals 2

    iget v0, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mPreviewWidth:I

    iget v1, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mPreviewHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->setPreviewSize(II)V

    return-void
.end method

.method public setPreviewSize(II)V
    .locals 4

    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mActiveImsCallSessionImpl:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    if-eqz v0, :cond_2

    nop

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getImsVideoCallProvider()Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreviewSize->width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mPreviewWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mPreviewWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPreviewHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mPreviewHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->log(Ljava/lang/String;)V

    iget v1, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mPreviewWidth:I

    if-ne v1, p1, :cond_0

    iget v1, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mPreviewHeight:I

    if-eq v1, p2, :cond_1

    :cond_0
    iput p1, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mPreviewWidth:I

    iput p2, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mPreviewHeight:I

    :cond_1
    new-instance v1, Landroid/telecom/VideoProfile$CameraCapabilities;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, p1, p2, v2, v3}, Landroid/telecom/VideoProfile$CameraCapabilities;-><init>(IIZF)V

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->changeCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;)V

    :cond_2
    return-void
.end method

.method public startARCall()V
    .locals 1

    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mVideoCallEngine:Lcom/spreadtrum/ims/vt/VideoCallEngine;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->setCaptureSurfaceSize()V

    :cond_0
    return-void
.end method

.method public stopARCall()V
    .locals 1

    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy;->mVideoCallCameraManager:Lcom/spreadtrum/ims/vt/VideoCallCameraManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager;->stopARCall()V

    :cond_0
    return-void
.end method
