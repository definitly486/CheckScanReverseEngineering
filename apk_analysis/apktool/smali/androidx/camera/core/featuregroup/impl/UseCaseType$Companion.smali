.class public final Landroidx/camera/core/featuregroup/impl/UseCaseType$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/featuregroup/impl/UseCaseType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/featuregroup/impl/UseCaseType$Companion$WhenMappings;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljh2;)V
    .locals 0

    invoke-direct {p0}, Landroidx/camera/core/featuregroup/impl/UseCaseType$Companion;-><init>()V

    return-void
.end method

.method private final isConfiguredToUseCaseByApp(Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;Landroidx/camera/core/UseCase;)Z
    .locals 1

    sget-object v0, Landroidx/camera/core/featuregroup/impl/UseCaseType$Companion$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    invoke-direct {p0, p2}, Landroidx/camera/core/featuregroup/impl/UseCaseType$Companion;->isRecordingQualityConfiguredByApp(Landroidx/camera/core/UseCase;)Z

    move-result p0

    return p0

    :cond_0
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-direct {p0, p2}, Landroidx/camera/core/featuregroup/impl/UseCaseType$Companion;->isImageFormatConfiguredByApp(Landroidx/camera/core/UseCase;)Z

    move-result p0

    return p0

    :cond_2
    invoke-direct {p0, p2}, Landroidx/camera/core/featuregroup/impl/UseCaseType$Companion;->isStabilizationModeConfiguredByApp(Landroidx/camera/core/UseCase;)Z

    move-result p0

    return p0

    :cond_3
    invoke-direct {p0, p2}, Landroidx/camera/core/featuregroup/impl/UseCaseType$Companion;->isFpsRangeConfiguredByApp(Landroidx/camera/core/UseCase;)Z

    move-result p0

    return p0

    :cond_4
    invoke-direct {p0, p2}, Landroidx/camera/core/featuregroup/impl/UseCaseType$Companion;->isDynamicRangeConfiguredByApp(Landroidx/camera/core/UseCase;)Z

    move-result p0

    return p0
.end method

.method private final isDynamicRangeConfiguredByApp(Landroidx/camera/core/UseCase;)Z
    .locals 0

    invoke-virtual {p1}, Landroidx/camera/core/UseCase;->getAppConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object p0

    invoke-interface {p0}, Landroidx/camera/core/impl/ImageInputConfig;->hasDynamicRange()Z

    move-result p0

    return p0
.end method

.method private final isFpsRangeConfiguredByApp(Landroidx/camera/core/UseCase;)Z
    .locals 0

    invoke-virtual {p1}, Landroidx/camera/core/UseCase;->getAppConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object p0

    invoke-interface {p0}, Landroidx/camera/core/impl/UseCaseConfig;->hasTargetFrameRate()Z

    move-result p0

    return p0
.end method

.method private final isImageFormatConfiguredByApp(Landroidx/camera/core/UseCase;)Z
    .locals 0

    invoke-virtual {p1}, Landroidx/camera/core/UseCase;->getAppConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object p0

    sget-object p1, Landroidx/camera/core/impl/ImageCaptureConfig;->OPTION_OUTPUT_FORMAT:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {p0, p1}, Landroidx/camera/core/impl/ReadableConfig;->containsOption(Landroidx/camera/core/impl/Config$Option;)Z

    move-result p0

    return p0
.end method

