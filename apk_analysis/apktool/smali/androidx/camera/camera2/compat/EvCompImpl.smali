.class public final Landroidx/camera/camera2/compat/EvCompImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/compat/EvCompCompat;


# annotations
.annotation runtime Landroidx/camera/camera2/config/CameraScope;
.end annotation


# instance fields
.field private final cameraProperties:Landroidx/camera/camera2/impl/CameraProperties;

.field private final comboRequestListener:Landroidx/camera/camera2/impl/ComboRequestListener;

.field private final range:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final step:Landroid/util/Rational;

.field private final supported:Z

.field private final threads:Landroidx/camera/camera2/impl/UseCaseThreads;

.field private updateListener:Landroidx/camera/camera2/pipe/Request$Listener;

.field private updateSignal:Lxp1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxp1<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/impl/CameraProperties;Landroidx/camera/camera2/impl/UseCaseThreads;Landroidx/camera/camera2/impl/ComboRequestListener;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/compat/EvCompImpl;->cameraProperties:Landroidx/camera/camera2/impl/CameraProperties;

    iput-object p2, p0, Landroidx/camera/camera2/compat/EvCompImpl;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    iput-object p3, p0, Landroidx/camera/camera2/compat/EvCompImpl;->comboRequestListener:Landroidx/camera/camera2/impl/ComboRequestListener;

    invoke-interface {p1}, Landroidx/camera/camera2/impl/CameraProperties;->getMetadata()Landroidx/camera/camera2/pipe/CameraMetadata;

    move-result-object p2

    sget-object p3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/camera/camera2/compat/EvCompCompatKt;->getEMPTY_RANGE()Landroid/util/Range;

    move-result-object v0

    invoke-interface {p2, p3, v0}, Landroidx/camera/camera2/pipe/CameraMetadata;->getOrDefault(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Landroid/util/Range;

    iput-object p2, p0, Landroidx/camera/camera2/compat/EvCompImpl;->range:Landroid/util/Range;

    invoke-virtual {p0}, Landroidx/camera/camera2/compat/EvCompImpl;->getRange()Landroid/util/Range;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eqz p2, :cond_2

    :goto_0
    invoke-virtual {p0}, Landroidx/camera/camera2/compat/EvCompImpl;->getRange()Landroid/util/Range;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eqz p2, :cond_2

    :goto_1
    const/4 p2, 0x1

    goto :goto_2

    :cond_2
    const/4 p2, 0x0

    :goto_2
    iput-boolean p2, p0, Landroidx/camera/camera2/compat/EvCompImpl;->supported:Z

    invoke-virtual {p0}, Landroidx/camera/camera2/compat/EvCompImpl;->getSupported()Z

    move-result p2

    if-nez p2, :cond_3

    sget-object p1, Landroid/util/Rational;->ZERO:Landroid/util/Rational;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_3

    :cond_3
    invoke-interface {p1}, Landroidx/camera/camera2/impl/CameraProperties;->getMetadata()Landroidx/camera/camera2/pipe/CameraMetadata;

    move-result-object p1

    sget-object p2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_STEP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p2}, Landroidx/camera/camera2/pipe/CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Landroid/util/Rational;

    :goto_3
    iput-object p1, p0, Landroidx/camera/camera2/compat/EvCompImpl;->step:Landroid/util/Rational;

    return-void
.end method

