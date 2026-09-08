.class public Lcom/android/cameraextensions/CameraExtensionsProxyService;
.super Landroid/app/Service;
.source "CameraExtensionsProxyService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cameraextensions/CameraExtensionsProxyService$CameraExtensionManagerGlobal;,
        Lcom/android/cameraextensions/CameraExtensionsProxyService$CameraExtensionsProxyServiceStub;,
        Lcom/android/cameraextensions/CameraExtensionsProxyService$ExtensionImage;,
        Lcom/android/cameraextensions/CameraExtensionsProxyService$ImageReferenceImpl;,
        Lcom/android/cameraextensions/CameraExtensionsProxyService$RequestUpdateProcessorImplStub;,
        Lcom/android/cameraextensions/CameraExtensionsProxyService$PreviewImageProcessorImplStub;,
        Lcom/android/cameraextensions/CameraExtensionsProxyService$CaptureProcessorImplStub;,
        Lcom/android/cameraextensions/CameraExtensionsProxyService$ProcessResultCallback;,
        Lcom/android/cameraextensions/CameraExtensionsProxyService$ImageCaptureExtenderImplStub;,
        Lcom/android/cameraextensions/CameraExtensionsProxyService$PreviewExtenderImplStub;,
        Lcom/android/cameraextensions/CameraExtensionsProxyService$OutputSurfaceImplStub;,
        Lcom/android/cameraextensions/CameraExtensionsProxyService$OutputSurfaceConfigurationImplStub;,
        Lcom/android/cameraextensions/CameraExtensionsProxyService$SessionProcessorImplStub;,
        Lcom/android/cameraextensions/CameraExtensionsProxyService$RequestProcessorStub;,
        Lcom/android/cameraextensions/CameraExtensionsProxyService$ImageProcessorImplStub;,
        Lcom/android/cameraextensions/CameraExtensionsProxyService$RequestCallbackStub;,
        Lcom/android/cameraextensions/CameraExtensionsProxyService$CaptureCallbackStub;,
        Lcom/android/cameraextensions/CameraExtensionsProxyService$AdvancedExtenderImplStub;
    }
.end annotation


# static fields
.field private static final ADVANCED_API_SUPPORTED:Z

