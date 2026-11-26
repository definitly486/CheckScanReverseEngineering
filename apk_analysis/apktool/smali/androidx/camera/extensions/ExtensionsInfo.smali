.class final Landroidx/camera/extensions/ExtensionsInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EMPTY_VENDOR_EXTENDER:Landroidx/camera/extensions/internal/VendorExtender;

.field private static final EXTENDED_CAMERA_CONFIG_PROVIDER_ID_PREFIX:Ljava/lang/String; = ":camera:camera-extensions-"


# instance fields
.field private final mCamera2ExtensionsInfo:Landroidx/camera/extensions/internal/Camera2ExtensionsInfo;

.field private final mCameraProvider:Landroidx/camera/core/CameraProvider;

.field private mVendorExtenderFactory:Landroidx/camera/extensions/VendorExtenderFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/extensions/ExtensionsInfo$1;

    invoke-direct {v0}, Landroidx/camera/extensions/ExtensionsInfo$1;-><init>()V

    sput-object v0, Landroidx/camera/extensions/ExtensionsInfo;->EMPTY_VENDOR_EXTENDER:Landroidx/camera/extensions/internal/VendorExtender;

    return-void
.end method

.method public constructor <init>(Landroidx/camera/core/CameraProvider;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/extensions/ExtensionsInfo;->mCameraProvider:Landroidx/camera/core/CameraProvider;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1f

    if-lt p1, v0, :cond_0

    new-instance p1, Landroidx/camera/extensions/internal/Camera2ExtensionsInfo;

    const-class v0, Landroid/hardware/camera2/CameraManager;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/camera2/CameraManager;

    invoke-direct {p1, p2}, Landroidx/camera/extensions/internal/Camera2ExtensionsInfo;-><init>(Landroid/hardware/camera2/CameraManager;)V

    iput-object p1, p0, Landroidx/camera/extensions/ExtensionsInfo;->mCamera2ExtensionsInfo:Landroidx/camera/extensions/internal/Camera2ExtensionsInfo;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/camera/extensions/ExtensionsInfo;->mCamera2ExtensionsInfo:Landroidx/camera/extensions/internal/Camera2ExtensionsInfo;

    :goto_0
    new-instance p1, Landroidx/camera/extensions/a;

    invoke-direct {p1, p0}, Landroidx/camera/extensions/a;-><init>(Landroidx/camera/extensions/ExtensionsInfo;)V

    iput-object p1, p0, Landroidx/camera/extensions/ExtensionsInfo;->mVendorExtenderFactory:Landroidx/camera/extensions/VendorExtenderFactory;

    return-void
.end method

.method public static synthetic a(Landroidx/camera/extensions/ExtensionsInfo;ILandroidx/camera/core/impl/Identifier;Landroidx/camera/core/CameraInfo;Landroid/content/Context;)Landroidx/camera/core/impl/CameraConfig;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/camera/extensions/ExtensionsInfo;->lambda$injectExtensionCameraConfig$0(ILandroidx/camera/core/impl/Identifier;Landroidx/camera/core/CameraInfo;Landroid/content/Context;)Landroidx/camera/core/impl/CameraConfig;

    move-result-object p0

    return-object p0
.end method

.method public static getExtendedCameraConfigProviderId(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const-string p0, ":camera:camera-extensions-EXTENSION_MODE_AUTO"

    return-object p0

    :cond_0
    const-string p0, "Invalid extension mode!"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    const-string p0, ":camera:camera-extensions-EXTENSION_MODE_FACE_RETOUCH"

    return-object p0

    :cond_2
    const-string p0, ":camera:camera-extensions-EXTENSION_MODE_NIGHT"

    return-object p0

    :cond_3
    const-string p0, ":camera:camera-extensions-EXTENSION_MODE_HDR"

    return-object p0

    :cond_4
    const-string p0, ":camera:camera-extensions-EXTENSION_MODE_BOKEH"

    return-object p0

    :cond_5
    const-string p0, ":camera:camera-extensions-EXTENSION_MODE_NONE"

    return-object p0
.end method

.method private synthetic lambda$injectExtensionCameraConfig$0(ILandroidx/camera/core/impl/Identifier;Landroidx/camera/core/CameraInfo;Landroid/content/Context;)Landroidx/camera/core/impl/CameraConfig;
    .locals 1

    iget-object p0, p0, Landroidx/camera/extensions/ExtensionsInfo;->mVendorExtenderFactory:Landroidx/camera/extensions/VendorExtenderFactory;

    invoke-interface {p0, p1}, Landroidx/camera/extensions/VendorExtenderFactory;->createVendorExtender(I)Landroidx/camera/extensions/internal/VendorExtender;

    move-result-object p0

    invoke-interface {p0, p3}, Landroidx/camera/extensions/internal/VendorExtender;->init(Landroidx/camera/core/CameraInfo;)V

    new-instance p3, Landroidx/camera/extensions/internal/ExtensionsUseCaseConfigFactory;

    invoke-direct {p3, p0}, Landroidx/camera/extensions/internal/ExtensionsUseCaseConfigFactory;-><init>(Landroidx/camera/extensions/internal/VendorExtender;)V

    new-instance v0, Landroidx/camera/extensions/ExtensionsConfig$Builder;

    invoke-direct {v0}, Landroidx/camera/extensions/ExtensionsConfig$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroidx/camera/extensions/ExtensionsConfig$Builder;->setExtensionMode(I)Landroidx/camera/extensions/ExtensionsConfig$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroidx/camera/extensions/ExtensionsConfig$Builder;->setUseCaseConfigFactory(Landroidx/camera/core/impl/UseCaseConfigFactory;)Landroidx/camera/extensions/ExtensionsConfig$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/camera/extensions/ExtensionsConfig$Builder;->setCompatibilityId(Landroidx/camera/core/impl/Identifier;)Landroidx/camera/extensions/ExtensionsConfig$Builder;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/camera/extensions/ExtensionsConfig$Builder;->setZslDisabled(Z)Landroidx/camera/extensions/ExtensionsConfig$Builder;

    move-result-object p1

    invoke-interface {p0}, Landroidx/camera/extensions/internal/VendorExtender;->isPostviewAvailable()Z

    move-result p3

    invoke-virtual {p1, p3}, Landroidx/camera/extensions/ExtensionsConfig$Builder;->setPostviewSupported(Z)Landroidx/camera/extensions/ExtensionsConfig$Builder;

    move-result-object p1

    invoke-interface {p0}, Landroidx/camera/extensions/internal/VendorExtender;->isCaptureProcessProgressAvailable()Z

    move-result p3

    invoke-virtual {p1, p3}, Landroidx/camera/extensions/ExtensionsConfig$Builder;->setCaptureProcessProgressSupported(Z)Landroidx/camera/extensions/ExtensionsConfig$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/camera/extensions/ExtensionsConfig$Builder;->setUseCaseCombinationRequiredRule(I)Landroidx/camera/extensions/ExtensionsConfig$Builder;

    move-result-object p1

    new-instance p2, Landroidx/camera/extensions/internal/compat/workaround/PostviewFormatValidator;

    invoke-direct {p2}, Landroidx/camera/extensions/internal/compat/workaround/PostviewFormatValidator;-><init>()V

    invoke-virtual {p2}, Landroidx/camera/extensions/internal/compat/workaround/PostviewFormatValidator;->getPostviewFormatSelector()Landroidx/camera/core/impl/CameraConfig$PostviewFormatSelector;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/camera/extensions/ExtensionsConfig$Builder;->setPostviewFormatSelector(Landroidx/camera/core/impl/CameraConfig$PostviewFormatSelector;)Landroidx/camera/extensions/ExtensionsConfig$Builder;

    invoke-interface {p0, p4}, Landroidx/camera/extensions/internal/VendorExtender;->createSessionProcessor(Landroid/content/Context;)Landroidx/camera/core/impl/SessionProcessor;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1, p0}, Landroidx/camera/extensions/ExtensionsConfig$Builder;->setSessionProcessor(Landroidx/camera/core/impl/SessionProcessor;)Landroidx/camera/extensions/ExtensionsConfig$Builder;

    :cond_0
    invoke-virtual {p1}, Landroidx/camera/extensions/ExtensionsConfig$Builder;->build()Landroidx/camera/extensions/ExtensionsConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getCameraFilter(I)Landroidx/camera/core/CameraFilter;
    .locals 1

    invoke-static {p1}, Landroidx/camera/extensions/ExtensionsInfo;->getExtendedCameraConfigProviderId(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Landroidx/camera/extensions/ExtensionsInfo;->mVendorExtenderFactory:Landroidx/camera/extensions/VendorExtenderFactory;

    invoke-interface {p0, p1}, Landroidx/camera/extensions/VendorExtenderFactory;->createVendorExtender(I)Landroidx/camera/extensions/internal/VendorExtender;

    move-result-object p0

    new-instance p1, Landroidx/camera/extensions/ExtensionCameraFilter;

    invoke-direct {p1, v0, p0}, Landroidx/camera/extensions/ExtensionCameraFilter;-><init>(Ljava/lang/String;Landroidx/camera/extensions/internal/VendorExtender;)V

    return-object p1
.end method

.method public getEstimatedCaptureLatencyRange(Landroidx/camera/core/CameraSelector;ILandroid/util/Size;)Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/CameraSelector;",
            "I",
            "Landroid/util/Size;",
            ")",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Landroidx/camera/core/CameraSelector$Builder;->fromSelector(Landroidx/camera/core/CameraSelector;)Landroidx/camera/core/CameraSelector$Builder;

    move-result-object p1

    invoke-virtual {p0, p2}, Landroidx/camera/extensions/ExtensionsInfo;->getCameraFilter(I)Landroidx/camera/core/CameraFilter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/camera/core/CameraSelector$Builder;->addCameraFilter(Landroidx/camera/core/CameraFilter;)Landroidx/camera/core/CameraSelector$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/camera/core/CameraSelector$Builder;->build()Landroidx/camera/core/CameraSelector;

    move-result-object p1

    iget-object v0, p0, Landroidx/camera/extensions/ExtensionsInfo;->mCameraProvider:Landroidx/camera/core/CameraProvider;

    invoke-interface {v0}, Landroidx/camera/core/CameraProvider;->getAvailableCameraInfos()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/camera/core/CameraSelector;->filter(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/core/CameraInfo;

    :try_start_0
    iget-object p0, p0, Landroidx/camera/extensions/ExtensionsInfo;->mVendorExtenderFactory:Landroidx/camera/extensions/VendorExtenderFactory;

    invoke-interface {p0, p2}, Landroidx/camera/extensions/VendorExtenderFactory;->createVendorExtender(I)Landroidx/camera/extensions/internal/VendorExtender;

    move-result-object p0

    invoke-interface {p0, p1}, Landroidx/camera/extensions/internal/VendorExtender;->init(Landroidx/camera/core/CameraInfo;)V

    invoke-interface {p0, p3}, Landroidx/camera/extensions/internal/VendorExtender;->getEstimatedCaptureLatencyRange(Landroid/util/Size;)Landroid/util/Range;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getExtensionCameraSelectorAndInjectCameraConfig(Landroidx/camera/core/CameraSelector;I)Landroidx/camera/core/CameraSelector;
    .locals 3

    invoke-virtual {p0, p1, p2}, Landroidx/camera/extensions/ExtensionsInfo;->isExtensionAvailable(Landroidx/camera/core/CameraSelector;I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroidx/camera/core/CameraSelector;->getCameraFilterSet()Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/core/CameraFilter;

    instance-of v2, v2, Landroidx/camera/extensions/ExtensionCameraFilter;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "An extension is already applied to the base CameraSelector."

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-object v1

    :cond_1
    invoke-virtual {p0, p2}, Landroidx/camera/extensions/ExtensionsInfo;->injectExtensionCameraConfig(I)V

    invoke-static {p1}, Landroidx/camera/core/CameraSelector$Builder;->fromSelector(Landroidx/camera/core/CameraSelector;)Landroidx/camera/core/CameraSelector$Builder;

    move-result-object p1

    invoke-virtual {p0, p2}, Landroidx/camera/extensions/ExtensionsInfo;->getCameraFilter(I)Landroidx/camera/core/CameraFilter;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/camera/core/CameraSelector$Builder;->addCameraFilter(Landroidx/camera/core/CameraFilter;)Landroidx/camera/core/CameraSelector$Builder;

    invoke-virtual {p1}, Landroidx/camera/core/CameraSelector$Builder;->build()Landroidx/camera/core/CameraSelector;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, "No camera can be found to support the specified extensions mode! isExtensionAvailable should be checked first before calling getExtensionEnabledCameraSelector."

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-object v1
.end method

.method public getVendorExtender(I)Landroidx/camera/extensions/internal/VendorExtender;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    new-instance v0, Landroidx/camera/extensions/internal/Camera2ExtensionsVendorExtender;

    iget-object p0, p0, Landroidx/camera/extensions/ExtensionsInfo;->mCamera2ExtensionsInfo:Landroidx/camera/extensions/internal/Camera2ExtensionsInfo;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, p1, p0}, Landroidx/camera/extensions/internal/Camera2ExtensionsVendorExtender;-><init>(ILandroidx/camera/extensions/internal/Camera2ExtensionsInfoProvider;)V

    return-object v0

    :cond_0
    sget-object p0, Landroidx/camera/extensions/ExtensionsInfo;->EMPTY_VENDOR_EXTENDER:Landroidx/camera/extensions/internal/VendorExtender;

    return-object p0
.end method

.method public injectExtensionCameraConfig(I)V
    .locals 3

    invoke-static {p1}, Landroidx/camera/extensions/ExtensionsInfo;->getExtendedCameraConfigProviderId(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/camera/core/impl/Identifier;->create(Ljava/lang/Object;)Landroidx/camera/core/impl/Identifier;

    move-result-object v0

    invoke-static {v0}, Landroidx/camera/core/impl/ExtendedCameraConfigProviderStore;->getConfigProvider(Ljava/lang/Object;)Landroidx/camera/core/impl/CameraConfigProvider;

    move-result-object v1

    sget-object v2, Landroidx/camera/core/impl/CameraConfigProvider;->EMPTY:Landroidx/camera/core/impl/CameraConfigProvider;

    if-ne v1, v2, :cond_0

    new-instance v1, Landroidx/camera/extensions/b;

    invoke-direct {v1, p0, p1, v0}, Landroidx/camera/extensions/b;-><init>(Landroidx/camera/extensions/ExtensionsInfo;ILandroidx/camera/core/impl/Identifier;)V

    invoke-static {v0, v1}, Landroidx/camera/core/impl/ExtendedCameraConfigProviderStore;->addConfig(Ljava/lang/Object;Landroidx/camera/core/impl/CameraConfigProvider;)V

    :cond_0
    return-void
.end method

.method public isExtensionAvailable(Landroidx/camera/core/CameraSelector;I)Z
    .locals 0

    invoke-static {p1}, Landroidx/camera/core/CameraSelector$Builder;->fromSelector(Landroidx/camera/core/CameraSelector;)Landroidx/camera/core/CameraSelector$Builder;

    move-result-object p1

    invoke-virtual {p0, p2}, Landroidx/camera/extensions/ExtensionsInfo;->getCameraFilter(I)Landroidx/camera/core/CameraFilter;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/camera/core/CameraSelector$Builder;->addCameraFilter(Landroidx/camera/core/CameraFilter;)Landroidx/camera/core/CameraSelector$Builder;

    invoke-virtual {p1}, Landroidx/camera/core/CameraSelector$Builder;->build()Landroidx/camera/core/CameraSelector;

    move-result-object p1

    iget-object p0, p0, Landroidx/camera/extensions/ExtensionsInfo;->mCameraProvider:Landroidx/camera/core/CameraProvider;

    invoke-interface {p0}, Landroidx/camera/core/CameraProvider;->getAvailableCameraInfos()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/camera/core/CameraSelector;->filter(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isImageAnalysisSupported(Landroidx/camera/core/CameraSelector;I)Z
    .locals 2

    invoke-static {p1}, Landroidx/camera/core/CameraSelector$Builder;->fromSelector(Landroidx/camera/core/CameraSelector;)Landroidx/camera/core/CameraSelector$Builder;

    move-result-object p1

    invoke-virtual {p0, p2}, Landroidx/camera/extensions/ExtensionsInfo;->getCameraFilter(I)Landroidx/camera/core/CameraFilter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/camera/core/CameraSelector$Builder;->addCameraFilter(Landroidx/camera/core/CameraFilter;)Landroidx/camera/core/CameraSelector$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/camera/core/CameraSelector$Builder;->build()Landroidx/camera/core/CameraSelector;

    move-result-object p1

    iget-object v0, p0, Landroidx/camera/extensions/ExtensionsInfo;->mCameraProvider:Landroidx/camera/core/CameraProvider;

    invoke-interface {v0}, Landroidx/camera/core/CameraProvider;->getAvailableCameraInfos()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/camera/core/CameraSelector;->filter(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/core/CameraInfo;

    iget-object p0, p0, Landroidx/camera/extensions/ExtensionsInfo;->mVendorExtenderFactory:Landroidx/camera/extensions/VendorExtenderFactory;

    invoke-interface {p0, p2}, Landroidx/camera/extensions/VendorExtenderFactory;->createVendorExtender(I)Landroidx/camera/extensions/internal/VendorExtender;

    move-result-object p0

    invoke-interface {p0, p1}, Landroidx/camera/extensions/internal/VendorExtender;->init(Landroidx/camera/core/CameraInfo;)V

    invoke-interface {p0}, Landroidx/camera/extensions/internal/VendorExtender;->getSupportedYuvAnalysisResolutions()[Landroid/util/Size;

    move-result-object p0

    if-eqz p0, :cond_1

    array-length p0, p0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method public setVendorExtenderFactory(Landroidx/camera/extensions/VendorExtenderFactory;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/extensions/ExtensionsInfo;->mVendorExtenderFactory:Landroidx/camera/extensions/VendorExtenderFactory;

    return-void
.end method