.method private final isRecordingQualityConfiguredByApp(Landroidx/camera/core/UseCase;)Z
    .locals 1

    invoke-virtual {p1}, Landroidx/camera/core/UseCase;->getAppConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object p0

    sget-object p1, Landroidx/camera/core/impl/UseCaseConfig;->OPTION_IS_VIDEO_QUALITY_SELECTOR_DEFAULT:Landroidx/camera/core/impl/Config$Option;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1, v0}, Landroidx/camera/core/impl/ReadableConfig;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private final isStabilizationModeConfiguredByApp(Landroidx/camera/core/UseCase;)Z
    .locals 1

    invoke-virtual {p1}, Landroidx/camera/core/UseCase;->getAppConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object p0

    sget-object v0, Landroidx/camera/core/impl/UseCaseConfig;->OPTION_PREVIEW_STABILIZATION_MODE:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {p0, v0}, Landroidx/camera/core/impl/ReadableConfig;->containsOption(Landroidx/camera/core/impl/Config$Option;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Landroidx/camera/core/UseCase;->getAppConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object p0

    sget-object p1, Landroidx/camera/core/impl/UseCaseConfig;->OPTION_VIDEO_STABILIZATION_MODE:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {p0, p1}, Landroidx/camera/core/impl/ReadableConfig;->containsOption(Landroidx/camera/core/impl/Config$Option;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final getAppConfiguredGroupableFeatureType$camera_core(Landroidx/camera/core/UseCase;)Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;->getEntries()Lg03;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;

    sget-object v2, Landroidx/camera/core/featuregroup/impl/UseCaseType;->Companion:Landroidx/camera/core/featuregroup/impl/UseCaseType$Companion;

    invoke-direct {v2, v1, p1}, Landroidx/camera/core/featuregroup/impl/UseCaseType$Companion;->isConfiguredToUseCaseByApp(Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;Landroidx/camera/core/UseCase;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;

    return-object v0
.end method

.method public final getFeatureGroupUseCaseType(Landroidx/camera/core/UseCase;)Landroidx/camera/core/featuregroup/impl/UseCaseType;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    instance-of p0, p1, Landroidx/camera/core/Preview;

    if-eqz p0, :cond_0

    .line 49
    sget-object p0, Landroidx/camera/core/featuregroup/impl/UseCaseType;->PREVIEW:Landroidx/camera/core/featuregroup/impl/UseCaseType;

    return-object p0

    .line 50
    :cond_0
    instance-of p0, p1, Landroidx/camera/core/ImageCapture;

    if-eqz p0, :cond_1

    .line 51
    sget-object p0, Landroidx/camera/core/featuregroup/impl/UseCaseType;->IMAGE_CAPTURE:Landroidx/camera/core/featuregroup/impl/UseCaseType;

    return-object p0

    .line 52
    :cond_1
    instance-of p0, p1, Landroidx/camera/core/ImageAnalysis;

    if-eqz p0, :cond_2

    .line 53
    sget-object p0, Landroidx/camera/core/featuregroup/impl/UseCaseType;->IMAGE_ANALYSIS:Landroidx/camera/core/featuregroup/impl/UseCaseType;

    return-object p0

    .line 54
    :cond_2
    invoke-static {p1}, Landroidx/camera/core/impl/utils/UseCaseUtil;->isVideoCapture(Landroidx/camera/core/UseCase;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 55
    sget-object p0, Landroidx/camera/core/featuregroup/impl/UseCaseType;->VIDEO_CAPTURE:Landroidx/camera/core/featuregroup/impl/UseCaseType;

    return-object p0

    .line 56
    :cond_3
    instance-of p0, p1, Landroidx/camera/core/streamsharing/StreamSharing;

    if-eqz p0, :cond_4

    .line 57
    sget-object p0, Landroidx/camera/core/featuregroup/impl/UseCaseType;->STREAM_SHARING:Landroidx/camera/core/featuregroup/impl/UseCaseType;

    return-object p0

    .line 58
    :cond_4
    sget-object p0, Landroidx/camera/core/featuregroup/impl/UseCaseType;->UNDEFINED:Landroidx/camera/core/featuregroup/impl/UseCaseType;

    return-object p0
.end method

.method public final getFeatureGroupUseCaseType(Landroidx/camera/core/impl/UseCaseConfig;)Landroidx/camera/core/featuregroup/impl/UseCaseType;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;)",
            "Landroidx/camera/core/featuregroup/impl/UseCaseType;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Landroidx/camera/core/impl/UseCaseConfig;->getCaptureType()Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    move-result-object p0

    sget-object p1, Landroidx/camera/core/featuregroup/impl/UseCaseType$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, p1, p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_4

    const/4 p1, 0x2

    if-eq p0, p1, :cond_3

    const/4 p1, 0x3

    if-eq p0, p1, :cond_2

    const/4 p1, 0x4

    if-eq p0, p1, :cond_1

    const/4 p1, 0x5

    if-eq p0, p1, :cond_0

    sget-object p0, Landroidx/camera/core/featuregroup/impl/UseCaseType;->UNDEFINED:Landroidx/camera/core/featuregroup/impl/UseCaseType;

    return-object p0

    :cond_0
    sget-object p0, Landroidx/camera/core/featuregroup/impl/UseCaseType;->STREAM_SHARING:Landroidx/camera/core/featuregroup/impl/UseCaseType;

    return-object p0

    :cond_1
    sget-object p0, Landroidx/camera/core/featuregroup/impl/UseCaseType;->VIDEO_CAPTURE:Landroidx/camera/core/featuregroup/impl/UseCaseType;

    return-object p0

    :cond_2
    sget-object p0, Landroidx/camera/core/featuregroup/impl/UseCaseType;->PREVIEW:Landroidx/camera/core/featuregroup/impl/UseCaseType;

    return-object p0

    :cond_3
    sget-object p0, Landroidx/camera/core/featuregroup/impl/UseCaseType;->IMAGE_CAPTURE:Landroidx/camera/core/featuregroup/impl/UseCaseType;

    return-object p0

    :cond_4
    sget-object p0, Landroidx/camera/core/featuregroup/impl/UseCaseType;->IMAGE_ANALYSIS:Landroidx/camera/core/featuregroup/impl/UseCaseType;

    return-object p0
.end method
