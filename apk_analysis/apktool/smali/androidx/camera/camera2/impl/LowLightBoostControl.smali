.class public final Landroidx/camera/camera2/impl/LowLightBoostControl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/impl/UseCaseCameraControl;


# annotations
.annotation runtime Landroidx/camera/camera2/config/CameraScope;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/impl/LowLightBoostControl$Bindings;
    }
.end annotation


# instance fields
.field private final _lowLightBoostState:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private _requestControl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

.field private _updateSignal:Lxp1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxp1<",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

.field private checkFrameRateJob:Lmk2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmk2<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final comboRequestListener:Landroidx/camera/camera2/impl/ComboRequestListener;

.field private isLowLightBoostOn:Z

.field private final isLowLightBoostSupported:Z

.field private final lowLightBoostStateAtomic:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final state3AControl:Landroidx/camera/camera2/impl/State3AControl;

.field private final threads:Landroidx/camera/camera2/impl/UseCaseThreads;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/camera2/impl/State3AControl;Landroidx/camera/camera2/impl/UseCaseThreads;Landroidx/camera/camera2/impl/ComboRequestListener;)V
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/impl/LowLightBoostControl;->cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    iput-object p2, p0, Landroidx/camera/camera2/impl/LowLightBoostControl;->state3AControl:Landroidx/camera/camera2/impl/State3AControl;

    iput-object p3, p0, Landroidx/camera/camera2/impl/LowLightBoostControl;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    iput-object p4, p0, Landroidx/camera/camera2/impl/LowLightBoostControl;->comboRequestListener:Landroidx/camera/camera2/impl/ComboRequestListener;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    sget-object v0, Landroidx/camera/camera2/pipe/CameraMetadata;->Companion:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->getSupportsLowLightBoost(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    move p2, v0

    :cond_0
    iput-boolean p2, p0, Landroidx/camera/camera2/impl/LowLightBoostControl;->isLowLightBoostSupported:Z

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p1, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Landroidx/camera/camera2/impl/LowLightBoostControl;->_lowLightBoostState:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Landroidx/camera/camera2/impl/LowLightBoostControl;->lowLightBoostStateAtomic:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz p2, :cond_1

    new-instance p1, Landroidx/camera/camera2/impl/LowLightBoostControl$1;

    invoke-direct {p1, p0}, Landroidx/camera/camera2/impl/LowLightBoostControl$1;-><init>(Landroidx/camera/camera2/impl/LowLightBoostControl;)V

    invoke-virtual {p3}, Landroidx/camera/camera2/impl/UseCaseThreads;->getSequentialExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-virtual {p4, p1, p0}, Landroidx/camera/camera2/impl/ComboRequestListener;->addListener(Landroidx/camera/camera2/pipe/Request$Listener;Ljava/util/concurrent/Executor;)V

    :cond_1
    return-void
.end method

.method public static final synthetic access$createFailureResult(Landroidx/camera/camera2/impl/LowLightBoostControl;Lxp1;Ljava/lang/Exception;)Lxp1;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/impl/LowLightBoostControl;->createFailureResult(Lxp1;Ljava/lang/Exception;)Lxp1;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSessionConfig(Landroidx/camera/camera2/impl/LowLightBoostControl;Ljava/util/Collection;)Landroidx/camera/core/impl/SessionConfig;
    .locals 0

    invoke-direct {p0, p1}, Landroidx/camera/camera2/impl/LowLightBoostControl;->getSessionConfig(Ljava/util/Collection;)Landroidx/camera/core/impl/SessionConfig;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getState3AControl$p(Landroidx/camera/camera2/impl/LowLightBoostControl;)Landroidx/camera/camera2/impl/State3AControl;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/impl/LowLightBoostControl;->state3AControl:Landroidx/camera/camera2/impl/State3AControl;

    return-object p0
.end method

.method public static final synthetic access$get_lowLightBoostState$p(Landroidx/camera/camera2/impl/LowLightBoostControl;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/impl/LowLightBoostControl;->_lowLightBoostState:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public static final synthetic access$get_requestControl$p(Landroidx/camera/camera2/impl/LowLightBoostControl;)Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/impl/LowLightBoostControl;->_requestControl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    return-object p0
.end method

.method public static final synthetic access$get_updateSignal$p(Landroidx/camera/camera2/impl/LowLightBoostControl;)Lxp1;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/impl/LowLightBoostControl;->_updateSignal:Lxp1;

    return-object p0
.end method

.method public static final synthetic access$isLowLightBoostOn$p(Landroidx/camera/camera2/impl/LowLightBoostControl;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/camera/camera2/impl/LowLightBoostControl;->isLowLightBoostOn:Z

    return p0
.end method

.method public static final synthetic access$setLiveDataValue(Landroidx/camera/camera2/impl/LowLightBoostControl;Landroidx/lifecycle/MutableLiveData;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/impl/LowLightBoostControl;->setLiveDataValue(Landroidx/lifecycle/MutableLiveData;I)V

    return-void
.end method

.method public static final synthetic access$setLowLightBoostOn$p(Landroidx/camera/camera2/impl/LowLightBoostControl;Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/camera/camera2/impl/LowLightBoostControl;->isLowLightBoostOn:Z

    return-void
.end method

.method public static final synthetic access$set_updateSignal$p(Landroidx/camera/camera2/impl/LowLightBoostControl;Lxp1;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/camera2/impl/LowLightBoostControl;->_updateSignal:Lxp1;

    return-void
.end method

.method public static final synthetic access$stopRunningTaskInternal(Landroidx/camera/camera2/impl/LowLightBoostControl;)V
    .locals 0

    invoke-direct {p0}, Landroidx/camera/camera2/impl/LowLightBoostControl;->stopRunningTaskInternal()V

    return-void
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

.method public static synthetic getCheckFrameRateJob$camera_camera2$annotations()V
    .locals 0

    return-void
.end method

.method private final getSessionConfig(Ljava/util/Collection;)Landroidx/camera/core/impl/SessionConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Landroidx/camera/core/UseCase;",
            ">;)",
            "Landroidx/camera/core/impl/SessionConfig;"
        }
    .end annotation

    new-instance p0, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;

    invoke-direct {p0}, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;-><init>()V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/UseCase;

    invoke-virtual {v0}, Landroidx/camera/core/UseCase;->getSessionConfig()Landroidx/camera/core/impl/SessionConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;->add(Landroidx/camera/core/impl/SessionConfig;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;->build()Landroidx/camera/core/impl/SessionConfig;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
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

    iget-object p0, p0, Landroidx/camera/camera2/impl/LowLightBoostControl;->lowLightBoostStateAtomic:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result p0

    if-eq p0, p2, :cond_1

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

    :cond_1
    return-void
.end method

.method public static synthetic setLowLightBoostAsync$default(Landroidx/camera/camera2/impl/LowLightBoostControl;ZZILjava/lang/Object;)Lmk2;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/impl/LowLightBoostControl;->setLowLightBoostAsync(ZZ)Lmk2;

    move-result-object p0

    return-object p0
.end method

.method private final stopRunningTaskInternal()V
    .locals 3

    iget-object v0, p0, Landroidx/camera/camera2/impl/LowLightBoostControl;->_updateSignal:Lxp1;

    if-eqz v0, :cond_0

    new-instance v1, Landroidx/camera/core/CameraControl$OperationCanceledException;

    const-string v2, "There is a new enableLowLightBoost being set"

    invoke-direct {v1, v2}, Landroidx/camera/core/CameraControl$OperationCanceledException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Landroidx/camera/camera2/impl/LowLightBoostControl;->createFailureResult(Lxp1;Ljava/lang/Exception;)Lxp1;

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/camera/camera2/impl/LowLightBoostControl;->_updateSignal:Lxp1;

    return-void
.end method


# virtual methods
.method public final getCheckFrameRateJob$camera_camera2()Lmk2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmk2<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/impl/LowLightBoostControl;->checkFrameRateJob:Lmk2;

    return-object p0
.end method

.method public final getLowLightBoostStateLiveData()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/impl/LowLightBoostControl;->_lowLightBoostState:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public getRequestControl()Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/impl/LowLightBoostControl;->_requestControl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    return-object p0
.end method

.method public final onSessionConfigChanged(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/core/UseCase;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p0, Landroidx/camera/camera2/impl/LowLightBoostControl;->isLowLightBoostSupported:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Lga1;->a(Ljava/lang/Object;)Lyp1;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/impl/LowLightBoostControl;->checkFrameRateJob:Lmk2;

    return-void

    :cond_1
    iget-object v0, p0, Landroidx/camera/camera2/impl/LowLightBoostControl;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    invoke-virtual {v0}, Landroidx/camera/camera2/impl/UseCaseThreads;->getSequentialScope()Ly22;

    move-result-object v0

    new-instance v1, Landroidx/camera/camera2/impl/LowLightBoostControl$onSessionConfigChanged$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Landroidx/camera/camera2/impl/LowLightBoostControl$onSessionConfigChanged$1;-><init>(Landroidx/camera/camera2/impl/LowLightBoostControl;Ljava/util/List;Le02;)V

    const/4 p1, 0x3

    invoke-static {v0, v2, v2, v1, p1}, Lav0;->a(Ly22;Lo22;Lc32;Lbm3;I)Lnk2;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/impl/LowLightBoostControl;->checkFrameRateJob:Lmk2;

    return-void
.end method

.method public reset()V
    .locals 3

    invoke-direct {p0}, Landroidx/camera/camera2/impl/LowLightBoostControl;->stopRunningTaskInternal()V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v2, v0, v1}, Landroidx/camera/camera2/impl/LowLightBoostControl;->setLowLightBoostAsync$default(Landroidx/camera/camera2/impl/LowLightBoostControl;ZZILjava/lang/Object;)Lmk2;

    return-void
.end method

.method public final setCheckFrameRateJob$camera_camera2(Lmk2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmk2<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/camera/camera2/impl/LowLightBoostControl;->checkFrameRateJob:Lmk2;

    return-void
.end method

.method public final setLowLightBoostAsync(ZZ)Lmk2;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Lmk2<",
            "Lj59;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    const-string v0, "CXCP"

    invoke-static {v0}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LowLightBoostControl#setLowLightBoostAsync: lowLightBoost = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v5, Lyp1;

    invoke-direct {v5}, Lyp1;-><init>()V

    iget-boolean v0, p0, Landroidx/camera/camera2/impl/LowLightBoostControl;->isLowLightBoostSupported:Z

    if-nez v0, :cond_1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Low Light Boost is not supported!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v5, p1}, Landroidx/camera/camera2/impl/LowLightBoostControl;->createFailureResult(Lxp1;Ljava/lang/Exception;)Lxp1;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v0, p0, Landroidx/camera/camera2/impl/LowLightBoostControl;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    invoke-virtual {v0}, Landroidx/camera/camera2/impl/UseCaseThreads;->getSequentialScope()Ly22;

    move-result-object v0

    new-instance v2, Landroidx/camera/camera2/impl/LowLightBoostControl$setLowLightBoostAsync$$inlined$confineLaunch$1;

    const/4 v3, 0x0

    move-object v4, p0

    move v6, p1

    move v7, p2

    invoke-direct/range {v2 .. v7}, Landroidx/camera/camera2/impl/LowLightBoostControl$setLowLightBoostAsync$$inlined$confineLaunch$1;-><init>(Le02;Landroidx/camera/camera2/impl/LowLightBoostControl;Lxp1;ZZ)V

    const/4 p0, 0x3

    const/4 p1, 0x0

    invoke-static {v0, p1, p1, v2, p0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    return-object v5
.end method

.method public setRequestControl(Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;)V
    .locals 1

    iput-object p1, p0, Landroidx/camera/camera2/impl/LowLightBoostControl;->_requestControl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    iget-boolean v0, p0, Landroidx/camera/camera2/impl/LowLightBoostControl;->isLowLightBoostOn:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/camera/camera2/impl/LowLightBoostControl;->setLowLightBoostAsync(ZZ)Lmk2;

    return-void

    :cond_0
    iget-object p1, p0, Landroidx/camera/camera2/impl/LowLightBoostControl;->_lowLightBoostState:Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0, p1, v0}, Landroidx/camera/camera2/impl/LowLightBoostControl;->setLiveDataValue(Landroidx/lifecycle/MutableLiveData;I)V

    :cond_1
    return-void
.end method
