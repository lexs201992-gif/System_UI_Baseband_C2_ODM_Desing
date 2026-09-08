.class public Lcom/logmein/rescuesdk/internal/streaming/RemoteDisplayViewPermissionStrategy;
.super Ljava/lang/Object;
.source "RemoteDisplayViewPermissionStrategy.java"

# interfaces
.implements Lcom/logmein/rescuesdk/internal/streaming/RemoteViewPermissionStrategy;


# instance fields
.field private final rcPermissionRequestor:Lcom/logmein/rescuesdk/internal/streaming/RcPermissionRequestor;


# direct methods
.method public constructor <init>(Lcom/logmein/rescuesdk/internal/streaming/RcPermissionRequestor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/logmein/rescuesdk/internal/streaming/RemoteDisplayViewPermissionStrategy;->rcPermissionRequestor:Lcom/logmein/rescuesdk/internal/streaming/RcPermissionRequestor;

    return-void
.end method


# virtual methods
.method public askPermission(Lcom/logmein/rescuesdk/internal/streaming/RcPermissionRequestor$Callback;)V
    .locals 1

    iget-object v0, p0, Lcom/logmein/rescuesdk/internal/streaming/RemoteDisplayViewPermissionStrategy;->rcPermissionRequestor:Lcom/logmein/rescuesdk/internal/streaming/RcPermissionRequestor;

    invoke-interface {v0, p1}, Lcom/logmein/rescuesdk/internal/streaming/RcPermissionRequestor;->askPermissionForView(Lcom/logmein/rescuesdk/internal/streaming/RcPermissionRequestor$Callback;)V

    return-void
.end method
