.class public final Landroidx/camera/camera2/impl/FocusMeteringControl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/impl/UseCaseCameraControl;
.implements Landroidx/camera/camera2/impl/UseCaseManager$RunningUseCasesChangeListener;


# annotations
.annotation runtime Landroidx/camera/camera2/config/CameraScope;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/impl/FocusMeteringControl$Bindings;,
        Landroidx/camera/camera2/impl/FocusMeteringControl$Companion;
    }
.end annotation


# static fields
.field public static final AUTO_FOCUS_TIMEOUT_DURATION:J = 0x1388L

.field public static final Companion:Landroidx/camera/camera2/impl/FocusMeteringControl$Companion;

.field public static final METERING_WEIGHT_DEFAULT:I = 0x3e8


# instance fields
.field private _requestControl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

.field private autoCancelJob:Lmb4;

.field private final availableAeModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/AeMode;",
            ">;"
        }
    .end annotation
.end field

.field private final availableAfModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/AfMode;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraProperties:Landroidx/camera/camera2/impl/CameraProperties;

.field private cancelSignal:Lxp1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxp1<",
            "Landroidx/camera/camera2/pipe/Result3A;",
            ">;"
        }
    .end annotation
.end field

.field private focusTimeoutJob:Lmb4;

.field private final maxAeRegionCount:Ljava/lang/Integer;

.field private final maxAfRegionCount:Ljava/lang/Integer;

.field private final maxAwbRegionCount:Ljava/lang/Integer;

.field private final meteringRegionCorrection:Landroidx/camera/camera2/compat/workaround/MeteringRegionCorrection;

.field private previewAspectRatio:Landroid/util/Rational;

.field private final state3AControl:Landroidx/camera/camera2/impl/State3AControl;

.field private final supportsAutoFocusTrigger:Z

.field private final threads:Landroidx/camera/camera2/impl/UseCaseThreads;

.field private updateSignal:Lxp1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxp1<",
            "Landroidx/camera/core/FocusMeteringResult;",
            ">;"
        }
    .end annotation
.end field

