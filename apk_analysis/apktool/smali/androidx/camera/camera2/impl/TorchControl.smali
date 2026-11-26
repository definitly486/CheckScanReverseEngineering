.class public final Landroidx/camera/camera2/impl/TorchControl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/impl/UseCaseCameraControl;


# annotations
.annotation runtime Landroidx/camera/camera2/config/CameraScope;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/impl/TorchControl$Bindings;,
        Landroidx/camera/camera2/impl/TorchControl$TorchMode;
    }
.end annotation


# instance fields
.field private _requestControl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

.field private final _torchState:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final _torchStrength:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private _updateTorchStateSignal:Lxp1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxp1<",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private _updateTorchStrengthSignal:Lxp1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxp1<",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private final defaultTorchStrength:I

.field private final hasFlashUnit:Z

.field private final isTorchStrengthSupported:Z

.field private final maxTorchStrength:I

.field private final state3AControl:Landroidx/camera/camera2/impl/State3AControl;

.field private final threads:Landroidx/camera/camera2/impl/UseCaseThreads;

.field private torchMode:Landroidx/camera/camera2/impl/TorchControl$TorchMode;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/impl/CameraProperties;Landroidx/camera/camera2/impl/State3AControl;Landroidx/camera/camera2/impl/UseCaseThreads;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/camera/camera2/impl/TorchControl;->state3AControl:Landroidx/camera/camera2/impl/State3AControl;

    iput-object p3, p0, Landroidx/camera/camera2/impl/TorchControl;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    const/4 p2, 0x1

    const/4 p3, 0x0

    const/4 v0, 0x0

    invoke-static {p1, v0, p2, p3}, Landroidx/camera/camera2/compat/workaround/FlashAvailabilityCheckerKt;->isFlashAvailable$default(Landroidx/camera/camera2/impl/CameraProperties;ZILjava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/camera/camera2/impl/TorchControl;->hasFlashUnit:Z

    new-instance p2, Landroidx/lifecycle/MutableLiveData;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p2, p3}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Landroidx/camera/camera2/impl/TorchControl;->_torchState:Landroidx/lifecycle/MutableLiveData;

    sget-object p2, Landroidx/camera/camera2/pipe/CameraMetadata;->Companion:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    invoke-interface {p1}, Landroidx/camera/camera2/impl/CameraProperties;->getMetadata()Landroidx/camera/camera2/pipe/CameraMetadata;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->getSupportsTorchStrength(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result p3

    iput-boolean p3, p0, Landroidx/camera/camera2/impl/TorchControl;->isTorchStrengthSupported:Z

    invoke-interface {p1}, Landroidx/camera/camera2/impl/CameraProperties;->getMetadata()Landroidx/camera/camera2/pipe/CameraMetadata;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->getDefaultTorchStrengthLevel(Landroidx/camera/camera2/pipe/CameraMetadata;)I

    move-result p3

    iput p3, p0, Landroidx/camera/camera2/impl/TorchControl;->defaultTorchStrength:I

    invoke-interface {p1}, Landroidx/camera/camera2/impl/CameraProperties;->getMetadata()Landroidx/camera/camera2/pipe/CameraMetadata;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->getMaxTorchStrengthLevel(Landroidx/camera/camera2/pipe/CameraMetadata;)I

    move-result p1

    iput p1, p0, Landroidx/camera/camera2/impl/TorchControl;->maxTorchStrength:I

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Landroidx/camera/camera2/impl/TorchControl;->_torchStrength:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public static synthetic a(Landroidx/camera/camera2/impl/TorchControl;Ljava/lang/Throwable;)Lj59;
    .locals 0

    invoke-static {p0, p1}, Landroidx/camera/camera2/impl/TorchControl;->updateTorchStrengthLevelAsync$lambda$0(Landroidx/camera/camera2/impl/TorchControl;Ljava/lang/Throwable;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getState3AControl$p(Landroidx/camera/camera2/impl/TorchControl;)Landroidx/camera/camera2/impl/State3AControl;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/impl/TorchControl;->state3AControl:Landroidx/camera/camera2/impl/State3AControl;

    return-object p0
.end method

.method public static synthetic b(Landroidx/camera/camera2/pipe/Result3A;)Lj59;
    .locals 0

    invoke-static {p0}, Landroidx/camera/camera2/impl/TorchControl;->setTorchAsync_Oup_wC0$lambda$1$3(Landroidx/camera/camera2/pipe/Result3A;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method private final createFailureResult(Lxp1;Ljava/lang/Exception;)Lxp1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxp1<",
            "Lj59;",
            ">;",
            "Ljava/lang/Exception;",
            ")",
            "Lxp1<",
            "Lj59;",
            ">;"
        }
    .end annotation

    invoke-interface {p1, p2}, Lxp1;->e(Ljava/lang/Throwable;)Z

    return-object p1
.end method

.method public static synthetic getTorchMode-MnUA4hI$camera_camera2$annotations()V
    .locals 0

    return-void
.end method

.method private final isFlashUnitOn-RaJ5uN0(I)Z
    .locals 0

    sget-object p0, Landroidx/camera/camera2/impl/TorchControl$TorchMode;->Companion:Landroidx/camera/camera2/impl/TorchControl$TorchMode$Companion;

    invoke-virtual {p0}, Landroidx/camera/camera2/impl/TorchControl$TorchMode$Companion;->getOFF-IRs_-R8()I

    move-result p0

    invoke-static {p1, p0}, Landroidx/camera/camera2/impl/TorchControl$TorchMode;->equals-impl0(II)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private final setLiveDataValue(Landroidx/lifecycle/MutableLiveData;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->isMainThread()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic setTorchAsync$default(Landroidx/camera/camera2/impl/TorchControl;ZZZILjava/lang/Object;)Lmk2;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x1

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Landroidx/camera/camera2/impl/TorchControl;->setTorchAsync(ZZZ)Lmk2;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic setTorchAsync-Oup_wC0$camera_camera2$default(Landroidx/camera/camera2/impl/TorchControl;IZZILjava/lang/Object;)Lmk2;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x1

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Landroidx/camera/camera2/impl/TorchControl;->setTorchAsync-Oup_wC0$camera_camera2(IZZ)Lmk2;

    move-result-object p0

    return-object p0
.end method

.method private static final setTorchAsync_Oup_wC0$lambda$1$3(Landroidx/camera/camera2/pipe/Result3A;)Lj59;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private final stopRunningTaskInternal()V
    .locals 0

    invoke-direct {p0}, Landroidx/camera/camera2/impl/TorchControl;->stopTorchStateTask()V

    invoke-direct {p0}, Landroidx/camera/camera2/impl/TorchControl;->stopTorchStrengthTask()V

    return-void
.end method

.method private final stopTorchStateTask()V
    .locals 3

    iget-object v0, p0, Landroidx/camera/camera2/impl/TorchControl;->_updateTorchStateSignal:Lxp1;

    if-eqz v0, :cond_0

    new-instance v1, Landroidx/camera/core/CameraControl$OperationCanceledException;

    const-string v2, "There is a new enableTorch being set"

    invoke-direct {v1, v2}, Landroidx/camera/core/CameraControl$OperationCanceledException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Landroidx/camera/camera2/impl/TorchControl;->createFailureResult(Lxp1;Ljava/lang/Exception;)Lxp1;

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/camera/camera2/impl/TorchControl;->_updateTorchStateSignal:Lxp1;

    return-void
.end method

.method private final stopTorchStrengthTask()V
    .locals 3

    iget-object v0, p0, Landroidx/camera/camera2/impl/TorchControl;->_updateTorchStrengthSignal:Lxp1;

    if-eqz v0, :cond_0

    new-instance v1, Landroidx/camera/core/CameraControl$OperationCanceledException;

    const-string v2, "There is a new torch strength being set"

    invoke-direct {v1, v2}, Landroidx/camera/core/CameraControl$OperationCanceledException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Landroidx/camera/camera2/impl/TorchControl;->createFailureResult(Lxp1;Ljava/lang/Exception;)Lxp1;

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/camera/camera2/impl/TorchControl;->_updateTorchStrengthSignal:Lxp1;

    return-void
.end method

.method private final updateTorchState-RaJ5uN0(I)V
    .locals 1

    invoke-static {p1}, Landroidx/camera/camera2/impl/TorchControl$TorchMode;->box-impl(I)Landroidx/camera/camera2/impl/TorchControl$TorchMode;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/camera2/impl/TorchControl;->torchMode:Landroidx/camera/camera2/impl/TorchControl$TorchMode;

    sget-object v0, Landroidx/camera/camera2/impl/TorchControl$TorchMode;->Companion:Landroidx/camera/camera2/impl/TorchControl$TorchMode$Companion;

    invoke-virtual {v0}, Landroidx/camera/camera2/impl/TorchControl$TorchMode$Companion;->getON-IRs_-R8()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/camera/camera2/impl/TorchControl$TorchMode;->equals-impl0(II)Z

    move-result p1

    iget-object v0, p0, Landroidx/camera/camera2/impl/TorchControl;->_torchState:Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0, v0, p1}, Landroidx/camera/camera2/impl/TorchControl;->setLiveDataValue(Landroidx/lifecycle/MutableLiveData;I)V

    return-void
.end method

.method private final updateTorchStrengthLevelAsync(I)Lmk2;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lmk2<",
            "Lj59;",
            ">;"
        }
    .end annotation

    new-instance v0, Lyp1;

    invoke-direct {v0}, Lyp1;-><init>()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x23

    if-lt v1, v2, :cond_2

    iget-boolean v1, p0, Landroidx/camera/camera2/impl/TorchControl;->isTorchStrengthSupported:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/camera/camera2/impl/TorchControl;->_updateTorchStrengthSignal:Lxp1;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroidx/camera/camera2/impl/TorchControl;->stopTorchStrengthTask()V

    :cond_0
    iput-object v0, p0, Landroidx/camera/camera2/impl/TorchControl;->_updateTorchStrengthSignal:Lxp1;

    new-instance v1, Lsl2;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lsl2;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lsb4;->g(Lnl3;)Lhp2;

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v4, p1}, Landroidx/camera/camera2/compat/Api35Compat;->setFlashStrengthLevel(Ljava/util/Map;I)V

    invoke-virtual {p0}, Landroidx/camera/camera2/impl/TorchControl;->getRequestControl()Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;->setParametersAsync$default(Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;Ljava/util/Map;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl$Type;Landroidx/camera/core/impl/Config$OptionPriority;ILjava/lang/Object;)Lmk2;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1, v0}, Landroidx/camera/camera2/adapter/CoroutineAdaptersKt;->propagateTo(Lmk2;Lxp1;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object v0

    :cond_1
    new-instance p1, Landroidx/camera/core/CameraControl$OperationCanceledException;

    const-string v1, "Camera is not active."

    invoke-direct {p1, v1}, Landroidx/camera/core/CameraControl$OperationCanceledException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Landroidx/camera/camera2/impl/TorchControl;->createFailureResult(Lxp1;Ljava/lang/Exception;)Lxp1;

    return-object v0

    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Configuring torch strength is not supported on the device."

    invoke-direct {p1, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Landroidx/camera/camera2/impl/TorchControl;->createFailureResult(Lxp1;Ljava/lang/Exception;)Lxp1;

    return-object v0
.end method

.method private static final updateTorchStrengthLevelAsync$lambda$0(Landroidx/camera/camera2/impl/TorchControl;Ljava/lang/Throwable;)Lj59;
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/camera/camera2/impl/TorchControl;->_updateTorchStrengthSignal:Lxp1;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method


# virtual methods
.method public getRequestControl()Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/impl/TorchControl;->_requestControl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    return-object p0
.end method

.method public final getTorchMode-MnUA4hI$camera_camera2()Landroidx/camera/camera2/impl/TorchControl$TorchMode;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/impl/TorchControl;->torchMode:Landroidx/camera/camera2/impl/TorchControl$TorchMode;

    return-object p0
.end method

.method public final getTorchStateLiveData()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/impl/TorchControl;->_torchState:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getTorchStrengthLiveData()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/impl/TorchControl;->_torchStrength:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public reset()V
    .locals 7

    invoke-direct {p0}, Landroidx/camera/camera2/impl/TorchControl;->stopRunningTaskInternal()V

    iget-object v0, p0, Landroidx/camera/camera2/impl/TorchControl;->torchMode:Landroidx/camera/camera2/impl/TorchControl$TorchMode;

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/camera/camera2/impl/TorchControl$TorchMode;->Companion:Landroidx/camera/camera2/impl/TorchControl$TorchMode$Companion;

    invoke-virtual {v0}, Landroidx/camera/camera2/impl/TorchControl$TorchMode$Companion;->getOFF-IRs_-R8()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/camera/camera2/impl/TorchControl;->updateTorchState-RaJ5uN0(I)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Landroidx/camera/camera2/impl/TorchControl;->setTorchAsync$default(Landroidx/camera/camera2/impl/TorchControl;ZZZILjava/lang/Object;)Lmk2;

    const/4 p0, 0x0

    iput-object p0, v1, Landroidx/camera/camera2/impl/TorchControl;->torchMode:Landroidx/camera/camera2/impl/TorchControl$TorchMode;

    :cond_0
    return-void
.end method

.method public setRequestControl(Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;)V
    .locals 7

    iput-object p1, p0, Landroidx/camera/camera2/impl/TorchControl;->_requestControl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    iget-object p1, p0, Landroidx/camera/camera2/impl/TorchControl;->torchMode:Landroidx/camera/camera2/impl/TorchControl$TorchMode;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/camera/camera2/impl/TorchControl;->getTorchStateLiveData()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    :goto_0
    move v2, v0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :goto_2
    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Landroidx/camera/camera2/impl/TorchControl;->setTorchAsync$default(Landroidx/camera/camera2/impl/TorchControl;ZZZILjava/lang/Object;)Lmk2;

    :cond_2
    return-void
.end method

.method public final setTorchAsync(ZZZ)Lmk2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ)",
            "Lmk2<",
            "Lj59;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    sget-object p1, Landroidx/camera/camera2/impl/TorchControl$TorchMode;->Companion:Landroidx/camera/camera2/impl/TorchControl$TorchMode$Companion;

    invoke-virtual {p1}, Landroidx/camera/camera2/impl/TorchControl$TorchMode$Companion;->getON-IRs_-R8()I

    move-result p1

    goto :goto_0

    :cond_0
    sget-object p1, Landroidx/camera/camera2/impl/TorchControl$TorchMode;->Companion:Landroidx/camera/camera2/impl/TorchControl$TorchMode$Companion;

    invoke-virtual {p1}, Landroidx/camera/camera2/impl/TorchControl$TorchMode$Companion;->getOFF-IRs_-R8()I

    move-result p1

    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/camera/camera2/impl/TorchControl;->setTorchAsync-Oup_wC0$camera_camera2(IZZ)Lmk2;

    move-result-object p0

    return-object p0
.end method

.method public final setTorchAsync-Oup_wC0$camera_camera2(IZZ)Lmk2;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ)",
            "Lmk2<",
            "Lj59;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    const-string v0, "CXCP"

    invoke-static {v0}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "TorchControl#setTorchAsync: torch mode = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/camera/camera2/impl/TorchControl$TorchMode;->toString-impl(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v1, Lyp1;

    invoke-direct {v1}, Lyp1;-><init>()V

    if-nez p3, :cond_1

    iget-boolean p3, p0, Landroidx/camera/camera2/impl/TorchControl;->hasFlashUnit:Z

    if-nez p3, :cond_1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No flash unit"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1, p1}, Landroidx/camera/camera2/impl/TorchControl;->createFailureResult(Lxp1;Ljava/lang/Exception;)Lxp1;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Landroidx/camera/camera2/impl/TorchControl;->getRequestControl()Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    move-result-object p3

    if-eqz p3, :cond_a

    invoke-direct {p0, p1}, Landroidx/camera/camera2/impl/TorchControl;->updateTorchState-RaJ5uN0(I)V

    if-eqz p2, :cond_2

    invoke-direct {p0}, Landroidx/camera/camera2/impl/TorchControl;->stopTorchStateTask()V

    goto :goto_0

    :cond_2
    iget-object p2, p0, Landroidx/camera/camera2/impl/TorchControl;->_updateTorchStateSignal:Lxp1;

    if-eqz p2, :cond_3

    invoke-static {v1, p2}, Landroidx/camera/camera2/adapter/CoroutineAdaptersKt;->propagateTo(Lmk2;Lxp1;)V

    :cond_3
    :goto_0
    iput-object v1, p0, Landroidx/camera/camera2/impl/TorchControl;->_updateTorchStateSignal:Lxp1;

    iget-object p2, p0, Landroidx/camera/camera2/impl/TorchControl;->state3AControl:Landroidx/camera/camera2/impl/State3AControl;

    invoke-direct {p0, p1}, Landroidx/camera/camera2/impl/TorchControl;->isFlashUnitOn-RaJ5uN0(I)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p2, v2}, Landroidx/camera/camera2/impl/State3AControl;->setPreferredAeModeAsync(Ljava/lang/Integer;)Lmk2;

    sget-object p2, Landroidx/camera/camera2/pipe/AeMode;->Companion:Landroidx/camera/camera2/pipe/AeMode$Companion;

    iget-object v2, p0, Landroidx/camera/camera2/impl/TorchControl;->state3AControl:Landroidx/camera/camera2/impl/State3AControl;

    invoke-virtual {v2}, Landroidx/camera/camera2/impl/State3AControl;->getFinalSupportedAeMode()I

    move-result v2

    invoke-virtual {p2, v2}, Landroidx/camera/camera2/pipe/AeMode$Companion;->fromIntOrNull-kQd0u18(I)Landroidx/camera/camera2/pipe/AeMode;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/AeMode;->unbox-impl()I

    move-result p2

    goto :goto_2

    :cond_5
    invoke-static {v0}, Landroidx/camera/core/Logger;->isWarnEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "TorchControl#setTorchAsync: Failed to convert ae mode of value "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/camera/camera2/impl/TorchControl;->access$getState3AControl$p(Landroidx/camera/camera2/impl/TorchControl;)Landroidx/camera/camera2/impl/State3AControl;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/camera/camera2/impl/State3AControl;->getFinalSupportedAeMode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " with AeMode.fromIntOrNull, fallback to AeMode.ON"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/AeMode$Companion;->getON-bOjpiJc()I

    move-result p2

    :goto_2
    invoke-direct {p0, p1}, Landroidx/camera/camera2/impl/TorchControl;->isFlashUnitOn-RaJ5uN0(I)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object p2, Landroidx/camera/camera2/impl/TorchControl$TorchMode;->Companion:Landroidx/camera/camera2/impl/TorchControl$TorchMode$Companion;

    invoke-virtual {p2}, Landroidx/camera/camera2/impl/TorchControl$TorchMode$Companion;->getON-IRs_-R8()I

    move-result p2

    invoke-static {p1, p2}, Landroidx/camera/camera2/impl/TorchControl$TorchMode;->equals-impl0(II)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Landroidx/camera/camera2/impl/TorchControl;->getTorchStrengthLiveData()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/camera/camera2/impl/TorchControl;->updateTorchStrengthLevelAsync(I)Lmk2;

    goto :goto_3

    :cond_7
    iget p1, p0, Landroidx/camera/camera2/impl/TorchControl;->defaultTorchStrength:I

    invoke-direct {p0, p1}, Landroidx/camera/camera2/impl/TorchControl;->updateTorchStrengthLevelAsync(I)Lmk2;

    :cond_8
    :goto_3
    invoke-interface {p3}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;->setTorchOnAsync()Lmk2;

    move-result-object p0

    goto :goto_4

    :cond_9
    invoke-interface {p3, p2}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;->setTorchOffAsync-MtizInI(I)Lmk2;

    move-result-object p0

    :goto_4
    new-instance p1, Lvy2;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Lvy2;-><init>(I)V

    invoke-static {p0, v1, p1}, Landroidx/camera/camera2/adapter/CoroutineAdaptersKt;->propagateTo(Lmk2;Lxp1;Lnl3;)V

    return-object v1

    :cond_a
    new-instance p1, Landroidx/camera/core/CameraControl$OperationCanceledException;

    const-string p2, "Camera is not active."

    invoke-direct {p1, p2}, Landroidx/camera/core/CameraControl$OperationCanceledException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1, p1}, Landroidx/camera/camera2/impl/TorchControl;->createFailureResult(Lxp1;Ljava/lang/Exception;)Lxp1;

    return-object v1
