.class public final Landroidx/camera/extensions/internal/Camera2ExtensionsVendorExtender;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/extensions/internal/VendorExtender;


# instance fields
.field private final camera2ExtensionMode:I

.field private final camera2ExtensionsInfo:Landroidx/camera/extensions/internal/Camera2ExtensionsInfoProvider;

.field private cameraExtensionCharacteristics:Landroid/hardware/camera2/CameraExtensionCharacteristics;

.field private cameraId:Ljava/lang/String;

.field private final extensionCharacteristicsAccessGuard:Landroidx/camera/extensions/internal/compat/workaround/ExtensionCharacteristicsAccessGuard;

.field private isCurrentExtensionModeSupported:Z

.field private isExtensionStrengthSupported:Z

.field private final lock:Ljava/lang/Object;

.field private final mode:I


# direct methods
.method public constructor <init>(ILandroidx/camera/extensions/internal/Camera2ExtensionsInfoProvider;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/camera/extensions/internal/Camera2ExtensionsVendorExtender;->mode:I

    iput-object p2, p0, Landroidx/camera/extensions/internal/Camera2ExtensionsVendorExtender;->camera2ExtensionsInfo:Landroidx/camera/extensions/internal/Camera2ExtensionsInfoProvider;

    new-instance p2, Landroidx/camera/extensions/internal/compat/workaround/ExtensionCharacteristicsAccessGuard;

    invoke-direct {p2}, Landroidx/camera/extensions/internal/compat/workaround/ExtensionCharacteristicsAccessGuard;-><init>()V

    iput-object p2, p0, Landroidx/camera/extensions/internal/Camera2ExtensionsVendorExtender;->extensionCharacteristicsAccessGuard:Landroidx/camera/extensions/internal/compat/workaround/ExtensionCharacteristicsAccessGuard;

    sget-object p2, Landroidx/camera/extensions/internal/Camera2ExtensionsUtil;->INSTANCE:Landroidx/camera/extensions/internal/Camera2ExtensionsUtil;

    invoke-virtual {p2, p1}, Landroidx/camera/extensions/internal/Camera2ExtensionsUtil;->convertCameraXModeToCamera2Mode(I)I

    move-result p1

    iput p1, p0, Landroidx/camera/extensions/internal/Camera2ExtensionsVendorExtender;->camera2ExtensionMode:I

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/extensions/internal/Camera2ExtensionsVendorExtender;->lock:Ljava/lang/Object;

    return-void
.end method

.method private final checkInitialized()V
    .locals 1

    iget-object p0, p0, Landroidx/camera/extensions/internal/Camera2ExtensionsVendorExtender;->cameraId:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string v0, "VendorExtender#init() must be called first"

    invoke-static {p0, v0}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    return-void
.end method

.method private final getAvailableCaptureRequestKeys()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Landroidx/camera/extensions/internal/Camera2ExtensionsVendorExtender;->isCamera2ExtensionAvailable()Z

    move-result v1

    sget-object v2, Lkx2;->b:Lkx2;

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    if-lt v1, v3, :cond_2

    :try_start_0
    iget-object v1, p0, Landroidx/camera/extensions/internal/Camera2ExtensionsVendorExtender;->cameraExtensionCharacteristics:Landroid/hardware/camera2/CameraExtensionCharacteristics;

    if-eqz v1, :cond_1

    iget p0, p0, Landroidx/camera/extensions/internal/Camera2ExtensionsVendorExtender;->camera2ExtensionMode:I

    invoke-virtual {v1, p0}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->getAvailableCaptureRequestKeys(I)Ljava/util/Set;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    const-string p0, "cameraExtensionCharacteristics"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string v0, "Camera2ExtExtender"

    const-string v1, "Failed to retrieve available capture request keys"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2

    :cond_2
    return-object v0
.end method

.method private final getCamera2ExtensionsMaximumSupportedSize()Landroid/util/Size;
    .locals 4

    iget-object v0, p0, Landroidx/camera/extensions/internal/Camera2ExtensionsVendorExtender;->camera2ExtensionsInfo:Landroidx/camera/extensions/internal/Camera2ExtensionsInfoProvider;

    iget-object v1, p0, Landroidx/camera/extensions/internal/Camera2ExtensionsVendorExtender;->cameraId:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    iget p0, p0, Landroidx/camera/extensions/internal/Camera2ExtensionsVendorExtender;->camera2ExtensionMode:I

    const/16 v3, 0x100

    invoke-interface {v0, v1, p0, v3}, Landroidx/camera/extensions/internal/Camera2ExtensionsInfoProvider;->getSupportedOutputSizes(Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Landroidx/camera/core/internal/utils/SizeUtil;->RESOLUTION_ZERO:Landroid/util/Size;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0

    :cond_0
    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Landroidx/camera/core/impl/utils/CompareSizesByArea;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/camera/core/impl/utils/CompareSizesByArea;-><init>(Z)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_1

    move-object v1, v2

    goto :goto_0

    :cond_2
    check-cast v1, Landroid/util/Size;

    return-object v1

    :cond_3
    invoke-static {}, Lqz0;->e()V

    return-object v2

    :cond_4
    const-string p0, "cameraId"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    throw v2
.end method

.method private final getExtensionSupportedSizes([I)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "[",
            "Landroid/util/Size;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget v4, p1, v3

    :try_start_0
    iget-object v5, p0, Landroidx/camera/extensions/internal/Camera2ExtensionsVendorExtender;->camera2ExtensionsInfo:Landroidx/camera/extensions/internal/Camera2ExtensionsInfoProvider;

    iget-object v6, p0, Landroidx/camera/extensions/internal/Camera2ExtensionsVendorExtender;->cameraId:Ljava/lang/String;

    if-eqz v6, :cond_1

    iget v7, p0, Landroidx/camera/extensions/internal/Camera2ExtensionsVendorExtender;->camera2ExtensionMode:I

    invoke-interface {v5, v6, v7, v4}, Landroidx/camera/extensions/internal/Camera2ExtensionsInfoProvider;->getSupportedOutputSizes(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    new-array v6, v2, [Landroid/util/Size;

    invoke-interface {v5, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/util/Size;

    array-length v6, v5

    if-nez v6, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    move v6, v2

    :goto_1
    if-nez v6, :cond_2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :catch_0
    move-exception v5

    goto :goto_2

    :cond_1
    const-string v5, "cameraId"

    invoke-static {v5}, Laa4;->j(Ljava/lang/String;)V

    const/4 v5, 0x0

    throw v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Failed to retrieve supported output sizes of format "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "Camera2ExtExtender"

    invoke-static {v6, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private final isCamera2ExtensionAvailable()Z
    .locals 2

    iget-object v0, p0, Landroidx/camera/extensions/internal/Camera2ExtensionsVendorExtender;->camera2ExtensionsInfo:Landroidx/camera/extensions/internal/Camera2ExtensionsInfoProvider;

    iget-object v1, p0, Landroidx/camera/extensions/internal/Camera2ExtensionsVendorExtender;->cameraId:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget p0, p0, Landroidx/camera/extensions/internal/Camera2ExtensionsVendorExtender;->camera2ExtensionMode:I

    invoke-interface {v0, v1, p0}, Landroidx/camera/extensions/internal/Camera2ExtensionsInfoProvider;->isExtensionAvailable(Ljava/lang/String;I)Z

    move-result p0

    return p0

    :cond_0
    const-string p0, "cameraId"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public createSessionProcessor(Landroid/content/Context;)Landroidx/camera/core/impl/SessionProcessor;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Landroidx/camera/extensions/internal/Camera2ExtensionsVendorExtender;->checkInitialized()V

    new-instance p1, Landroidx/camera/extensions/internal/sessionprocessor/Camera2ExtensionsSessionProcessor;

    invoke-direct {p0}, Landroidx/camera/extensions/internal/Camera2ExtensionsVendorExtender;->getAvailableCaptureRequestKeys()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Landroidx/camera/extensions/internal/Camera2ExtensionsVendorExtender;->mode:I

    invoke-direct {p1, v0, v1, p0}, Landroidx/camera/extensions/internal/sessionprocessor/Camera2ExtensionsSessionProcessor;-><init>(Ljava/util/List;ILandroidx/camera/extensions/internal/VendorExtender;)V

    return-object p1
.end method

.method public getAvailableCharacteristicsKeyValues()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "*>;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/camera/extensions/internal/Camera2ExtensionsVendorExtender;->checkInitialized()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x23

    if-lt v1, v2, :cond_3

    iget-object v1, p0, Landroidx/camera/extensions/internal/Camera2ExtensionsVendorExtender;->cameraExtensionCharacteristics:Landroid/hardware/camera2/CameraExtensionCharacteristics;

    const/4 v2, 0x0

    const-string v3, "cameraExtensionCharacteristics"

    if-eqz v1, :cond_2

    iget v4, p0, Landroidx/camera/extensions/internal/Camera2ExtensionsVendorExtender;->camera2ExtensionMode:I

    invoke-virtual {v1, v4}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->getKeys(I)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/CameraCharacteristics$Key;

    iget-object v5, p0, Landroidx/camera/extensions/internal/Camera2ExtensionsVendorExtender;->cameraExtensionCharacteristics:Landroid/hardware/camera2/CameraExtensionCharacteristics;

    if-eqz v5, :cond_1

    iget v6, p0, Landroidx/camera/extensions/internal/Camera2ExtensionsVendorExtender;->camera2ExtensionMode:I

    invoke-virtual {v5, v6, v4}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->get(ILandroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v3}, Laa4;->j(Ljava/lang/String;)V

    throw v2

    :cond_2
    invoke-static {v3}, Laa4;->j(Ljava/lang/String;)V

    throw v2

    :cond_3
    return-object v0
.end method

.method public getEstimatedCaptureLatencyRange(Landroid/util/Size;)Landroid/util/Range;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Size;",
            ")",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/camera/extensions/internal/Camera2ExtensionsVendorExtender;->checkInitialized()V

    invoke-direct {p0}, Landroidx/camera/extensions/internal/Camera2ExtensionsVendorExtender;->isCamera2ExtensionAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/camera/extensions/internal/Camera2ExtensionsVendorExtender;->cameraExtensionCharacteristics:Landroid/hardware/camera2/CameraExtensionCharacteristics;

    if-eqz v0, :cond_1

    iget v1, p0, Landroidx/camera/extensions/internal/Camera2ExtensionsVendorExtender;->camera2ExtensionMode:I

    if-nez p1, :cond_0

    invoke-direct {p0}, Landroidx/camera/extensions/internal/Camera2ExtensionsVendorExtender;->getCamera2ExtensionsMaximumSupportedSize()Landroid/util/Size;

    move-result-object p1

    :cond_0
    const/16 p0, 0x100

    invoke-virtual {v0, v1, p1, p0}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->getEstimatedCaptureLatencyRangeMillis(ILandroid/util/Size;I)Landroid/util/Range;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "cameraExtensionCharacteristics"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    throw v1

    :cond_2
    return-object v1
.end method

.method public getSupportedCaptureOutputResolutions()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "[",
            "Landroid/util/Size;",
            ">;>;"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/camera/extensions/internal/Camera2ExtensionsVendorExtender;->checkInitialized()V

    invoke-direct {p0}, Landroidx/camera/extensions/internal/Camera2ExtensionsVendorExtender;->isCamera2ExtensionAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x23

    const/16 v1, 0x1005

    const/16 v2, 0x100

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/camera/extensions/internal/Camera2ExtensionsVendorExtender;->getExtensionSupportedSizes([I)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lkx2;->b:Lkx2;

    return-object p0
.end method

.method public getSupportedCaptureResultKeys()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "*>;>;"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/camera/extensions/internal/Camera2ExtensionsVendorExtender;->checkInitialized()V

    invoke-direct {p0}, Landroidx/camera/extensions/internal/Camera2ExtensionsVendorExtender;->isCamera2ExtensionAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Landroidx/camera/extensions/internal/Camera2ExtensionsVendorExtender;->cameraExtensionCharacteristics:Landroid/hardware/camera2/CameraExtensionCharacteristics;

    if-eqz v0, :cond_0

    iget p0, p0, Landroidx/camera/extensions/internal/Camera2ExtensionsVendorExtender;->camera2ExtensionMode:I

    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->getAvailableCaptureResultKeys(I)Ljava/util/Set;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lqn1;->t0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "cameraExtensionCharacteristics"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    sget-object p0, Lkx2;->b:Lkx2;

    return-object p0
.end method

.method public getSupportedPostviewResolutions(Landroid/util/Size;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Size;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;>;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Landroidx/camera/extensions/internal/Camera2ExtensionsVendorExtender;->checkInitialized()V

    invoke-direct {p0}, Landroidx/camera/extensions/internal/Camera2ExtensionsVendorExtender;->isCamera2ExtensionAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lmx2;->b:Lmx2;

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x22

    if-ge v1, v2, :cond_1

    goto :goto_3

    :cond_1
    const/16 v1, 0x23

    const/16 v2, 0x1005

    const/16 v3, 0x100

    filled-new-array {v3, v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_4

    aget v3, v1, v2

    :try_start_0
    iget-object v4, p0, Landroidx/camera/extensions/internal/Camera2ExtensionsVendorExtender;->cameraExtensionCharacteristics:Landroid/hardware/camera2/CameraExtensionCharacteristics;

    if-eqz v4, :cond_2

    iget v5, p0, Landroidx/camera/extensions/internal/Camera2ExtensionsVendorExtender;->camera2ExtensionMode:I

    invoke-virtual {v4, v5, p1, v3}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->getPostviewSupportedSizes(ILandroid/util/Size;I)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v5, v4

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catch_0
    move-exception v4

    goto :goto_1

    :cond_2
    const-string v4, "cameraExtensionCharacteristics"

    invoke-static {v4}, Laa4;->j(Ljava/lang/String;)V

    const/4 v4, 0x0

    throw v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failed to retrieve postview supported output sizes of format "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "Camera2ExtExtender"

    invoke-static {v5, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_3
    return-object v0
.end method

.method public getSupportedPreviewOutputResolutions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "[",
            "Landroid/util/Size;",
            ">;>;"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/camera/extensions/internal/Camera2ExtensionsVendorExtender;->checkInitialized()V

    invoke-direct {p0}, Landroidx/camera/extensions/internal/Camera2ExtensionsVendorExtender;->isCamera2ExtensionAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x22

    const/16 v1, 0x23

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/camera/extensions/internal/Camera2ExtensionsVendorExtender;->getExtensionSupportedSizes([I)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lkx2;->b:Lkx2;

    return-object p0
.end method

.method public getSupportedYuvAnalysisResolutions()[Landroid/util/Size;
    .locals 0

    invoke-direct {p0}, Landroidx/camera/extensions/internal/Camera2ExtensionsVendorExtender;->checkInitialized()V

    invoke-super {p0}, Landroidx/camera/extensions/internal/VendorExtender;->getSupportedYuvAnalysisResolutions()[Landroid/util/Size;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public init(Landroidx/camera/core/CameraInfo;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Landroidx/camera/core/impl/CameraInfoInternal;

    invoke-interface {p1}, Landroidx/camera/core/impl/CameraInfoInternal;->getCameraId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroidx/camera/extensions/internal/Camera2ExtensionsVendorExtender;->cameraId:Ljava/lang/String;

    iget-object v0, p0, Landroidx/camera/extensions/internal/Camera2ExtensionsVendorExtender;->camera2ExtensionsInfo:Landroidx/camera/extensions/internal/Camera2ExtensionsInfoProvider;

    invoke-interface {v0, p1}, Landroidx/camera/extensions/internal/Camera2ExtensionsInfoProvider;->getExtensionCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraExtensionCharacteristics;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lu4;->b(Ljava/lang/Object;)Landroid/hardware/camera2/CameraExtensionCharacteristics;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/extensions/internal/Camera2ExtensionsVendorExtender;->cameraExtensionCharacteristics:Landroid/hardware/camera2/CameraExtensionCharacteristics;

    invoke-direct {p0}, Landroidx/camera/extensions/internal/Camera2ExtensionsVendorExtender;->isCamera2ExtensionAvailable()Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "cameraExtensionCharacteristics"

    const/16 v3, 0x22

    if-eqz p1, :cond_1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v3, :cond_1

    iget-object p1, p0, Landroidx/camera/extensions/internal/Camera2ExtensionsVendorExtender;->cameraExtensionCharacteristics:Landroid/hardware/camera2/CameraExtensionCharacteristics;

    if-eqz p1, :cond_0

    iget v4, p0, Landroidx/camera/extensions/internal/Camera2ExtensionsVendorExtender;->camera2ExtensionMode:I

    invoke-virtual {p1, v4}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->getAvailableCaptureRequestKeys(I)Ljava/util/Set;

    move-result-object p1

    invoke-static {}, Lyq;->b()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_0
    invoke-static {v2}, Laa4;->j(Ljava/lang/String;)V

    throw v1

    :cond_1
    move p1, v0

    :goto_0
    iput-boolean p1, p0, Landroidx/camera/extensions/internal/Camera2ExtensionsVendorExtender;->isExtensionStrengthSupported:Z

    invoke-direct {p0}, Landroidx/camera/extensions/internal/Camera2ExtensionsVendorExtender;->isCamera2ExtensionAvailable()Z

    move-result p1

    if-eqz p1, :cond_3

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v3, :cond_3

    iget-object p1, p0, Landroidx/camera/extensions/internal/Camera2ExtensionsVendorExtender;->cameraExtensionCharacteristics:Landroid/hardware/camera2/CameraExtensionCharacteristics;

    if-eqz p1, :cond_2

    iget v0, p0, Landroidx/camera/extensions/internal/Camera2ExtensionsVendorExtender;->camera2ExtensionMode:I

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->getAvailableCaptureResultKeys(I)Ljava/util/Set;

    move-result-object p1

    invoke-static {}, Lxp;->a()Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_2
    invoke-static {v2}, Laa4;->j(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_1
    iput-boolean v0, p0, Landroidx/camera/extensions/internal/Camera2ExtensionsVendorExtender;->isCurrentExtensionModeSupported:Z

    return-void
.end method

.method public isCaptureProcessProgressAvailable()Z
    .locals 3

    invoke-direct {p0}, Landroidx/camera/extensions/internal/Camera2ExtensionsVendorExtender;->checkInitialized()V

    invoke-direct {p0}, Landroidx/camera/extensions/internal/Camera2ExtensionsVendorExtender;->isCamera2ExtensionAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x22

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Landroidx/camera/extensions/internal/Camera2ExtensionsVendorExtender;->extensionCharacteristicsAccessGuard:Landroidx/camera/extensions/internal/compat/workaround/ExtensionCharacteristicsAccessGuard;

    invoke-virtual {v0}, Landroidx/camera/extensions/internal/compat/workaround/ExtensionCharacteristicsAccessGuard;->allowCaptureProcessProgressAvailabilityCheck()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Landroidx/camera/extensions/internal/Camera2ExtensionsVendorExtender;->cameraExtensionCharacteristics:Landroid/hardware/camera2/CameraExtensionCharacteristics;

    if-eqz v0, :cond_0

    iget p0, p0, Landroidx/camera/extensions/internal/Camera2ExtensionsVendorExtender;->camera2ExtensionMode:I

    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->isCaptureProcessProgressAvailable(I)Z

    move-result v1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    const-string p0, "cameraExtensionCharacteristics"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v0, "Camera2ExtExtender"

    const-string v2, "Failed to retrieve capture process progress availability"

    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return v1
.end method

.method public isCurrentExtensionModeAvailable()Z
    .locals 0

    invoke-direct {p0}, Landroidx/camera/extensions/internal/Camera2ExtensionsVendorExtender;->checkInitialized()V

    iget-boolean p0, p0, Landroidx/camera/extensions/internal/Camera2ExtensionsVendorExtender;->isCurrentExtensionModeSupported:Z

    return p0
.end method

.method public isExtensionAvailable(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p0, Landroidx/camera/extensions/internal/Camera2ExtensionsVendorExtender;->camera2ExtensionsInfo:Landroidx/camera/extensions/internal/Camera2ExtensionsInfoProvider;

    iget p0, p0, Landroidx/camera/extensions/internal/Camera2ExtensionsVendorExtender;->camera2ExtensionMode:I

    invoke-interface {p2, p1, p0}, Landroidx/camera/extensions/internal/Camera2ExtensionsInfoProvider;->isExtensionAvailable(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public isExtensionStrengthAvailable()Z
    .locals 0

    invoke-direct {p0}, Landroidx/camera/extensions/internal/Camera2ExtensionsVendorExtender;->checkInitialized()V

    iget-boolean p0, p0, Landroidx/camera/extensions/internal/Camera2ExtensionsVendorExtender;->isExtensionStrengthSupported:Z

    return p0
.end method

.method public isPostviewAvailable()Z
    .locals 3

    invoke-direct {p0}, Landroidx/camera/extensions/internal/Camera2ExtensionsVendorExtender;->checkInitialized()V

    invoke-direct {p0}, Landroidx/camera/extensions/internal/Camera2ExtensionsVendorExtender;->isCamera2ExtensionAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x22

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Landroidx/camera/extensions/internal/Camera2ExtensionsVendorExtender;->extensionCharacteristicsAccessGuard:Landroidx/camera/extensions/internal/compat/workaround/ExtensionCharacteristicsAccessGuard;

    invoke-virtual {v0}, Landroidx/camera/extensions/internal/compat/workaround/ExtensionCharacteristicsAccessGuard;->allowPostviewAvailabilityCheck()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Landroidx/camera/extensions/internal/Camera2ExtensionsVendorExtender;->cameraExtensionCharacteristics:Landroid/hardware/camera2/CameraExtensionCharacteristics;

    if-eqz v0, :cond_0

    iget p0, p0, Landroidx/camera/extensions/internal/Camera2ExtensionsVendorExtender;->camera2ExtensionMode:I

    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->isPostviewAvailable(I)Z

    move-result v1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    const-string p0, "cameraExtensionCharacteristics"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v0, "Camera2ExtExtender"

    const-string v2, "Failed to retrieve postview availability"

    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return v1
.end method
