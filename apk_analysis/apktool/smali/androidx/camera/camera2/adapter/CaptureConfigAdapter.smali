.class public final Landroidx/camera/camera2/adapter/CaptureConfigAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Landroidx/camera/camera2/config/UseCaseCameraScope;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/adapter/CaptureConfigAdapter$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/adapter/CaptureConfigAdapter$Companion;


# instance fields
.field private final isLegacyDevice:Z

.field private final templateParamsOverride:Landroidx/camera/camera2/compat/workaround/TemplateParamsOverride;

.field private final threads:Landroidx/camera/camera2/impl/UseCaseThreads;

.field private final useCaseGraphContext:Landroidx/camera/camera2/config/UseCaseGraphContext;

.field private final zslControl:Landroidx/camera/camera2/adapter/ZslControl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/adapter/CaptureConfigAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/adapter/CaptureConfigAdapter$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/camera/camera2/adapter/CaptureConfigAdapter;->Companion:Landroidx/camera/camera2/adapter/CaptureConfigAdapter$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/camera/camera2/impl/CameraProperties;Landroidx/camera/camera2/config/UseCaseGraphContext;Landroidx/camera/camera2/adapter/ZslControl;Landroidx/camera/camera2/impl/UseCaseThreads;Landroidx/camera/camera2/compat/workaround/TemplateParamsOverride;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/camera/camera2/adapter/CaptureConfigAdapter;->useCaseGraphContext:Landroidx/camera/camera2/config/UseCaseGraphContext;

    iput-object p3, p0, Landroidx/camera/camera2/adapter/CaptureConfigAdapter;->zslControl:Landroidx/camera/camera2/adapter/ZslControl;

    iput-object p4, p0, Landroidx/camera/camera2/adapter/CaptureConfigAdapter;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    iput-object p5, p0, Landroidx/camera/camera2/adapter/CaptureConfigAdapter;->templateParamsOverride:Landroidx/camera/camera2/compat/workaround/TemplateParamsOverride;

    sget-object p2, Landroidx/camera/camera2/pipe/CameraMetadata;->Companion:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    invoke-interface {p1}, Landroidx/camera/camera2/impl/CameraProperties;->getMetadata()Landroidx/camera/camera2/pipe/CameraMetadata;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->isHardwareLevelLegacy(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/camera/camera2/adapter/CaptureConfigAdapter;->isLegacyDevice:Z

    return-void
.end method

.method public static final synthetic access$buildImageClosingRequestListener$closeImageProxy(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    invoke-static {p0}, Landroidx/camera/camera2/adapter/CaptureConfigAdapter;->buildImageClosingRequestListener$closeImageProxy(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method

.method private final buildImageClosingRequestListener(Landroidx/camera/core/ImageProxy;)Landroidx/camera/camera2/pipe/Request$Listener;
    .locals 0

    new-instance p0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    new-instance p1, Landroidx/camera/camera2/adapter/CaptureConfigAdapter$buildImageClosingRequestListener$1;

    invoke-direct {p1, p0}, Landroidx/camera/camera2/adapter/CaptureConfigAdapter$buildImageClosingRequestListener$1;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-object p1
.end method

.method private static final buildImageClosingRequestListener$closeImageProxy(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroidx/camera/core/ImageProxy;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/core/ImageProxy;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroidx/camera/core/ImageProxy;->close()V

    :cond_0
    return-void
.end method

.method public static synthetic mapToRequest-nAberiA$default(Landroidx/camera/camera2/adapter/CaptureConfigAdapter;Landroidx/camera/core/impl/CaptureConfig;ILandroidx/camera/core/impl/Config;Ljava/util/List;ILjava/lang/Object;)Landroidx/camera/camera2/pipe/Request;
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    sget-object p4, Lkx2;->b:Lkx2;

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/adapter/CaptureConfigAdapter;->mapToRequest-nAberiA(Landroidx/camera/core/impl/CaptureConfig;ILandroidx/camera/core/impl/Config;Ljava/util/List;)Landroidx/camera/camera2/pipe/Request;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final mapToRequest-nAberiA(Landroidx/camera/core/impl/CaptureConfig;ILandroidx/camera/core/impl/Config;Ljava/util/List;)Landroidx/camera/camera2/pipe/Request;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/impl/CaptureConfig;",
            "I",
            "Landroidx/camera/core/impl/Config;",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/camera2/pipe/Request$Listener;",
            ">;)",
            "Landroidx/camera/camera2/pipe/Request;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroidx/camera/core/impl/CaptureConfig;->getSurfaces()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    check-cast v0, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/impl/DeferrableSurface;

    iget-object v3, p0, Landroidx/camera/camera2/adapter/CaptureConfigAdapter;->useCaseGraphContext:Landroidx/camera/camera2/config/UseCaseGraphContext;

    invoke-virtual {v3}, Landroidx/camera/camera2/config/UseCaseGraphContext;->getSurfaceToStreamMap()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    check-cast v3, Landroidx/camera/camera2/pipe/StreamId;

    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/StreamId;->unbox-impl()I

    move-result v1

    invoke-static {v1}, Landroidx/camera/camera2/pipe/StreamId;->box-impl(I)Landroidx/camera/camera2/pipe/StreamId;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p0, "Attempted to issue a capture with an unrecognized surface: "

    invoke-static {v1, p0}, Lvh;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2

    :cond_1
    new-instance v0, Landroidx/camera/camera2/impl/CameraCallbackMap;

    invoke-direct {v0}, Landroidx/camera/camera2/impl/CameraCallbackMap;-><init>()V

    invoke-virtual {p1}, Landroidx/camera/core/impl/CaptureConfig;->getCameraCaptureCallbacks()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/core/impl/CameraCaptureCallback;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, p0, Landroidx/camera/camera2/adapter/CaptureConfigAdapter;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    invoke-virtual {v5}, Landroidx/camera/camera2/impl/UseCaseThreads;->getSequentialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroidx/camera/camera2/impl/CameraCallbackMap;->addCaptureCallback(Landroidx/camera/core/impl/CameraCaptureCallback;Ljava/util/concurrent/Executor;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroidx/camera/core/impl/CaptureConfig;->getImplementationOptions()Landroidx/camera/core/impl/Config;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    invoke-direct {v3}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;-><init>()V

    invoke-virtual {v3, p3}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->insertAllOptions(Landroidx/camera/core/impl/Config;)Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    invoke-virtual {v3, v1}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->insertAllOptions(Landroidx/camera/core/impl/Config;)Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    sget-object p3, Landroidx/camera/core/impl/CaptureConfig;->OPTION_ROTATION:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {v1, p3}, Landroidx/camera/core/impl/Config;->containsOption(Landroidx/camera/core/impl/Config$Option;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1, p3}, Landroidx/camera/core/impl/Config;->retrieveOption(Landroidx/camera/core/impl/Config$Option;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, v5, p3}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->setCaptureRequestOption(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    :cond_3
    sget-object p3, Landroidx/camera/core/impl/CaptureConfig;->OPTION_JPEG_QUALITY:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {v1, p3}, Landroidx/camera/core/impl/Config;->containsOption(Landroidx/camera/core/impl/Config$Option;)Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1, p3}, Landroidx/camera/core/impl/Config;->retrieveOption(Landroidx/camera/core/impl/Config$Option;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    int-to-byte p3, p3

    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p3

    invoke-virtual {v3, v5, p3}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->setCaptureRequestOption(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    :cond_4
    invoke-virtual {p1}, Landroidx/camera/core/impl/CaptureConfig;->getTemplateType()I

    move-result p3

    invoke-static {p3}, Landroidx/camera/camera2/pipe/RequestTemplate;->constructor-impl(I)I

    move-result p3

    invoke-virtual {p1}, Landroidx/camera/core/impl/CaptureConfig;->getTemplateType()I

    move-result v1

    const/4 v5, 0x5

    if-ne v1, v5, :cond_9

    iget-object v1, p0, Landroidx/camera/camera2/adapter/CaptureConfigAdapter;->zslControl:Landroidx/camera/camera2/adapter/ZslControl;

    invoke-interface {v1}, Landroidx/camera/camera2/adapter/ZslControl;->isZslDisabledByUserCaseConfig()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Landroidx/camera/camera2/adapter/CaptureConfigAdapter;->zslControl:Landroidx/camera/camera2/adapter/ZslControl;

    invoke-interface {v1}, Landroidx/camera/camera2/adapter/ZslControl;->isZslDisabledByFlashMode()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Landroidx/camera/camera2/adapter/CaptureConfigAdapter;->zslControl:Landroidx/camera/camera2/adapter/ZslControl;

    invoke-interface {v1}, Landroidx/camera/camera2/adapter/ZslControl;->dequeueImageFromBuffer()Landroidx/camera/core/ImageProxy;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-interface {v1}, Landroidx/camera/core/ImageProxy;->getImageInfo()Landroidx/camera/core/ImageInfo;

    move-result-object v5

    invoke-static {v5}, Landroidx/camera/core/impl/CameraCaptureResults;->retrieveCameraCaptureResult(Landroidx/camera/core/ImageInfo;)Landroidx/camera/core/impl/CameraCaptureResult;

    move-result-object v5

    if-eqz v5, :cond_8

    instance-of v6, v5, Landroidx/camera/camera2/adapter/CaptureResultAdapter;

    if-eqz v6, :cond_7

    new-instance v6, Landroidx/camera/camera2/pipe/media/AndroidImage;

    invoke-interface {v1}, Landroidx/camera/core/ImageProxy;->getImage()Landroid/media/Image;

    move-result-object v7

    const-string v8, "Required value was null."

    if-eqz v7, :cond_6

    invoke-direct {v6, v7}, Landroidx/camera/camera2/pipe/media/AndroidImage;-><init>(Landroid/media/Image;)V

    check-cast v5, Landroidx/camera/camera2/adapter/CaptureResultAdapter;

    const-class v7, Landroidx/camera/camera2/pipe/FrameInfo;

    invoke-static {v7}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroidx/camera/camera2/adapter/CaptureResultAdapter;->unwrapAs(Lne4;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_5

    check-cast v5, Landroidx/camera/camera2/pipe/FrameInfo;

    new-instance v2, Landroidx/camera/camera2/pipe/InputRequest;

    invoke-direct {v2, v6, v5}, Landroidx/camera/camera2/pipe/InputRequest;-><init>(Landroidx/camera/camera2/pipe/media/ImageWrapper;Landroidx/camera/camera2/pipe/FrameInfo;)V

    invoke-direct {p0, v1}, Landroidx/camera/camera2/adapter/CaptureConfigAdapter;->buildImageClosingRequestListener(Landroidx/camera/core/ImageProxy;)Landroidx/camera/camera2/pipe/Request$Listener;

    move-result-object v1

    goto :goto_2

    :cond_5
    invoke-static {v8}, Lah;->f(Ljava/lang/String;)V

    return-object v2

    :cond_6
    invoke-static {v8}, Lah;->f(Ljava/lang/String;)V

    return-object v2

    :cond_7
    const-string p0, "Unexpected capture result type: "

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, p0}, Lvh;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2

    :cond_8
    move-object v1, v2

    :goto_2
    move-object v9, v2

    move-object v2, v1

    goto :goto_3

    :cond_9
    move-object v9, v2

    :goto_3
    if-nez v9, :cond_a

    sget-object p3, Landroidx/camera/camera2/adapter/CaptureConfigAdapter;->Companion:Landroidx/camera/camera2/adapter/CaptureConfigAdapter$Companion;

    iget-boolean v1, p0, Landroidx/camera/camera2/adapter/CaptureConfigAdapter;->isLegacyDevice:Z

    invoke-virtual {p3, p1, p2, v1}, Landroidx/camera/camera2/adapter/CaptureConfigAdapter$Companion;->getStillCaptureTemplate-CMLptTo$camera_camera2(Landroidx/camera/core/impl/CaptureConfig;IZ)I

    move-result p3

    :cond_a
    iget-object p0, p0, Landroidx/camera/camera2/adapter/CaptureConfigAdapter;->templateParamsOverride:Landroidx/camera/camera2/compat/workaround/TemplateParamsOverride;

    invoke-static {p3}, Landroidx/camera/camera2/pipe/RequestTemplate;->box-impl(I)Landroidx/camera/camera2/pipe/RequestTemplate;

    move-result-object p2

    invoke-interface {p0, p2}, Landroidx/camera/camera2/compat/workaround/TemplateParamsOverride;->getOverrideParams-xlOpshk(Landroidx/camera/camera2/pipe/RequestTemplate;)Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v3}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->build()Landroidx/camera/camera2/impl/Camera2ImplConfig;

    move-result-object p2

    invoke-static {p2}, Landroidx/camera/camera2/impl/Camera2ImplConfigKt;->toParameters(Landroidx/camera/core/impl/Config;)Ljava/util/Map;

    move-result-object p2

    invoke-static {p0, p2}, Ln05;->g(Ljava/util/Map;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v5

    invoke-static {}, Lu96;->e()Lar4;

    move-result-object p0

    invoke-virtual {p0, v0}, Lar4;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_b

    invoke-virtual {p0, v2}, Lar4;->add(Ljava/lang/Object;)Z

    :cond_b
    check-cast p4, Ljava/util/Collection;

    invoke-virtual {p0, p4}, Lar4;->addAll(Ljava/util/Collection;)Z

    invoke-static {p0}, Lu96;->d(Lar4;)Lar4;

    move-result-object v7

    invoke-static {}, Landroidx/camera/camera2/impl/TagsKt;->getCAMERAX_TAG_BUNDLE()Landroidx/camera/camera2/pipe/Metadata$Key;

    move-result-object p0

    invoke-virtual {p1}, Landroidx/camera/core/impl/CaptureConfig;->getTagBundle()Landroidx/camera/core/impl/TagBundle;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Landroidx/camera/camera2/pipe/Request;

    invoke-static {p3}, Landroidx/camera/camera2/pipe/RequestTemplate;->box-impl(I)Landroidx/camera/camera2/pipe/RequestTemplate;

    move-result-object v8

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v10}, Landroidx/camera/camera2/pipe/Request;-><init>(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Landroidx/camera/camera2/pipe/RequestTemplate;Landroidx/camera/camera2/pipe/InputRequest;Ljh2;)V

    return-object v3

    :cond_c
    const-string p0, "Attempted to issue a capture without surfaces using "

    invoke-static {p1, p0}, Lvh;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2
.end method
