.class public Lmotorola/core_services/misc/MotoExtendManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmotorola/core_services/misc/MotoExtendManager$OnSamplingDetectionListener;
    }
.end annotation


# static fields
.field public static final GAME_MODE_ABILITY_WIFI_LOW_LATENCY:Ljava/lang/String; = "game_wifi_low_latency"

.field public static final GAME_MODE_DISABLE_HARDWARE_KEYS:Ljava/lang/String; = "disable_hardware_keys"

.field public static final GAME_MODE_DISPLAY:Ljava/lang/String; = "display"

.field public static final GAME_MODE_DISPLAY_ENHANCE_ENABLE:Ljava/lang/String; = "display_enhance_enable"

.field public static final GAME_MODE_FORCE_FREEFORM_LANDSCAPE_PACKAGES:Ljava/lang/String; = "game_mode_force_freeform_landscape_packages"

.field public static final GAME_MODE_FORCE_FREEFORM_PACKAGES:Ljava/lang/String; = "game_mode_force_freeform_packages"

.field public static final GAME_MODE_FORCE_REFRESH_RATE:Ljava/lang/String; = "force_refresh_rate"

.field public static final GAME_MODE_FREEFORM_LAUNCH_BOUNDS:Ljava/lang/String; = "game_mode_freeform_launchbounds"

.field public static final GAME_MODE_FREEFORM_LAUNCH_BOUNDS_LANDSCAPE:Ljava/lang/String; = "game_mode_freeform_launchbounds_landscape"

.field public static final GAME_MODE_GAME_FPS_OBSERVER:Ljava/lang/String; = "game_fps_observer"

.field public static final GAME_MODE_GAME_PACKAGE_NAME:Ljava/lang/String; = "game_package_name"

.field public static final GAME_MODE_GAME_POWER_SAVE_MODE:Ljava/lang/String; = "game_power_save_mode"

.field public static final GAME_MODE_PERFORMANCE_ENHANCE_ENABLE:Ljava/lang/String; = "performance_enhance_enable"

.field public static final GAME_MODE_PERF_MODE_OBSERVER:Ljava/lang/String; = "perf_mode_observer"

.field public static final GAME_MODE_TOUCH_ENHANCE_ENABLE:Ljava/lang/String; = "touch_enhance_enable"

.field public static final GAME_MODE_WIFI_LOW_LATENCY_ENABLE:Ljava/lang/String; = "game_mode_wifi_low_latency_enable"

.field public static final MAXE_ABILITY_TURBO_MODE:Ljava/lang/String; = "maxe_turbo_mode"


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getInstance(Landroid/content/Context;)Lmotorola/core_services/misc/MotoExtendManager;
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public addWaterfallExpandedPackage(Ljava/lang/String;)Z
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public enableButtonTouchEventMap(Ljava/lang/String;)Z
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public forceEnableFreeformMode(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAppOptAbilities()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAppOptState(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getGameModeStateAbilities()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getGameOptState(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getWaterfallExpandedPackages()[Ljava/lang/String;
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isDisplayEnhanceSupported()Z
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isMotoSxfSupported()Z
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isTouchEnhanceSupported()Z
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerGameOptObserver(Ljava/lang/String;ILmotorola/core_services/misc/MotoGameOptObserver;)V
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerWaterfallObserver(Lmotorola/core_services/misc/MotoWaterfallObserver;)V
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeSamplingDetectionListener(Lmotorola/core_services/misc/MotoExtendManager$OnSamplingDetectionListener;)V
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeWaterfallExpandedPackage(Ljava/lang/String;)Z
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setAppOptState(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setGameModeState(ZLandroid/os/Bundle;)V
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setGameOptState(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setPowerOffAlarm(J)Z
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setSamplingDetectionListener(Lmotorola/core_services/misc/MotoExtendManager$OnSamplingDetectionListener;ILandroid/view/SurfaceControl;Landroid/graphics/Rect;)V
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setWaterfallExpandedPackages([Ljava/lang/String;)Z
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public switchInputMethod(Ljava/lang/String;)V
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unRegisterWaterfallObserver(Lmotorola/core_services/misc/MotoWaterfallObserver;)V
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unregisterGameOptObserver(Ljava/lang/String;Lmotorola/core_services/misc/MotoGameOptObserver;)V
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