.field private final zoomCompat:Landroidx/camera/camera2/compat/ZoomCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/impl/FocusMeteringControl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/impl/FocusMeteringControl$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/camera/camera2/impl/FocusMeteringControl;->Companion:Landroidx/camera/camera2/impl/FocusMeteringControl$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/camera/camera2/impl/CameraProperties;Landroidx/camera/camera2/compat/workaround/MeteringRegionCorrection;Landroidx/camera/camera2/impl/State3AControl;Landroidx/camera/camera2/impl/UseCaseThreads;Landroidx/camera/camera2/compat/ZoomCompat;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/impl/FocusMeteringControl;->cameraProperties:Landroidx/camera/camera2/impl/CameraProperties;

    iput-object p2, p0, Landroidx/camera/camera2/impl/FocusMeteringControl;->meteringRegionCorrection:Landroidx/camera/camera2/compat/workaround/MeteringRegionCorrection;

    iput-object p3, p0, Landroidx/camera/camera2/impl/FocusMeteringControl;->state3AControl:Landroidx/camera/camera2/impl/State3AControl;

    iput-object p4, p0, Landroidx/camera/camera2/impl/FocusMeteringControl;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    iput-object p5, p0, Landroidx/camera/camera2/impl/FocusMeteringControl;->zoomCompat:Landroidx/camera/camera2/compat/ZoomCompat;

    invoke-interface {p1}, Landroidx/camera/camera2/impl/CameraProperties;->getMetadata()Landroidx/camera/camera2/pipe/CameraMetadata;

    move-result-object p2

    sget-object p3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AF:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p4, 0x0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-interface {p2, p3, p5}, Landroidx/camera/camera2/pipe/CameraMetadata;->getOrDefault(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Landroidx/camera/camera2/impl/FocusMeteringControl;->maxAfRegionCount:Ljava/lang/Integer;

    invoke-interface {p1}, Landroidx/camera/camera2/impl/CameraProperties;->getMetadata()Landroidx/camera/camera2/pipe/CameraMetadata;

    move-result-object p2

    sget-object p3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p2, p3, p5}, Landroidx/camera/camera2/pipe/CameraMetadata;->getOrDefault(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Landroidx/camera/camera2/impl/FocusMeteringControl;->maxAeRegionCount:Ljava/lang/Integer;

    invoke-interface {p1}, Landroidx/camera/camera2/impl/CameraProperties;->getMetadata()Landroidx/camera/camera2/pipe/CameraMetadata;

    move-result-object p2

    sget-object p3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AWB:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p2, p3, p5}, Landroidx/camera/camera2/pipe/CameraMetadata;->getOrDefault(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Landroidx/camera/camera2/impl/FocusMeteringControl;->maxAwbRegionCount:Ljava/lang/Integer;

    sget-object p2, Landroidx/camera/camera2/pipe/CameraMetadata;->Companion:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    invoke-interface {p1}, Landroidx/camera/camera2/impl/CameraProperties;->getMetadata()Landroidx/camera/camera2/pipe/CameraMetadata;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->getSupportsAutoFocusTrigger(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/camera/camera2/impl/FocusMeteringControl;->supportsAutoFocusTrigger:Z

    invoke-interface {p1}, Landroidx/camera/camera2/impl/CameraProperties;->getMetadata()Landroidx/camera/camera2/pipe/CameraMetadata;

    move-result-object p1

    sget-object p2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p2}, Landroidx/camera/camera2/pipe/CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    new-instance p3, Ljava/util/ArrayList;

    array-length p5, p1

    invoke-direct {p3, p5}, Ljava/util/ArrayList;-><init>(I)V

    array-length p5, p1

    move v0, p4

    :goto_0
    if-ge v0, p5, :cond_1

    aget v1, p1, v0

    sget-object v2, Landroidx/camera/camera2/pipe/AeMode;->Companion:Landroidx/camera/camera2/pipe/AeMode$Companion;

    invoke-virtual {v2, v1}, Landroidx/camera/camera2/pipe/AeMode$Companion;->fromIntOrNull-kQd0u18(I)Landroidx/camera/camera2/pipe/AeMode;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object p3, p2

    :cond_1
    iput-object p3, p0, Landroidx/camera/camera2/impl/FocusMeteringControl;->availableAeModes:Ljava/util/List;

    iget-object p1, p0, Landroidx/camera/camera2/impl/FocusMeteringControl;->cameraProperties:Landroidx/camera/camera2/impl/CameraProperties;

    invoke-interface {p1}, Landroidx/camera/camera2/impl/CameraProperties;->getMetadata()Landroidx/camera/camera2/pipe/CameraMetadata;

    move-result-object p1

    sget-object p3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p3}, Landroidx/camera/camera2/pipe/CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    if-eqz p1, :cond_2

    new-instance p2, Ljava/util/ArrayList;

    array-length p3, p1

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    array-length p3, p1

    :goto_1
    if-ge p4, p3, :cond_2

    aget p5, p1, p4

    sget-object v0, Landroidx/camera/camera2/pipe/AfMode;->Companion:Landroidx/camera/camera2/pipe/AfMode$Companion;

    invoke-virtual {v0, p5}, Landroidx/camera/camera2/pipe/AfMode$Companion;->fromIntOrNull-MKXwA8g(I)Landroidx/camera/camera2/pipe/AfMode;

    move-result-object p5

    invoke-interface {p2, p5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_2
    iput-object p2, p0, Landroidx/camera/camera2/impl/FocusMeteringControl;->availableAfModes:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lxp1;Lmk2;Landroidx/camera/camera2/impl/FocusMeteringControl;ZLjava/lang/Throwable;)Lj59;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/impl/FocusMeteringControl;->propagateToFocusMeteringResultDeferred$lambda$0(Lxp1;Lmk2;Landroidx/camera/camera2/impl/FocusMeteringControl;ZLjava/lang/Throwable;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$cancelFocusAndMeteringNowAsync(Landroidx/camera/camera2/impl/FocusMeteringControl;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;Lxp1;)Lmk2;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/impl/FocusMeteringControl;->cancelFocusAndMeteringNowAsync(Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;Lxp1;)Lmk2;

    move-result-object p0

    return-object p0
.end method

.method private final cancelFocusAndMeteringNowAsync(Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;Lxp1;)Lmk2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;",
            "Lxp1<",
            "Landroidx/camera/core/FocusMeteringResult;",
            ">;)",
            "Lmk2<",
            "Landroidx/camera/camera2/pipe/Result3A;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_0

    const-string v0, "Cancelled by cancelFocusAndMetering()"

    invoke-direct {p0, p2, v0}, Landroidx/camera/camera2/impl/FocusMeteringControl;->setCancelException(Lxp1;Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Landroidx/camera/camera2/impl/FocusMeteringControl;->state3AControl:Landroidx/camera/camera2/impl/State3AControl;

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroidx/camera/camera2/impl/State3AControl;->setPreferredFocusModeAsync(Ljava/lang/Integer;)Lmk2;

    invoke-interface {p1}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;->cancelFocusAndMeteringAsync()Lmk2;

    move-result-object p0

    return-object p0
.end method

.method private final getCropSensorRegion()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/impl/FocusMeteringControl;->zoomCompat:Landroidx/camera/camera2/compat/ZoomCompat;

    invoke-interface {p0}, Landroidx/camera/camera2/compat/ZoomCompat;->getCropSensorRegion()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method private final getDefaultAspectRatio()Landroid/util/Rational;
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/impl/FocusMeteringControl;->previewAspectRatio:Landroid/util/Rational;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/Rational;

    invoke-direct {p0}, Landroidx/camera/camera2/impl/FocusMeteringControl;->getCropSensorRegion()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-direct {p0}, Landroidx/camera/camera2/impl/FocusMeteringControl;->getCropSensorRegion()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/util/Rational;-><init>(II)V

    :cond_0
    return-object v0
.end method

.method private final getSupportedAeMode-rTgdhRc(I)I
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/impl/FocusMeteringControl;->availableAeModes:Ljava/util/List;

    if-nez v0, :cond_0

    sget-object p0, Landroidx/camera/camera2/pipe/AeMode;->Companion:Landroidx/camera/camera2/pipe/AeMode$Companion;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/AeMode$Companion;->getOFF-bOjpiJc()I

    move-result p0

    return p0

    :cond_0
    invoke-static {p1}, Landroidx/camera/camera2/pipe/AeMode;->box-impl(I)Landroidx/camera/camera2/pipe/AeMode;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return p1

    :cond_1
    iget-object p0, p0, Landroidx/camera/camera2/impl/FocusMeteringControl;->availableAeModes:Ljava/util/List;

    sget-object p1, Landroidx/camera/camera2/pipe/AeMode;->Companion:Landroidx/camera/camera2/pipe/AeMode$Companion;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/AeMode$Companion;->getON-bOjpiJc()I

    move-result v0

    invoke-static {v0}, Landroidx/camera/camera2/pipe/AeMode;->box-impl(I)Landroidx/camera/camera2/pipe/AeMode;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/AeMode$Companion;->getON-bOjpiJc()I

    move-result p0

    return p0

    :cond_2
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/AeMode$Companion;->getOFF-bOjpiJc()I

    move-result p0

    return p0
.end method

.method private final isAfModeSupported-wvCmZyc(I)Z
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/impl/FocusMeteringControl;->availableAfModes:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p1}, Landroidx/camera/camera2/pipe/AfMode;->box-impl(I)Landroidx/camera/camera2/pipe/AfMode;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private final propagateToFocusMeteringResultDeferred(Lmk2;Lxp1;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmk2<",
            "Landroidx/camera/camera2/pipe/Result3A;",
            ">;",
            "Lxp1<",
            "Landroidx/camera/core/FocusMeteringResult;",
            ">;Z)V"
        }
    .end annotation

    new-instance v0, Lbi3;

    invoke-direct {v0, p2, p1, p0, p3}, Lbi3;-><init>(Lxp1;Lmk2;Landroidx/camera/camera2/impl/FocusMeteringControl;Z)V

    invoke-interface {p1, v0}, Lmb4;->g(Lnl3;)Lhp2;

    return-void
.end method

.method private static final propagateToFocusMeteringResultDeferred$lambda$0(Lxp1;Lmk2;Landroidx/camera/camera2/impl/FocusMeteringControl;ZLjava/lang/Throwable;)Lj59;
    .locals 2

    const-string v0, "CXCP"

    if-eqz p4, :cond_1

    sget-object p1, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    invoke-static {v0}, Landroidx/camera/core/Logger;->isWarnEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p1

    const-string p2, "propagateToFocusMeteringResultDeferred: completed exceptionally!"

    invoke-static {p1, p2, p4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    invoke-interface {p0, p4}, Lxp1;->e(Ljava/lang/Throwable;)Z

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lmk2;->m()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/camera2/pipe/Result3A;

    sget-object p4, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    invoke-static {v0}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "propagateToFocusMeteringResultDeferred: result3A = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/Result3A;->getStatus-JvTi9ms()I

    move-result p4

    sget-object v0, Landroidx/camera/camera2/pipe/Result3A$Status;->Companion:Landroidx/camera/camera2/pipe/Result3A$Status$Companion;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/Result3A$Status$Companion;->getSUBMIT_FAILED-JvTi9ms()I

    move-result v1

    invoke-static {p4, v1}, Landroidx/camera/camera2/pipe/Result3A$Status;->equals-impl0(II)Z

    move-result p4

    if-eqz p4, :cond_3

    new-instance p1, Landroidx/camera/core/CameraControl$OperationCanceledException;

    const-string p2, "Camera is not active."

    invoke-direct {p1, p2}, Landroidx/camera/core/CameraControl$OperationCanceledException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lxp1;->e(Ljava/lang/Throwable;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/Result3A;->getStatus-JvTi9ms()I

    move-result p4

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/Result3A$Status$Companion;->getTIME_LIMIT_REACHED-JvTi9ms()I

    move-result v0

    invoke-static {p4, v0}, Landroidx/camera/camera2/pipe/Result3A$Status;->equals-impl0(II)Z

    move-result p4

    if-eqz p4, :cond_4

    const/4 p1, 0x0

    invoke-static {p1}, Landroidx/camera/core/FocusMeteringResult;->create(Z)Landroidx/camera/core/FocusMeteringResult;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0, p1}, Lxp1;->f(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-direct {p2, p1, p3}, Landroidx/camera/camera2/impl/FocusMeteringControl;->toFocusMeteringResult(Landroidx/camera/camera2/pipe/Result3A;Z)Landroidx/camera/core/FocusMeteringResult;

    move-result-object p1

    invoke-interface {p0, p1}, Lxp1;->f(Ljava/lang/Object;)Z

    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private final setCancelException(Lxp1;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lxp1<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance p0, Landroidx/camera/core/CameraControl$OperationCanceledException;

    invoke-direct {p0, p2}, Landroidx/camera/core/CameraControl$OperationCanceledException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lxp1;->e(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public static synthetic startFocusAndMetering$default(Landroidx/camera/camera2/impl/FocusMeteringControl;Landroidx/camera/core/FocusMeteringAction;JILjava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const-wide/16 p2, 0x1388

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/camera/camera2/impl/FocusMeteringControl;->startFocusAndMetering(Landroidx/camera/core/FocusMeteringAction;J)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method private final toFocusMeteringResult(Landroidx/camera/camera2/pipe/Result3A;Z)Landroidx/camera/core/FocusMeteringResult;
    .locals 3

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/Result3A;->getStatus-JvTi9ms()I

    move-result v0

    sget-object v1, Landroidx/camera/camera2/pipe/Result3A$Status;->Companion:Landroidx/camera/camera2/pipe/Result3A$Status$Companion;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/Result3A$Status$Companion;->getOK-JvTi9ms()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/camera/camera2/pipe/Result3A$Status;->equals-impl0(II)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Landroidx/camera/core/FocusMeteringResult;->create(Z)Landroidx/camera/core/FocusMeteringResult;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0

    :cond_0
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/Result3A;->getFrameMetadata()Landroidx/camera/camera2/pipe/FrameMetadata;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, v2}, Landroidx/camera/camera2/pipe/FrameMetadata;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez p2, :cond_2

    goto :goto_2

    :cond_2
    sget-object p2, Landroidx/camera/camera2/pipe/AfMode;->Companion:Landroidx/camera/camera2/pipe/AfMode$Companion;

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/AfMode$Companion;->getAUTO-vHZNRtE()I

    move-result p2

    invoke-direct {p0, p2}, Landroidx/camera/camera2/impl/FocusMeteringControl;->isAfModeSupported-wvCmZyc(I)Z

    move-result p0

    const/4 p2, 0x1

    if-nez p0, :cond_3

    :goto_1
    move v1, p2

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/Result3A;->getFrameMetadata()Landroidx/camera/camera2/pipe/FrameMetadata;

    move-result-object p0

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    const/4 p0, 0x4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, p0, :cond_6

    goto :goto_1

    :cond_6
    :goto_2
    invoke-static {v1}, Landroidx/camera/core/FocusMeteringResult;->create(Z)Landroidx/camera/core/FocusMeteringResult;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method private final triggerAutoCancel(JLxp1;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lxp1<",
            "Landroidx/camera/core/FocusMeteringResult;",
            ">;",
            "Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/camera/camera2/impl/FocusMeteringControl;->autoCancelJob:Lmb4;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/impl/FocusMeteringControl;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    invoke-virtual {v0}, Landroidx/camera/camera2/impl/UseCaseThreads;->getSequentialScope()Ly22;

    move-result-object v0

    new-instance v2, Landroidx/camera/camera2/impl/FocusMeteringControl$triggerAutoCancel$1;

    const/4 v8, 0x0

    move-object v5, p0

    move-wide v3, p1

    move-object v7, p3

    move-object v6, p4

    invoke-direct/range {v2 .. v8}, Landroidx/camera/camera2/impl/FocusMeteringControl$triggerAutoCancel$1;-><init>(JLandroidx/camera/camera2/impl/FocusMeteringControl;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;Lxp1;Le02;)V

    const/4 p0, 0x3

    invoke-static {v0, v1, v1, v2, p0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    move-result-object p0

    iput-object p0, v5, Landroidx/camera/camera2/impl/FocusMeteringControl;->autoCancelJob:Lmb4;

    return-void
.end method

.method private final triggerFocusTimeout(JLxp1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lxp1<",
            "Landroidx/camera/core/FocusMeteringResult;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/camera/camera2/impl/FocusMeteringControl;->focusTimeoutJob:Lmb4;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/impl/FocusMeteringControl;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    invoke-virtual {v0}, Landroidx/camera/camera2/impl/UseCaseThreads;->getSequentialScope()Ly22;

    move-result-object v0

    new-instance v2, Landroidx/camera/camera2/impl/FocusMeteringControl$triggerFocusTimeout$1;

    invoke-direct {v2, p1, p2, p3, v1}, Landroidx/camera/camera2/impl/FocusMeteringControl$triggerFocusTimeout$1;-><init>(JLxp1;Le02;)V

    const/4 p1, 0x3

    invoke-static {v0, v1, v1, v2, p1}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/impl/FocusMeteringControl;->focusTimeoutJob:Lmb4;

    return-void
.end method


# virtual methods
.method public final cancelFocusAndMeteringAsync()Lmk2;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmk2<",
            "Landroidx/camera/camera2/pipe/Result3A;",
            ">;"
        }
    .end annotation

    new-instance v0, Lyp1;

    invoke-direct {v0}, Lyp1;-><init>()V

    invoke-virtual {p0}, Landroidx/camera/camera2/impl/FocusMeteringControl;->getRequestControl()Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, p0, Landroidx/camera/camera2/impl/FocusMeteringControl;->focusTimeoutJob:Lmb4;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v2, v3}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    iget-object v2, p0, Landroidx/camera/camera2/impl/FocusMeteringControl;->autoCancelJob:Lmb4;

    if-eqz v2, :cond_1

    invoke-interface {v2, v3}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_1
    iget-object v2, p0, Landroidx/camera/camera2/impl/FocusMeteringControl;->cancelSignal:Lxp1;

    if-eqz v2, :cond_2

    const-string v3, "Cancelled by another cancelFocusAndMetering()"

    invoke-direct {p0, v2, v3}, Landroidx/camera/camera2/impl/FocusMeteringControl;->setCancelException(Lxp1;Ljava/lang/String;)V

    :cond_2
    iput-object v0, p0, Landroidx/camera/camera2/impl/FocusMeteringControl;->cancelSignal:Lxp1;

    iget-object v2, p0, Landroidx/camera/camera2/impl/FocusMeteringControl;->updateSignal:Lxp1;

    invoke-direct {p0, v1, v2}, Landroidx/camera/camera2/impl/FocusMeteringControl;->cancelFocusAndMeteringNowAsync(Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;Lxp1;)Lmk2;

    move-result-object p0

    invoke-static {p0, v0}, Landroidx/camera/camera2/adapter/CoroutineAdaptersKt;->propagateTo(Lmk2;Lxp1;)V

    return-object v0

    :cond_3
    new-instance p0, Landroidx/camera/core/CameraControl$OperationCanceledException;

    const-string v1, "Camera is not active."

    invoke-direct {p0, v1}, Landroidx/camera/core/CameraControl$OperationCanceledException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lyp1;->e(Ljava/lang/Throwable;)Z

    return-object v0
.end method

.method public getRequestControl()Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/impl/FocusMeteringControl;->_requestControl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    return-object p0
.end method

.method public final isFocusMeteringSupported(Landroidx/camera/core/FocusMeteringAction;)Z
    .locals 9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/camera/camera2/impl/FocusMeteringControl;->Companion:Landroidx/camera/camera2/impl/FocusMeteringControl$Companion;

    invoke-virtual {p1}, Landroidx/camera/core/FocusMeteringAction;->getMeteringPointsAe()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Landroidx/camera/camera2/impl/FocusMeteringControl;->maxAeRegionCount:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-direct {p0}, Landroidx/camera/camera2/impl/FocusMeteringControl;->getCropSensorRegion()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {p0}, Landroidx/camera/camera2/impl/FocusMeteringControl;->getDefaultAspectRatio()Landroid/util/Rational;

    move-result-object v4

    const/4 v5, 0x2

    iget-object v6, p0, Landroidx/camera/camera2/impl/FocusMeteringControl;->meteringRegionCorrection:Landroidx/camera/camera2/compat/workaround/MeteringRegionCorrection;

    invoke-virtual/range {v0 .. v6}, Landroidx/camera/camera2/impl/FocusMeteringControl$Companion;->meteringRegionsFromMeteringPoints(Ljava/util/List;ILandroid/graphics/Rect;Landroid/util/Rational;ILandroidx/camera/camera2/compat/workaround/MeteringRegionCorrection;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {p1}, Landroidx/camera/core/FocusMeteringAction;->getMeteringPointsAf()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Landroidx/camera/camera2/impl/FocusMeteringControl;->maxAfRegionCount:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-direct {p0}, Landroidx/camera/camera2/impl/FocusMeteringControl;->getCropSensorRegion()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {p0}, Landroidx/camera/camera2/impl/FocusMeteringControl;->getDefaultAspectRatio()Landroid/util/Rational;

    move-result-object v4

    const/4 v5, 0x1

    iget-object v6, p0, Landroidx/camera/camera2/impl/FocusMeteringControl;->meteringRegionCorrection:Landroidx/camera/camera2/compat/workaround/MeteringRegionCorrection;

    invoke-virtual/range {v0 .. v6}, Landroidx/camera/camera2/impl/FocusMeteringControl$Companion;->meteringRegionsFromMeteringPoints(Ljava/util/List;ILandroid/graphics/Rect;Landroid/util/Rational;ILandroidx/camera/camera2/compat/workaround/MeteringRegionCorrection;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {p1}, Landroidx/camera/core/FocusMeteringAction;->getMeteringPointsAwb()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Landroidx/camera/camera2/impl/FocusMeteringControl;->maxAwbRegionCount:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-direct {p0}, Landroidx/camera/camera2/impl/FocusMeteringControl;->getCropSensorRegion()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {p0}, Landroidx/camera/camera2/impl/FocusMeteringControl;->getDefaultAspectRatio()Landroid/util/Rational;

    move-result-object v4

    const/4 v5, 0x4

    iget-object v6, p0, Landroidx/camera/camera2/impl/FocusMeteringControl;->meteringRegionCorrection:Landroidx/camera/camera2/compat/workaround/MeteringRegionCorrection;

    invoke-virtual/range {v0 .. v6}, Landroidx/camera/camera2/impl/FocusMeteringControl$Companion;->meteringRegionsFromMeteringPoints(Ljava/util/List;ILandroid/graphics/Rect;Landroid/util/Rational;ILandroidx/camera/camera2/compat/workaround/MeteringRegionCorrection;)Ljava/util/List;

    move-result-object p0

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public onRunningUseCasesChanged(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Landroidx/camera/core/UseCase;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/camera/camera2/impl/FocusMeteringControl;->previewAspectRatio:Landroid/util/Rational;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/UseCase;

    instance-of v1, v0, Landroidx/camera/core/Preview;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/camera/core/Preview;

    invoke-virtual {v0}, Landroidx/camera/core/UseCase;->getAttachedSurfaceResolution()Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/util/Rational;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-direct {v1, v2, v0}, Landroid/util/Rational;-><init>(II)V

    iput-object v1, p0, Landroidx/camera/camera2/impl/FocusMeteringControl;->previewAspectRatio:Landroid/util/Rational;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/camera/camera2/impl/FocusMeteringControl;->previewAspectRatio:Landroid/util/Rational;

    invoke-virtual {p0}, Landroidx/camera/camera2/impl/FocusMeteringControl;->cancelFocusAndMeteringAsync()Lmk2;

    return-void
.end method

.method public setRequestControl(Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/camera2/impl/FocusMeteringControl;->_requestControl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    return-void
.end method

.method public final startFocusAndMetering(Landroidx/camera/core/FocusMeteringAction;J)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/FocusMeteringAction;",
            "J)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/camera/core/FocusMeteringResult;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lyp1;

    invoke-direct {v3}, Lyp1;-><init>()V

    invoke-virtual {v0}, Landroidx/camera/camera2/impl/FocusMeteringControl;->getRequestControl()Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_13

    iget-object v7, v0, Landroidx/camera/camera2/impl/FocusMeteringControl;->focusTimeoutJob:Lmb4;

    if-eqz v7, :cond_0

    invoke-interface {v7, v5}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    iget-object v7, v0, Landroidx/camera/camera2/impl/FocusMeteringControl;->autoCancelJob:Lmb4;

    if-eqz v7, :cond_1

    invoke-interface {v7, v5}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_1
    iget-object v7, v0, Landroidx/camera/camera2/impl/FocusMeteringControl;->cancelSignal:Lxp1;

    const-string v8, "Cancelled by another startFocusAndMetering()"

    if-eqz v7, :cond_2

    invoke-direct {v0, v7, v8}, Landroidx/camera/camera2/impl/FocusMeteringControl;->setCancelException(Lxp1;Ljava/lang/String;)V

    :cond_2
    iget-object v7, v0, Landroidx/camera/camera2/impl/FocusMeteringControl;->updateSignal:Lxp1;

    if-eqz v7, :cond_3

    invoke-direct {v0, v7, v8}, Landroidx/camera/camera2/impl/FocusMeteringControl;->setCancelException(Lxp1;Ljava/lang/String;)V

    :cond_3
    iput-object v3, v0, Landroidx/camera/camera2/impl/FocusMeteringControl;->updateSignal:Lxp1;

    sget-object v9, Landroidx/camera/camera2/impl/FocusMeteringControl;->Companion:Landroidx/camera/camera2/impl/FocusMeteringControl$Companion;

    invoke-virtual/range {p1 .. p1}, Landroidx/camera/core/FocusMeteringAction;->getMeteringPointsAe()Ljava/util/List;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v0, Landroidx/camera/camera2/impl/FocusMeteringControl;->maxAeRegionCount:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v11

    invoke-direct {v0}, Landroidx/camera/camera2/impl/FocusMeteringControl;->getCropSensorRegion()Landroid/graphics/Rect;

    move-result-object v12

    invoke-direct {v0}, Landroidx/camera/camera2/impl/FocusMeteringControl;->getDefaultAspectRatio()Landroid/util/Rational;

    move-result-object v13

    const/4 v14, 0x2

    iget-object v15, v0, Landroidx/camera/camera2/impl/FocusMeteringControl;->meteringRegionCorrection:Landroidx/camera/camera2/compat/workaround/MeteringRegionCorrection;

    invoke-virtual/range {v9 .. v15}, Landroidx/camera/camera2/impl/FocusMeteringControl$Companion;->meteringRegionsFromMeteringPoints(Ljava/util/List;ILandroid/graphics/Rect;Landroid/util/Rational;ILandroidx/camera/camera2/compat/workaround/MeteringRegionCorrection;)Ljava/util/List;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroidx/camera/core/FocusMeteringAction;->getMeteringPointsAf()Ljava/util/List;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v0, Landroidx/camera/camera2/impl/FocusMeteringControl;->maxAfRegionCount:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v11

    invoke-direct {v0}, Landroidx/camera/camera2/impl/FocusMeteringControl;->getCropSensorRegion()Landroid/graphics/Rect;

    move-result-object v12

    invoke-direct {v0}, Landroidx/camera/camera2/impl/FocusMeteringControl;->getDefaultAspectRatio()Landroid/util/Rational;

    move-result-object v13

    const/4 v14, 0x1

    iget-object v15, v0, Landroidx/camera/camera2/impl/FocusMeteringControl;->meteringRegionCorrection:Landroidx/camera/camera2/compat/workaround/MeteringRegionCorrection;

    invoke-virtual/range {v9 .. v15}, Landroidx/camera/camera2/impl/FocusMeteringControl$Companion;->meteringRegionsFromMeteringPoints(Ljava/util/List;ILandroid/graphics/Rect;Landroid/util/Rational;ILandroidx/camera/camera2/compat/workaround/MeteringRegionCorrection;)Ljava/util/List;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Landroidx/camera/core/FocusMeteringAction;->getMeteringPointsAwb()Ljava/util/List;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v0, Landroidx/camera/camera2/impl/FocusMeteringControl;->maxAwbRegionCount:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v11

    invoke-direct {v0}, Landroidx/camera/camera2/impl/FocusMeteringControl;->getCropSensorRegion()Landroid/graphics/Rect;

    move-result-object v12

    invoke-direct {v0}, Landroidx/camera/camera2/impl/FocusMeteringControl;->getDefaultAspectRatio()Landroid/util/Rational;

    move-result-object v13

    const/4 v14, 0x4

    iget-object v15, v0, Landroidx/camera/camera2/impl/FocusMeteringControl;->meteringRegionCorrection:Landroidx/camera/camera2/compat/workaround/MeteringRegionCorrection;

    invoke-virtual/range {v9 .. v15}, Landroidx/camera/camera2/impl/FocusMeteringControl$Companion;->meteringRegionsFromMeteringPoints(Ljava/util/List;ILandroid/graphics/Rect;Landroid/util/Rational;ILandroidx/camera/camera2/compat/workaround/MeteringRegionCorrection;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "None of the specified AF/AE/AWB MeteringPoints is supported on this camera."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lyp1;->e(Ljava/lang/Throwable;)Z

    invoke-static {v3, v5, v6, v5}, Landroidx/camera/camera2/adapter/CoroutineAdaptersKt;->asListenableFuture$default(Lmk2;Ljava/lang/Object;ILjava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    :cond_4
    move-object/from16 v9, v16

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_5

    iget-object v10, v0, Landroidx/camera/camera2/impl/FocusMeteringControl;->state3AControl:Landroidx/camera/camera2/impl/State3AControl;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroidx/camera/camera2/impl/State3AControl;->setPreferredFocusModeAsync(Ljava/lang/Integer;)Lmk2;

    :cond_5
    iget-object v10, v0, Landroidx/camera/camera2/impl/FocusMeteringControl;->maxAeRegionCount:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-lez v10, :cond_7

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_6

    sget-object v7, Landroidx/camera/camera2/pipe/CameraGraph$Constants3A;->INSTANCE:Landroidx/camera/camera2/pipe/CameraGraph$Constants3A;

    invoke-virtual {v7}, Landroidx/camera/camera2/pipe/CameraGraph$Constants3A;->getMETERING_REGIONS_DEFAULT()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v7

    invoke-static {v7}, Lyr;->h0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    :cond_6
    check-cast v7, Ljava/util/List;

    goto :goto_0

    :cond_7
    move-object v7, v5

    :goto_0
    iget-object v10, v0, Landroidx/camera/camera2/impl/FocusMeteringControl;->maxAfRegionCount:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-lez v10, :cond_9

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_8

    sget-object v9, Landroidx/camera/camera2/pipe/CameraGraph$Constants3A;->INSTANCE:Landroidx/camera/camera2/pipe/CameraGraph$Constants3A;

    invoke-virtual {v9}, Landroidx/camera/camera2/pipe/CameraGraph$Constants3A;->getMETERING_REGIONS_DEFAULT()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v9

    invoke-static {v9}, Lyr;->h0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    :cond_8
    check-cast v9, Ljava/util/List;

    goto :goto_1

    :cond_9
    move-object v9, v5

    :goto_1
    iget-object v10, v0, Landroidx/camera/camera2/impl/FocusMeteringControl;->maxAwbRegionCount:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-lez v10, :cond_b

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_a

    sget-object v8, Landroidx/camera/camera2/pipe/CameraGraph$Constants3A;->INSTANCE:Landroidx/camera/camera2/pipe/CameraGraph$Constants3A;

    invoke-virtual {v8}, Landroidx/camera/camera2/pipe/CameraGraph$Constants3A;->getMETERING_REGIONS_DEFAULT()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v8

    invoke-static {v8}, Lyr;->h0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    :cond_a
    check-cast v8, Ljava/util/List;

    goto :goto_2

    :cond_b
    move-object v8, v5

    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v10

    const-string v11, "CXCP"

    if-nez v10, :cond_c

    iget-boolean v10, v0, Landroidx/camera/camera2/impl/FocusMeteringControl;->supportsAutoFocusTrigger:Z

    if-nez v10, :cond_d

    :cond_c
    move v1, v6

    move-object v5, v7

    move-object v7, v8

    move-object v6, v9

    goto :goto_5

    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroidx/camera/core/FocusMeteringAction;->isAutoCancelEnabled()Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-virtual/range {p1 .. p1}, Landroidx/camera/core/FocusMeteringAction;->getAutoCancelDurationInMillis()J

    move-result-wide v12

    cmp-long v10, v12, p2

    if-gez v10, :cond_e

    invoke-virtual/range {p1 .. p1}, Landroidx/camera/core/FocusMeteringAction;->getAutoCancelDurationInMillis()J

    move-result-wide v12

    goto :goto_3

    :cond_e
    move-wide/from16 v12, p2

    :goto_3
    sget-object v10, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    invoke-static {v11}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v10

    const-string v11, "startFocusAndMetering: updating 3A regions & triggering AF"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    iget-object v10, v0, Landroidx/camera/camera2/impl/FocusMeteringControl;->maxAfRegionCount:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-lez v10, :cond_10

    sget-object v10, Landroidx/camera/camera2/pipe/Lock3ABehavior;->Companion:Landroidx/camera/camera2/pipe/Lock3ABehavior$Companion;

    invoke-virtual {v10}, Landroidx/camera/camera2/pipe/Lock3ABehavior$Companion;->getIMMEDIATE-hRqSH3k()I

    move-result v10

    invoke-static {v10}, Landroidx/camera/camera2/pipe/Lock3ABehavior;->box-impl(I)Landroidx/camera/camera2/pipe/Lock3ABehavior;

    move-result-object v10

    goto :goto_4

    :cond_10
    move-object v10, v5

    :goto_4
    sget-object v11, Landroidx/camera/camera2/pipe/AeMode;->Companion:Landroidx/camera/camera2/pipe/AeMode$Companion;

    invoke-virtual {v11}, Landroidx/camera/camera2/pipe/AeMode$Companion;->getON-bOjpiJc()I

    move-result v11

    invoke-direct {v0, v11}, Landroidx/camera/camera2/impl/FocusMeteringControl;->getSupportedAeMode-rTgdhRc(I)I

    move-result v11

    invoke-static {v11}, Landroidx/camera/camera2/pipe/AeMode;->box-impl(I)Landroidx/camera/camera2/pipe/AeMode;

    move-result-object v11

    sget-object v14, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v15, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v14, v12, v13, v15}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v12

    const/16 v14, 0x28

    const/4 v15, 0x0

    move-object/from16 v17, v5

    move-object v5, v7

    move-object v7, v8

    const/4 v8, 0x0

    move/from16 v18, v6

    move-object v6, v9

    move-object v9, v10

    const/4 v10, 0x0

    move/from16 v1, v18

    invoke-static/range {v4 .. v15}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;->startFocusAndMeteringAsync-NxRnBj4$default(Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/AeMode;JILjava/lang/Object;)Lmk2;

    move-result-object v2

    goto :goto_6

    :goto_5
    sget-object v2, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    invoke-static {v11}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v2

    const-string v8, "startFocusAndMetering: updating 3A regions only"

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    invoke-interface {v4, v5, v6, v7}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;->update3aRegions(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lmk2;

    move-result-object v2

    :goto_6
    check-cast v16, Ljava/util/Collection;

    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    xor-int/2addr v5, v1

    invoke-direct {v0, v2, v3, v5}, Landroidx/camera/camera2/impl/FocusMeteringControl;->propagateToFocusMeteringResultDeferred(Lmk2;Lxp1;Z)V

    move-wide/from16 v5, p2

    invoke-direct {v0, v5, v6, v3}, Landroidx/camera/camera2/impl/FocusMeteringControl;->triggerFocusTimeout(JLxp1;)V

    invoke-virtual/range {p1 .. p1}, Landroidx/camera/core/FocusMeteringAction;->isAutoCancelEnabled()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual/range {p1 .. p1}, Landroidx/camera/core/FocusMeteringAction;->getAutoCancelDurationInMillis()J

    move-result-wide v5

    invoke-direct {v0, v5, v6, v3, v4}, Landroidx/camera/camera2/impl/FocusMeteringControl;->triggerAutoCancel(JLxp1;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;)V

    :cond_12
    :goto_7
    const/4 v0, 0x0

    goto :goto_8

    :cond_13
    move v1, v6

    new-instance v0, Landroidx/camera/core/CameraControl$OperationCanceledException;

    const-string v2, "Camera is not active."

    invoke-direct {v0, v2}, Landroidx/camera/core/CameraControl$OperationCanceledException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lyp1;->e(Ljava/lang/Throwable;)Z

    goto :goto_7

    :goto_8
    invoke-static {v3, v0, v1, v0}, Landroidx/camera/camera2/adapter/CoroutineAdaptersKt;->asListenableFuture$default(Lmk2;Ljava/lang/Object;ILjava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
