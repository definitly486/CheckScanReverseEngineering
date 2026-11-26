.class public final Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;,
        Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$CheckingMethod;,
        Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$Companion;,
        Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;,
        Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$WhenMappings;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$Companion;


# instance fields
.field private final cameraId:Ljava/lang/String;

.field private final cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

.field private final concurrentSurfaceCombinations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/SurfaceCombination;",
            ">;"
        }
    .end annotation
.end field

.field private final displayInfoManager:Landroidx/camera/camera2/impl/DisplayInfoManager;

.field private final dynamicRangeResolver:Landroidx/camera/camera2/internal/DynamicRangeResolver;

.field private final encoderProfilesProvider:Landroidx/camera/core/impl/EncoderProfilesProvider;

.field private final extraSupportedSurfaceCombinationsContainer:Landroidx/camera/camera2/compat/workaround/ExtraSupportedSurfaceCombinationsContainer;

.field private final featureCombinationQuery:Landroidx/camera/core/featuregroup/impl/FeatureCombinationQuery;

.field private final featureSettingsToSupportedCombinationsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/SurfaceCombination;",
            ">;>;"
        }
    .end annotation
.end field

.field private final hardwareLevel:I

.field private final highSpeedResolver:Landroidx/camera/camera2/internal/HighSpeedResolver;

.field private final highSpeedSurfaceCombinations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/SurfaceCombination;",
            ">;"
        }
    .end annotation
.end field

.field private isBurstCaptureSupported:Z

.field private final isConcurrentCameraModeSupported:Z

.field private isManualSensorSupported:Z

.field private isPreviewStabilizationSupported:Z

.field private isRawSupported:Z

.field private final isStreamUseCaseSupported:Z

.field private isUltraHighResolutionSensorSupported:Z

.field private final previewStabilizationSurfaceCombinations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/SurfaceCombination;",
            ">;"
        }
    .end annotation
.end field

.field private final resolutionCorrector:Landroidx/camera/camera2/compat/workaround/ResolutionCorrector;

.field private final streamConfigurationMapCompat:Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;

.field private final surfaceCombinations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/SurfaceCombination;",
            ">;"
        }
    .end annotation
.end field

.field private final surfaceCombinations10Bit:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/SurfaceCombination;",
            ">;"
        }
    .end annotation
.end field

.field private final surfaceCombinationsStreamUseCase:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/SurfaceCombination;",
            ">;"
        }
    .end annotation
.end field

.field private final surfaceCombinationsUltraHdr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/SurfaceCombination;",
            ">;"
        }
    .end annotation
.end field

.field public surfaceSizeDefinition:Landroidx/camera/core/impl/SurfaceSizeDefinition;

.field private final surfaceSizeDefinitionFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final targetAspectRatio:Landroidx/camera/camera2/compat/workaround/TargetAspectRatio;

