.class public Lcom/android/bluetooth/apishim/BluetoothCallShimImpl;
.super Lcom/android/bluetooth/apishim/api33/BluetoothCallShimImpl;
.source "BluetoothCallShimImpl.java"


# annotations
.annotation build Lcom/android/bluetooth/x/androidx/annotation/RequiresApi;
    value = 0x22
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/apishim/api33/BluetoothCallShimImpl;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/android/bluetooth/apishim/common/BluetoothCallShim;
    .locals 1
    .annotation build Lcom/android/bluetooth/x/androidx/annotation/RequiresApi;
        value = 0x21
    .end annotation

    invoke-static {}, Lcom/android/bluetooth/x/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/bluetooth/apishim/api33/BluetoothCallShimImpl;->newInstance()Lcom/android/bluetooth/apishim/common/BluetoothCallShim;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/bluetooth/apishim/BluetoothCallShimImpl;

    invoke-direct {v0}, Lcom/android/bluetooth/apishim/BluetoothCallShimImpl;-><init>()V

    return-object v0
.end method


# virtual methods
.method public isSilentRingingRequested(Landroid/os/Bundle;)Z
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lcom/android/bluetooth/x/androidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    const-string p0, "android.telecom.extra.SILENT_RINGING_REQUESTED"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "android.telecom.extra.IS_SUPPRESSED_BY_DO_NOT_DISTURB"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
