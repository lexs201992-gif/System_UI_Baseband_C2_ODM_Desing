.class public Lcom/android/bluetooth/BluetoothMethodProxy;
.super Ljava/lang/Object;
.source "BluetoothMethodProxy.java"


# static fields
.field public static final INSTANCE_LOCK:Ljava/lang/Object;

.field public static final TAG:Ljava/lang/String; = "BluetoothMethodProxy"

.field public static sInstance:Lcom/android/bluetooth/BluetoothMethodProxy;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/bluetooth/BluetoothMethodProxy;->INSTANCE_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/bluetooth/BluetoothMethodProxy;
    .locals 2

    sget-object v0, Lcom/android/bluetooth/BluetoothMethodProxy;->INSTANCE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/bluetooth/BluetoothMethodProxy;->sInstance:Lcom/android/bluetooth/BluetoothMethodProxy;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/bluetooth/BluetoothMethodProxy;

    invoke-direct {v1}, Lcom/android/bluetooth/BluetoothMethodProxy;-><init>()V

    sput-object v1, Lcom/android/bluetooth/BluetoothMethodProxy;->sInstance:Lcom/android/bluetooth/BluetoothMethodProxy;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/android/bluetooth/BluetoothMethodProxy;->sInstance:Lcom/android/bluetooth/BluetoothMethodProxy;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static setInstanceForTesting(Lcom/android/bluetooth/BluetoothMethodProxy;)V
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-static {}, Lcom/android/bluetooth/Utils;->enforceInstrumentationTestMode()V

    sget-object v0, Lcom/android/bluetooth/BluetoothMethodProxy;->INSTANCE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/bluetooth/BluetoothMethodProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setInstanceForTesting(), set to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p0, Lcom/android/bluetooth/BluetoothMethodProxy;->sInstance:Lcom/android/bluetooth/BluetoothMethodProxy;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public bluetoothAdapterIsEnabled(Landroid/bluetooth/BluetoothAdapter;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p0

    return p0
.end method

.method public contentResolverAcquireUnstableContentProviderClient(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/content/ContentProviderClient;
    .locals 0

    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object p0

    return-object p0
.end method

.method public contentResolverDelete(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p1, p2, p3, p4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public contentResolverInsert(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    invoke-virtual {p1, p2, p3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public contentResolverOpenAssetFileDescriptor(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-virtual {p1, p2, p3}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public contentResolverOpenFileDescriptor(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-virtual {p1, p2, p3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public contentResolverOpenInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public contentResolverOpenOutputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/OutputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p0

    return-object p0
.end method

.method public contentResolverQuery(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 0

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public contentResolverQuery(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    invoke-virtual/range {p1 .. p6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public contentResolverUpdate(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public contextSendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p2    # Landroid/content/Intent;
        .annotation build Landroid/annotation/RequiresPermission;
        .end annotation
    .end param

    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public createAppAdvertiseStats(IILjava/lang/String;Lcom/android/bluetooth/gatt/ContextMap;Lcom/android/bluetooth/gatt/GattService;)Lcom/android/bluetooth/gatt/AppAdvertiseStats;
    .locals 6

    new-instance p0, Lcom/android/bluetooth/gatt/AppAdvertiseStats;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/gatt/AppAdvertiseStats;-><init>(IILjava/lang/String;Lcom/android/bluetooth/gatt/ContextMap;Lcom/android/bluetooth/gatt/GattService;)V

    return-object p0
.end method

.method public getHeader(Lcom/android/obex/HeaderSet;I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Lcom/android/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public handlerSendEmptyMessage(Landroid/os/Handler;I)Z
    .locals 0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-result p0

    return p0
.end method

.method public handlerSendMessageDelayed(Landroid/os/Handler;IJ)Z
    .locals 0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result p0

    return p0
.end method

.method public periodicAdvertisingManagerRegisterSync(Landroid/bluetooth/le/PeriodicAdvertisingManager;Landroid/bluetooth/le/ScanResult;IILandroid/bluetooth/le/PeriodicAdvertisingCallback;Landroid/os/Handler;)V
    .locals 0

    invoke-virtual/range {p1 .. p6}, Landroid/bluetooth/le/PeriodicAdvertisingManager;->registerSync(Landroid/bluetooth/le/ScanResult;IILandroid/bluetooth/le/PeriodicAdvertisingCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public periodicAdvertisingManagerTransferSetInfo(Landroid/bluetooth/le/PeriodicAdvertisingManager;Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/le/PeriodicAdvertisingCallback;)V
    .locals 0

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/bluetooth/le/PeriodicAdvertisingManager;->transferSetInfo(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/le/PeriodicAdvertisingCallback;)V

    return-void
.end method

.method public periodicAdvertisingManagerTransferSync(Landroid/bluetooth/le/PeriodicAdvertisingManager;Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0

    invoke-virtual {p1, p2, p3, p4}, Landroid/bluetooth/le/PeriodicAdvertisingManager;->transferSync(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method public telephonyGetOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    invoke-static {p1, p2}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide p0

    return-wide p0
.end method