.end method

.method public final setTorchMode-UuNXre8$camera_camera2(Landroidx/camera/camera2/impl/TorchControl$TorchMode;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/camera2/impl/TorchControl;->torchMode:Landroidx/camera/camera2/impl/TorchControl$TorchMode;

    return-void
.end method

.method public final setTorchStrengthLevelAsync(I)Lmk2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lmk2<",
            "Lj59;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Landroidx/camera/camera2/impl/TorchControl;->isTorchStrengthSupported:Z

    if-nez v0, :cond_0

    new-instance p1, Lyp1;

    invoke-direct {p1}, Lyp1;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Configuring torch strength is not supported on the device."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Landroidx/camera/camera2/impl/TorchControl;->createFailureResult(Lxp1;Ljava/lang/Exception;)Lxp1;

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-gt v0, p1, :cond_3

    iget v1, p0, Landroidx/camera/camera2/impl/TorchControl;->maxTorchStrength:I

    if-gt p1, v1, :cond_3

    iget-object v1, p0, Landroidx/camera/camera2/impl/TorchControl;->_torchStrength:Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0, v1, p1}, Landroidx/camera/camera2/impl/TorchControl;->setLiveDataValue(Landroidx/lifecycle/MutableLiveData;I)V

    invoke-virtual {p0}, Landroidx/camera/camera2/impl/TorchControl;->getTorchStateLiveData()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_2

    invoke-direct {p0, p1}, Landroidx/camera/camera2/impl/TorchControl;->updateTorchStrengthLevelAsync(I)Lmk2;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    invoke-static {p0}, Lga1;->a(Ljava/lang/Object;)Lyp1;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p1, Lyp1;

    invoke-direct {p1}, Lyp1;-><init>()V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The given torch strength level is invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Landroidx/camera/camera2/impl/TorchControl;->createFailureResult(Lxp1;Ljava/lang/Exception;)Lxp1;

    return-object p1
.end method
