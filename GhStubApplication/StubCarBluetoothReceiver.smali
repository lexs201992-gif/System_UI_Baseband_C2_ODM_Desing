.class public Lcom/google/android/apps/auto/carservice/gmscorecompatstub/StubCarBluetoothReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static final a:Lbnz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "CAR.STUB_BT_RCVR"

    invoke-static {v0}, Lbnz;->k(Ljava/lang/String;)Lbnz;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/auto/carservice/gmscorecompatstub/StubCarBluetoothReceiver;->a:Lbnz;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    nop

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18

    move-object/from16 v1, p1

    move-object/from16 v0, p2

    const-string v2, "isInstalledVersionUserDisabled"

    const-string v3, "com/google/android/gms/carsetup/installer/RequiredApps$RequiredAppInfo"

    const-string v4, "RequiredApps.java"

    sget-object v5, Lcom/google/android/apps/auto/carservice/gmscorecompatstub/StubCarBluetoothReceiver;->a:Lbnz;

    invoke-virtual {v5}, Lbny;->h()Lbnj;

    move-result-object v5

    const-string v6, "onReceive"

    const/16 v7, 0x17

    const-string v8, "com/google/android/apps/auto/carservice/gmscorecompatstub/StubCarBluetoothReceiver"

    const-string v9, "StubCarBluetoothReceiver.java"

    invoke-interface {v5, v8, v6, v7, v9}, Lbnx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lbnj;

    move-result-object v5

    check-cast v5, Lbnx;

    const-string v6, "Handling BT broadcast: %s"

    invoke-interface {v5, v6, v0}, Lbnx;->p(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lctn;->c()Z

    move-result v5

    if-eqz v5, :cond_2a

    sget-object v5, Lanl;->a:Lbny;

    const-string v5, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    const-string v6, "onHandleIntent"

    const-string v7, "com/google/android/gms/carsetup/bluetooth/PreSetupLaunchHelper"

    const-string v8, "PreSetupLaunchHelper.java"

    if-nez v5, :cond_0

    sget-object v0, Lanl;->a:Lbny;

    invoke-virtual {v0}, Lbmp;->e()Lbnj;

    move-result-object v0

    const/16 v1, 0x28

    invoke-interface {v0, v7, v6, v1, v8}, Lbnj;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lbnj;

    move-result-object v0

    const-string v1, "PreSetupLaunchHelper: Bluetooth device is null"

    invoke-interface {v0, v1}, Lbnj;->n(Ljava/lang/String;)V

    return-void

    :cond_0
    const-class v9, Landroid/hardware/usb/UsbManager;

    invoke-virtual {v1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/usb/UsbManager;

    invoke-virtual {v9}, Landroid/hardware/usb/UsbManager;->getAccessoryList()[Landroid/hardware/usb/UsbAccessory;

    move-result-object v9

    if-eqz v9, :cond_2

    array-length v9, v9

    if-gtz v9, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lanl;->a:Lbny;

    invoke-virtual {v0}, Lbmp;->e()Lbnj;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-interface {v0, v7, v6, v1, v8}, Lbnj;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lbnj;

    move-result-object v0

    const-string v1, "Suppressing WiFi triggered flow due to likely USB Head Unit connection"

    invoke-interface {v0, v1}, Lbnj;->n(Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    sget-object v9, Lank;->a:Lbny;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string v10, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const-string v11, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    const/4 v12, 0x2

    if-eqz v10, :cond_3

    goto :goto_1

    :cond_3
    nop

    const-string v10, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_29

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string v10, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_29

    :cond_4
    nop

    const-string v9, "android.bluetooth.profile.extra.STATE"

    const/4 v10, -0x1

    invoke-virtual {v0, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v12, :cond_29

    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lctn;->a:Lctn;

    invoke-virtual {v0}, Lctn;->b()Lcto;

    move-result-object v0

    invoke-interface {v0}, Lcto;->d()Z

    move-result v0

    if-eqz v0, :cond_29

    const/16 v0, 0x2c

    invoke-static {v0}, Lbks;->b(C)Lbks;

    move-result-object v0

    invoke-virtual {v0}, Lbks;->a()Lbks;

    move-result-object v0

    sget-object v9, Lctn;->a:Lctn;

    invoke-virtual {v9}, Lctn;->b()Lcto;

    move-result-object v9

    invoke-interface {v9}, Lcto;->c()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lbks;->c(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_5

    sget-object v0, Lbmk;->a:Lbmk;

    goto :goto_3

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_6

    invoke-static {v9}, Lblv;->n(Ljava/lang/Object;)Lblv;

    move-result-object v0

    goto :goto_3

    :cond_6
    new-instance v10, Lblu;

    invoke-direct {v10}, Lblu;-><init>()V

    invoke-virtual {v10, v9}, Lblu;->e(Ljava/lang/Object;)V

    invoke-static {v0}, Let;->i(Ljava/lang/Object;)V

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v10, v9}, Lblu;->e(Ljava/lang/Object;)V

    goto :goto_2

    :cond_7
    invoke-virtual {v10}, Lblu;->d()Lblv;

    move-result-object v0

    :goto_3
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lbkl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Lblv;->e()Lbmn;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_8

    :cond_9
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    if-nez v0, :cond_a

    goto/16 :goto_f

    :cond_a
    sget-object v5, Lank;->a:Lbny;

    invoke-virtual {v5}, Lbny;->h()Lbnj;

    move-result-object v5

    const-string v9, "com/google/android/gms/carsetup/bluetooth/CarBluetoothUtility"

    const-string v10, "hasWirelessUuid"

    const/16 v11, 0x45

    const-string v13, "CarBluetoothUtility.java"

    invoke-interface {v5, v9, v10, v11, v13}, Lbnj;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lbnj;

    move-result-object v5

    const-string v11, "Received bluetooth device uuids %d"

    array-length v14, v0

    invoke-interface {v5, v11, v14}, Lbnj;->o(Ljava/lang/String;I)V

    const/4 v11, 0x0

    :goto_4
    array-length v14, v0

    if-ge v11, v14, :cond_29

    aget-object v14, v0, v11

    if-eqz v14, :cond_28

    invoke-virtual {v14}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v15

    if-eqz v15, :cond_27

    sget-object v15, Laly;->a:Ljava/util/UUID;

    invoke-virtual {v14}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    sget-object v5, Laly;->b:Ljava/util/UUID;

    invoke-virtual {v14}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    goto :goto_5

    :cond_b
    const/4 v5, 0x2

    const/4 v12, 0x0

    goto/16 :goto_e

    :cond_c
    :goto_5
    sget-object v0, Lank;->a:Lbny;

    invoke-virtual {v0}, Lbny;->h()Lbnj;

    move-result-object v0

    const/16 v5, 0x48

    invoke-interface {v0, v9, v10, v5, v13}, Lbnj;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lbnj;

    move-result-object v0

    const-string v5, "Received uuids matching known / chromecast uuid"

    invoke-interface {v0, v5}, Lbnj;->n(Ljava/lang/String;)V

    sget-object v0, Lanj;->a:Lbny;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-static {}, Lctn;->c()Z

    move-result v0

    const-string v9, "com.google.android.projection.gearhead"

    const-string v11, "canShowFlow"

    const-string v13, "com/google/android/gms/carsetup/aapsupportchecker/WifiSupportChecker"

    const-string v14, "WifiSupportChecker.java"

    if-nez v0, :cond_d

    sget-object v0, Lanj;->a:Lbny;

    invoke-virtual {v0}, Lbny;->h()Lbnj;

    move-result-object v0

    const/16 v2, 0x3c

    invoke-interface {v0, v13, v11, v2, v14}, Lbnj;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lbnj;

    move-result-object v0

    const-string v2, "Wireless Download Flow disabled"

    invoke-interface {v0, v2}, Lbnj;->n(Ljava/lang/String;)V

    sget-object v0, Lani;->b:Lani;

    const/4 v6, 0x3

    goto/16 :goto_8

    :cond_d
    sget-object v0, Lctq;->a:Lctq;

    invoke-virtual {v0}, Lctq;->b()Lctr;

    move-result-object v0

    invoke-interface {v0}, Lctr;->a()Z

    move-result v0

    if-nez v0, :cond_e

    sget-object v0, Lanj;->a:Lbny;

    invoke-virtual {v0}, Lbny;->h()Lbnj;

    move-result-object v0

    const/16 v2, 0x41

    invoke-interface {v0, v13, v11, v2, v14}, Lbnj;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lbnj;

    move-result-object v0

    const-string v2, "Phone not an approved wireless device"

    invoke-interface {v0, v2}, Lbnj;->n(Ljava/lang/String;)V

    sget-object v0, Lani;->c:Lani;

    const/4 v6, 0x3

    goto/16 :goto_8

    :cond_e
    sget-object v15, Lanr;->a:Lanq;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_0
    iget-object v12, v15, Lanp;->b:Ljava/lang/String;

    invoke-virtual {v0, v12}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v0

    sget-object v12, Lanp;->a:Lbny;

    invoke-virtual {v12}, Lbny;->h()Lbnj;

    move-result-object v12

    const/16 v10, 0x8d

    invoke-interface {v12, v3, v2, v10, v4}, Lbnj;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lbnj;

    move-result-object v10

    const-string v12, "Package %s: appEnabledSetting=%d"

    iget-object v6, v15, Lanp;->b:Ljava/lang/String;

    invoke-interface {v10, v12, v6, v0}, Lbnj;->s(Ljava/lang/String;Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x3

    if-ne v0, v6, :cond_f

    sget-object v0, Lanj;->a:Lbny;

    invoke-virtual {v0}, Lbny;->h()Lbnj;

    move-result-object v0

    const/16 v2, 0x49

    invoke-interface {v0, v13, v11, v2, v14}, Lbnj;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lbnj;

    move-result-object v0

    const-string v2, "Gearhead is disabled"

    invoke-interface {v0, v2}, Lbnj;->n(Ljava/lang/String;)V

    sget-object v0, Lani;->j:Lani;

    goto/16 :goto_8

    :catch_0
    move-exception v0

    const/4 v6, 0x3

    sget-object v0, Lanp;->a:Lbny;

    invoke-virtual {v0}, Lbny;->h()Lbnj;

    move-result-object v0

    const/16 v10, 0x90

    invoke-interface {v0, v3, v2, v10, v4}, Lbnj;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lbnj;

    move-result-object v0

    iget-object v2, v15, Lanp;->b:Ljava/lang/String;

    const-string v3, "Package %s not found."

    invoke-interface {v0, v3, v2}, Lbnj;->p(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_f
    sget-object v0, Lanr;->a:Lanq;

    invoke-virtual {v0, v1}, Lanp;->a(Landroid/content/Context;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_10

    sget-object v0, Lanj;->a:Lbny;

    invoke-virtual {v0}, Lbny;->h()Lbnj;

    move-result-object v0

    const/16 v2, 0x50

    invoke-interface {v0, v13, v11, v2, v14}, Lbnj;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lbnj;

    move-result-object v0

    const-string v2, "Gearhead is up to date"

    invoke-interface {v0, v2}, Lbnj;->n(Ljava/lang/String;)V

    sget-object v0, Lani;->e:Lani;

    goto/16 :goto_8

    :cond_10
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    int-to-long v2, v0

    sget-object v0, Lctn;->a:Lctn;

    invoke-virtual {v0}, Lctn;->b()Lcto;

    move-result-object v0

    invoke-interface {v0}, Lcto;->a()J

    move-result-wide v16

    cmp-long v0, v2, v16

    if-gez v0, :cond_11

    sget-object v0, Lanj;->a:Lbny;

    invoke-virtual {v0}, Lbmp;->e()Lbnj;

    move-result-object v0

    const/16 v2, 0x56

    invoke-interface {v0, v13, v11, v2, v14}, Lbnj;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lbnj;

    move-result-object v0

    const-string v2, "SDK version below wifi enabled version"

    invoke-interface {v0, v2}, Lbnj;->n(Ljava/lang/String;)V

    sget-object v0, Lani;->d:Lani;

    goto/16 :goto_8

    :cond_11
    nop

    const/16 v0, 0x1000

    :try_start_1
    invoke-virtual {v5, v9, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    const/4 v0, 0x0

    :goto_6
    if-nez v0, :cond_12

    sget-object v2, Lctn;->a:Lctn;

    invoke-virtual {v2}, Lctn;->b()Lcto;

    move-result-object v2

    invoke-interface {v2}, Lcto;->h()Z

    move-result v2

    if-eqz v2, :cond_12

    sget-object v0, Lanj;->a:Lbny;

    invoke-virtual {v0}, Lbmp;->e()Lbnj;

    move-result-object v0

    const/16 v2, 0x5d

    invoke-interface {v0, v13, v11, v2, v14}, Lbnj;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lbnj;

    move-result-object v0

    const-string v2, "Gearhead not installed; update flow only enabled"

    invoke-interface {v0, v2}, Lbnj;->n(Ljava/lang/String;)V

    sget-object v0, Lani;->f:Lani;

    goto/16 :goto_8

    :cond_12
    if-eqz v0, :cond_14

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v5, v0, v9}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_13

    goto :goto_7

    :cond_13
    sget-object v0, Lctn;->a:Lctn;

    invoke-virtual {v0}, Lctn;->b()Lcto;

    move-result-object v0

    invoke-interface {v0}, Lcto;->g()Z

    move-result v0

    if-nez v0, :cond_14

    sget-object v0, Lanj;->a:Lbny;

    invoke-virtual {v0}, Lbmp;->e()Lbnj;

    move-result-object v0

    const/16 v2, 0x66

    invoke-interface {v0, v13, v11, v2, v14}, Lbnj;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lbnj;

    move-result-object v0

    const-string v2, "Location permission denied on Android Auto"

    invoke-interface {v0, v2}, Lbnj;->n(Ljava/lang/String;)V

    sget-object v0, Lani;->g:Lani;

    goto :goto_8

    :cond_14
    :goto_7
    nop

    const-string v0, "location"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    const-string v2, "gps"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    sget-object v0, Lctn;->a:Lctn;

    invoke-virtual {v0}, Lctn;->b()Lcto;

    move-result-object v0

    invoke-interface {v0}, Lcto;->f()Z

    move-result v0

    if-nez v0, :cond_15

    sget-object v0, Lanj;->a:Lbny;

    invoke-virtual {v0}, Lbmp;->e()Lbnj;

    move-result-object v0

    const/16 v2, 0x6c

    invoke-interface {v0, v13, v11, v2, v14}, Lbnj;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lbnj;

    move-result-object v0

    const-string v2, "Location Services disabled"

    invoke-interface {v0, v2}, Lbnj;->n(Ljava/lang/String;)V

    sget-object v0, Lani;->h:Lani;

    goto :goto_8

    :cond_15
    nop

    const-string v0, "power"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Lctn;->a:Lctn;

    invoke-virtual {v0}, Lctn;->b()Lcto;

    move-result-object v0

    invoke-interface {v0}, Lcto;->e()Z

    move-result v0

    if-nez v0, :cond_16

    sget-object v0, Lanj;->a:Lbny;

    invoke-virtual {v0}, Lbmp;->e()Lbnj;

    move-result-object v0

    const/16 v2, 0x71

    invoke-interface {v0, v13, v11, v2, v14}, Lbnj;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lbnj;

    move-result-object v0

    const-string v2, "Device in battery saver mode"

    invoke-interface {v0, v2}, Lbnj;->n(Ljava/lang/String;)V

    sget-object v0, Lani;->i:Lani;

    goto :goto_8

    :cond_16
    sget-object v0, Lanj;->a:Lbny;

    invoke-virtual {v0}, Lbny;->h()Lbnj;

    move-result-object v0

    const/16 v2, 0x75

    invoke-interface {v0, v13, v11, v2, v14}, Lbnj;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lbnj;

    move-result-object v0

    const-string v2, "Can show download flow"

    invoke-interface {v0, v2}, Lbnj;->n(Ljava/lang/String;)V

    sget-object v0, Lani;->a:Lani;

    :goto_8
    sget-object v2, Lani;->a:Lani;

    if-ne v0, v2, :cond_26

    sget-object v0, Lanh;->a:Lbny;

    invoke-static {}, Lcta;->e()Z

    move-result v0

    const/4 v2, 0x5

    if-eqz v0, :cond_17

    invoke-static {}, Lrw;->d()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static/range {p1 .. p1}, Latt;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v6, 0x5

    goto/16 :goto_b

    :cond_17
    sget-object v0, Lanh;->a:Lbny;

    invoke-virtual {v0}, Lbny;->h()Lbnj;

    move-result-object v0

    const-string v3, "com/google/android/gms/carsetup/aapsupportchecker/DeviceLocaleSupportChecker"

    const-string v4, "isSupported"

    const/16 v5, 0x30

    const-string v7, "DeviceLocaleSupportChecker.java"

    invoke-interface {v0, v3, v4, v5, v7}, Lbnj;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lbnj;

    move-result-object v0

    const-string v5, "Country check for %s"

    invoke-static {}, Lcta;->d()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v5, v8}, Lbnj;->p(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcta;->f()Z

    move-result v0

    if-eqz v0, :cond_18

    sget-object v0, Lanh;->a:Lbny;

    invoke-virtual {v0}, Lbny;->h()Lbnj;

    move-result-object v0

    const/16 v2, 0x33

    invoke-interface {v0, v3, v4, v2, v7}, Lbnj;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lbnj;

    move-result-object v0

    const-string v2, "Country not allowed"

    invoke-interface {v0, v2}, Lbnj;->n(Ljava/lang/String;)V

    const/4 v6, 0x2

    goto/16 :goto_b

    :cond_18
    invoke-static {}, Lcta;->c()Lctv;

    move-result-object v0

    iget v3, v0, Lctv;->a:I

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-eqz v3, :cond_1b

    iget-object v0, v0, Lctv;->b:Lctu;

    if-nez v0, :cond_19

    sget-object v0, Lctu;->c:Lctu;

    :cond_19
    iget v3, v0, Lctu;->a:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1a

    iget-object v0, v0, Lctu;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_9

    :cond_1a
    const/4 v0, 0x0

    goto :goto_9

    :cond_1b
    nop

    const-string v3, "phone"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_21

    iget-object v4, v0, Lctv;->d:Lcja;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    iget-object v0, v0, Lctv;->d:Lcja;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lctu;

    iget v3, v0, Lctu;->a:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    iget-object v0, v0, Lctu;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_9

    :cond_1c
    const/4 v0, 0x0

    goto :goto_9

    :cond_1d
    iget-object v0, v0, Lctv;->c:Lctu;

    if-nez v0, :cond_1e

    sget-object v0, Lctu;->c:Lctu;

    :cond_1e
    iget v3, v0, Lctu;->a:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1f

    iget-object v0, v0, Lctu;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_9

    :cond_1f
    const/4 v0, 0x0

    :goto_9
    if-nez v0, :cond_21

    invoke-static {}, Lcth;->c()Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v6, 0x2

    goto :goto_b

    :cond_20
    :try_start_2
    invoke-static/range {p1 .. p1}, Lor;->c(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v6, 0x0

    goto :goto_b

    :catch_2
    move-exception v0

    goto :goto_a

    :catch_3
    move-exception v0

    :goto_a
    const/4 v6, 0x2

    goto :goto_b

    :cond_21
    invoke-static {}, Lcta;->g()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static {}, Lcta;->h()Z

    move-result v0

    if-eqz v0, :cond_23

    const/4 v6, 0x5

    goto :goto_b

    :cond_22
    const/4 v6, 0x0

    :cond_23
    :goto_b
    sget-object v0, Laob;->a:Lbny;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v2, Lctn;->a:Lctn;

    invoke-virtual {v2}, Lctn;->b()Lcto;

    move-result-object v2

    invoke-interface {v2}, Lcto;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v9, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "connectionType is required"

    const/4 v3, 0x1

    invoke-static {v3, v2}, Let;->g(ZLjava/lang/Object;)V

    const-string v2, "aaSupportResult is required"

    invoke-static {v3, v2}, Let;->g(ZLjava/lang/Object;)V

    if-eqz v0, :cond_24

    const/4 v2, 0x1

    goto :goto_c

    :cond_24
    const/4 v2, 0x0

    :goto_c
    nop

    const-string v4, "continueIntent is required"

    invoke-static {v2, v4}, Let;->g(ZLjava/lang/Object;)V

    sget-object v2, Laob;->a:Lbny;

    invoke-virtual {v2}, Lbny;->h()Lbnj;

    move-result-object v2

    const-string v4, "com/google/android/gms/carsetup/setup/PreSetupStarter"

    const-string v5, "start"

    const/16 v7, 0x5b

    const-string v8, "PreSetupStarter.java"

    invoke-interface {v2, v4, v5, v7, v8}, Lbnj;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lbnj;

    move-result-object v2

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v0, :cond_25

    goto :goto_d

    :cond_25
    const/4 v3, 0x0

    :goto_d
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v2, v5, v4, v3, v8}, Lbnj;->A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    sget-object v3, Lamc;->a:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v3, "PreSetup.AA_SUPPORT_RESULT"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "PreSetup.CONTINUE_INTENT"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "connection_type"

    const/4 v5, 0x2

    invoke-virtual {v2, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "PreSetup.SKIP_TO_USB_RESET"

    const/4 v12, 0x0

    invoke-virtual {v2, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v0, 0x10810000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_26
    sget-object v1, Lanl;->a:Lbny;

    invoke-virtual {v1}, Lbny;->h()Lbnj;

    move-result-object v1

    const-string v2, "checkWifiSupportedAndLaunchFlow"

    const/16 v3, 0x4a

    invoke-interface {v1, v7, v2, v3, v8}, Lbnj;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lbnj;

    move-result-object v1

    const-string v2, "WifiSupportChecker returned: %s"

    invoke-interface {v1, v2, v0}, Lbnj;->p(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_27
    const/4 v5, 0x2

    const/4 v12, 0x0

    goto :goto_e

    :cond_28
    const/4 v5, 0x2

    const/4 v12, 0x0

    :goto_e
    add-int/lit8 v11, v11, 0x1

    const/4 v12, 0x2

    goto/16 :goto_4

    :cond_29
    :goto_f
    sget-object v0, Lanl;->a:Lbny;

    invoke-virtual {v0}, Lbny;->h()Lbnj;

    move-result-object v0

    const/16 v1, 0x3b

    invoke-interface {v0, v7, v6, v1, v8}, Lbnj;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lbnj;

    move-result-object v0

    const-string v1, "Not an AA Wifi capable device"

    invoke-interface {v0, v1}, Lbnj;->n(Ljava/lang/String;)V

    return-void

    :cond_2a
    return-void
.end method
