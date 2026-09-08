.class public Lcom/android/proxyhandler/ProxyService;
.super Landroid/app/Service;
.source "ProxyService.java"


# static fields
.field private static server:Lcom/android/proxyhandler/ProxyServer;


# direct methods
.method static bridge synthetic -$$Nest$sfgetserver()Lcom/android/proxyhandler/ProxyServer;
    .locals 1

    sget-object v0, Lcom/android/proxyhandler/ProxyService;->server:Lcom/android/proxyhandler/ProxyServer;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    new-instance p1, Lcom/android/proxyhandler/ProxyService$1;

    invoke-direct {p1, p0}, Lcom/android/proxyhandler/ProxyService$1;-><init>(Lcom/android/proxyhandler/ProxyService;)V

    return-object p1
.end method

.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    sget-object p0, Lcom/android/proxyhandler/ProxyService;->server:Lcom/android/proxyhandler/ProxyServer;

    if-nez p0, :cond_0

    new-instance p0, Lcom/android/proxyhandler/ProxyServer;

    invoke-direct {p0}, Lcom/android/proxyhandler/ProxyServer;-><init>()V

    sput-object p0, Lcom/android/proxyhandler/ProxyService;->server:Lcom/android/proxyhandler/ProxyServer;

    invoke-virtual {p0}, Lcom/android/proxyhandler/ProxyServer;->startServer()V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    sget-object p0, Lcom/android/proxyhandler/ProxyService;->server:Lcom/android/proxyhandler/ProxyServer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/proxyhandler/ProxyServer;->stopServer()V

    const/4 p0, 0x0

    sput-object p0, Lcom/android/proxyhandler/ProxyService;->server:Lcom/android/proxyhandler/ProxyServer;

    :cond_0
    return-void
.end method
