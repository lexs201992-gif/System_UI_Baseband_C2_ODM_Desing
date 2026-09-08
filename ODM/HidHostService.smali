.class public Lcom/android/bluetooth/hid/HidHostService;
.super Lcom/android/bluetooth/btservice/ProfileService;
.source "HidHostService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/hid/HidHostService$BluetoothHidHostBinder;
    }
.end annotation


# static fields
.field public static final CONN_STATE_CONNECTED:I = 0x0

.field public static final CONN_STATE_CONNECTING:I = 0x1

.field public static final CONN_STATE_DISCONNECTED:I = 0x2

.field public static final CONN_STATE_DISCONNECTING:I = 0x3

.field public static final MESSAGE_CONNECT:I = 0x1

.field public static final MESSAGE_CONNECT_STATE_CHANGED:I = 0x3

.field public static final MESSAGE_DISCONNECT:I = 0x2

.field public static final MESSAGE_GET_IDLE_TIME:I = 0xe

.field public static final MESSAGE_GET_PROTOCOL_MODE:I = 0x4

.field public static final MESSAGE_GET_REPORT:I = 0x8

.field public static final MESSAGE_ON_GET_IDLE_TIME:I = 0xf

.field public static final MESSAGE_ON_GET_PROTOCOL_MODE:I = 0x6

.field public static final MESSAGE_ON_GET_REPORT:I = 0x9

.field public static final MESSAGE_ON_HANDSHAKE:I = 0xd

.field public static final MESSAGE_ON_VIRTUAL_UNPLUG:I = 0xc

.field public static final MESSAGE_SET_IDLE_TIME:I = 0x10

.field public static final MESSAGE_SET_PROTOCOL_MODE:I = 0x7

.field public static final MESSAGE_SET_REPORT:I = 0xa

.field public static final MESSAGE_VIRTUAL_UNPLUG:I = 0x5

.field public static final TAG:Ljava/lang/String; = "BluetoothHidHostService"

.field public static sHidHostService:Lcom/android/bluetooth/hid/HidHostService;


# instance fields
.field public mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

.field public mDatabaseManager:Lcom/android/bluetooth/btservice/storage/DatabaseManager;

.field public final mHandler:Landroid/os/Handler;

.field public mInputDevices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mNativeAvailable:Z

