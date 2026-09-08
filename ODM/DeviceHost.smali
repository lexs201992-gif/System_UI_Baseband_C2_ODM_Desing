.class public interface abstract Lcom/android/nfc/DeviceHost;
.super Ljava/lang/Object;
.source "DeviceHost.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;,
        Lcom/android/nfc/DeviceHost$LlcpServerSocket;,
        Lcom/android/nfc/DeviceHost$LlcpSocket;,
        Lcom/android/nfc/DeviceHost$NfcDepEndpoint;,
        Lcom/android/nfc/DeviceHost$TagDisconnectedCallback;,
        Lcom/android/nfc/DeviceHost$TagEndpoint;,
        Lcom/android/nfc/DeviceHost$DeviceHostListener;
    }
.end annotation


# virtual methods
.method public abstract canMakeReadOnly(I)Z
.end method

.method public abstract checkFirmware()Z
.end method

.method public abstract clearT3tIdentifiersCache()V
.end method

.method public abstract commitRouting()Z
.end method

.method public abstract deinitialize()Z
.end method

.method public abstract deregisterT3tIdentifier([B)V
.end method

.method public abstract disableDiscovery()V
.end method

.method public abstract disableDtaMode()V
.end method

.method public abstract doAbort(Ljava/lang/String;)V
.end method

.method public abstract doGetListenTechMask()I
.end method

.method public abstract doGetSecureElementList()[I
.end method

.method public abstract doRFoptionUpdate([B)Z
.end method

.method public abstract doSetFactoryTestMode(B)[B
.end method

.method public abstract doSetFirmwareDebugLevel(IZ)V
.end method

.method public abstract doSetListenTechMask(I)V
.end method

.method public abstract doSetScreenState(I)V
.end method

.method public abstract doSetWaitNfcEeDiscovery(Z)V
.end method

.method public abstract dump(Ljava/io/FileDescriptor;)V
.end method

.method public abstract enableDiscovery(Lcom/android/nfc/NfcDiscoveryParameters;Z)V
.end method

.method public abstract enableDtaMode()V
.end method

.method public abstract factoryReset()V
.end method

.method public abstract getAidTableSize()I
.end method

.method public abstract getDefaultRoute()I
.end method

.method public abstract getExtendedLengthApdusSupported()Z
.end method

.method public abstract getLfT3tMax()I
.end method

.method public abstract getMaxRoutingTableSize()I
.end method

.method public abstract getMaxTransceiveLength(I)I
.end method

.method public abstract getNciVersion()I
.end method

.method public abstract getRoutingTable()[B
.end method

.method public abstract getSimDetection()Z
.end method

.method public abstract getTimeout(I)I
.end method

.method public abstract initialize()Z
.end method

.method public abstract registerT3tIdentifier([B)V
.end method

.method public abstract resetTimeouts()V
.end method

.method public abstract routeAid([BIII)Z
.end method

.method public abstract sendRawFrame([B)Z
.end method

.method public abstract setDefaultRoute(IZ)Z
.end method

.method public abstract setNfcSecure(Z)Z
.end method

.method public abstract setNfceePowerAndLinkCtrl(Z)V
.end method

.method public abstract setPreferredSimSlot(I)V
.end method

.method public abstract setTimeout(II)Z
.end method

.method public abstract shutdown(Z)V
.end method

.method public abstract startStopPolling(Z)V
.end method

.method public abstract unrouteAid([B)Z
.end method
