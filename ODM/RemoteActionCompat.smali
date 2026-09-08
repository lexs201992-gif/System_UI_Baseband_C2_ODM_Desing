.class public final Landroidx/core/app/RemoteActionCompat;
.super Ljava/lang/Object;
.source "RemoteActionCompat.java"

# interfaces
.implements Landroidx/versionedparcelable/VersionedParcelable;


# instance fields
.field public mActionIntent:Landroid/app/PendingIntent;
    .annotation build Lcom/android/bluetooth/x/androidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/android/bluetooth/x/androidx/annotation/RestrictTo;
        value = {
            .enum Lcom/android/bluetooth/x/androidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Lcom/android/bluetooth/x/androidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public mContentDescription:Ljava/lang/CharSequence;
    .annotation build Lcom/android/bluetooth/x/androidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/android/bluetooth/x/androidx/annotation/RestrictTo;
        value = {
            .enum Lcom/android/bluetooth/x/androidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Lcom/android/bluetooth/x/androidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public mEnabled:Z
    .annotation build Lcom/android/bluetooth/x/androidx/annotation/RestrictTo;
        value = {
            .enum Lcom/android/bluetooth/x/androidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Lcom/android/bluetooth/x/androidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public mIcon:Landroidx/core/graphics/drawable/IconCompat;
    .annotation build Lcom/android/bluetooth/x/androidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/android/bluetooth/x/androidx/annotation/RestrictTo;
        value = {
            .enum Lcom/android/bluetooth/x/androidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Lcom/android/bluetooth/x/androidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public mShouldShowIcon:Z
    .annotation build Lcom/android/bluetooth/x/androidx/annotation/RestrictTo;
        value = {
            .enum Lcom/android/bluetooth/x/androidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Lcom/android/bluetooth/x/androidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public mTitle:Ljava/lang/CharSequence;
    .annotation build Lcom/android/bluetooth/x/androidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/android/bluetooth/x/androidx/annotation/RestrictTo;
        value = {
            .enum Lcom/android/bluetooth/x/androidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Lcom/android/bluetooth/x/androidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation build Lcom/android/bluetooth/x/androidx/annotation/RestrictTo;
        value = {
            .enum Lcom/android/bluetooth/x/androidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Lcom/android/bluetooth/x/androidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
