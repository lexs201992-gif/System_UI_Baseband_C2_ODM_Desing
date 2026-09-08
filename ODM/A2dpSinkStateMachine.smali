.class public Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "A2dpSinkStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;,
        Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connecting;,
        Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;,
        Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnecting;
    }
.end annotation


# static fields
.field public static final CLEANUP:I = 0x64

.field public static final CONNECT:I = 0x1

.field public static final CONNECT_TIMEOUT:I = 0x65

.field public static final CONNECT_TIMEOUT_MS:I = 0x2710

.field public static final DBG:Z

.field public static final DISCONNECT:I = 0x2

.field public static final STACK_EVENT:I = 0xc8

.field public static final TAG:Ljava/lang/String; = "A2DPSinkStateMachine"


# instance fields
.field public mAudioConfig:Landroid/bluetooth/BluetoothAudioConfig;

.field public final mConnected:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;

.field public final mConnecting:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connecting;

.field public final mDevice:Landroid/bluetooth/BluetoothDevice;

.field public final mDeviceAddress:[B

.field public final mDisconnected:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;

.field public final mDisconnecting:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnecting;

.field public mMostRecentState:I

.field public final mNativeInterface:Lcom/android/bluetooth/a2dpsink/A2dpSinkNativeInterface;

.field public final mService:Lcom/android/bluetooth/a2dpsink/A2dpSinkService;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "A2DPSinkStateMachine"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;Lcom/android/bluetooth/a2dpsink/A2dpSinkService;Lcom/android/bluetooth/a2dpsink/A2dpSinkNativeInterface;)V
    .locals 2

    const-string v0, "A2DPSinkStateMachine"

    invoke-direct {p0, v0}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mMostRecentState:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mAudioConfig:Landroid/bluetooth/BluetoothAudioConfig;

    iput-object p1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mDeviceAddress:[B

    iput-object p2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mService:Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    iput-object p3, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mNativeInterface:Lcom/android/bluetooth/a2dpsink/A2dpSinkNativeInterface;

    sget-boolean p2, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->DBG:Z

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance p1, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;

    invoke-direct {p1, p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;-><init>(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)V

    iput-object p1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mDisconnected:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;

    new-instance p2, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connecting;

    invoke-direct {p2, p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connecting;-><init>(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)V

    iput-object p2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mConnecting:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connecting;

    new-instance p3, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;

    invoke-direct {p3, p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;-><init>(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)V

    iput-object p3, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mConnected:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;

    new-instance v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnecting;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnecting;-><init>(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)V

    iput-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mDisconnecting:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnecting;

    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;)V

    invoke-virtual {p0, p3}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->removeMessages(I)V

    return-void
.end method


# virtual methods
.method public final connect()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public final disconnect()V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public dump(Ljava/lang/StringBuilder;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDevice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v1}, Lcom/android/bluetooth/Utils;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method

.method public getAudioConfig()Landroid/bluetooth/BluetoothAudioConfig;
    .locals 0

    iget-object p0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mAudioConfig:Landroid/bluetooth/BluetoothAudioConfig;

    return-object p0
.end method

.method public declared-synchronized getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getState()I
    .locals 0

    iget p0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mMostRecentState:I

    return p0
.end method

.method public onConnectionStateChanged(I)V
    .locals 3

    iget v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mMostRecentState:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->A2DP_SINK:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    invoke-static {v0}, Lcom/android/bluetooth/btservice/MetricsLogger;->logProfileConnectionEvent(Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;)V

    :cond_1
    sget-boolean v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->DBG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mMostRecentState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "A2DPSinkStateMachine"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.a2dp-sink.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    iget v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mMostRecentState:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "android.bluetooth.device.extra.DEVICE"

    iget-object v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iput p1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mMostRecentState:I

    iget-object p0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mService:Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    const-string p1, "android.permission.BLUETOOTH_CONNECT"

    invoke-static {}, Lcom/android/bluetooth/Utils;->getTempAllowlistBroadcastOptions()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {p0, v0, p1, v1}, Lcom/android/bluetooth/Utils;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public unhandledMessage(Landroid/os/Message;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unhandledMessage in state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "msg.what="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "A2DPSinkStateMachine"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
