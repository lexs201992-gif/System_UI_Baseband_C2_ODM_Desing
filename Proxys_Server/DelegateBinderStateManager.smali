.class public interface abstract Lcom/android/services/telephony/rcs/DelegateBinderStateManager;
.super Ljava/lang/Object;
.source "DelegateBinderStateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/services/telephony/rcs/DelegateBinderStateManager$Factory;,
        Lcom/android/services/telephony/rcs/DelegateBinderStateManager$StateCallback;
    }
.end annotation


# virtual methods
.method public abstract create(Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;Ljava/util/function/BiConsumer;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;",
            "Ljava/util/function/BiConsumer<",
            "Landroid/telephony/ims/aidl/ISipDelegate;",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/FeatureTagState;",
            ">;>;)Z"
        }
    .end annotation
.end method

.method public abstract destroy(ILjava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract triggerFullNetworkRegistration(ILjava/lang/String;)V
.end method
