.class public interface abstract Lcom/android/nfc/x/android/se/omapi/ISecureElementService;
.super Ljava/lang/Object;
.source "ISecureElementService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/x/android/se/omapi/ISecureElementService$Stub;
    }
.end annotation


# virtual methods
.method public abstract getReaders()[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isNfcEventAllowed(Ljava/lang/String;[B[Ljava/lang/String;I)[Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