.method public static synthetic a(Landroidx/camera/camera2/compat/EvCompImpl;Landroidx/camera/camera2/compat/EvCompImpl$applyAsync$3;Ljava/lang/Throwable;)Lj59;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/camera/camera2/compat/EvCompImpl;->applyAsync$lambda$2$0(Landroidx/camera/camera2/compat/EvCompImpl;Landroidx/camera/camera2/compat/EvCompImpl$applyAsync$3;Ljava/lang/Throwable;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method private static final applyAsync$lambda$2$0(Landroidx/camera/camera2/compat/EvCompImpl;Landroidx/camera/camera2/compat/EvCompImpl$applyAsync$3;Ljava/lang/Throwable;)Lj59;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/compat/EvCompImpl;->comboRequestListener:Landroidx/camera/camera2/impl/ComboRequestListener;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/impl/ComboRequestListener;->removeListener(Landroidx/camera/camera2/pipe/Request$Listener;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method


# virtual methods
.method public applyAsync(ILandroidx/camera/camera2/impl/UseCaseCameraRequestControl;Z)Lmk2;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;",
            "Z)",
            "Lmk2<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lyp1;

    invoke-direct {v0}, Lyp1;-><init>()V

    iget-object v1, p0, Landroidx/camera/camera2/compat/EvCompImpl;->updateSignal:Lxp1;

    if-eqz v1, :cond_1

    if-eqz p3, :cond_0

    new-instance p3, Landroidx/camera/core/CameraControl$OperationCanceledException;

    const-string v2, "Cancelled by another setExposureCompensationIndex()"

    invoke-direct {p3, v2}, Landroidx/camera/core/CameraControl$OperationCanceledException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p3}, Lxp1;->e(Ljava/lang/Throwable;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Landroidx/camera/camera2/adapter/CoroutineAdaptersKt;->propagateTo(Lmk2;Lxp1;)V

    :cond_1
    :goto_0
    iput-object v0, p0, Landroidx/camera/camera2/compat/EvCompImpl;->updateSignal:Lxp1;

    iget-object p3, p0, Landroidx/camera/camera2/compat/EvCompImpl;->updateListener:Landroidx/camera/camera2/pipe/Request$Listener;

    if-eqz p3, :cond_2

    iget-object v1, p0, Landroidx/camera/camera2/compat/EvCompImpl;->comboRequestListener:Landroidx/camera/camera2/impl/ComboRequestListener;

    invoke-virtual {v1, p3}, Landroidx/camera/camera2/impl/ComboRequestListener;->removeListener(Landroidx/camera/camera2/pipe/Request$Listener;)V

    const/4 p3, 0x0

    iput-object p3, p0, Landroidx/camera/camera2/compat/EvCompImpl;->updateListener:Landroidx/camera/camera2/pipe/Request$Listener;

    :cond_2
    sget-object p3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p2

    invoke-static/range {v2 .. v7}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;->setParametersAsync$default(Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;Ljava/util/Map;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl$Type;Landroidx/camera/core/impl/Config$OptionPriority;ILjava/lang/Object;)Lmk2;

    new-instance p2, Landroidx/camera/camera2/compat/EvCompImpl$applyAsync$3;

    invoke-direct {p2, p1, v0}, Landroidx/camera/camera2/compat/EvCompImpl$applyAsync$3;-><init>(ILxp1;)V

    iget-object p1, p0, Landroidx/camera/camera2/compat/EvCompImpl;->comboRequestListener:Landroidx/camera/camera2/impl/ComboRequestListener;

    iget-object p3, p0, Landroidx/camera/camera2/compat/EvCompImpl;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    invoke-virtual {p3}, Landroidx/camera/camera2/impl/UseCaseThreads;->getSequentialExecutor()Ljava/util/concurrent/Executor;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroidx/camera/camera2/impl/ComboRequestListener;->addListener(Landroidx/camera/camera2/pipe/Request$Listener;Ljava/util/concurrent/Executor;)V

    new-instance p1, Lx03;

    invoke-direct {p1, p0, p2}, Lx03;-><init>(Landroidx/camera/camera2/compat/EvCompImpl;Landroidx/camera/camera2/compat/EvCompImpl$applyAsync$3;)V

    invoke-virtual {v0, p1}, Lsb4;->g(Lnl3;)Lhp2;

    iput-object p2, p0, Landroidx/camera/camera2/compat/EvCompImpl;->updateListener:Landroidx/camera/camera2/pipe/Request$Listener;

    return-object v0
.end method

.method public getRange()Landroid/util/Range;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/compat/EvCompImpl;->range:Landroid/util/Range;

    return-object p0
.end method

.method public getStep()Landroid/util/Rational;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/compat/EvCompImpl;->step:Landroid/util/Rational;

    return-object p0
.end method

.method public getSupported()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/camera/camera2/compat/EvCompImpl;->supported:Z

    return p0
.end method

.method public stopRunningTask(Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/camera/camera2/compat/EvCompImpl;->updateSignal:Lxp1;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lxp1;->e(Ljava/lang/Throwable;)Z

    :cond_0
    return-void
.end method
