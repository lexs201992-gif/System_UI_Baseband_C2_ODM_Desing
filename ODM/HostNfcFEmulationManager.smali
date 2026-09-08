.class public Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;
.super Ljava/lang/Object;
.source "HostNfcFEmulationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/cardemulation/HostNfcFEmulationManager$MessageHandler;
    }
.end annotation


# static fields
.field static final DBG:Z


# instance fields
.field mActiveService:Landroid/os/Messenger;

.field mActiveServiceName:Landroid/content/ComponentName;

.field private mConnection:Landroid/content/ServiceConnection;

.field final mContext:Landroid/content/Context;

.field mEnabledFgServiceName:Landroid/content/ComponentName;

.field mEnabledFgServiceUserId:I

.field final mLock:Ljava/lang/Object;

.field final mMessenger:Landroid/os/Messenger;

.field mPendingPacket:[B

.field mService:Landroid/os/Messenger;

.field mServiceBound:Z

.field mServiceName:Landroid/content/ComponentName;

.field mServiceUserId:I

.field mState:I

.field final mT3tIdentifiersCache:Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;


# direct methods
.method static bridge synthetic -$$Nest$mgetByteDump(Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;[B)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->getByteDump([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/android/nfc/x/android/sysprop/NfcProperties;->debug_enabled()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager$MessageHandler;

    invoke-direct {v1, p0}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager$MessageHandler;-><init>(Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mMessenger:Landroid/os/Messenger;

    new-instance v0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager$1;-><init>(Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mConnection:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mContext:Landroid/content/Context;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mLock:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mEnabledFgServiceName:Landroid/content/ComponentName;

    iput-object p2, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mT3tIdentifiersCache:Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mState:I

    return-void
.end method

.method static bytesToString([BII)Ljava/lang/String;
    .locals 6

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    mul-int/lit8 v1, p2, 0x2

    new-array v1, v1, [C

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_0

    add-int v3, p1, v2

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    mul-int/lit8 v4, v2, 0x2

    ushr-int/lit8 v5, v3, 0x4

    aget-char v5, v0, v5

    aput-char v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v0, v3

    aput-char v3, v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method private getByteDump([B)Ljava/lang/String;
    .locals 3

    new-instance p0, Ljava/lang/StringBuffer;

    const-string v0, ""

    invoke-direct {p0, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p1, " null\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    aget-byte v1, p1, v0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, " %02X"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    rem-int/lit8 v1, v0, 0x8

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    add-int/lit8 v1, v0, 0x1

    array-length v2, p1

    if-ne v1, v2, :cond_2

    :cond_1
    const-string v1, "\n"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method bindServiceIfNeededLocked(ILandroid/content/ComponentName;)Landroid/os/Messenger;
    .locals 5

    sget-boolean v0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->DBG:Z

    const-string v1, "HostNfcFEmulationManager"

    if-eqz v0, :cond_0

    const-string v0, "bindServiceIfNeededLocked"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mServiceBound:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v0, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mServiceUserId:I

    if-ne v0, p1, :cond_1

    const-string p1, "Service already bound."

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mService:Landroid/os/Messenger;

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Binding to service "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->unbindServiceIfNeededLocked()V

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.nfc.cardemulation.action.HOST_NFCF_SERVICE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :try_start_0
    iget-object p2, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mConnection:Landroid/content/ServiceConnection;

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p2, v0, v2, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mServiceBound:Z

    if-nez p2, :cond_2

    const-string p0, "Could not bind service."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iput p1, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mServiceUserId:I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Could not bind service due to security exception."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p1, "Bound HCE-F services: "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mServiceBound:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    service: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method dumpDebug(Landroid/util/proto/ProtoOutputStream;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mServiceBound:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mServiceName:Landroid/content/ComponentName;

    const-wide v0, 0x10b00000001L

    invoke-static {p0, p1, v0, v1}, Landroid/nfc/cardemulation/Utils;->dumpDebugComponentName(Landroid/content/ComponentName;Landroid/util/proto/ProtoOutputStream;J)V

    :cond_0
    return-void
.end method

.method findNfcid2([B)Ljava/lang/String;
    .locals 3

    sget-boolean p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->DBG:Z

    const-string v0, "HostNfcFEmulationManager"

    if-eqz p0, :cond_0

    const-string v1, "findNfcid2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_2

    array-length v1, p1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    const/16 v0, 0x8

    invoke-static {p1, p0, v0}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->bytesToString([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    if-eqz p0, :cond_3

    const-string p0, "Data size too small"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public onEnabledForegroundNfcFServiceChanged(ILandroid/content/ComponentName;)V
    .locals 1

    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mEnabledFgServiceUserId:I

    iput-object p2, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mEnabledFgServiceName:Landroid/content/ComponentName;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->sendDeactivateToActiveServiceLocked(I)V

    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->unbindServiceIfNeededLocked()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onHostEmulationActivated()V
    .locals 1

    sget-boolean p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->DBG:Z

    if-eqz p0, :cond_0

    const-string p0, "HostNfcFEmulationManager"

    const-string v0, "notifyHostEmulationActivated"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onHostEmulationData([B)V
    .locals 7

    sget-boolean v0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->DBG:Z

    if-eqz v0, :cond_0

    const-string v1, "HostNfcFEmulationManager"

    const-string v2, "notifyHostEmulationData"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->findNfcid2([B)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v4, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mT3tIdentifiersCache:Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;

    invoke-virtual {v4, v1}, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->resolveNfcid2(Ljava/lang/String;)Landroid/nfc/cardemulation/NfcFServiceInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    :cond_1
    move-object v1, v3

    :cond_2
    :goto_0
    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mActiveServiceName:Landroid/content/ComponentName;

    if-nez v3, :cond_3

    monitor-exit v2

    return-void

    :cond_3
    iget-object v4, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mEnabledFgServiceName:Landroid/content/ComponentName;

    if-eqz v4, :cond_c

    invoke-virtual {v4, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto/16 :goto_5

    :cond_4
    if-eqz v0, :cond_5

    const-string v0, "HostNfcFEmulationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resolvedServiceName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "mState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mState:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mState:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v0, :cond_8

    if-eq v0, v5, :cond_7

    if-eq v0, v4, :cond_6

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mActiveService:Landroid/os/Messenger;

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->sendDataToServiceLocked(Landroid/os/Messenger;[B)V

    goto :goto_4

    :cond_7
    const-string p0, "HostNfcFEmulationManager"

    const-string p1, "Unexpected packet in STATE_W4_SERVICE"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_8
    if-nez v1, :cond_9

    iget v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mEnabledFgServiceUserId:I

    goto :goto_1

    :cond_9
    invoke-virtual {v1}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    :goto_1
    invoke-virtual {p0, v0, v3}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->bindServiceIfNeededLocked(ILandroid/content/ComponentName;)Landroid/os/Messenger;

    move-result-object v0

    if-eqz v0, :cond_a

    const-string v3, "HostNfcFEmulationManager"

    const-string v6, "Binding to existing service"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v4, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mState:I

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->sendDataToServiceLocked(Landroid/os/Messenger;[B)V

    goto :goto_2

    :cond_a
    const-string v0, "HostNfcFEmulationManager"

    const-string v3, "Waiting for new service."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mPendingPacket:[B

    iput v5, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mState:I

    :goto_2
    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getUid()I

    move-result p0

    goto :goto_3

    :cond_b
    const/4 p0, -0x1

    :goto_3
    const-string p1, "HCEF"

    const/16 v0, 0x89

    invoke-static {v0, v5, p1, p0}, Lcom/android/nfc/NfcStatsLog;->write(IILjava/lang/String;I)V

    :goto_4
    monitor-exit v2

    return-void

    :cond_c
    :goto_5
    monitor-exit v2

    return-void

    :goto_6
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onHostEmulationDeactivated()V
    .locals 3

    sget-boolean v0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "HostNfcFEmulationManager"

    const-string v1, "notifyHostEmulationDeactivated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->sendDeactivateToActiveServiceLocked(I)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mActiveService:Landroid/os/Messenger;

    iput-object v2, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mActiveServiceName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->unbindServiceIfNeededLocked()V

    iput v1, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mState:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onNfcDisabled()V
    .locals 3

    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->sendDeactivateToActiveServiceLocked(I)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mEnabledFgServiceName:Landroid/content/ComponentName;

    iput-object v2, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mActiveService:Landroid/os/Messenger;

    iput-object v2, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mActiveServiceName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->unbindServiceIfNeededLocked()V

    iput v1, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mState:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onUserSwitched()V
    .locals 3

    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->sendDeactivateToActiveServiceLocked(I)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mEnabledFgServiceName:Landroid/content/ComponentName;

    iput-object v2, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mActiveService:Landroid/os/Messenger;

    iput-object v2, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mActiveServiceName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->unbindServiceIfNeededLocked()V

    iput v1, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mState:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method sendDataToServiceLocked(Landroid/os/Messenger;[B)V
    .locals 5

    sget-boolean v0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->DBG:Z

    const-string v1, "HostNfcFEmulationManager"

    if-eqz v0, :cond_0

    const-string v2, "sendDataToServiceLocked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "null"

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object v4, v3

    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mActiveService: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mActiveService:Landroid/os/Messenger;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v2, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mActiveService:Landroid/os/Messenger;

    const/4 v3, 0x0

    if-eq p1, v2, :cond_4

    invoke-virtual {p0, v3}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->sendDeactivateToActiveServiceLocked(I)V

    iput-object p1, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mActiveService:Landroid/os/Messenger;

    iget-object p1, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mServiceName:Landroid/content/ComponentName;

    iput-object p1, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mActiveServiceName:Landroid/content/ComponentName;

    :cond_4
    const/4 p1, 0x0

    invoke-static {p1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "data"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-virtual {p1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mMessenger:Landroid/os/Messenger;

    iput-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    :try_start_0
    const-string v2, "Sending data to service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->getByteDump([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object p0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mActiveService:Landroid/os/Messenger;

    invoke-virtual {p0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p0, "Remote service has died, dropping packet"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method sendDeactivateToActiveServiceLocked(I)V
    .locals 2

    sget-boolean v0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "HostNfcFEmulationManager"

    const-string v1, "sendDeactivateToActiveServiceLocked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mActiveService:Landroid/os/Messenger;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    :try_start_0
    iget-object p0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mActiveService:Landroid/os/Messenger;

    invoke-virtual {p0, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method unbindServiceIfNeededLocked()V
    .locals 3

    sget-boolean v0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->DBG:Z

    const-string v1, "HostNfcFEmulationManager"

    if-eqz v0, :cond_0

    const-string v0, "unbindServiceIfNeededLocked"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mServiceBound:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unbinding from service "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mServiceBound:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mService:Landroid/os/Messenger;

    iput-object v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mServiceName:Landroid/content/ComponentName;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mServiceUserId:I

    :cond_1
    return-void
.end method