.field public mTargetDevice:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAdapterService(Lcom/android/bluetooth/hid/HidHostService;)Lcom/android/bluetooth/btservice/AdapterService;
    .locals 0

    iget-object p0, p0, Lcom/android/bluetooth/hid/HidHostService;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInputDevices(Lcom/android/bluetooth/hid/HidHostService;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/android/bluetooth/hid/HidHostService;->mInputDevices:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTargetDevice(Lcom/android/bluetooth/hid/HidHostService;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    iget-object p0, p0, Lcom/android/bluetooth/hid/HidHostService;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmTargetDevice(Lcom/android/bluetooth/hid/HidHostService;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/hid/HidHostService;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mbroadcastConnectionState(Lcom/android/bluetooth/hid/HidHostService;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/bluetooth/hid/HidHostService;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mbroadcastHandshake(Lcom/android/bluetooth/hid/HidHostService;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/bluetooth/hid/HidHostService;->broadcastHandshake(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mbroadcastIdleTime(Lcom/android/bluetooth/hid/HidHostService;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/bluetooth/hid/HidHostService;->broadcastIdleTime(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mbroadcastProtocolMode(Lcom/android/bluetooth/hid/HidHostService;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/bluetooth/hid/HidHostService;->broadcastProtocolMode(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mbroadcastReport(Lcom/android/bluetooth/hid/HidHostService;Landroid/bluetooth/BluetoothDevice;[BI)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/bluetooth/hid/HidHostService;->broadcastReport(Landroid/bluetooth/BluetoothDevice;[BI)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mbroadcastVirtualUnplugStatus(Lcom/android/bluetooth/hid/HidHostService;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/bluetooth/hid/HidHostService;->broadcastVirtualUnplugStatus(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mconnectHidNative(Lcom/android/bluetooth/hid/HidHostService;[B)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/hid/HidHostService;->connectHidNative([B)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mdisconnectHidNative(Lcom/android/bluetooth/hid/HidHostService;[BZ)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/hid/HidHostService;->disconnectHidNative([BZ)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetByteAddress(Lcom/android/bluetooth/hid/HidHostService;Landroid/bluetooth/BluetoothDevice;)[B
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hid/HidHostService;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetIdleTimeNative(Lcom/android/bluetooth/hid/HidHostService;[B)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/hid/HidHostService;->getIdleTimeNative([B)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetProtocolModeNative(Lcom/android/bluetooth/hid/HidHostService;[B)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/hid/HidHostService;->getProtocolModeNative([B)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetReportNative(Lcom/android/bluetooth/hid/HidHostService;[BBBI)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/bluetooth/hid/HidHostService;->getReportNative([BBBI)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msetIdleTimeNative(Lcom/android/bluetooth/hid/HidHostService;[BB)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/hid/HidHostService;->setIdleTimeNative([BB)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msetProtocolModeNative(Lcom/android/bluetooth/hid/HidHostService;[BB)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/hid/HidHostService;->setProtocolModeNative([BB)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msetReportNative(Lcom/android/bluetooth/hid/HidHostService;[BBLjava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/hid/HidHostService;->setReportNative([BBLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mvirtualUnPlugNative(Lcom/android/bluetooth/hid/HidHostService;[B)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/hid/HidHostService;->virtualUnPlugNative([B)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smconvertHalState(I)I
    .locals 0

    invoke-static {p0}, Lcom/android/bluetooth/hid/HidHostService;->convertHalState(I)I

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/android/bluetooth/hid/HidHostService;->classInitNative()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/bluetooth/btservice/ProfileService;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/hid/HidHostService;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;

    new-instance v0, Lcom/android/bluetooth/hid/HidHostService$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/hid/HidHostService$1;-><init>(Lcom/android/bluetooth/hid/HidHostService;)V

    iput-object v0, p0, Lcom/android/bluetooth/hid/HidHostService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNative()V
.end method

.method private native connectHidNative([B)Z
.end method

.method public static convertHalState(I)I
    .locals 3

    const/4 v0, 0x2

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    const/4 v1, 0x0

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad hid connection state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BluetoothHidHostService"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    return v0

    :cond_1
    return v1

    :cond_2
    return v0
.end method

.method private native disconnectHidNative([BZ)Z
.end method

.method public static declared-synchronized getHidHostService()Lcom/android/bluetooth/hid/HidHostService;
    .locals 4

    const-class v0, Lcom/android/bluetooth/hid/HidHostService;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/bluetooth/hid/HidHostService;->sHidHostService:Lcom/android/bluetooth/hid/HidHostService;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "BluetoothHidHostService"

    const-string v3, "getHidHostService(): service is null"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v2

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/ProfileService;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "BluetoothHidHostService"

    const-string v3, "getHidHostService(): service is not available "

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v2

    :cond_1
    :try_start_2
    sget-object v1, Lcom/android/bluetooth/hid/HidHostService;->sHidHostService:Lcom/android/bluetooth/hid/HidHostService;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private native getIdleTimeNative([B)Z
.end method

.method private native getProtocolModeNative([B)Z
.end method

.method private native getReportNative([BBBI)Z
.end method

.method private native initializeNative()V
.end method

.method public static isEnabled()Z
    .locals 2

    invoke-static {}, Lcom/android/bluetooth/x/android/sysprop/BluetoothProperties;->isProfileHidHostEnabled()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private native sendDataNative([BLjava/lang/String;)Z
.end method

.method public static declared-synchronized setHidHostService(Lcom/android/bluetooth/hid/HidHostService;)V
    .locals 4

    const-class v0, Lcom/android/bluetooth/hid/HidHostService;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/android/bluetooth/util/LogController;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "BluetoothHidHostService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setHidHostService(): set to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sput-object p0, Lcom/android/bluetooth/hid/HidHostService;->sHidHostService:Lcom/android/bluetooth/hid/HidHostService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private native setIdleTimeNative([BB)Z
.end method

.method private native setProtocolModeNative([BB)Z
.end method

.method private native setReportNative([BBLjava/lang/String;)Z
.end method

.method private native virtualUnPlugNative([B)Z
.end method


# virtual methods
.method public final broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/bluetooth/hid/HidHostService;->mInputDevices:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    const-string v1, "BluetoothHidHostService"

    if-ne v0, p2, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "no state change: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v2, 0x2

    if-ne p2, v2, :cond_2

    sget-object v2, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->HID_HOST:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    invoke-static {v2}, Lcom/android/bluetooth/btservice/MetricsLogger;->logProfileConnectionEvent(Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;)V

    :cond_2
    iget-object v2, p0, Lcom/android/bluetooth/hid/HidHostService;->mInputDevices:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connection state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 p1, 0x4000000

    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string p2, "android.permission.BLUETOOTH_CONNECT"

    invoke-static {}, Lcom/android/bluetooth/Utils;->getTempAllowlistBroadcastOptions()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v1, p1, p2, v0}, Landroid/app/Service;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final broadcastHandshake(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.input.profile.action.HANDSHAKE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "android.bluetooth.BluetoothHidHost.extra.STATUS"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p1, 0x4000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p1, "android.permission.BLUETOOTH_CONNECT"

    invoke-static {}, Lcom/android/bluetooth/Utils;->getTempAllowlistBroadcastOptions()Landroid/os/Bundle;

    move-result-object p2

    invoke-static {p0, v0, p1, p2}, Lcom/android/bluetooth/Utils;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final broadcastIdleTime(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.input.profile.action.IDLE_TIME_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "android.bluetooth.BluetoothHidHost.extra.IDLE_TIME"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.permission.BLUETOOTH_CONNECT"

    invoke-static {}, Lcom/android/bluetooth/Utils;->getTempAllowlistBroadcastOptions()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/android/bluetooth/Utils;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;)V

    sget-boolean p0, Lcom/android/bluetooth/util/LogController;->DBG:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Idle time ("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "): "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BluetoothHidHostService"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final broadcastProtocolMode(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.input.profile.action.PROTOCOL_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "android.bluetooth.BluetoothHidHost.extra.PROTOCOL_MODE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.permission.BLUETOOTH_CONNECT"

    invoke-static {}, Lcom/android/bluetooth/Utils;->getTempAllowlistBroadcastOptions()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/android/bluetooth/Utils;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;)V

    sget-boolean p0, Lcom/android/bluetooth/util/LogController;->DBG:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Protocol Mode ("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "): "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BluetoothHidHostService"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final broadcastReport(Landroid/bluetooth/BluetoothDevice;[BI)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.input.profile.action.REPORT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "android.bluetooth.BluetoothHidHost.extra.REPORT"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string p1, "android.bluetooth.BluetoothHidHost.extra.REPORT_BUFFER_SIZE"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p1, 0x4000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p1, "android.permission.BLUETOOTH_CONNECT"

    invoke-static {}, Lcom/android/bluetooth/Utils;->getTempAllowlistBroadcastOptions()Landroid/os/Bundle;

    move-result-object p2

    invoke-static {p0, v0, p1, p2}, Lcom/android/bluetooth/Utils;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final broadcastVirtualUnplugStatus(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.input.profile.action.VIRTUAL_UNPLUG_STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "android.bluetooth.BluetoothHidHost.extra.VIRTUAL_UNPLUG_STATUS"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p1, 0x4000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p1, "android.permission.BLUETOOTH_CONNECT"

    invoke-static {}, Lcom/android/bluetooth/Utils;->getTempAllowlistBroadcastOptions()Landroid/os/Bundle;

    move-result-object p2

    invoke-static {p0, v0, p1, p2}, Lcom/android/bluetooth/Utils;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public cleanup()V
    .locals 4

    sget-boolean v0, Lcom/android/bluetooth/util/LogController;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothHidHostService"

    const-string v1, "Stopping Bluetooth HidHostService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/bluetooth/hid/HidHostService;->mNativeAvailable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidHostService;->cleanupNative()V

    iput-boolean v1, p0, Lcom/android/bluetooth/hid/HidHostService;->mNativeAvailable:Z

    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidHostService;->mInputDevices:Ljava/util/Map;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/hid/HidHostService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, v2, v1}, Lcom/android/bluetooth/hid/HidHostService;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/android/bluetooth/hid/HidHostService;->mInputDevices:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    :cond_4
    const/4 p0, 0x0

    invoke-static {p0}, Lcom/android/bluetooth/hid/HidHostService;->setHidHostService(Lcom/android/bluetooth/hid/HidHostService;)V

    return-void
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3

    sget-boolean v0, Lcom/android/bluetooth/util/LogController;->DBG:Z

    const-string v1, "BluetoothHidHostService"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hid/HidHostService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Hid Device not disconnected: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hid/HidHostService;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-nez v0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Hid Device CONNECTION_POLICY_FORBIDDEN: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidHostService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/bluetooth/hid/HidHostService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return v1
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    sget-boolean v0, Lcom/android/bluetooth/util/LogController;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disconnect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothHidHostService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidHostService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/bluetooth/hid/HidHostService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public dump(Ljava/lang/StringBuilder;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/bluetooth/btservice/ProfileService;->dump(Ljava/lang/StringBuilder;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTargetDevice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/hid/HidHostService;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const-string v0, "mInputDevices:"

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/hid/HidHostService;->mInputDevices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/bluetooth/hid/HidHostService;->mInputDevices:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B
    .locals 2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->HOGP:Landroid/os/ParcelUuid;

    invoke-static {v0, v1}, Lcom/android/bluetooth/Utils;->arrayContains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/bluetooth/hid/HidHostService;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->getByteIdentityAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object p0

    return-object p0
.end method

.method public getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2

    sget-boolean v0, Lcom/android/bluetooth/util/LogController;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getConnectionPolicy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothHidHostService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/android/bluetooth/hid/HidHostService;->mDatabaseManager:Lcom/android/bluetooth/btservice/storage/DatabaseManager;

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->getProfileConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)I

    move-result p0

    return p0
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2

    sget-boolean v0, Lcom/android/bluetooth/util/LogController;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getConnectionState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothHidHostService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidHostService;->mInputDevices:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iget-object p0, p0, Lcom/android/bluetooth/hid/HidHostService;->mInputDevices:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    sget-boolean v0, Lcom/android/bluetooth/util/LogController;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothHidHostService"

    const-string v1, "getDevicesMatchingConnectionStates()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/bluetooth/hid/HidHostService;->mInputDevices:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/hid/HidHostService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    array-length v4, p1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_1

    aget v6, p1, v5

    if-ne v6, v3, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public getIdleTime(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    sget-boolean v0, Lcom/android/bluetooth/util/LogController;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIdleTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothHidHostService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hid/HidHostService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidHostService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/bluetooth/hid/HidHostService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public getProtocolMode(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    sget-boolean v0, Lcom/android/bluetooth/util/LogController;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getProtocolMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothHidHostService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hid/HidHostService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidHostService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/bluetooth/hid/HidHostService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public getReport(Landroid/bluetooth/BluetoothDevice;BBI)Z
    .locals 2

    sget-boolean v0, Lcom/android/bluetooth/util/LogController;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getReport: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothHidHostService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hid/HidHostService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidHostService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.bluetooth.BluetoothHidHost.extra.REPORT_TYPE"

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    const-string p2, "android.bluetooth.BluetoothHidHost.extra.REPORT_ID"

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    const-string p2, "android.bluetooth.BluetoothHidHost.extra.REPORT_BUFFER_SIZE"

    invoke-virtual {p1, p2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/android/bluetooth/hid/HidHostService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public initBinder()Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;
    .locals 1

    new-instance v0, Lcom/android/bluetooth/hid/HidHostService$BluetoothHidHostBinder;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/hid/HidHostService$BluetoothHidHostBinder;-><init>(Lcom/android/bluetooth/hid/HidHostService;)V

    return-object v0
.end method

.method public okToConnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .annotation build Lcom/android/bluetooth/x/androidx/annotation/VisibleForTesting;
        otherwise = 0x3
    .end annotation

    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "BluetoothHidHostService"

    if-nez v0, :cond_0

    const-string p0, "okToConnect: adapter service is null"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->isQuietModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/bluetooth/hid/HidHostService;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v3, :cond_1

    const-string p0, "okToConnect: return false as quiet mode enabled"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hid/HidHostService;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->getBondState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "okToConnect: return false, bondState="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const/4 p1, -0x1

    if-eq p0, p1, :cond_3

    const/16 p1, 0x64

    if-eq p0, p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "okToConnect: return false, connectionPolicy="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public final onConnectStateChanged([BI)V
    .locals 2

    sget-boolean v0, Lcom/android/bluetooth/util/LogController;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConnectStateChanged: state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothHidHostService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidHostService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput p2, v0, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lcom/android/bluetooth/hid/HidHostService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final onGetIdleTime([BI)V
    .locals 2

    sget-boolean v0, Lcom/android/bluetooth/util/LogController;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothHidHostService"

    const-string v1, "onGetIdleTime()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidHostService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput p2, v0, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lcom/android/bluetooth/hid/HidHostService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final onGetProtocolMode([BI)V
    .locals 2

    sget-boolean v0, Lcom/android/bluetooth/util/LogController;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothHidHostService"

    const-string v1, "onGetProtocolMode()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidHostService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput p2, v0, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lcom/android/bluetooth/hid/HidHostService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final onGetReport([B[BI)V
    .locals 2

    sget-boolean v0, Lcom/android/bluetooth/util/LogController;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothHidHostService"

    const-string v1, "onGetReport()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidHostService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.bluetooth.BluetoothHidHost.extra.REPORT"

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string p2, "android.bluetooth.BluetoothHidHost.extra.REPORT_BUFFER_SIZE"

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/android/bluetooth/hid/HidHostService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final onHandshake([BI)V
    .locals 2

    sget-boolean v0, Lcom/android/bluetooth/util/LogController;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHandshake: status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothHidHostService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidHostService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput p2, v0, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lcom/android/bluetooth/hid/HidHostService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final onVirtualUnplug([BI)V
    .locals 2

    sget-boolean v0, Lcom/android/bluetooth/util/LogController;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVirtualUnplug: status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothHidHostService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidHostService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput p2, v0, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lcom/android/bluetooth/hid/HidHostService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendData(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z
    .locals 2

    sget-boolean v0, Lcom/android/bluetooth/util/LogController;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothHidHostService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hid/HidHostService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hid/HidHostService;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/hid/HidHostService;->sendDataNative([BLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 3

    sget-boolean v0, Lcom/android/bluetooth/util/LogController;->DBG:Z

    const-string v1, "BluetoothHidHostService"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setConnectionPolicy: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidHostService;->mDatabaseManager:Lcom/android/bluetooth/btservice/storage/DatabaseManager;

    const/4 v2, 0x4

    invoke-virtual {v0, p1, v2, p2}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->setProfileConnectionPolicy(Landroid/bluetooth/BluetoothDevice;II)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    sget-boolean v0, Lcom/android/bluetooth/util/LogController;->DBG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Saved connectionPolicy "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/16 v0, 0x64

    if-ne p2, v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hid/HidHostService;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_0

    :cond_3
    if-nez p2, :cond_4

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hid/HidHostService;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    :cond_4
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public setIdleTime(Landroid/bluetooth/BluetoothDevice;B)Z
    .locals 2

    sget-boolean v0, Lcom/android/bluetooth/util/LogController;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIdleTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothHidHostService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hid/HidHostService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidHostService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.bluetooth.BluetoothHidHost.extra.IDLE_TIME"

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/android/bluetooth/hid/HidHostService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public setProtocolMode(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 2

    sget-boolean v0, Lcom/android/bluetooth/util/LogController;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setProtocolMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothHidHostService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hid/HidHostService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidHostService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput p2, v0, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lcom/android/bluetooth/hid/HidHostService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public setReport(Landroid/bluetooth/BluetoothDevice;BLjava/lang/String;)Z
    .locals 2

    sget-boolean v0, Lcom/android/bluetooth/util/LogController;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setReport: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothHidHostService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hid/HidHostService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidHostService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.bluetooth.BluetoothHidHost.extra.REPORT_TYPE"

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    const-string p2, "android.bluetooth.BluetoothHidHost.extra.REPORT"

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/android/bluetooth/hid/HidHostService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public start()Z
    .locals 2

    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getDatabase()Lcom/android/bluetooth/btservice/storage/DatabaseManager;

    move-result-object v0

    const-string v1, "DatabaseManager cannot be null when HidHostService starts"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/bluetooth/hid/HidHostService;->mDatabaseManager:Lcom/android/bluetooth/btservice/storage/DatabaseManager;

    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    const-string v1, "AdapterService cannot be null when HidHostService starts"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/bluetooth/btservice/AdapterService;

    iput-object v0, p0, Lcom/android/bluetooth/hid/HidHostService;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/hid/HidHostService;->mInputDevices:Ljava/util/Map;

    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidHostService;->initializeNative()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/hid/HidHostService;->mNativeAvailable:Z

    invoke-static {p0}, Lcom/android/bluetooth/hid/HidHostService;->setHidHostService(Lcom/android/bluetooth/hid/HidHostService;)V

    return v0
.end method

.method public stop()Z
    .locals 1

    sget-boolean p0, Lcom/android/bluetooth/util/LogController;->DBG:Z

    if-eqz p0, :cond_0

    const-string p0, "BluetoothHidHostService"

    const-string v0, "Stopping Bluetooth HidHostService"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public virtualUnplug(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    sget-boolean v0, Lcom/android/bluetooth/util/LogController;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "virtualUnplug: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothHidHostService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hid/HidHostService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidHostService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/bluetooth/hid/HidHostService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 p0, 0x1

    return p0
.end method