.field private final ultraHighSurfaceCombinations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/SurfaceCombination;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->Companion:Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/core/impl/EncoderProfilesProvider;Landroidx/camera/core/featuregroup/impl/FeatureCombinationQuery;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    iput-object p3, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->encoderProfilesProvider:Landroidx/camera/core/impl/EncoderProfilesProvider;

    iput-object p4, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->featureCombinationQuery:Landroidx/camera/core/featuregroup/impl/FeatureCombinationQuery;

    invoke-interface {p2}, Landroidx/camera/camera2/pipe/CameraMetadata;->getCamera-Dz_R5H8()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->cameraId:Ljava/lang/String;

    sget-object p3, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p2, p3}, Landroidx/camera/camera2/pipe/CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x2

    :goto_0
    iput p3, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->hardwareLevel:I

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->concurrentSurfaceCombinations:Ljava/util/List;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->surfaceCombinations:Ljava/util/List;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->surfaceCombinationsStreamUseCase:Ljava/util/List;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->ultraHighSurfaceCombinations:Ljava/util/List;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->previewStabilizationSurfaceCombinations:Ljava/util/List;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->highSpeedSurfaceCombinations:Ljava/util/List;

    new-instance p3, Ljava/util/LinkedHashMap;

    invoke-direct {p3}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p3, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->featureSettingsToSupportedCombinationsMap:Ljava/util/Map;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->surfaceCombinations10Bit:Ljava/util/List;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->surfaceCombinationsUltraHdr:Ljava/util/List;

    sget-object p3, Landroidx/camera/camera2/pipe/CameraMetadata;->Companion:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    invoke-virtual {p3, p2}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->getSupportsPreviewStabilization(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result p3

    iput-boolean p3, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->isPreviewStabilizationSupported:Z

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->surfaceSizeDefinitionFormats:Ljava/util/List;

    invoke-direct {p0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getStreamConfigurationMapCompat()Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;

    move-result-object p3

    iput-object p3, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->streamConfigurationMapCompat:Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;

    new-instance p3, Landroidx/camera/camera2/compat/workaround/ExtraSupportedSurfaceCombinationsContainer;

    invoke-direct {p3}, Landroidx/camera/camera2/compat/workaround/ExtraSupportedSurfaceCombinationsContainer;-><init>()V

    iput-object p3, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->extraSupportedSurfaceCombinationsContainer:Landroidx/camera/camera2/compat/workaround/ExtraSupportedSurfaceCombinationsContainer;

    sget-object p3, Landroidx/camera/camera2/impl/DisplayInfoManager;->Companion:Landroidx/camera/camera2/impl/DisplayInfoManager$Companion;

    invoke-virtual {p3, p1}, Landroidx/camera/camera2/impl/DisplayInfoManager$Companion;->getInstance(Landroid/content/Context;)Landroidx/camera/camera2/impl/DisplayInfoManager;

    move-result-object p3

    iput-object p3, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->displayInfoManager:Landroidx/camera/camera2/impl/DisplayInfoManager;

    new-instance p3, Landroidx/camera/camera2/compat/workaround/ResolutionCorrector;

    invoke-direct {p3}, Landroidx/camera/camera2/compat/workaround/ResolutionCorrector;-><init>()V

    iput-object p3, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->resolutionCorrector:Landroidx/camera/camera2/compat/workaround/ResolutionCorrector;

    new-instance p3, Landroidx/camera/camera2/compat/workaround/TargetAspectRatio;

    invoke-direct {p3}, Landroidx/camera/camera2/compat/workaround/TargetAspectRatio;-><init>()V

    iput-object p3, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->targetAspectRatio:Landroidx/camera/camera2/compat/workaround/TargetAspectRatio;

    new-instance p3, Landroidx/camera/camera2/internal/DynamicRangeResolver;

    invoke-direct {p3, p2}, Landroidx/camera/camera2/internal/DynamicRangeResolver;-><init>(Landroidx/camera/camera2/pipe/CameraMetadata;)V

    iput-object p3, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->dynamicRangeResolver:Landroidx/camera/camera2/internal/DynamicRangeResolver;

    new-instance p4, Landroidx/camera/camera2/internal/HighSpeedResolver;

    invoke-direct {p4, p2}, Landroidx/camera/camera2/internal/HighSpeedResolver;-><init>(Landroidx/camera/camera2/pipe/CameraMetadata;)V

    iput-object p4, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->highSpeedResolver:Landroidx/camera/camera2/internal/HighSpeedResolver;

    invoke-direct {p0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->checkCapabilities()V

    invoke-direct {p0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->generateSupportedCombinationList()V

    iget-boolean p4, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->isUltraHighResolutionSensorSupported:Z

    if-eqz p4, :cond_1

    invoke-direct {p0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->generateUltraHighResolutionSupportedCombinationList()V

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string p4, "android.hardware.camera.concurrent"

    invoke-virtual {p1, p4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->isConcurrentCameraModeSupported:Z

    if-eqz p1, :cond_2

    invoke-direct {p0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->generateConcurrentSupportedCombinationList()V

    :cond_2
    invoke-virtual {p3}, Landroidx/camera/camera2/internal/DynamicRangeResolver;->is10BitDynamicRangeSupported()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->generate10BitSupportedCombinationList()V

    :cond_3
    iget-boolean p1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->isPreviewStabilizationSupported:Z

    if-eqz p1, :cond_4

    invoke-direct {p0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->generatePreviewStabilizationSupportedCombinationList()V

    :cond_4
    sget-object p1, Landroidx/camera/camera2/internal/StreamUseCaseUtil;->INSTANCE:Landroidx/camera/camera2/internal/StreamUseCaseUtil;

    invoke-virtual {p1, p2}, Landroidx/camera/camera2/internal/StreamUseCaseUtil;->isStreamUseCaseSupported(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->isStreamUseCaseSupported:Z

    if-eqz p1, :cond_5

    invoke-direct {p0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->generateStreamUseCaseSupportedCombinationList()V

    :cond_5
    invoke-direct {p0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->generateSurfaceSizeDefinition()V

    return-void
.end method

.method public static synthetic a(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;Ljava/util/List;Ljava/util/LinkedHashMap;Ljava/util/List;Ljava/util/List;)Z
    .locals 0

    invoke-static/range {p0 .. p5}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->findBestSizesAndFps$lambda$1(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isPreviewStabilizationSupported$p(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->isPreviewStabilizationSupported:Z

    return p0
.end method

.method public static synthetic b(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;Ljava/util/List;)Z
    .locals 0

    invoke-static {p0, p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getOrderedSupportedStreamUseCaseSurfaceConfigList$lambda$0(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method private final checkCapabilities()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, v1}, Landroidx/camera/camera2/pipe/CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lyr;->C([II)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->isRawSupported:Z

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lyr;->C([II)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->isBurstCaptureSupported:Z

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lyr;->C([II)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->isUltraHighResolutionSensorSupported:Z

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lyr;->C([II)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->isManualSensorSupported:Z

    :cond_0
    return-void
.end method

.method public static synthetic checkSupported$default(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Z
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    sget-object p3, Lmx2;->b:Lmx2;

    :cond_0
    move-object v3, p3

    and-int/lit8 p3, p6, 0x8

    sget-object p7, Lkx2;->b:Lkx2;

    if-eqz p3, :cond_1

    move-object v4, p7

    goto :goto_0

    :cond_1
    move-object v4, p4

    :goto_0
    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_2

    move-object v5, p7

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    goto :goto_2

    :cond_2
    move-object v5, p5

    goto :goto_1

    :goto_2
    invoke-virtual/range {v0 .. v5}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->checkSupported(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method private final compareIntersectingRanges(Landroid/util/Range;Landroid/util/Range;Landroid/util/Range;)Landroid/util/Range;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-virtual {p2, p1}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, v0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getRangeLength(Landroid/util/Range;)I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p3, p1}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getRangeLength(Landroid/util/Range;)I

    move-result p1

    int-to-double v2, p1

    invoke-direct {p0, p3}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getRangeLength(Landroid/util/Range;)I

    move-result p1

    int-to-double v4, p1

    div-double v4, v2, v4

    invoke-direct {p0, p2}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getRangeLength(Landroid/util/Range;)I

    move-result p0

    int-to-double p0, p0

    div-double p0, v0, p0

    cmpl-double v6, v2, v0

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    if-lez v6, :cond_0

    cmpl-double v0, v4, v7

    if-gez v0, :cond_4

    cmpl-double p0, v4, p0

    if-ltz p0, :cond_5

    goto :goto_0

    :cond_0
    cmpg-double v0, v2, v0

    if-nez v0, :cond_3

    cmpl-double v0, v4, p0

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    cmpg-double p0, v4, p0

    if-nez p0, :cond_2

    invoke-virtual {p3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-virtual {p2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-le p0, p1, :cond_5

    goto :goto_0

    :cond_2
    return-object p2

    :cond_3
    cmpg-double v0, p0, v7

    if-gez v0, :cond_5

    cmpl-double p0, v4, p0

    if-lez p0, :cond_5

    :cond_4
    :goto_0
    return-object p3

    :cond_5
    return-object p2
.end method

.method private final createFeatureComboSessionConfig(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/util/List;)Landroidx/camera/core/impl/SessionConfig;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/SurfaceConfig;",
            ">;",
            "Ljava/util/Map<",
            "Landroidx/camera/core/impl/SurfaceConfig;",
            "Landroidx/camera/core/DynamicRange;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;>;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroidx/camera/core/impl/SessionConfig;"
        }
    .end annotation

    new-instance v0, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;

    invoke-direct {v0}, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;-><init>()V

    move-object v1, p2

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    const/4 v5, 0x0

    if-ltz v2, :cond_5

    check-cast v3, Landroidx/camera/core/impl/SurfaceConfig;

    invoke-virtual {v3}, Landroidx/camera/core/impl/SurfaceConfig;->getImageFormat()I

    move-result v6

    invoke-virtual {p0, v6}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getUpdatedSurfaceSizeDefinitionByFormat(I)Landroidx/camera/core/impl/SurfaceSizeDefinition;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroidx/camera/core/impl/SurfaceConfig;->getResolution(Landroidx/camera/core/impl/SurfaceSizeDefinition;)Landroid/util/Size;

    move-result-object v6

    invoke-interface {p5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/core/impl/UseCaseConfig;

    sget-object v7, Landroidx/camera/core/featuregroup/impl/FeatureCombinationQuery;->Companion:Landroidx/camera/core/featuregroup/impl/FeatureCombinationQuery$Companion;

    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_4

    check-cast v8, Landroidx/camera/core/DynamicRange;

    invoke-virtual {v7, v2, v6, v8}, Landroidx/camera/core/featuregroup/impl/FeatureCombinationQuery$Companion;->createSessionConfigBuilder(Landroidx/camera/core/impl/UseCaseConfig;Landroid/util/Size;Landroidx/camera/core/DynamicRange;)Landroidx/camera/core/impl/SessionConfig$Builder;

    move-result-object v6

    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->getTargetFpsRange()Landroid/util/Range;

    move-result-object v7

    sget-object v8, Landroidx/camera/core/impl/StreamSpec;->FRAME_RATE_RANGE_UNSPECIFIED:Landroid/util/Range;

    invoke-static {v7, v8}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    move-object v5, v7

    :cond_0
    if-nez v5, :cond_1

    sget-object v5, Landroidx/camera/core/featuregroup/impl/feature/FpsRangeFeature;->DEFAULT_FPS_RANGE:Landroid/util/Range;

    :cond_1
    invoke-virtual {v6, v5}, Landroidx/camera/core/impl/SessionConfig$Builder;->setExpectedFrameRateRange(Landroid/util/Range;)Landroidx/camera/core/impl/SessionConfig$Builder;

    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->getVideoStabilization()Landroidx/camera/core/impl/stabilization/VideoStabilization;

    move-result-object v5

    sget-object v7, Landroidx/camera/core/impl/stabilization/VideoStabilization;->PREVIEW:Landroidx/camera/core/impl/stabilization/VideoStabilization;

    const/4 v8, 0x2

    if-ne v5, v7, :cond_2

    invoke-virtual {v6, v8}, Landroidx/camera/core/impl/SessionConfig$Builder;->setPreviewStabilization(I)Landroidx/camera/core/impl/SessionConfig$Builder;

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->getVideoStabilization()Landroidx/camera/core/impl/stabilization/VideoStabilization;

    move-result-object v5

    sget-object v7, Landroidx/camera/core/impl/stabilization/VideoStabilization;->ON:Landroidx/camera/core/impl/stabilization/VideoStabilization;

    if-ne v5, v7, :cond_3

    invoke-virtual {v6, v8}, Landroidx/camera/core/impl/SessionConfig$Builder;->setVideoStabilization(I)Landroidx/camera/core/impl/SessionConfig$Builder;

    :cond_3
    :goto_1
    invoke-virtual {v6}, Landroidx/camera/core/impl/SessionConfig$Builder;->build()Landroidx/camera/core/impl/SessionConfig;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;->add(Landroidx/camera/core/impl/SessionConfig;)V

    invoke-virtual {v0}, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;->isValid()Z

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Cannot create a combined SessionConfig for feature combo after adding "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " with "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " due to ["

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;->getInvalidReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]; surfaceConfigList = "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", featureSettings = "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", newUseCaseConfigs = "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    move v2, v4

    goto/16 :goto_0

    :cond_4
    const-string p0, "Required value was null."

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-object v5

    :cond_5
    invoke-static {}, Lu96;->o()V

    throw v5

    :cond_6
    invoke-virtual {v0}, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;->build()Landroidx/camera/core/impl/SessionConfig;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method private final createFeatureSettings(IZLjava/util/Map;Landroidx/camera/core/impl/stabilization/VideoStabilization;ZZZZLandroid/util/Range;Z)Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/Map<",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;",
            "Landroidx/camera/core/DynamicRange;",
            ">;",
            "Landroidx/camera/core/impl/stabilization/VideoStabilization;",
            "ZZZZ",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;Z)",
            "Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;"
        }
    .end annotation

    invoke-direct {p0, p3}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getRequiredMaxBitDepth(Ljava/util/Map;)I

    move-result v2

    new-instance v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;

    move v1, p1

    move v3, p2

    move-object v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;-><init>(IIZLandroidx/camera/core/impl/stabilization/VideoStabilization;ZZZZLandroid/util/Range;Z)V

    invoke-direct {p0, v0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->validateSelf(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;)Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic filterSupportedSizes$camera_camera2$default(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;Ljava/util/Map;Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;ZILjava/lang/Object;)Ljava/util/Map;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->filterSupportedSizes$camera_camera2(Ljava/util/Map;Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;Z)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private final findBestSizesAndFps(Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/util/List;Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;Ljava/util/List;Ljava/util/Map;Z)Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;>;",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/core/impl/AttachedSurfaceInfo;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;>;I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/SurfaceConfig;",
            ">;",
            "Ljava/util/Map<",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;",
            "Landroidx/camera/core/DynamicRange;",
            ">;Z)",
            "Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;"
        }
    .end annotation

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const v0, 0x7fffffff

    const v13, 0x7fffffff

    const v14, 0x7fffffff

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v3, v1

    invoke-virtual/range {p6 .. p6}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->getCameraMode()I

    move-result v1

    invoke-virtual/range {p6 .. p6}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->getRequiresFeatureComboQuery()Z

    move-result v8

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    move v10, v0

    const/16 p1, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v8}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getSurfaceConfigList(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Z)Ljava/util/List;

    move-result-object v8

    move-object/from16 v23, v7

    move-object v7, v6

    move-object/from16 v6, v23

    invoke-virtual/range {p6 .. p6}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isHighSpeedOn()Z

    move-result v5

    move-object/from16 v2, p3

    move/from16 v4, p4

    move-object v1, v3

    move-object/from16 v3, p5

    invoke-direct/range {v0 .. v5}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getCurrentConfigFrameRateCeiling(Ljava/util/List;Ljava/util/List;Ljava/util/List;IZ)I

    move-result v5

    move-object/from16 v19, v1

    invoke-virtual/range {p6 .. p6}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->getTargetFpsRange()Landroid/util/Range;

    move-result-object v1

    move/from16 v2, p4

    invoke-direct {v0, v2, v1, v5}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->isConfigFrameRateAcceptable(ILandroid/util/Range;I)Z

    move-result v20

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v1, v8

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    add-int/lit8 v22, v3, 0x1

    if-ltz v3, :cond_3

    move-object/from16 v12, v21

    check-cast v12, Landroidx/camera/core/impl/SurfaceConfig;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/camera/core/impl/AttachedSurfaceInfo;

    if-eqz v11, :cond_1

    invoke-virtual {v11}, Landroidx/camera/core/impl/AttachedSurfaceInfo;->getDynamicRange()Landroidx/camera/core/DynamicRange;

    move-result-object v11

    if-nez v11, :cond_0

    goto :goto_2

    :cond_0
    move-object v3, v11

    move-object/from16 v11, p8

    goto :goto_3

    :cond_1
    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v11, p8

    invoke-interface {v11, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    check-cast v3, Landroidx/camera/core/DynamicRange;

    :goto_3
    invoke-interface {v4, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v3, v22

    goto :goto_1

    :cond_2
    const-string v0, "Required value was null."

    invoke-static {v0}, Lfg;->c(Ljava/lang/String;)V

    return-object p1

    :cond_3
    invoke-static {}, Lu96;->o()V

    throw p1

    :cond_4
    move-object/from16 v11, p8

    sget-object v12, Lpo4;->NONE:Lpo4;

    new-instance v0, Lcg8;

    move-object/from16 v1, p0

    move-object/from16 v2, p6

    move-object v3, v8

    move-object/from16 v22, v9

    move v9, v5

    move-object v8, v6

    move-object/from16 v5, p3

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcg8;-><init>(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;Ljava/util/List;Ljava/util/LinkedHashMap;Ljava/util/List;Ljava/util/List;)V

    move-object/from16 v23, v1

    move-object v1, v0

    move-object/from16 v0, v23

    invoke-static {v12, v1}, Lnm4;->a(Lpo4;Lll3;)Lcl4;

    move-result-object v1

    if-eqz p9, :cond_6

    invoke-static {v1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->findBestSizesAndFps$lambda$2(Lcl4;)Z

    move-result v2

    if-eqz v2, :cond_6

    const v2, 0x7fffffff

    if-ne v13, v2, :cond_5

    goto :goto_4

    :cond_5
    if-ge v13, v9, :cond_6

    :goto_4
    move v13, v9

    :cond_6
    const/4 v2, 0x1

    if-nez v15, :cond_a

    invoke-static {v1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->findBestSizesAndFps$lambda$2(Lcl4;)Z

    move-result v1

    if-eqz v1, :cond_a

    const v1, 0x7fffffff

    if-ne v14, v1, :cond_7

    goto :goto_5

    :cond_7
    if-ge v14, v9, :cond_8

    :goto_5
    move v14, v9

    move-object/from16 v17, v19

    :cond_8
    if-eqz v20, :cond_a

    if-eqz v16, :cond_9

    if-nez p9, :cond_9

    move-object/from16 v1, p6

    move v14, v9

    move v0, v10

    move-object/from16 v17, v19

    goto :goto_9

    :cond_9
    move v15, v2

    move v14, v9

    move-object/from16 v17, v19

    :cond_a
    if-eqz p7, :cond_f

    if-nez v16, :cond_f

    move-object/from16 v1, p6

    invoke-direct {v0, v1, v3, v7, v8}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getOrderedSupportedStreamUseCaseSurfaceConfigList(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_e

    const v3, 0x7fffffff

    if-ne v10, v3, :cond_b

    goto :goto_6

    :cond_b
    if-ge v10, v9, :cond_c

    :goto_6
    move v10, v9

    move-object/from16 v18, v19

    :cond_c
    if-eqz v20, :cond_e

    if-eqz v15, :cond_d

    if-nez p9, :cond_d

    move v0, v9

    move-object/from16 v18, v19

    goto :goto_9

    :cond_d
    move/from16 v16, v2

    move v0, v9

    move-object/from16 v18, v19

    :goto_7
    move-object/from16 v9, v22

    goto/16 :goto_0

    :cond_e
    :goto_8
    move v0, v10

    goto :goto_7

    :cond_f
    move-object/from16 v1, p6

    goto :goto_8

    :cond_10
    move-object/from16 v1, p6

    move v10, v0

    const/16 p1, 0x0

    :goto_9
    if-nez v17, :cond_11

    goto :goto_a

    :cond_11
    invoke-virtual {v1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isFeatureComboInvocation()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual {v1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->getTargetFpsRange()Landroid/util/Range;

    move-result-object v2

    sget-object v3, Landroidx/camera/core/impl/StreamSpec;->FRAME_RATE_RANGE_UNSPECIFIED:Landroid/util/Range;

    invoke-static {v2, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    const v2, 0x7fffffff

    if-eq v14, v2, :cond_12

    invoke-virtual {v1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->getTargetFpsRange()Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-ge v14, v1, :cond_13

    :cond_12
    :goto_a
    return-object p1

    :cond_13
    new-instance v1, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;

    move/from16 p6, v0

    move-object/from16 p2, v1

    move/from16 p7, v13

    move/from16 p5, v14

    move-object/from16 p3, v17

    move-object/from16 p4, v18

    invoke-direct/range {p2 .. p7}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;-><init>(Ljava/util/List;Ljava/util/List;III)V

    move-object/from16 v0, p2

    return-object v0
.end method

.method private static final findBestSizesAndFps$lambda$1(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/util/List;)Z
    .locals 0

    invoke-virtual/range {p0 .. p5}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->checkSupported(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method private static final findBestSizesAndFps$lambda$2(Lcl4;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcl4<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private final generate10BitSupportedCombinationList()V
    .locals 1

    iget-object p0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->surfaceCombinations10Bit:Ljava/util/List;

    invoke-static {}, Landroidx/camera/camera2/adapter/GuaranteedConfigurationsUtil;->get10BitSupportedCombinationList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private final generateConcurrentSupportedCombinationList()V
    .locals 1

    iget-object p0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->concurrentSurfaceCombinations:Ljava/util/List;

    invoke-static {}, Landroidx/camera/camera2/adapter/GuaranteedConfigurationsUtil;->getConcurrentSupportedCombinationList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private final generateHighSpeedSupportedCombinationList()V
    .locals 3

    iget-object v0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->highSpeedResolver:Landroidx/camera/camera2/internal/HighSpeedResolver;

    invoke-virtual {v0}, Landroidx/camera/camera2/internal/HighSpeedResolver;->isHighSpeedSupported()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->highSpeedSurfaceCombinations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->highSpeedResolver:Landroidx/camera/camera2/internal/HighSpeedResolver;

    invoke-virtual {v0}, Landroidx/camera/camera2/internal/HighSpeedResolver;->getMaxSize()Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->highSpeedSurfaceCombinations:Ljava/util/List;

    const/16 v2, 0x22

    invoke-virtual {p0, v2}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getUpdatedSurfaceSizeDefinitionByFormat(I)Landroidx/camera/core/impl/SurfaceSizeDefinition;

    move-result-object p0

    invoke-static {v0, p0}, Landroidx/camera/camera2/adapter/GuaranteedConfigurationsUtil;->generateHighSpeedSupportedCombinationList(Landroid/util/Size;Landroidx/camera/core/impl/SurfaceSizeDefinition;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private final generatePreviewStabilizationSupportedCombinationList()V
    .locals 1

    iget-object p0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->previewStabilizationSurfaceCombinations:Ljava/util/List;

    invoke-static {}, Landroidx/camera/camera2/adapter/GuaranteedConfigurationsUtil;->getPreviewStabilizationSupportedCombinationList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private final generateStreamUseCaseSupportedCombinationList()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    iget-object p0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->surfaceCombinationsStreamUseCase:Ljava/util/List;

    sget-object v0, Landroidx/camera/camera2/adapter/GuaranteedConfigurationsUtil;->INSTANCE:Landroidx/camera/camera2/adapter/GuaranteedConfigurationsUtil;

    invoke-virtual {v0}, Landroidx/camera/camera2/adapter/GuaranteedConfigurationsUtil;->getStreamUseCaseSupportedCombinationList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method private final generateSuggestedStreamSpecMap(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;>;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;",
            "Landroidx/camera/core/DynamicRange;",
            ">;",
            "Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;",
            ")",
            "Ljava/util/Map<",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;",
            "Landroidx/camera/core/impl/StreamSpec;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sget-object v1, Landroidx/camera/core/impl/StreamSpec;->FRAME_RATE_RANGE_UNSPECIFIED:Landroid/util/Range;

    invoke-virtual {p5}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->getTargetFpsRange()Landroid/util/Range;

    move-result-object v2

    invoke-static {v2, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p5}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isHighSpeedOn()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->highSpeedResolver:Landroidx/camera/camera2/internal/HighSpeedResolver;

    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;->getBestSizes()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/camera/camera2/internal/HighSpeedResolver;->getFrameRateRangesFor(Ljava/util/List;)[Landroid/util/Range;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1, v2}, Landroidx/camera/camera2/pipe/CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/util/Range;

    :goto_0
    invoke-virtual {p5}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->getTargetFpsRange()Landroid/util/Range;

    move-result-object v2

    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;->getMaxFpsForBestSizes()I

    move-result v3

    invoke-direct {p0, v2, v3, v1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getClosestSupportedDeviceFrameRate(Landroid/util/Range;I[Landroid/util/Range;)Landroid/util/Range;

    move-result-object p0

    invoke-virtual {p5}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isFeatureComboInvocation()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p5}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isStrictFpsRequired()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-virtual {p5}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->getTargetFpsRange()Landroid/util/Range;

    move-result-object v2

    invoke-static {p0, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move-object v1, p0

    goto :goto_1

    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Target FPS range "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->getTargetFpsRange()Landroid/util/Range;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " is not supported. Max FPS supported by the calculated best combination: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;->getMaxFpsForBestSizes()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". Calculated best FPS range for device: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, ". Device supported FPS ranges: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2e

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    invoke-virtual {p5}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isHighSpeedOn()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->highSpeedResolver:Landroidx/camera/camera2/internal/HighSpeedResolver;

    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;->getBestSizes()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/camera/camera2/internal/HighSpeedResolver;->getFrameRateRangesFor(Ljava/util/List;)[Landroid/util/Range;

    move-result-object v1

    sget-object v2, Landroidx/camera/camera2/internal/HighSpeedResolver;->Companion:Landroidx/camera/camera2/internal/HighSpeedResolver$Companion;

    invoke-virtual {v2}, Landroidx/camera/camera2/internal/HighSpeedResolver$Companion;->getDEFAULT_FPS()Landroid/util/Range;

    move-result-object v2

    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;->getMaxFpsForBestSizes()I

    move-result v3

    invoke-direct {p0, v2, v3, v1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getClosestSupportedDeviceFrameRate(Landroid/util/Range;I[Landroid/util/Range;)Landroid/util/Range;

    move-result-object v1

    :cond_5
    :goto_1
    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p2, 0x0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    add-int/lit8 v2, p2, 0x1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/core/impl/UseCaseConfig;

    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;->getBestSizes()Ljava/util/List;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/Size;

    invoke-static {p2}, Landroidx/camera/core/impl/StreamSpec;->builder(Landroid/util/Size;)Landroidx/camera/core/impl/StreamSpec$Builder;

    move-result-object p2

    invoke-virtual {p5}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isHighSpeedOn()Z

    move-result v4

    invoke-virtual {p2, v4}, Landroidx/camera/core/impl/StreamSpec$Builder;->setSessionType(I)Landroidx/camera/core/impl/StreamSpec$Builder;

    move-result-object p2

    invoke-interface {p4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_7

    check-cast v4, Landroidx/camera/core/DynamicRange;

    invoke-virtual {p2, v4}, Landroidx/camera/core/impl/StreamSpec$Builder;->setDynamicRange(Landroidx/camera/core/DynamicRange;)Landroidx/camera/core/impl/StreamSpec$Builder;

    move-result-object p2

    sget-object v4, Landroidx/camera/camera2/internal/StreamUseCaseUtil;->INSTANCE:Landroidx/camera/camera2/internal/StreamUseCaseUtil;

    invoke-virtual {v4, v3}, Landroidx/camera/camera2/internal/StreamUseCaseUtil;->getStreamSpecImplementationOptions(Landroidx/camera/core/impl/UseCaseConfig;)Landroidx/camera/camera2/impl/Camera2ImplConfig;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroidx/camera/core/impl/StreamSpec$Builder;->setImplementationOptions(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/StreamSpec$Builder;

    move-result-object p2

    invoke-virtual {p5}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->getHasVideoCapture()Z

    move-result v4

    invoke-virtual {p2, v4}, Landroidx/camera/core/impl/StreamSpec$Builder;->setZslDisabled(Z)Landroidx/camera/core/impl/StreamSpec$Builder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/camera/core/impl/StreamSpec;->FRAME_RATE_RANGE_UNSPECIFIED:Landroid/util/Range;

    invoke-static {v1, v4}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {p2, v1}, Landroidx/camera/core/impl/StreamSpec$Builder;->setExpectedFrameRateRange(Landroid/util/Range;)Landroidx/camera/core/impl/StreamSpec$Builder;

    :cond_6
    invoke-virtual {p2}, Landroidx/camera/core/impl/StreamSpec$Builder;->build()Landroidx/camera/core/impl/StreamSpec;

    move-result-object p2

    invoke-interface {v0, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move p2, v2

    goto :goto_2

    :cond_7
    const-string p0, "Required value was null."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_8
    return-object v0
.end method

.method private final generateSupportedCombinationList()V
    .locals 4

    iget-object v0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->surfaceCombinations:Ljava/util/List;

    iget v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->hardwareLevel:I

    iget-boolean v2, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->isRawSupported:Z

    iget-boolean v3, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->isBurstCaptureSupported:Z

    invoke-static {v1, v2, v3}, Landroidx/camera/camera2/adapter/GuaranteedConfigurationsUtil;->generateSupportedCombinationList(IZZ)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->surfaceCombinations:Ljava/util/List;

    iget-object v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->extraSupportedSurfaceCombinationsContainer:Landroidx/camera/camera2/compat/workaround/ExtraSupportedSurfaceCombinationsContainer;

    iget-object p0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->cameraId:Ljava/lang/String;

    invoke-virtual {v1, p0}, Landroidx/camera/camera2/compat/workaround/ExtraSupportedSurfaceCombinationsContainer;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private final generateSurfaceSizeDefinition()V
    .locals 10

    iget-object v0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->displayInfoManager:Landroidx/camera/camera2/impl/DisplayInfoManager;

    invoke-virtual {v0}, Landroidx/camera/camera2/impl/DisplayInfoManager;->getPreviewSize()Landroid/util/Size;

    move-result-object v3

    invoke-direct {p0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getRecordSize()Landroid/util/Size;

    move-result-object v5

    sget-object v1, Landroidx/camera/core/internal/utils/SizeUtil;->RESOLUTION_VGA:Landroid/util/Size;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static/range {v1 .. v9}, Landroidx/camera/core/impl/SurfaceSizeDefinition;->create(Landroid/util/Size;Ljava/util/Map;Landroid/util/Size;Ljava/util/Map;Landroid/util/Size;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Landroidx/camera/core/impl/SurfaceSizeDefinition;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->setSurfaceSizeDefinition$camera_camera2(Landroidx/camera/core/impl/SurfaceSizeDefinition;)V

    return-void
.end method

.method private final generateUltraHdrSupportedCombinationList()V
    .locals 1

    iget-object p0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->surfaceCombinationsUltraHdr:Ljava/util/List;

    invoke-static {}, Landroidx/camera/camera2/adapter/GuaranteedConfigurationsUtil;->getUltraHdrSupportedCombinationList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private final generateUltraHighResolutionSupportedCombinationList()V
    .locals 1

    iget-object p0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->ultraHighSurfaceCombinations:Ljava/util/List;

    invoke-static {}, Landroidx/camera/camera2/adapter/GuaranteedConfigurationsUtil;->getUltraHighResolutionSupportedCombinationList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private final getAllPossibleSizeArrangements(Ljava/util/List;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;>;)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;>;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/2addr v1, v2

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_5

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    div-int v3, v1, v3

    move-object v4, p1

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    move v6, v1

    move v5, v2

    :goto_2
    if-ge v5, v4, :cond_4

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    move v8, v2

    :goto_3
    if-ge v8, v1, :cond_2

    invoke-interface {p0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    rem-int v10, v8, v6

    div-int/2addr v10, v3

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v0

    if-ge v5, v7, :cond_3

    add-int/lit8 v6, v5, 0x1

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    div-int v6, v3, v6

    move v11, v6

    move v6, v3

    move v3, v11

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    return-object p0

    :cond_5
    const-string p0, "Failed to find supported resolutions."

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private final getAndValidateIsStrictFpsRequired(ZLjava/lang/Boolean;)Z
    .locals 0

    if-eqz p2, :cond_1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "All isStrictFpsRequired should be the same"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return p1
.end method

.method private final getCheckingMethod(Ljava/util/Collection;Landroid/util/Range;Landroidx/camera/core/impl/stabilization/VideoStabilization;ZZ)Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$CheckingMethod;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/camera/core/DynamicRange;",
            ">;",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroidx/camera/core/impl/stabilization/VideoStabilization;",
            "ZZ)",
            "Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$CheckingMethod;"
        }
    .end annotation

    if-nez p5, :cond_0

    sget-object p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$CheckingMethod;->WITHOUT_FEATURE_COMBO:Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$CheckingMethod;

    return-object p0

    :cond_0
    sget-object p0, Landroidx/camera/core/DynamicRange;->HLG_10_BIT:Landroidx/camera/core/DynamicRange;

    invoke-interface {p1, p0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 p2, 0x3c

    if-ne p1, p2, :cond_2

    add-int/lit8 p0, p0, 0x1

    :cond_2
    :goto_0
    sget-object p1, Landroidx/camera/core/impl/stabilization/VideoStabilization;->ON:Landroidx/camera/core/impl/stabilization/VideoStabilization;

    if-eq p3, p1, :cond_3

    sget-object p1, Landroidx/camera/core/impl/stabilization/VideoStabilization;->PREVIEW:Landroidx/camera/core/impl/stabilization/VideoStabilization;

    if-ne p3, p1, :cond_4

    :cond_3
    add-int/lit8 p0, p0, 0x1

    :cond_4
    if-eqz p4, :cond_5

    add-int/lit8 p0, p0, 0x1

    :cond_5
    const/4 p1, 0x1

    if-le p0, p1, :cond_6

    sget-object p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$CheckingMethod;->WITH_FEATURE_COMBO:Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$CheckingMethod;

    return-object p0

    :cond_6
    if-ne p0, p1, :cond_7

    sget-object p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$CheckingMethod;->WITHOUT_FEATURE_COMBO_FIRST_AND_THEN_WITH_IT:Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$CheckingMethod;

    return-object p0

    :cond_7
    sget-object p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$CheckingMethod;->WITHOUT_FEATURE_COMBO:Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$CheckingMethod;

    return-object p0
.end method

.method private final getClosestSupportedDeviceFrameRate(Landroid/util/Range;I[Landroid/util/Range;)Landroid/util/Range;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;I[",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroidx/camera/core/impl/StreamSpec;->FRAME_RATE_RANGE_UNSPECIFIED:Landroid/util/Range;

    invoke-static {p1, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :cond_0
    if-nez p3, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :cond_1
    new-instance v1, Landroid/util/Range;

    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    array-length p1, p3

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, p1, :cond_a

    aget-object v4, p3, v2

    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    if-ge p2, v5, :cond_2

    goto/16 :goto_2

    :cond_2
    sget-object v5, Landroidx/camera/core/impl/StreamSpec;->FRAME_RATE_RANGE_UNSPECIFIED:Landroid/util/Range;

    invoke-static {v0, v5}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v0, v4

    :cond_3
    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v0, v4

    goto/16 :goto_3

    :cond_4
    :try_start_0
    invoke-virtual {v4, v1}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, v5}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getRangeLength(Landroid/util/Range;)I

    move-result v5

    if-nez v3, :cond_5

    move-object v0, v4

    move v3, v5

    goto :goto_2

    :cond_5
    if-lt v5, v3, :cond_9

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, v1, v0, v4}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->compareIntersectingRanges(Landroid/util/Range;Landroid/util/Range;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, v5}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getRangeLength(Landroid/util/Range;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    if-eqz v3, :cond_6

    goto :goto_2

    :cond_6
    invoke-direct {p0, v4, v1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getRangeDistance(Landroid/util/Range;Landroid/util/Range;)I

    move-result v5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, v0, v1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getRangeDistance(Landroid/util/Range;Landroid/util/Range;)I

    move-result v6

    if-ge v5, v6, :cond_7

    goto :goto_1

    :cond_7
    invoke-direct {p0, v4, v1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getRangeDistance(Landroid/util/Range;Landroid/util/Range;)I

    move-result v5

    invoke-direct {p0, v0, v1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getRangeDistance(Landroid/util/Range;Landroid/util/Range;)I

    move-result v6

    if-ne v5, v6, :cond_9

    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    if-le v5, v6, :cond_8

    goto :goto_1

    :cond_8
    invoke-direct {p0, v4}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getRangeLength(Landroid/util/Range;)I

    move-result v5

    invoke-direct {p0, v0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getRangeLength(Landroid/util/Range;)I

    move-result v6

    if-ge v5, v6, :cond_9

    :goto_1
    move-object v0, v4

    :cond_9
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_a
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method private final getCombinedMaximumFps(IILandroid/util/Size;ZI)I
    .locals 0

    invoke-direct {p0, p2, p3, p4, p5}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getMaxFrameRate(ILandroid/util/Size;ZI)I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private final getCurrentConfigFrameRateCeiling(Ljava/util/List;Ljava/util/List;Ljava/util/List;IZ)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;>;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;IZ)I"
        }
    .end annotation

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v2, p4

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    add-int/lit8 p4, v0, 0x1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/util/Size;

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/UseCaseConfig;

    invoke-interface {v0}, Landroidx/camera/core/impl/ImageInputConfig;->getInputFormat()I

    move-result v3

    invoke-interface {v0, v4}, Landroidx/camera/core/impl/UseCaseConfig;->getCustomMaxFrameRate(Landroid/util/Size;)I

    move-result v6

    move-object v1, p0

    move v5, p5

    invoke-direct/range {v1 .. v6}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getCombinedMaximumFps(IILandroid/util/Size;ZI)I

    move-result v2

    move v0, p4

    goto :goto_0

    :cond_0
    return v2
.end method

.method private final getMaxFrameRate(ILandroid/util/Size;)I
    .locals 4

    invoke-direct {p0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getStreamConfigurationMapCompat()Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;->getOutputMinFrameDuration(ILandroid/util/Size;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    iget-boolean p0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->isManualSensorSupported:Z

    if-eqz p0, :cond_1

    sget-object p0, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    const-string p0, "CXCP"

    invoke-static {p0}, Landroidx/camera/core/Logger;->isWarnEnabled(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "minFrameDuration: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " is invalid for imageFormat = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", size = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    const p0, 0x7fffffff

    return p0

    :cond_2
    const-wide p0, 0x41cdcd6500000000L    # 1.0E9

    long-to-double v0, v0

    div-double/2addr p0, v0

    double-to-int p0, p0

    return p0
.end method

.method private final getMaxFrameRate(ILandroid/util/Size;ZI)I
    .locals 0

    if-eqz p3, :cond_1

    const/16 p3, 0x22

    if-ne p1, p3, :cond_0

    .line 80
    iget-object p0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->highSpeedResolver:Landroidx/camera/camera2/internal/HighSpeedResolver;

    invoke-virtual {p0, p2}, Landroidx/camera/camera2/internal/HighSpeedResolver;->getMaxFrameRate(Landroid/util/Size;)I

    move-result p0

    goto :goto_0

    .line 81
    :cond_0
    const-string p0, "Check failed."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 82
    :cond_1
    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getMaxFrameRate(ILandroid/util/Size;)I

    move-result p0

    .line 83
    :goto_0
    invoke-static {p4, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static synthetic getMaxOutputSizeByFormat$camera_camera2$default(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;Landroid/hardware/camera2/params/StreamConfigurationMap;IZLandroid/util/Rational;ILjava/lang/Object;)Landroid/util/Size;
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getMaxOutputSizeByFormat$camera_camera2(Landroid/hardware/camera2/params/StreamConfigurationMap;IZLandroid/util/Rational;)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method private final getMaxSupportedFpsFromAttachedSurfaces(Ljava/util/List;Z)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/core/impl/AttachedSurfaceInfo;",
            ">;Z)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const v0, 0x7fffffff

    move v2, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/AttachedSurfaceInfo;

    invoke-virtual {v0}, Landroidx/camera/core/impl/AttachedSurfaceInfo;->getImageFormat()I

    move-result v3

    invoke-virtual {v0}, Landroidx/camera/core/impl/AttachedSurfaceInfo;->getSize()Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroidx/camera/core/impl/AttachedSurfaceInfo;->getCustomMaxFrameRate()I

    move-result v6

    move-object v1, p0

    move v5, p2

    invoke-direct/range {v1 .. v6}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getCombinedMaximumFps(IILandroid/util/Size;ZI)I

    move-result v2

    goto :goto_0

    :cond_0
    return v2
.end method

.method private final getOrderedSupportedStreamUseCaseSurfaceConfigList(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/SurfaceConfig;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroidx/camera/core/impl/AttachedSurfaceInfo;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;>;)",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/SurfaceConfig;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroidx/camera/camera2/internal/StreamUseCaseUtil;->INSTANCE:Landroidx/camera/camera2/internal/StreamUseCaseUtil;

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/internal/StreamUseCaseUtil;->shouldUseStreamUseCase(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->surfaceCombinationsStreamUseCase:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/SurfaceCombination;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p2}, Landroidx/camera/core/impl/SurfaceCombination;->getOrderedSupportedSurfaceConfigList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Landroidx/camera/camera2/internal/StreamUseCaseUtil;->INSTANCE:Landroidx/camera/camera2/internal/StreamUseCaseUtil;

    invoke-virtual {v1, p3, p4, v0}, Landroidx/camera/camera2/internal/StreamUseCaseUtil;->areCaptureTypesEligible(Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)Z

    move-result v1

    new-instance v2, Lbg8;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p0, v0}, Lbg8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Lfh8;

    invoke-direct {v3, v2}, Lfh8;-><init>(Lll3;)V

    if-eqz v1, :cond_1

    invoke-virtual {v3}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static final getOrderedSupportedStreamUseCaseSurfaceConfigList$lambda$0(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;Ljava/util/List;)Z
    .locals 1

    sget-object v0, Landroidx/camera/camera2/internal/StreamUseCaseUtil;->INSTANCE:Landroidx/camera/camera2/internal/StreamUseCaseUtil;

    iget-object p0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    invoke-virtual {v0, p0, p1}, Landroidx/camera/camera2/internal/StreamUseCaseUtil;->areStreamUseCasesAvailableForSurfaceConfigs(Landroidx/camera/camera2/pipe/CameraMetadata;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method private final getOrderedSurfaceConfigListForStreamUseCase(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;>;",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/core/impl/AttachedSurfaceInfo;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;>;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroidx/camera/core/impl/AttachedSurfaceInfo;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;>;)",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/SurfaceConfig;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/util/List;

    invoke-virtual {p5}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->getCameraMode()I

    move-result v2

    const/4 v9, 0x0

    move-object v1, p0

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getSurfaceConfigList(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Z)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p5, v0, v7, v8}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getOrderedSupportedStreamUseCaseSurfaceConfigList(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-interface {v7}, Ljava/util/Map;->clear()V

    invoke-interface {v8}, Ljava/util/Map;->clear()V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private final getOutputSizes(Landroid/hardware/camera2/params/StreamConfigurationMap;ILandroid/util/Rational;)[Landroid/util/Size;
    .locals 4

    const/16 p0, 0x22

    const/4 v0, 0x0

    if-ne p2, p0, :cond_1

    if-eqz p1, :cond_0

    :try_start_0
    const-class p0, Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1, p0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object p0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    new-instance p1, Lk57$a;

    invoke-direct {p1, p0}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    move-object p1, p0

    :goto_2
    nop

    instance-of p0, p1, Lk57$a;

    if-eqz p0, :cond_2

    move-object p1, v0

    :cond_2
    check-cast p1, [Landroid/util/Size;

    if-eqz p1, :cond_6

    if-eqz p3, :cond_5

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    array-length p2, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-ge v1, p2, :cond_4

    aget-object v2, p1, v1

    invoke-static {v2, p3}, Landroidx/camera/core/impl/utils/AspectRatioUtil;->hasMatchingAspectRatio(Landroid/util/Size;Landroid/util/Rational;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    new-array p1, v0, [Landroid/util/Size;

    invoke-interface {p0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/util/Size;

    move-object v0, p0

    goto :goto_4

    :cond_5
    move-object v0, p1

    :cond_6
    :goto_4
    return-object v0
.end method

.method public static synthetic getOutputSizes$default(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;Landroid/hardware/camera2/params/StreamConfigurationMap;ILandroid/util/Rational;ILjava/lang/Object;)[Landroid/util/Size;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getOutputSizes(Landroid/hardware/camera2/params/StreamConfigurationMap;ILandroid/util/Rational;)[Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method private final getRangeDistance(Landroid/util/Range;Landroid/util/Range;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-virtual {p2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-le p0, v0, :cond_0

    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-virtual {p2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    sub-int/2addr p0, p1

    return p0

    :cond_0
    invoke-virtual {p2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    sub-int/2addr p0, p1

    return p0

    :cond_1
    const-string p0, "Ranges must not intersect"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private final getRangeLength(Landroid/util/Range;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    sub-int/2addr p0, p1

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private final getRecordSize()Landroid/util/Size;
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->cameraId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    invoke-direct {p0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getRecordSizeFromCamcorderProfile()Landroid/util/Size;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    return-object v0

    :catch_0
    :cond_0
    invoke-direct {p0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getRecordSizeFromStreamConfigurationMapCompat()Landroid/util/Size;

    move-result-object p0

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    sget-object p0, Landroidx/camera/core/internal/utils/SizeUtil;->RESOLUTION_480P:Landroid/util/Size;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method private final getRecordSizeFromCamcorderProfile()Landroid/util/Size;
    .locals 9

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v0, 0xd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iget-object v2, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->encoderProfilesProvider:Landroidx/camera/core/impl/EncoderProfilesProvider;

    invoke-interface {v2, v1}, Landroidx/camera/core/impl/EncoderProfilesProvider;->hasProfile(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->encoderProfilesProvider:Landroidx/camera/core/impl/EncoderProfilesProvider;

    invoke-interface {v2, v1}, Landroidx/camera/core/impl/EncoderProfilesProvider;->getAll(I)Landroidx/camera/core/impl/EncoderProfilesProxy;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroidx/camera/core/impl/EncoderProfilesProxy;->getVideoProfiles()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Landroidx/camera/core/impl/EncoderProfilesProxy;->getVideoProfiles()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    invoke-virtual {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getResolution()Landroid/util/Size;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private final getRecordSizeFromStreamConfigurationMapCompat()Landroid/util/Size;
    .locals 7

    iget-object p0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->streamConfigurationMapCompat:Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;

    invoke-virtual {p0}, Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;->toStreamConfigurationMap()Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    const-class v1, Landroid/media/MediaRecorder;

    invoke-virtual {p0, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    new-instance v1, Lk57$a;

    invoke-direct {v1, p0}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    move-object p0, v0

    :goto_0
    move-object v1, p0

    :goto_1
    nop

    instance-of p0, v1, Lk57$a;

    if-eqz p0, :cond_1

    move-object v1, v0

    :cond_1
    check-cast v1, [Landroid/util/Size;

    if-nez v1, :cond_2

    return-object v0

    :cond_2
    new-instance p0, Landroidx/camera/core/impl/utils/CompareSizesByArea;

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroidx/camera/core/impl/utils/CompareSizesByArea;-><init>(Z)V

    invoke-static {v1, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    array-length p0, v1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, p0, :cond_4

    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v4

    sget-object v5, Landroidx/camera/core/internal/utils/SizeUtil;->RESOLUTION_1080P:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v6

    if-gt v4, v6, :cond_3

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    if-gt v4, v5, :cond_3

    return-object v3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    return-object v0
.end method

.method private final getRequiredMaxBitDepth(Ljava/util/Map;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;",
            "Landroidx/camera/core/DynamicRange;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/core/DynamicRange;

    invoke-virtual {p1}, Landroidx/camera/core/DynamicRange;->getBitDepth()I

    move-result p1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    return v0

    :cond_1
    const/16 p0, 0x8

    return p0
.end method

.method private final getStreamConfigurationMapCompat()Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;
    .locals 3

    iget-object v0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, v1}, Landroidx/camera/camera2/pipe/CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    if-eqz v0, :cond_0

    new-instance v1, Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;

    new-instance v2, Landroidx/camera/camera2/compat/workaround/OutputSizesCorrector;

    iget-object p0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    invoke-direct {v2, p0, v0}, Landroidx/camera/camera2/compat/workaround/OutputSizesCorrector;-><init>(Landroidx/camera/camera2/pipe/CameraMetadata;Landroid/hardware/camera2/params/StreamConfigurationMap;)V

    invoke-direct {v1, v0, v2}, Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;-><init>(Landroid/hardware/camera2/params/StreamConfigurationMap;Landroidx/camera/camera2/compat/workaround/OutputSizesCorrector;)V

    return-object v1

    :cond_0
    const-string p0, "Cannot retrieve SCALER_STREAM_CONFIGURATION_MAP"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic getSuggestedStreamSpecifications$default(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;ILjava/util/List;Ljava/util/Map;Landroidx/camera/core/impl/stabilization/VideoStabilization;ZZZILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceStreamSpecQueryResult;
    .locals 8

    and-int/lit8 v0, p8, 0x8

    if-eqz v0, :cond_0

    sget-object p4, Landroidx/camera/core/impl/stabilization/VideoStabilization;->UNSPECIFIED:Landroidx/camera/core/impl/stabilization/VideoStabilization;

    :cond_0
    move-object v4, p4

    and-int/lit8 p4, p8, 0x10

    if-eqz p4, :cond_1

    const/4 p5, 0x0

    :cond_1
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getSuggestedStreamSpecifications(ILjava/util/List;Ljava/util/Map;Landroidx/camera/core/impl/stabilization/VideoStabilization;ZZZ)Landroidx/camera/core/impl/SurfaceStreamSpecQueryResult;

    move-result-object p0

    return-object p0
.end method

.method private final getSupportedOutputSizesList(Ljava/util/Map;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;+",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;>;",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;>;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v2, Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/impl/UseCaseConfig;

    invoke-interface {v1}, Landroidx/camera/core/impl/ImageInputConfig;->getInputFormat()I

    move-result v1

    invoke-virtual {p0, v2, v1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->applyResolutionSelectionOrderRelatedWorkarounds(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private final getSurfaceCombinationsByFeatureSettings(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;",
            ")",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/SurfaceCombination;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->featureSettingsToSupportedCombinationsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->featureSettingsToSupportedCombinationsMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Ljava/util/List;

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->getRequiresFeatureComboQuery()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Landroidx/camera/camera2/adapter/GuaranteedConfigurationsUtil;->INSTANCE:Landroidx/camera/camera2/adapter/GuaranteedConfigurationsUtil;

    iget-object v2, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->getVideoStabilization()Landroidx/camera/core/impl/stabilization/VideoStabilization;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroidx/camera/camera2/adapter/GuaranteedConfigurationsUtil;->getQueryableFcqCombinations$camera_camera2(Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/core/impl/stabilization/VideoStabilization;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isUltraHdrOn()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->surfaceCombinationsUltraHdr:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->generateUltraHdrSupportedCombinationList()V

    :cond_2
    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->getCameraMode()I

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->surfaceCombinationsUltraHdr:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isHighSpeedOn()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->highSpeedSurfaceCombinations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->generateHighSpeedSupportedCombinationList()V

    :cond_4
    iget-object v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->highSpeedSurfaceCombinations:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->getRequiredMaxBitDepth()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_9

    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->getCameraMode()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_8

    const/4 v2, 0x2

    if-eq v1, v2, :cond_7

    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->getVideoStabilization()Landroidx/camera/core/impl/stabilization/VideoStabilization;

    move-result-object v1

    sget-object v2, Landroidx/camera/core/impl/stabilization/VideoStabilization;->PREVIEW:Landroidx/camera/core/impl/stabilization/VideoStabilization;

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->previewStabilizationSurfaceCombinations:Ljava/util/List;

    goto :goto_0

    :cond_6
    iget-object v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->surfaceCombinations:Ljava/util/List;

    :goto_0
    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_7
    iget-object v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->ultraHighSurfaceCombinations:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->surfaceCombinations:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_8
    iget-object v0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->concurrentSurfaceCombinations:Ljava/util/List;

    goto :goto_1

    :cond_9
    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->getRequiredMaxBitDepth()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_a

    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->getCameraMode()I

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->surfaceCombinations10Bit:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_a
    :goto_1
    iget-object p0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->featureSettingsToSupportedCombinationsMap:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private final getSurfaceConfigList(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Z)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/core/impl/AttachedSurfaceInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;>;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroidx/camera/core/impl/AttachedSurfaceInfo;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;>;Z)",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/SurfaceConfig;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p6

    move-object/from16 v1, p7

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/camera/core/impl/AttachedSurfaceInfo;

    invoke-virtual {v4}, Landroidx/camera/core/impl/AttachedSurfaceInfo;->getSurfaceConfig()Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    move-object/from16 v0, p3

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    add-int/lit8 v4, v3, 0x1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Landroid/util/Size;

    move-object/from16 v5, p5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    move-object/from16 v13, p4

    invoke-interface {v13, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/core/impl/UseCaseConfig;

    invoke-interface {v3}, Landroidx/camera/core/impl/ImageInputConfig;->getInputFormat()I

    move-result v7

    invoke-interface {v3}, Landroidx/camera/core/impl/UseCaseConfig;->getStreamUseCase()Landroidx/camera/core/impl/StreamUseCase;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Landroidx/camera/core/impl/SurfaceConfig;->Companion:Landroidx/camera/core/impl/SurfaceConfig$Companion;

    invoke-virtual {p0, v7}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getUpdatedSurfaceSizeDefinitionByFormat(I)Landroidx/camera/core/impl/SurfaceSizeDefinition;

    move-result-object v9

    if-eqz p8, :cond_2

    sget-object v10, Landroidx/camera/core/impl/SurfaceConfig$ConfigSource;->FEATURE_COMBINATION_TABLE:Landroidx/camera/core/impl/SurfaceConfig$ConfigSource;

    :goto_2
    move-object v11, v10

    move v10, p1

    goto :goto_3

    :cond_2
    sget-object v10, Landroidx/camera/core/impl/SurfaceConfig$ConfigSource;->CAPTURE_SESSION_TABLES:Landroidx/camera/core/impl/SurfaceConfig$ConfigSource;

    goto :goto_2

    :goto_3
    invoke-virtual/range {v6 .. v12}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->transformSurfaceConfig(ILandroid/util/Size;Landroidx/camera/core/impl/SurfaceSizeDefinition;ILandroidx/camera/core/impl/SurfaceConfig$ConfigSource;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    move v3, v4

    goto :goto_1

    :cond_4
    return-object v2
.end method

.method private final getTargetFpsRange(Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)Landroid/util/Range;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/core/impl/AttachedSurfaceInfo;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;>;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroidx/camera/core/impl/StreamSpec;->FRAME_RATE_RANGE_UNSPECIFIED:Landroid/util/Range;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/impl/AttachedSurfaceInfo;

    invoke-virtual {v1}, Landroidx/camera/core/impl/AttachedSurfaceInfo;->getTargetFrameRate()Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, v1, v0, p4}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getUpdatedTargetFrameRate(Landroid/util/Range;Landroid/util/Range;Z)Landroid/util/Range;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/camera/core/impl/UseCaseConfig;

    sget-object v1, Landroidx/camera/core/impl/StreamSpec;->FRAME_RATE_RANGE_UNSPECIFIED:Landroid/util/Range;

    invoke-interface {p3, v1}, Landroidx/camera/core/impl/UseCaseConfig;->getTargetFrameRate(Landroid/util/Range;)Landroid/util/Range;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p3, v0, p4}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getUpdatedTargetFrameRate(Landroid/util/Range;Landroid/util/Range;Z)Landroid/util/Range;

    move-result-object v0

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method private final getUpdatedTargetFrameRate(Landroid/util/Range;Landroid/util/Range;Z)Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;Z)",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object p0, Landroidx/camera/core/impl/StreamSpec;->FRAME_RATE_RANGE_UNSPECIFIED:Landroid/util/Range;

    invoke-static {p2, p0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0

    :cond_0
    invoke-static {p2, p0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    invoke-static {p1, p0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    invoke-static {p1, p2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    const-string p2, "All targetFrameRate should be the same if strict fps is required"

    invoke-static {p0, p2}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    return-object p1

    :cond_3
    :try_start_0
    invoke-virtual {p2, p1}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :goto_0
    return-object p2
.end method

.method private final getUseCasesPriorityOrder(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;>;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/core/impl/UseCaseConfig;

    invoke-interface {v2, v3}, Landroidx/camera/core/impl/UseCaseConfig;->getSurfaceOccupancyPriority(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lnn1;->I(Ljava/util/List;)V

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/camera/core/impl/UseCaseConfig;

    invoke-interface {v4, v3}, Landroidx/camera/core/impl/UseCaseConfig;->getSurfaceOccupancyPriority(I)I

    move-result v5

    if-ne v1, v5, :cond_3

    invoke-interface {p1, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-object p0
.end method

.method private final isConfigFrameRateAcceptable(ILandroid/util/Range;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;I)Z"
        }
    .end annotation

    sget-object p0, Landroidx/camera/core/impl/StreamSpec;->FRAME_RATE_RANGE_UNSPECIFIED:Landroid/util/Range;

    invoke-static {p2, p0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    if-ge p3, p1, :cond_0

    invoke-virtual {p2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    if-ge p3, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private final isStrictFpsRequired(Ljava/util/List;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/core/impl/AttachedSurfaceInfo;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;>;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/impl/AttachedSurfaceInfo;

    invoke-virtual {v1}, Landroidx/camera/core/impl/AttachedSurfaceInfo;->isStrictFrameRateRequired()Z

    move-result v1

    invoke-direct {p0, v1, v0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getAndValidateIsStrictFpsRequired(ZLjava/lang/Boolean;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/camera/core/impl/UseCaseConfig;

    invoke-interface {p2}, Landroidx/camera/core/impl/UseCaseConfig;->isStrictFrameRateRequired()Z

    move-result p2

    invoke-direct {p0, p2, v0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getAndValidateIsStrictFpsRequired(ZLjava/lang/Boolean;)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private final isUseCasesCombinationSupported(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;Ljava/util/List;Ljava/util/Map;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/core/impl/AttachedSurfaceInfo;",
            ">;",
            "Ljava/util/Map<",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;+",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;>;)Z"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/AttachedSurfaceInfo;

    invoke-virtual {v0}, Landroidx/camera/core/impl/AttachedSurfaceInfo;->getSurfaceConfig()Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p2, Landroidx/camera/core/impl/utils/CompareSizesByArea;

    invoke-direct {p2}, Landroidx/camera/core/impl/utils/CompareSizesByArea;-><init>()V

    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/impl/UseCaseConfig;

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    check-cast v3, Ljava/util/Collection;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    move v5, v4

    goto :goto_3

    :cond_2
    :goto_2
    const/4 v5, 0x1

    :goto_3
    if-nez v5, :cond_3

    invoke-static {v3, p2}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Landroid/util/Size;

    invoke-interface {v1}, Landroidx/camera/core/impl/ImageInputConfig;->getInputFormat()I

    move-result v5

    invoke-interface {v1}, Landroidx/camera/core/impl/UseCaseConfig;->getStreamUseCase()Landroidx/camera/core/impl/StreamUseCase;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/camera/core/impl/SurfaceConfig;->Companion:Landroidx/camera/core/impl/SurfaceConfig$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v5}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getUpdatedSurfaceSizeDefinitionByFormat(I)Landroidx/camera/core/impl/SurfaceSizeDefinition;

    move-result-object v7

    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->getCameraMode()I

    move-result v8

    sget-object v9, Landroidx/camera/core/impl/SurfaceConfig$ConfigSource;->CAPTURE_SESSION_TABLES:Landroidx/camera/core/impl/SurfaceConfig$ConfigSource;

    invoke-virtual/range {v4 .. v10}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->transformSurfaceConfig(ILandroid/util/Size;Landroidx/camera/core/impl/SurfaceSizeDefinition;ILandroidx/camera/core/impl/SurfaceConfig$ConfigSource;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const-string p0, "No available output size is found for "

    const/16 p1, 0x2e

    invoke-static {v1, p0, p1}, Lw7;->g(Ljava/lang/Object;Ljava/lang/String;I)V

    return v4

    :cond_4
    const/16 v6, 0x1c

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v7}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->checkSupported$default(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private final populateReducedSizeListAndUniqueMaxFpsMap(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;Landroid/util/Size;IILandroidx/camera/core/impl/StreamUseCase;ZLjava/util/Map;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;",
            "Landroid/util/Size;",
            "II",
            "Landroidx/camera/core/impl/StreamUseCase;",
            "Z",
            "Ljava/util/Map<",
            "Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Landroidx/camera/core/impl/SurfaceConfig;->Companion:Landroidx/camera/core/impl/SurfaceConfig$Companion;

    invoke-virtual {p0, p3}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getUpdatedSurfaceSizeDefinitionByFormat(I)Landroidx/camera/core/impl/SurfaceSizeDefinition;

    move-result-object v3

    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->getCameraMode()I

    move-result v4

    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->getRequiresFeatureComboQuery()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/camera/core/impl/SurfaceConfig$ConfigSource;->FEATURE_COMBINATION_TABLE:Landroidx/camera/core/impl/SurfaceConfig$ConfigSource;

    :goto_0
    move-object v2, p2

    move-object v6, p5

    move-object v5, v1

    move v1, p3

    goto :goto_1

    :cond_0
    sget-object v1, Landroidx/camera/core/impl/SurfaceConfig$ConfigSource;->CAPTURE_SESSION_TABLES:Landroidx/camera/core/impl/SurfaceConfig$ConfigSource;

    goto :goto_0

    :goto_1
    invoke-virtual/range {v0 .. v6}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->transformSurfaceConfig(ILandroid/util/Size;Landroidx/camera/core/impl/SurfaceSizeDefinition;ILandroidx/camera/core/impl/SurfaceConfig$ConfigSource;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/camera/core/impl/SurfaceConfig;->getConfigSize()Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    move-result-object p2

    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->getTargetFpsRange()Landroid/util/Range;

    move-result-object p3

    sget-object p5, Landroidx/camera/core/impl/StreamSpec;->FRAME_RATE_RANGE_UNSPECIFIED:Landroid/util/Range;

    invoke-static {p3, p5}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    if-eqz p6, :cond_1

    goto :goto_2

    :cond_1
    const p0, 0x7fffffff

    goto :goto_3

    :cond_2
    :goto_2
    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isHighSpeedOn()Z

    move-result p3

    invoke-direct {p0, v1, v2, p3, p4}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getMaxFrameRate(ILandroid/util/Size;ZI)I

    move-result p0

    :goto_3
    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isFeatureComboInvocation()Z

    move-result p3

    if-eqz p3, :cond_3

    sget-object p3, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->NOT_SUPPORT:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    if-eq p2, p3, :cond_5

    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->getTargetFpsRange()Landroid/util/Range;

    move-result-object p3

    invoke-static {p3, p5}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->getTargetFpsRange()Landroid/util/Range;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-ge p0, p1, :cond_3

    goto :goto_4

    :cond_3
    invoke-interface {p7, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-nez p1, :cond_4

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {p7, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    invoke-interface {p8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_4
    return-void
.end method

.method private final populateStreamUseCaseIfSameSavedSizes(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/SurfaceConfig;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/core/impl/AttachedSurfaceInfo;",
            ">;",
            "Ljava/util/Map<",
            "Landroidx/camera/core/impl/AttachedSurfaceInfo;",
            "Landroidx/camera/core/impl/StreamSpec;",
            ">;",
            "Ljava/util/Map<",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;",
            "Landroidx/camera/core/impl/StreamSpec;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroidx/camera/core/impl/AttachedSurfaceInfo;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;>;)V"
        }
    .end annotation

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;->getMaxFpsForBestSizes()I

    move-result v0

    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;->getMaxFpsForStreamUseCase()I

    move-result v1

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;->getBestSizes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;->getBestSizesForStreamUseCase()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;->getBestSizes()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;->getBestSizesForStreamUseCase()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lqn1;->z0(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object p1, p3

    move-object p3, p5

    move-object p5, p6

    move-object p6, p7

    move-object p7, p2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb36;

    iget-object v1, v0, Lb36;->b:Ljava/lang/Object;

    iget-object v0, v0, Lb36;->c:Ljava/lang/Object;

    invoke-static {v1, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :goto_0
    sget-object p2, Landroidx/camera/camera2/internal/StreamUseCaseUtil;->INSTANCE:Landroidx/camera/camera2/internal/StreamUseCaseUtil;

    iget-object p0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    invoke-virtual {p2, p0, p1, p3, p4}, Landroidx/camera/camera2/internal/StreamUseCaseUtil;->populateStreamUseCaseStreamSpecOptionWithInteropOverride(Landroidx/camera/camera2/pipe/CameraMetadata;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual/range {p2 .. p7}, Landroidx/camera/camera2/internal/StreamUseCaseUtil;->populateStreamUseCaseStreamSpecOptionWithSupportedSurfaceConfigs(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private final refreshPreviewSize()V
    .locals 10

    iget-object v0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->displayInfoManager:Landroidx/camera/camera2/impl/DisplayInfoManager;

    invoke-virtual {v0}, Landroidx/camera/camera2/impl/DisplayInfoManager;->refreshPreviewSize()V

    iget-object v0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->surfaceSizeDefinition:Landroidx/camera/core/impl/SurfaceSizeDefinition;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->generateSurfaceSizeDefinition()V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->displayInfoManager:Landroidx/camera/camera2/impl/DisplayInfoManager;

    invoke-virtual {v0}, Landroidx/camera/camera2/impl/DisplayInfoManager;->getPreviewSize()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getSurfaceSizeDefinition$camera_camera2()Landroidx/camera/core/impl/SurfaceSizeDefinition;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/core/impl/SurfaceSizeDefinition;->getAnalysisSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getSurfaceSizeDefinition$camera_camera2()Landroidx/camera/core/impl/SurfaceSizeDefinition;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/core/impl/SurfaceSizeDefinition;->getS720pSizeMap()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getSurfaceSizeDefinition$camera_camera2()Landroidx/camera/core/impl/SurfaceSizeDefinition;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/core/impl/SurfaceSizeDefinition;->getS1440pSizeMap()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {p0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getSurfaceSizeDefinition$camera_camera2()Landroidx/camera/core/impl/SurfaceSizeDefinition;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/core/impl/SurfaceSizeDefinition;->getRecordSize()Landroid/util/Size;

    move-result-object v5

    invoke-virtual {p0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getSurfaceSizeDefinition$camera_camera2()Landroidx/camera/core/impl/SurfaceSizeDefinition;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/core/impl/SurfaceSizeDefinition;->getMaximumSizeMap()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {p0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getSurfaceSizeDefinition$camera_camera2()Landroidx/camera/core/impl/SurfaceSizeDefinition;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/core/impl/SurfaceSizeDefinition;->getMaximum4x3SizeMap()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {p0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getSurfaceSizeDefinition$camera_camera2()Landroidx/camera/core/impl/SurfaceSizeDefinition;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/core/impl/SurfaceSizeDefinition;->getMaximum16x9SizeMap()Ljava/util/Map;

    move-result-object v8

    invoke-virtual {p0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getSurfaceSizeDefinition$camera_camera2()Landroidx/camera/core/impl/SurfaceSizeDefinition;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/core/impl/SurfaceSizeDefinition;->getUltraMaximumSizeMap()Ljava/util/Map;

    move-result-object v9

    invoke-static/range {v1 .. v9}, Landroidx/camera/core/impl/SurfaceSizeDefinition;->create(Landroid/util/Size;Ljava/util/Map;Landroid/util/Size;Ljava/util/Map;Landroid/util/Size;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Landroidx/camera/core/impl/SurfaceSizeDefinition;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->setSurfaceSizeDefinition$camera_camera2(Landroidx/camera/core/impl/SurfaceSizeDefinition;)V

    return-void
.end method

.method private final resolveSpecsByCheckingMethod(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$CheckingMethod;Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Z)Landroidx/camera/core/impl/SurfaceStreamSpecQueryResult;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$CheckingMethod;",
            "Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/core/impl/AttachedSurfaceInfo;",
            ">;",
            "Ljava/util/Map<",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;+",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;>;",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;>;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;",
            "Landroidx/camera/core/DynamicRange;",
            ">;Z)",
            "Landroidx/camera/core/impl/SurfaceStreamSpecQueryResult;"
        }
    .end annotation

    move-object/from16 v1, p0

    sget-object v0, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    const-string v9, "CXCP"

    invoke-static {v9}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "resolveSpecsByCheckingMethod: checkingMethod = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move-object/from16 v3, p1

    :goto_0
    sget-object v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_6

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    const/16 v21, 0x37f

    const/16 v22, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v10, p2

    :try_start_0
    invoke-static/range {v10 .. v22}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->copy$default(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;IIZLandroidx/camera/core/impl/stabilization/VideoStabilization;ZZZZLandroid/util/Range;ZILjava/lang/Object;)Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;

    move-result-object v0

    invoke-direct {v1, v0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->validateSelf(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;)Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;

    move-result-object v2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v1 .. v8}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->resolveSpecsBySettings(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Z)Landroidx/camera/core/impl/SurfaceStreamSpecQueryResult;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v2, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    invoke-static {v9}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to find a supported combination without feature combo, trying again with feature combo"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/16 v21, 0x37f

    const/16 v22, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v10, p2

    invoke-static/range {v10 .. v22}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->copy$default(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;IIZLandroidx/camera/core/impl/stabilization/VideoStabilization;ZZZZLandroid/util/Range;ZILjava/lang/Object;)Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;

    move-result-object v0

    invoke-direct {v1, v0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->validateSelf(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;)Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;

    move-result-object v2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v1 .. v8}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->resolveSpecsBySettings(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Z)Landroidx/camera/core/impl/SurfaceStreamSpecQueryResult;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_2
    invoke-static {}, Lme0;->e()V

    const/4 v0, 0x0

    return-object v0

    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isFeatureComboInvocation()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual/range {p2 .. p2}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->getTargetFpsRange()Landroid/util/Range;

    move-result-object v0

    sget-object v2, Landroidx/camera/core/impl/StreamSpec;->FRAME_RATE_RANGE_UNSPECIFIED:Landroid/util/Range;

    if-ne v0, v2, :cond_5

    invoke-virtual/range {p2 .. p2}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->getRequiresFeatureComboQuery()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Landroidx/camera/core/featuregroup/impl/feature/FpsRangeFeature;->DEFAULT_FPS_RANGE:Landroid/util/Range;

    :goto_2
    move-object/from16 v19, v0

    goto :goto_3

    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->getTargetFpsRange()Landroid/util/Range;

    move-result-object v0

    goto :goto_2

    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->getTargetFpsRange()Landroid/util/Range;

    move-result-object v0

    goto :goto_2

    :goto_3
    const/16 v21, 0x27f

    const/16 v22, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v20, 0x0

    move-object/from16 v10, p2

    invoke-static/range {v10 .. v22}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->copy$default(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;IIZLandroidx/camera/core/impl/stabilization/VideoStabilization;ZZZZLandroid/util/Range;ZILjava/lang/Object;)Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;

    move-result-object v0

    invoke-direct {v1, v0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->validateSelf(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;)Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;

    move-result-object v2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v1 .. v8}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->resolveSpecsBySettings(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Z)Landroidx/camera/core/impl/SurfaceStreamSpecQueryResult;

    move-result-object v0

    return-object v0

    :cond_6
    const/16 v21, 0x37f

    const/16 v22, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v10, p2

    invoke-static/range {v10 .. v22}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->copy$default(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;IIZLandroidx/camera/core/impl/stabilization/VideoStabilization;ZZZZLandroid/util/Range;ZILjava/lang/Object;)Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;

    move-result-object v0

    invoke-direct {v1, v0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->validateSelf(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;)Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;

    move-result-object v2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v1 .. v8}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->resolveSpecsBySettings(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Z)Landroidx/camera/core/impl/SurfaceStreamSpecQueryResult;

    move-result-object v0

    return-object v0
.end method

.method private final resolveSpecsBySettings(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Z)Landroidx/camera/core/impl/SurfaceStreamSpecQueryResult;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/core/impl/AttachedSurfaceInfo;",
            ">;",
            "Ljava/util/Map<",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;+",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;>;",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;>;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;",
            "Landroidx/camera/core/DynamicRange;",
            ">;Z)",
            "Landroidx/camera/core/impl/SurfaceStreamSpecQueryResult;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v5, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    sget-object v1, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    const-string v10, "CXCP"

    invoke-static {v10}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "resolveSpecsBySettings: featureSettings = "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v5}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isFeatureComboInvocation()Z

    move-result v1

    const/16 v11, 0x2e

    const-string v12, ". New configs: "

    const-string v13, "No supported surface combination is found for camera device - Id : "

    if-nez v1, :cond_1

    invoke-direct/range {p0 .. p3}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->isUseCasesCombinationSupported(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;Ljava/util/List;Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    move-object/from16 v1, p3

    move/from16 v9, p7

    goto :goto_0

    :cond_2
    iget-object v0, v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->cameraId:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". May be attempting to bind too many use cases. Existing surfaces: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ". GroupableFeature settings: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_0
    invoke-virtual {v0, v1, v5, v9}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->filterSupportedSizes$camera_camera2(Ljava/util/Map;Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;Z)Ljava/util/Map;

    move-result-object v1

    move-object/from16 v4, p5

    invoke-direct {v0, v1, v3, v4}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getSupportedOutputSizesList(Ljava/util/Map;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v5}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isHighSpeedOn()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->highSpeedResolver:Landroidx/camera/camera2/internal/HighSpeedResolver;

    invoke-virtual {v8, v1}, Landroidx/camera/camera2/internal/HighSpeedResolver;->getSizeArrangements(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    goto :goto_1

    :cond_3
    invoke-direct {v0, v1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getAllPossibleSizeArrangements(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    :goto_1
    sget-object v8, Landroidx/camera/camera2/internal/StreamUseCaseUtil;->INSTANCE:Landroidx/camera/camera2/internal/StreamUseCaseUtil;

    invoke-virtual {v8, v2, v3}, Landroidx/camera/camera2/internal/StreamUseCaseUtil;->containsZslUseCase(Ljava/util/List;Ljava/util/List;)Z

    move-result v8

    iget-boolean v14, v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->isStreamUseCaseSupported:Z

    const/4 v15, 0x0

    if-eqz v14, :cond_5

    if-nez v8, :cond_5

    invoke-direct/range {v0 .. v7}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getOrderedSurfaceConfigListForStreamUseCase(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;

    move-result-object v8

    move-object v14, v6

    move-object/from16 v16, v7

    invoke-static {v10}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "orderedSurfaceConfigListForStreamUseCase = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object v7, v8

    goto :goto_2

    :cond_5
    move-object v14, v6

    move-object/from16 v16, v7

    move-object v7, v15

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isHighSpeedOn()Z

    move-result v3

    invoke-direct {v0, v2, v3}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getMaxSupportedFpsFromAttachedSurfaces(Ljava/util/List;Z)I

    move-result v4

    move-object/from16 v6, p1

    move-object/from16 v3, p4

    move-object/from16 v5, p5

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v9}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->findBestSizesAndFps(Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/util/List;Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;Ljava/util/List;Ljava/util/Map;Z)Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-static {v10}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "resolveSpecsBySettings: bestSizesAndFps = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v5, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    invoke-direct/range {v0 .. v5}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->generateSuggestedStreamSpecMap(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;)Ljava/util/Map;

    move-result-object v5

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v3, p2

    move-object v2, v7

    move-object v6, v14

    move-object/from16 v7, v16

    invoke-direct/range {v0 .. v7}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->populateStreamUseCaseIfSameSavedSizes(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    new-instance v0, Landroidx/camera/core/impl/SurfaceStreamSpecQueryResult;

    invoke-virtual {v1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;->getMaxFpsForAllSizes()I

    move-result v1

    invoke-direct {v0, v5, v4, v1}, Landroidx/camera/core/impl/SurfaceStreamSpecQueryResult;-><init>(Ljava/util/Map;Ljava/util/Map;I)V

    return-object v0

    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->cameraId:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " and Hardware level: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->hardwareLevel:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ". May be the specified resolution is too large and not supported. Existing surfaces: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v3, v11}, Lqg;->f(Ljava/lang/StringBuilder;Ljava/util/List;C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc9;->f(Ljava/lang/Object;)V

    return-object v15
.end method

.method private final updateMaximumSizeByFormat(Ljava/util/Map;ILandroid/util/Rational;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/util/Size;",
            ">;I",
            "Landroid/util/Rational;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->streamConfigurationMapCompat:Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;

    invoke-virtual {v0}, Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;->toStreamConfigurationMap()Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p2, v1, p3}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getMaxOutputSizeByFormat$camera_camera2(Landroid/hardware/camera2/params/StreamConfigurationMap;IZLandroid/util/Rational;)Landroid/util/Size;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static synthetic updateMaximumSizeByFormat$default(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;Ljava/util/Map;ILandroid/util/Rational;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->updateMaximumSizeByFormat(Ljava/util/Map;ILandroid/util/Rational;)V

    return-void
.end method

.method private final updateS720pOrS1440pSizeByFormat(Ljava/util/Map;Landroid/util/Size;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/util/Size;",
            ">;",
            "Landroid/util/Size;",
            "I)V"
        }
    .end annotation

    iget-boolean v0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->isConcurrentCameraModeSupported:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->streamConfigurationMapCompat:Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;

    invoke-virtual {v0}, Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;->toStreamConfigurationMap()Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-result-object v2

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v3, p3

    invoke-static/range {v1 .. v7}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getMaxOutputSizeByFormat$camera_camera2$default(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;Landroid/hardware/camera2/params/StreamConfigurationMap;IZLandroid/util/Rational;ILjava/lang/Object;)Landroid/util/Size;

    move-result-object p0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    filled-new-array {p2, p0}, [Landroid/util/Size;

    move-result-object p0

    invoke-static {p0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    new-instance p2, Landroidx/camera/core/impl/utils/CompareSizesByArea;

    invoke-direct {p2}, Landroidx/camera/core/impl/utils/CompareSizesByArea;-><init>()V

    invoke-static {p0, p2}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p0

    move-object p2, p0

    check-cast p2, Landroid/util/Size;

    :goto_0
    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final updateUltraMaximumSizeByFormat(Ljava/util/Map;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/util/Size;",
            ">;I)V"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_2

    iget-boolean v0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->isUltraHighResolutionSensorSupported:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, v1}, Landroidx/camera/camera2/pipe/CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/hardware/camera2/params/StreamConfigurationMap;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p0

    move v3, p2

    invoke-static/range {v1 .. v7}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getMaxOutputSizeByFormat$camera_camera2$default(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;Landroid/hardware/camera2/params/StreamConfigurationMap;IZLandroid/util/Rational;ILjava/lang/Object;)Landroid/util/Size;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method private final validateSelf(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;)Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;
    .locals 5

    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->getCameraMode()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, " camera mode."

    const-string v3, "Camera device Id is "

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isUltraHdrOn()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->cameraId:Ljava/lang/String;

    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->getCameraMode()I

    move-result p1

    invoke-static {p1}, Landroidx/camera/core/impl/CameraMode;->toLabelString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, ". Ultra HDR is not currently supported in "

    invoke-static {v3, p0, v0, p1, v2}, Ljg;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->getCameraMode()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->getRequiredMaxBitDepth()I

    move-result v0

    const/16 v4, 0xa

    if-eq v0, v4, :cond_2

    goto :goto_1

    :cond_2
    iget-object p0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->cameraId:Ljava/lang/String;

    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->getCameraMode()I

    move-result p1

    invoke-static {p1}, Landroidx/camera/core/impl/CameraMode;->toLabelString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, ". 10 bit dynamic range is not currently supported in "

    invoke-static {v3, p0, v0, p1, v2}, Ljg;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->getCameraMode()I

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isFeatureComboInvocation()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    iget-object p0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->cameraId:Ljava/lang/String;

    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->getCameraMode()I

    move-result p1

    invoke-static {p1}, Landroidx/camera/core/impl/CameraMode;->toLabelString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, ". feature combination is not currently supported in "

    invoke-static {v3, p0, v0, p1, v2}, Ljg;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :cond_5
    :goto_2
    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isHighSpeedOn()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isFeatureComboInvocation()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    const-string p0, "High-speed session is not supported with feature combination"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-object v1

    :cond_7
    :goto_3
    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isHighSpeedOn()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object p0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->highSpeedResolver:Landroidx/camera/camera2/internal/HighSpeedResolver;

    invoke-virtual {p0}, Landroidx/camera/camera2/internal/HighSpeedResolver;->isHighSpeedSupported()Z

    move-result p0

    if-eqz p0, :cond_8

    goto :goto_4

    :cond_8
    const-string p0, "High-speed session is not supported on this device."

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-object v1

    :cond_9
    :goto_4
    return-object p1
.end method


# virtual methods
.method public final applyResolutionSelectionOrderRelatedWorkarounds(Ljava/util/List;I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;I)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->targetAspectRatio:Landroidx/camera/camera2/compat/workaround/TargetAspectRatio;

    iget-object v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    iget-object v2, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->streamConfigurationMapCompat:Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;

    invoke-virtual {v0, v1, v2}, Landroidx/camera/camera2/compat/workaround/TargetAspectRatio;->get(Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "Undefined targetAspectRatio: "

    iget-object p0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->targetAspectRatio:Landroidx/camera/camera2/compat/workaround/TargetAspectRatio;

    invoke-static {p0, p1}, Lad2;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2

    :cond_1
    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getUpdatedSurfaceSizeDefinitionByFormat(I)Landroidx/camera/core/impl/SurfaceSizeDefinition;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/camera/core/impl/SurfaceSizeDefinition;->getMaximumSize(I)Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v2, Landroid/util/Rational;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-direct {v2, v1, v0}, Landroid/util/Rational;-><init>(II)V

    goto :goto_0

    :cond_2
    sget-object v2, Landroidx/camera/core/impl/utils/AspectRatioUtil;->ASPECT_RATIO_16_9:Landroid/util/Rational;

    goto :goto_0

    :cond_3
    sget-object v2, Landroidx/camera/core/impl/utils/AspectRatioUtil;->ASPECT_RATIO_4_3:Landroid/util/Rational;

    :cond_4
    :goto_0
    if-nez v2, :cond_5

    check-cast p1, Ljava/util/Collection;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Size;

    invoke-static {v3, v2}, Landroidx/camera/core/impl/utils/AspectRatioUtil;->hasMatchingAspectRatio(Landroid/util/Size;Landroid/util/Rational;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    const/4 p1, 0x0

    invoke-interface {v1, p1, v0}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-object v0, v1

    :goto_2
    iget-object p0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->resolutionCorrector:Landroidx/camera/camera2/compat/workaround/ResolutionCorrector;

    sget-object p1, Landroidx/camera/core/impl/SurfaceConfig;->Companion:Landroidx/camera/core/impl/SurfaceConfig$Companion;

    invoke-virtual {p1, p2}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->getConfigType(I)Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroidx/camera/camera2/compat/workaround/ResolutionCorrector;->insertOrPrioritize(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final checkSupported(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/SurfaceConfig;",
            ">;",
            "Ljava/util/Map<",
            "Landroidx/camera/core/impl/SurfaceConfig;",
            "Landroidx/camera/core/DynamicRange;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;>;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getSurfaceCombinationsByFeatureSettings(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/impl/SurfaceCombination;

    invoke-virtual {v1, p2}, Landroidx/camera/core/impl/SurfaceCombination;->getOrderedSupportedSurfaceConfigList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :cond_2
    :goto_0
    if-eqz v2, :cond_4

    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->getRequiresFeatureComboQuery()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct/range {p0 .. p5}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->createFeatureComboSessionConfig(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/util/List;)Landroidx/camera/core/impl/SessionConfig;

    move-result-object p1

    iget-object p0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->featureCombinationQuery:Landroidx/camera/core/featuregroup/impl/FeatureCombinationQuery;

    invoke-interface {p0, p1}, Landroidx/camera/core/featuregroup/impl/FeatureCombinationQuery;->isSupported(Landroidx/camera/core/impl/SessionConfig;)Z

    move-result p0

    invoke-virtual {p1}, Landroidx/camera/core/impl/SessionConfig;->getSurfaces()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/camera/core/impl/DeferrableSurface;

    invoke-virtual {p2}, Landroidx/camera/core/impl/DeferrableSurface;->close()V

    goto :goto_1

    :cond_3
    return p0

    :cond_4
    return v2
.end method

.method public final filterSupportedSizes$camera_camera2(Ljava/util/Map;Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;Z)Ljava/util/Map;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;+",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;>;",
            "Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;",
            "Z)",
            "Ljava/util/Map<",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;>;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/core/impl/UseCaseConfig;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroid/util/Size;

    invoke-interface {v2}, Landroidx/camera/core/impl/ImageInputConfig;->getInputFormat()I

    move-result v6

    invoke-interface {v2, v5}, Landroidx/camera/core/impl/UseCaseConfig;->getCustomMaxFrameRate(Landroid/util/Size;)I

    move-result v7

    invoke-interface {v2}, Landroidx/camera/core/impl/UseCaseConfig;->getStreamUseCase()Landroidx/camera/core/impl/StreamUseCase;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v3, p0

    move-object v4, p2

    move/from16 v9, p3

    invoke-direct/range {v3 .. v11}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->populateReducedSizeListAndUniqueMaxFpsMap(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;Landroid/util/Size;IILandroidx/camera/core/impl/StreamUseCase;ZLjava/util/Map;Ljava/util/List;)V

    goto :goto_1

    :cond_0
    invoke-interface {v0, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final getMaxOutputSizeByFormat$camera_camera2(Landroid/hardware/camera2/params/StreamConfigurationMap;IZLandroid/util/Rational;)Landroid/util/Size;
    .locals 2

    invoke-direct {p0, p1, p2, p4}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getOutputSizes(Landroid/hardware/camera2/params/StreamConfigurationMap;ILandroid/util/Rational;)[Landroid/util/Size;

    move-result-object p0

    const/4 p4, 0x0

    if-eqz p0, :cond_4

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Landroidx/camera/core/impl/utils/CompareSizesByArea;

    invoke-direct {v0}, Landroidx/camera/core/impl/utils/CompareSizesByArea;-><init>()V

    invoke-static {p0}, Laq5;->b([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Size;

    sget-object v1, Landroidx/camera/core/internal/utils/SizeUtil;->RESOLUTION_ZERO:Landroid/util/Size;

    if-eqz p3, :cond_3

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighResolutionOutputSizes(I)[Landroid/util/Size;

    move-result-object p4

    :cond_1
    if-eqz p4, :cond_3

    array-length p1, p4

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p4}, Laq5;->b([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/util/Size;

    :cond_3
    :goto_0
    filled-new-array {p0, v1}, [Landroid/util/Size;

    move-result-object p0

    invoke-static {p0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Size;

    return-object p0

    :cond_4
    :goto_1
    return-object p4
.end method

.method public final getSuggestedStreamSpecifications(ILjava/util/List;Ljava/util/Map;Landroidx/camera/core/impl/stabilization/VideoStabilization;ZZZ)Landroidx/camera/core/impl/SurfaceStreamSpecQueryResult;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/core/impl/AttachedSurfaceInfo;",
            ">;",
            "Ljava/util/Map<",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;+",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;>;",
            "Landroidx/camera/core/impl/stabilization/VideoStabilization;",
            "ZZZ)",
            "Landroidx/camera/core/impl/SurfaceStreamSpecQueryResult;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v11, p2

    move/from16 v5, p6

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->refreshPreviewSize()V

    sget-object v1, Landroidx/camera/camera2/internal/HighSpeedResolver;->Companion:Landroidx/camera/camera2/internal/HighSpeedResolver$Companion;

    move-object v2, v11

    check-cast v2, Ljava/util/Collection;

    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v1, v2, v3}, Landroidx/camera/camera2/internal/HighSpeedResolver$Companion;->isHighSpeedOn(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v1, v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->highSpeedResolver:Landroidx/camera/camera2/internal/HighSpeedResolver;

    move-object/from16 v2, p3

    invoke-virtual {v1, v2}, Landroidx/camera/camera2/internal/HighSpeedResolver;->filterCommonSupportedSizes(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    move-object v12, v1

    goto :goto_0

    :cond_0
    move-object/from16 v2, p3

    move-object v12, v2

    :goto_0
    invoke-interface {v12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lqn1;->t0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v13

    invoke-direct {v0, v13}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getUseCasesPriorityOrder(Ljava/util/List;)Ljava/util/List;

    move-result-object v14

    iget-object v1, v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->dynamicRangeResolver:Landroidx/camera/camera2/internal/DynamicRangeResolver;

    invoke-virtual {v1, v11, v13, v14}, Landroidx/camera/camera2/internal/DynamicRangeResolver;->resolveAndValidateDynamicRanges(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/util/Map;

    move-result-object v3

    sget-object v1, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    const-string v1, "CXCP"

    invoke-static {v1}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "resolvedDynamicRanges = "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v2, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->Companion:Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$Companion;

    invoke-static {v2, v11, v12}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$Companion;->access$isUltraHdrOn(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$Companion;Ljava/util/List;Ljava/util/Map;)Z

    move-result v4

    if-eqz p7, :cond_2

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v7, Landroidx/camera/core/impl/StreamSpec;->FRAME_RATE_RANGE_UNSPECIFIED:Landroid/util/Range;

    new-instance v8, Lb36;

    invoke-direct {v8, v2, v7}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-direct {v0, v11, v13}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->isStrictFpsRequired(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    invoke-direct {v0, v11, v13, v14, v2}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getTargetFpsRange(Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)Landroid/util/Range;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    new-instance v8, Lb36;

    invoke-direct {v8, v2, v7}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    iget-object v2, v8, Lb36;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    iget-object v2, v8, Lb36;->c:Ljava/lang/Object;

    move-object v9, v2

    check-cast v9, Landroid/util/Range;

    sget-object v2, Landroidx/camera/core/impl/stabilization/VideoStabilization;->PREVIEW:Landroidx/camera/core/impl/stabilization/VideoStabilization;

    move-object/from16 v7, p4

    if-ne v7, v2, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    invoke-static {v1}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v1

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v15, "getSuggestedStreamSpecifications: isPreviewStabilizationSupported = "

    invoke-direct {v8, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->access$isPreviewStabilizationSupported$p(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;)Z

    move-result v15

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, ", isFeatureComboInvocation = "

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-eqz v2, :cond_6

    iget-boolean v1, v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->isPreviewStabilizationSupported:Z

    if-nez v1, :cond_6

    if-nez v5, :cond_5

    goto :goto_3

    :cond_5
    const-string v0, "Preview stabilization is not supported by the camera."

    invoke-static {v0}, Lfg;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_6
    :goto_3
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v8, 0x0

    move v1, v5

    move v5, v4

    move-object v4, v7

    move v7, v1

    move/from16 v1, p1

    move/from16 v2, p5

    invoke-direct/range {v0 .. v10}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->createFeatureSettings(IZLjava/util/Map;Landroidx/camera/core/impl/stabilization/VideoStabilization;ZZZZLandroid/util/Range;Z)Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;

    move-result-object v6

    move-object v7, v3

    move v4, v5

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    move-object/from16 v0, p0

    move-object/from16 v3, p4

    move/from16 v5, p6

    move-object v2, v9

    invoke-direct/range {v0 .. v5}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getCheckingMethod(Ljava/util/Collection;Landroid/util/Range;Landroidx/camera/core/impl/stabilization/VideoStabilization;ZZ)Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$CheckingMethod;

    move-result-object v1

    move/from16 v8, p7

    move-object v2, v6

    move-object v3, v11

    move-object v4, v12

    move-object v5, v13

    move-object v6, v14

    invoke-direct/range {v0 .. v8}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->resolveSpecsByCheckingMethod(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$CheckingMethod;Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Z)Landroidx/camera/core/impl/SurfaceStreamSpecQueryResult;

    move-result-object v0

    return-object v0
.end method

.method public final getSurfaceSizeDefinition$camera_camera2()Landroidx/camera/core/impl/SurfaceSizeDefinition;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->surfaceSizeDefinition:Landroidx/camera/core/impl/SurfaceSizeDefinition;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "surfaceSizeDefinition"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final getUpdatedSurfaceSizeDefinitionByFormat(I)Landroidx/camera/core/impl/SurfaceSizeDefinition;
    .locals 7

    iget-object v0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->surfaceSizeDefinitionFormats:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getSurfaceSizeDefinition$camera_camera2()Landroidx/camera/core/impl/SurfaceSizeDefinition;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/core/impl/SurfaceSizeDefinition;->getS720pSizeMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/camera/core/internal/utils/SizeUtil;->RESOLUTION_720P:Landroid/util/Size;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, v0, v1, p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->updateS720pOrS1440pSizeByFormat(Ljava/util/Map;Landroid/util/Size;I)V

    invoke-virtual {p0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getSurfaceSizeDefinition$camera_camera2()Landroidx/camera/core/impl/SurfaceSizeDefinition;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/core/impl/SurfaceSizeDefinition;->getS1440pSizeMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/camera/core/internal/utils/SizeUtil;->RESOLUTION_1440P:Landroid/util/Size;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, v0, v1, p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->updateS720pOrS1440pSizeByFormat(Ljava/util/Map;Landroid/util/Size;I)V

    invoke-virtual {p0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getSurfaceSizeDefinition$camera_camera2()Landroidx/camera/core/impl/SurfaceSizeDefinition;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/core/impl/SurfaceSizeDefinition;->getMaximumSizeMap()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move v3, p1

    invoke-static/range {v1 .. v6}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->updateMaximumSizeByFormat$default(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;Ljava/util/Map;ILandroid/util/Rational;ILjava/lang/Object;)V

    invoke-virtual {v1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getSurfaceSizeDefinition$camera_camera2()Landroidx/camera/core/impl/SurfaceSizeDefinition;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/camera/core/impl/SurfaceSizeDefinition;->getMaximum4x3SizeMap()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Landroidx/camera/core/impl/utils/AspectRatioUtil;->ASPECT_RATIO_4_3:Landroid/util/Rational;

    invoke-direct {v1, p0, v3, p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->updateMaximumSizeByFormat(Ljava/util/Map;ILandroid/util/Rational;)V

    invoke-virtual {v1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getSurfaceSizeDefinition$camera_camera2()Landroidx/camera/core/impl/SurfaceSizeDefinition;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/camera/core/impl/SurfaceSizeDefinition;->getMaximum16x9SizeMap()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Landroidx/camera/core/impl/utils/AspectRatioUtil;->ASPECT_RATIO_16_9:Landroid/util/Rational;

    invoke-direct {v1, p0, v3, p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->updateMaximumSizeByFormat(Ljava/util/Map;ILandroid/util/Rational;)V

    invoke-virtual {v1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getSurfaceSizeDefinition$camera_camera2()Landroidx/camera/core/impl/SurfaceSizeDefinition;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/camera/core/impl/SurfaceSizeDefinition;->getUltraMaximumSizeMap()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, p0, v3}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->updateUltraMaximumSizeByFormat(Ljava/util/Map;I)V

    iget-object p0, v1, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->surfaceSizeDefinitionFormats:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    invoke-virtual {v1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getSurfaceSizeDefinition$camera_camera2()Landroidx/camera/core/impl/SurfaceSizeDefinition;

    move-result-object p0

    return-object p0
.end method

.method public final setSurfaceSizeDefinition$camera_camera2(Landroidx/camera/core/impl/SurfaceSizeDefinition;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->surfaceSizeDefinition:Landroidx/camera/core/impl/SurfaceSizeDefinition;

    return-void
.end method

.method public final transformSurfaceConfig(IILandroid/util/Size;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;
    .locals 7

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/camera/core/impl/SurfaceConfig;->Companion:Landroidx/camera/core/impl/SurfaceConfig$Companion;

    invoke-virtual {p0, p2}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getUpdatedSurfaceSizeDefinitionByFormat(I)Landroidx/camera/core/impl/SurfaceSizeDefinition;

    move-result-object v3

    sget-object v5, Landroidx/camera/core/impl/SurfaceConfig$ConfigSource;->CAPTURE_SESSION_TABLES:Landroidx/camera/core/impl/SurfaceConfig$ConfigSource;

    move v4, p1

    move v1, p2

    move-object v2, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->transformSurfaceConfig(ILandroid/util/Size;Landroidx/camera/core/impl/SurfaceSizeDefinition;ILandroidx/camera/core/impl/SurfaceConfig$ConfigSource;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object p0

    return-object p0
.end method