.field private static final ADVANCED_VERSION_PREFIXES:[Ljava/lang/String;

.field private static final ESTIMATED_LATENCY_API_SUPPORTED:Z

.field private static final EXTENSIONS_PRESENT:Z

.field private static final EXTENSIONS_VERSION:Ljava/lang/String;

.field private static final INIT_API_SUPPORTED:Z

.field private static final LATENCY_IMPROVEMENTS_SUPPORTED:Z

.field private static final RESULT_API_SUPPORTED:Z

.field private static final SUPPORTED_VERSION_PREFIXES:[Ljava/lang/String;


# instance fields
.field private mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private mMetadataVendorIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmCameraManager(Lcom/android/cameraextensions/CameraExtensionsProxyService;)Landroid/hardware/camera2/CameraManager;
    .locals 0

    iget-object p0, p0, Lcom/android/cameraextensions/CameraExtensionsProxyService;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMetadataVendorIdMap(Lcom/android/cameraextensions/CameraExtensionsProxyService;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/android/cameraextensions/CameraExtensionsProxyService;->mMetadataVendorIdMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$minitializeParcelable(Lcom/android/cameraextensions/CameraExtensionsProxyService;Landroidx/camera/extensions/impl/CaptureStageImpl;Ljava/lang/String;)Landroid/hardware/camera2/extension/CaptureStageImpl;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/cameraextensions/CameraExtensionsProxyService;->initializeParcelable(Landroidx/camera/extensions/impl/CaptureStageImpl;Ljava/lang/String;)Landroid/hardware/camera2/extension/CaptureStageImpl;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$minitializeParcelable(Lcom/android/cameraextensions/CameraExtensionsProxyService;Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;ILjava/lang/String;)Landroid/hardware/camera2/extension/Request;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/cameraextensions/CameraExtensionsProxyService;->initializeParcelable(Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;ILjava/lang/String;)Landroid/hardware/camera2/extension/Request;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$minitializeParcelableMetadata(Lcom/android/cameraextensions/CameraExtensionsProxyService;Ljava/util/Map;Ljava/lang/String;)Landroid/hardware/camera2/impl/CameraMetadataNative;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/cameraextensions/CameraExtensionsProxyService;->initializeParcelableMetadata(Ljava/util/Map;Ljava/lang/String;)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetADVANCED_API_SUPPORTED()Z
    .locals 1

    sget-boolean v0, Lcom/android/cameraextensions/CameraExtensionsProxyService;->ADVANCED_API_SUPPORTED:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetESTIMATED_LATENCY_API_SUPPORTED()Z
    .locals 1

    sget-boolean v0, Lcom/android/cameraextensions/CameraExtensionsProxyService;->ESTIMATED_LATENCY_API_SUPPORTED:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetINIT_API_SUPPORTED()Z
    .locals 1

    sget-boolean v0, Lcom/android/cameraextensions/CameraExtensionsProxyService;->INIT_API_SUPPORTED:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetLATENCY_IMPROVEMENTS_SUPPORTED()Z
    .locals 1

    sget-boolean v0, Lcom/android/cameraextensions/CameraExtensionsProxyService;->LATENCY_IMPROVEMENTS_SUPPORTED:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetRESULT_API_SUPPORTED()Z
    .locals 1

    sget-boolean v0, Lcom/android/cameraextensions/CameraExtensionsProxyService;->RESULT_API_SUPPORTED:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$smgetCameraOutputConfig(Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;)Landroid/hardware/camera2/extension/CameraOutputConfig;
    .locals 0

    invoke-static {p0}, Lcom/android/cameraextensions/CameraExtensionsProxyService;->getCameraOutputConfig(Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;)Landroid/hardware/camera2/extension/CameraOutputConfig;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smgetCharacteristicsMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    invoke-static {p0}, Lcom/android/cameraextensions/CameraExtensionsProxyService;->getCharacteristicsMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sminitializeParcelable(Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/android/cameraextensions/CameraExtensionsProxyService;->initializeParcelable(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sminitializeParcelable(Ljava/util/Map;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/android/cameraextensions/CameraExtensionsProxyService;->initializeParcelable(Ljava/util/Map;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smregisterClient(Landroid/content/Context;)J
    .locals 2

    invoke-static {p0}, Lcom/android/cameraextensions/CameraExtensionsProxyService;->registerClient(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method static constructor <clinit>()V
    .locals 8

    const-string v0, "1.4"

    const-string v1, "1.2"

    const-string v2, "1.3"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/cameraextensions/CameraExtensionsProxyService;->ADVANCED_VERSION_PREFIXES:[Ljava/lang/String;

    const-string v3, "1.1"

    const-string v4, "1.0"

    filled-new-array {v0, v2, v1, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/cameraextensions/CameraExtensionsProxyService;->SUPPORTED_VERSION_PREFIXES:[Ljava/lang/String;

    invoke-static {}, Lcom/android/cameraextensions/CameraExtensionsProxyService;->checkForExtensions()Z

    move-result v1

    sput-boolean v1, Lcom/android/cameraextensions/CameraExtensionsProxyService;->EXTENSIONS_PRESENT:Z

    if-eqz v1, :cond_0

    new-instance v3, Landroidx/camera/extensions/impl/ExtensionVersionImpl;

    invoke-direct {v3}, Landroidx/camera/extensions/impl/ExtensionVersionImpl;-><init>()V

    const-string v5, "1.4.0"

    invoke-virtual {v3, v5}, Landroidx/camera/extensions/impl/ExtensionVersionImpl;->checkApiVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    sput-object v3, Lcom/android/cameraextensions/CameraExtensionsProxyService;->EXTENSIONS_VERSION:Ljava/lang/String;

    invoke-static {}, Lcom/android/cameraextensions/CameraExtensionsProxyService;->checkForLatencyAPI()Z

    move-result v5

    sput-boolean v5, Lcom/android/cameraextensions/CameraExtensionsProxyService;->ESTIMATED_LATENCY_API_SUPPORTED:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v5

    goto :goto_1

    :cond_1
    move v7, v6

    :goto_1
    sput-boolean v7, Lcom/android/cameraextensions/CameraExtensionsProxyService;->LATENCY_IMPROVEMENTS_SUPPORTED:Z

    invoke-static {}, Lcom/android/cameraextensions/CameraExtensionsProxyService;->checkForAdvancedAPI()Z

    move-result v7

    sput-boolean v7, Lcom/android/cameraextensions/CameraExtensionsProxyService;->ADVANCED_API_SUPPORTED:Z

    if-eqz v1, :cond_2

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    move v4, v5

    goto :goto_2

    :cond_2
    move v4, v6

    :goto_2
    sput-boolean v4, Lcom/android/cameraextensions/CameraExtensionsProxyService;->INIT_API_SUPPORTED:Z

    if-eqz v1, :cond_3

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move v5, v6

    :cond_4
    :goto_3
    sput-boolean v5, Lcom/android/cameraextensions/CameraExtensionsProxyService;->RESULT_API_SUPPORTED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/cameraextensions/CameraExtensionsProxyService;->mMetadataVendorIdMap:Ljava/util/HashMap;

    return-void
.end method

.method private static checkForAdvancedAPI()Z
    .locals 2

    invoke-static {}, Lcom/android/cameraextensions/CameraExtensionsProxyService;->checkForLatencyAPI()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    new-instance v0, Landroidx/camera/extensions/impl/ExtensionVersionImpl;

    invoke-direct {v0}, Landroidx/camera/extensions/impl/ExtensionVersionImpl;-><init>()V

    invoke-virtual {v0}, Landroidx/camera/extensions/impl/ExtensionVersionImpl;->isAdvancedExtenderImplemented()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    return v1
.end method

.method private static checkForExtensions()Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "androidx.camera.extensions.impl.ExtensionVersionImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Landroidx/camera/extensions/impl/ExtensionVersionImpl;

    invoke-direct {v1}, Landroidx/camera/extensions/impl/ExtensionVersionImpl;-><init>()V

    const-string v2, "1.4.0"

    invoke-virtual {v1, v2}, Landroidx/camera/extensions/impl/ExtensionVersionImpl;->checkApiVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/cameraextensions/CameraExtensionsProxyService;->SUPPORTED_VERSION_PREFIXES:[Ljava/lang/String;

    array-length v3, v2

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    return v0
.end method

.method private static checkForLatencyAPI()Z
    .locals 6

    sget-boolean v0, Lcom/android/cameraextensions/CameraExtensionsProxyService;->EXTENSIONS_PRESENT:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/android/cameraextensions/CameraExtensionsProxyService;->ADVANCED_VERSION_PREFIXES:[Ljava/lang/String;

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    sget-object v5, Lcom/android/cameraextensions/CameraExtensionsProxyService;->EXTENSIONS_VERSION:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private static getCameraOutputConfig(Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;)Landroid/hardware/camera2/extension/CameraOutputConfig;
    .locals 3

    new-instance v0, Landroid/hardware/camera2/extension/CameraOutputConfig;

    invoke-direct {v0}, Landroid/hardware/camera2/extension/CameraOutputConfig;-><init>()V

    new-instance v1, Landroid/hardware/camera2/extension/OutputConfigId;

    invoke-direct {v1}, Landroid/hardware/camera2/extension/OutputConfigId;-><init>()V

    iput-object v1, v0, Landroid/hardware/camera2/extension/CameraOutputConfig;->outputId:Landroid/hardware/camera2/extension/OutputConfigId;

    invoke-interface {p0}, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;->getId()I

    move-result v2

    iput v2, v1, Landroid/hardware/camera2/extension/OutputConfigId;->id:I

    invoke-interface {p0}, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;->getPhysicalCameraId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/camera2/extension/CameraOutputConfig;->physicalCameraId:Ljava/lang/String;

    invoke-interface {p0}, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;->getSurfaceGroupId()I

    move-result v1

    iput v1, v0, Landroid/hardware/camera2/extension/CameraOutputConfig;->surfaceGroupId:I

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/hardware/camera2/extension/CameraOutputConfig;->isMultiResolutionOutput:Z

    instance-of v2, p0, Landroidx/camera/extensions/impl/advanced/SurfaceOutputConfigImpl;

    if-eqz v2, :cond_0

    check-cast p0, Landroidx/camera/extensions/impl/advanced/SurfaceOutputConfigImpl;

    iput v1, v0, Landroid/hardware/camera2/extension/CameraOutputConfig;->type:I

    invoke-interface {p0}, Landroidx/camera/extensions/impl/advanced/SurfaceOutputConfigImpl;->getSurface()Landroid/view/Surface;

    move-result-object p0

    iput-object p0, v0, Landroid/hardware/camera2/extension/CameraOutputConfig;->surface:Landroid/view/Surface;

    goto :goto_0

    :cond_0
    instance-of v1, p0, Landroidx/camera/extensions/impl/advanced/ImageReaderOutputConfigImpl;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    check-cast p0, Landroidx/camera/extensions/impl/advanced/ImageReaderOutputConfigImpl;

    iput v2, v0, Landroid/hardware/camera2/extension/CameraOutputConfig;->type:I

    new-instance v1, Landroid/hardware/camera2/extension/Size;

    invoke-direct {v1}, Landroid/hardware/camera2/extension/Size;-><init>()V

    iput-object v1, v0, Landroid/hardware/camera2/extension/CameraOutputConfig;->size:Landroid/hardware/camera2/extension/Size;

    invoke-interface {p0}, Landroidx/camera/extensions/impl/advanced/ImageReaderOutputConfigImpl;->getSize()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/hardware/camera2/extension/Size;->width:I

    iget-object v1, v0, Landroid/hardware/camera2/extension/CameraOutputConfig;->size:Landroid/hardware/camera2/extension/Size;

    invoke-interface {p0}, Landroidx/camera/extensions/impl/advanced/ImageReaderOutputConfigImpl;->getSize()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    iput v2, v1, Landroid/hardware/camera2/extension/Size;->height:I

    invoke-interface {p0}, Landroidx/camera/extensions/impl/advanced/ImageReaderOutputConfigImpl;->getImageFormat()I

    move-result v1

    iput v1, v0, Landroid/hardware/camera2/extension/CameraOutputConfig;->imageFormat:I

    invoke-interface {p0}, Landroidx/camera/extensions/impl/advanced/ImageReaderOutputConfigImpl;->getMaxImages()I

    move-result p0

    iput p0, v0, Landroid/hardware/camera2/extension/CameraOutputConfig;->capacity:I

    goto :goto_0

    :cond_1
    instance-of v1, p0, Landroidx/camera/extensions/impl/advanced/MultiResolutionImageReaderOutputConfigImpl;

    if-eqz v1, :cond_2

    check-cast p0, Landroidx/camera/extensions/impl/advanced/MultiResolutionImageReaderOutputConfigImpl;

    const/4 v1, 0x2

    iput v1, v0, Landroid/hardware/camera2/extension/CameraOutputConfig;->type:I

    invoke-interface {p0}, Landroidx/camera/extensions/impl/advanced/MultiResolutionImageReaderOutputConfigImpl;->getImageFormat()I

    move-result v1

    iput v1, v0, Landroid/hardware/camera2/extension/CameraOutputConfig;->imageFormat:I

    invoke-interface {p0}, Landroidx/camera/extensions/impl/advanced/MultiResolutionImageReaderOutputConfigImpl;->getMaxImages()I

    move-result p0

    iput p0, v0, Landroid/hardware/camera2/extension/CameraOutputConfig;->capacity:I

    iput-boolean v2, v0, Landroid/hardware/camera2/extension/CameraOutputConfig;->isMultiResolutionOutput:Z

    :goto_0
    return-object v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unknown output config type!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getCharacteristicsMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/impl/CameraMetadataNative;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v3, v1}, Landroid/hardware/camera2/CameraCharacteristics;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static initializeAdvancedExtensionImpl(I)Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;
    .locals 3

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    new-instance p0, Landroidx/camera/extensions/impl/advanced/NightAdvancedExtenderImpl;

    invoke-direct {p0}, Landroidx/camera/extensions/impl/advanced/NightAdvancedExtenderImpl;-><init>()V

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown extension: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p0, Landroidx/camera/extensions/impl/advanced/HdrAdvancedExtenderImpl;

    invoke-direct {p0}, Landroidx/camera/extensions/impl/advanced/HdrAdvancedExtenderImpl;-><init>()V

    return-object p0

    :cond_2
    new-instance p0, Landroidx/camera/extensions/impl/advanced/BokehAdvancedExtenderImpl;

    invoke-direct {p0}, Landroidx/camera/extensions/impl/advanced/BokehAdvancedExtenderImpl;-><init>()V

    return-object p0

    :cond_3
    new-instance p0, Landroidx/camera/extensions/impl/advanced/BeautyAdvancedExtenderImpl;

    invoke-direct {p0}, Landroidx/camera/extensions/impl/advanced/BeautyAdvancedExtenderImpl;-><init>()V

    return-object p0

    :cond_4
    new-instance p0, Landroidx/camera/extensions/impl/advanced/AutoAdvancedExtenderImpl;

    invoke-direct {p0}, Landroidx/camera/extensions/impl/advanced/AutoAdvancedExtenderImpl;-><init>()V

    return-object p0
.end method

.method public static initializeExtension(I)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair<",
            "Landroidx/camera/extensions/impl/PreviewExtenderImpl;",
            "Landroidx/camera/extensions/impl/ImageCaptureExtenderImpl;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    new-instance p0, Landroid/util/Pair;

    new-instance v0, Landroidx/camera/extensions/impl/NightPreviewExtenderImpl;

    invoke-direct {v0}, Landroidx/camera/extensions/impl/NightPreviewExtenderImpl;-><init>()V

    new-instance v1, Landroidx/camera/extensions/impl/NightImageCaptureExtenderImpl;

    invoke-direct {v1}, Landroidx/camera/extensions/impl/NightImageCaptureExtenderImpl;-><init>()V

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown extension: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p0, Landroid/util/Pair;

    new-instance v0, Landroidx/camera/extensions/impl/HdrPreviewExtenderImpl;

    invoke-direct {v0}, Landroidx/camera/extensions/impl/HdrPreviewExtenderImpl;-><init>()V

    new-instance v1, Landroidx/camera/extensions/impl/HdrImageCaptureExtenderImpl;

    invoke-direct {v1}, Landroidx/camera/extensions/impl/HdrImageCaptureExtenderImpl;-><init>()V

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_2
    new-instance p0, Landroid/util/Pair;

    new-instance v0, Landroidx/camera/extensions/impl/BokehPreviewExtenderImpl;

    invoke-direct {v0}, Landroidx/camera/extensions/impl/BokehPreviewExtenderImpl;-><init>()V

    new-instance v1, Landroidx/camera/extensions/impl/BokehImageCaptureExtenderImpl;

    invoke-direct {v1}, Landroidx/camera/extensions/impl/BokehImageCaptureExtenderImpl;-><init>()V

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_3
    new-instance p0, Landroid/util/Pair;

    new-instance v0, Landroidx/camera/extensions/impl/BeautyPreviewExtenderImpl;

    invoke-direct {v0}, Landroidx/camera/extensions/impl/BeautyPreviewExtenderImpl;-><init>()V

    new-instance v1, Landroidx/camera/extensions/impl/BeautyImageCaptureExtenderImpl;

    invoke-direct {v1}, Landroidx/camera/extensions/impl/BeautyImageCaptureExtenderImpl;-><init>()V

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_4
    new-instance p0, Landroid/util/Pair;

    new-instance v0, Landroidx/camera/extensions/impl/AutoPreviewExtenderImpl;

    invoke-direct {v0}, Landroidx/camera/extensions/impl/AutoPreviewExtenderImpl;-><init>()V

    new-instance v1, Landroidx/camera/extensions/impl/AutoImageCaptureExtenderImpl;

    invoke-direct {v1}, Landroidx/camera/extensions/impl/AutoImageCaptureExtenderImpl;-><init>()V

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method private initializeParcelable(Landroidx/camera/extensions/impl/CaptureStageImpl;Ljava/lang/String;)Landroid/hardware/camera2/extension/CaptureStageImpl;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Landroid/hardware/camera2/extension/CaptureStageImpl;

    invoke-direct {v0}, Landroid/hardware/camera2/extension/CaptureStageImpl;-><init>()V

    invoke-interface {p1}, Landroidx/camera/extensions/impl/CaptureStageImpl;->getId()I

    move-result v1

    iput v1, v0, Landroid/hardware/camera2/extension/CaptureStageImpl;->id:I

    invoke-interface {p1}, Landroidx/camera/extensions/impl/CaptureStageImpl;->getParameters()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/android/cameraextensions/CameraExtensionsProxyService;->initializeParcelableMetadata(Ljava/util/List;Ljava/lang/String;)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object p0

    iput-object p0, v0, Landroid/hardware/camera2/extension/CaptureStageImpl;->parameters:Landroid/hardware/camera2/impl/CameraMetadataNative;

    return-object v0
.end method

.method private initializeParcelable(Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;ILjava/lang/String;)Landroid/hardware/camera2/extension/Request;
    .locals 4

    new-instance v0, Landroid/hardware/camera2/extension/Request;

    invoke-direct {v0}, Landroid/hardware/camera2/extension/Request;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroid/hardware/camera2/extension/Request;->targetOutputConfigIds:Ljava/util/List;

    invoke-interface {p1}, Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;->getTargetOutputConfigIds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-instance v3, Landroid/hardware/camera2/extension/OutputConfigId;

    invoke-direct {v3}, Landroid/hardware/camera2/extension/OutputConfigId;-><init>()V

    iput v2, v3, Landroid/hardware/camera2/extension/OutputConfigId;->id:I

    iget-object v2, v0, Landroid/hardware/camera2/extension/Request;->targetOutputConfigIds:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;->getTemplateId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/hardware/camera2/extension/Request;->templateId:I

    invoke-interface {p1}, Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;->getParameters()Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/android/cameraextensions/CameraExtensionsProxyService;->initializeParcelableMetadata(Ljava/util/Map;Ljava/lang/String;)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object p0

    iput-object p0, v0, Landroid/hardware/camera2/extension/Request;->parameters:Landroid/hardware/camera2/impl/CameraMetadataNative;

    iput p2, v0, Landroid/hardware/camera2/extension/Request;->requestId:I

    return-object v0
.end method

.method private static initializeParcelable(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "[",
            "Landroid/util/Size;",
            ">;>;)",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/extension/SizeList;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    new-instance v2, Landroid/hardware/camera2/extension/SizeList;

    invoke-direct {v2}, Landroid/hardware/camera2/extension/SizeList;-><init>()V

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Landroid/hardware/camera2/extension/SizeList;->format:I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroid/hardware/camera2/extension/SizeList;->sizes:Ljava/util/List;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [Landroid/util/Size;

    array-length v3, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    aget-object v5, v1, v4

    new-instance v6, Landroid/hardware/camera2/extension/Size;

    invoke-direct {v6}, Landroid/hardware/camera2/extension/Size;-><init>()V

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v7

    iput v7, v6, Landroid/hardware/camera2/extension/Size;->width:I

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    iput v5, v6, Landroid/hardware/camera2/extension/Size;->height:I

    iget-object v5, v2, Landroid/hardware/camera2/extension/SizeList;->sizes:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, v2, Landroid/hardware/camera2/extension/SizeList;->sizes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private static initializeParcelable(Ljava/util/Map;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;>;)",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/extension/SizeList;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    new-instance v2, Landroid/hardware/camera2/extension/SizeList;

    invoke-direct {v2}, Landroid/hardware/camera2/extension/SizeList;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Landroid/hardware/camera2/extension/SizeList;->format:I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroid/hardware/camera2/extension/SizeList;->sizes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Size;

    new-instance v4, Landroid/hardware/camera2/extension/Size;

    invoke-direct {v4}, Landroid/hardware/camera2/extension/Size;-><init>()V

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v5

    iput v5, v4, Landroid/hardware/camera2/extension/Size;->width:I

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    iput v3, v4, Landroid/hardware/camera2/extension/Size;->height:I

    iget-object v3, v2, Landroid/hardware/camera2/extension/SizeList;->sizes:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private initializeParcelableMetadata(Ljava/util/List;Ljava/lang/String;)Landroid/hardware/camera2/impl/CameraMetadataNative;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/hardware/camera2/CaptureRequest$Key;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Landroid/hardware/camera2/impl/CameraMetadataNative;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    iget-object v1, p0, Lcom/android/cameraextensions/CameraExtensionsProxyService;->mMetadataVendorIdMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/cameraextensions/CameraExtensionsProxyService;->mMetadataVendorIdMap:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setVendorId(J)V

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, p2, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private initializeParcelableMetadata(Ljava/util/Map;Ljava/lang/String;)Landroid/hardware/camera2/impl/CameraMetadataNative;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/hardware/camera2/impl/CameraMetadataNative;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    iget-object v1, p0, Lcom/android/cameraextensions/CameraExtensionsProxyService;->mMetadataVendorIdMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/cameraextensions/CameraExtensionsProxyService;->mMetadataVendorIdMap:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setVendorId(J)V

    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static initializeSession(Landroid/hardware/camera2/extension/IInitializeSessionCallback;)Z
    .locals 1

    sget-boolean v0, Lcom/android/cameraextensions/CameraExtensionsProxyService;->EXTENSIONS_PRESENT:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/android/cameraextensions/CameraExtensionsProxyService$CameraExtensionManagerGlobal;->get()Lcom/android/cameraextensions/CameraExtensionsProxyService$CameraExtensionManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/cameraextensions/CameraExtensionsProxyService$CameraExtensionManagerGlobal;->initializeSession(Landroid/hardware/camera2/extension/IInitializeSessionCallback;)Z

    move-result p0

    return p0
.end method

.method private static registerClient(Landroid/content/Context;)J
    .locals 2

    sget-boolean v0, Lcom/android/cameraextensions/CameraExtensionsProxyService;->EXTENSIONS_PRESENT:Z

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    invoke-static {}, Lcom/android/cameraextensions/CameraExtensionsProxyService$CameraExtensionManagerGlobal;->get()Lcom/android/cameraextensions/CameraExtensionsProxyService$CameraExtensionManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/cameraextensions/CameraExtensionsProxyService$CameraExtensionManagerGlobal;->registerClient(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static releaseSession()V
    .locals 1

    sget-boolean v0, Lcom/android/cameraextensions/CameraExtensionsProxyService;->EXTENSIONS_PRESENT:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/cameraextensions/CameraExtensionsProxyService$CameraExtensionManagerGlobal;->get()Lcom/android/cameraextensions/CameraExtensionsProxyService$CameraExtensionManagerGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cameraextensions/CameraExtensionsProxyService$CameraExtensionManagerGlobal;->releaseSession()V

    return-void
.end method

.method public static unregisterClient(J)V
    .locals 1

    sget-boolean v0, Lcom/android/cameraextensions/CameraExtensionsProxyService;->EXTENSIONS_PRESENT:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/cameraextensions/CameraExtensionsProxyService$CameraExtensionManagerGlobal;->get()Lcom/android/cameraextensions/CameraExtensionsProxyService$CameraExtensionManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/cameraextensions/CameraExtensionsProxyService$CameraExtensionManagerGlobal;->unregisterClient(J)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    new-instance p1, Lcom/android/cameraextensions/CameraExtensionsProxyService$CameraExtensionsProxyServiceStub;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/cameraextensions/CameraExtensionsProxyService$CameraExtensionsProxyServiceStub;-><init>(Lcom/android/cameraextensions/CameraExtensionsProxyService;Lcom/android/cameraextensions/CameraExtensionsProxyService$CameraExtensionsProxyServiceStub-IA;)V

    return-object p1
.end method

.method public onCreate()V
    .locals 9

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    :try_start_0
    const-class v0, Landroid/hardware/camera2/CameraManager;

    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    iput-object v0, p0, Lcom/android/cameraextensions/CameraExtensionsProxyService;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdListNoLazy()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    iget-object v5, p0, Lcom/android/cameraextensions/CameraExtensionsProxyService;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v5, v4}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v5

    const-class v6, Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v5}, Landroid/hardware/camera2/CameraCharacteristics;->getNativeMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getAllVendorKeys(Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/cameraextensions/CameraExtensionsProxyService;->mMetadataVendorIdMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v5}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getVendorId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    const-string p0, "CameraExtensionsProxyService"

    const-string v0, "Failed to query camera characteristics!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method
