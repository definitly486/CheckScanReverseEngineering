.class public final Landroidx/camera/camera2/impl/ZoomControl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/impl/UseCaseCameraControl;


# annotations
.annotation runtime Landroidx/camera/camera2/config/CameraScope;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/impl/ZoomControl$Bindings;
    }
.end annotation


# instance fields
.field private _requestControl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

.field private final _zoomState$delegate:Lcl4;

.field private final defaultZoomState$delegate:Lcl4;

.field private isInitialized:Z

.field private final maxZoomRatio:F

.field private final minZoomRatio:F

.field private updateSignal:Lxp1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxp1<",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private final zoomCompat:Landroidx/camera/camera2/compat/ZoomCompat;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/compat/ZoomCompat;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/impl/ZoomControl;->zoomCompat:Landroidx/camera/camera2/compat/ZoomCompat;

    invoke-interface {p1}, Landroidx/camera/camera2/compat/ZoomCompat;->getMinZoomRatio()F

    move-result v0

    iput v0, p0, Landroidx/camera/camera2/impl/ZoomControl;->minZoomRatio:F

    invoke-interface {p1}, Landroidx/camera/camera2/compat/ZoomCompat;->getMaxZoomRatio()F

    move-result p1

    iput p1, p0, Landroidx/camera/camera2/impl/ZoomControl;->maxZoomRatio:F

    new-instance p1, Law4;

    const/4 v0, 0x7

    invoke-direct {p1, p0, v0}, Law4;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Lfh8;

    invoke-direct {v0, p1}, Lfh8;-><init>(Lll3;)V

    iput-object v0, p0, Landroidx/camera/camera2/impl/ZoomControl;->defaultZoomState$delegate:Lcl4;

    new-instance p1, Ljs3;

    const/4 v0, 0x4

    invoke-direct {p1, p0, v0}, Ljs3;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Lfh8;

    invoke-direct {v0, p1}, Lfh8;-><init>(Lll3;)V

    iput-object v0, p0, Landroidx/camera/camera2/impl/ZoomControl;->_zoomState$delegate:Lcl4;

    return-void
.end method

.method private static final _zoomState_delegate$lambda$0(Landroidx/camera/camera2/impl/ZoomControl;)Landroidx/lifecycle/MutableLiveData;
    .locals 1

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/camera/camera2/impl/ZoomControl;->getDefaultZoomState()Landroidx/camera/camera2/adapter/ZoomValue;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static synthetic a(Landroidx/camera/camera2/impl/ZoomControl;)Landroidx/camera/camera2/adapter/ZoomValue;
    .locals 0

    invoke-static {p0}, Landroidx/camera/camera2/impl/ZoomControl;->defaultZoomState_delegate$lambda$0(Landroidx/camera/camera2/impl/ZoomControl;)Landroidx/camera/camera2/adapter/ZoomValue;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic applyZoomState$default(Landroidx/camera/camera2/impl/ZoomControl;Landroidx/camera/core/ZoomState;ZZILjava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x1

    if-eqz p5, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move p3, v0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Landroidx/camera/camera2/impl/ZoomControl;->applyZoomState(Landroidx/camera/core/ZoomState;ZZ)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Landroidx/camera/camera2/impl/ZoomControl;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    invoke-static {p0}, Landroidx/camera/camera2/impl/ZoomControl;->_zoomState_delegate$lambda$0(Landroidx/camera/camera2/impl/ZoomControl;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    return-object p0
.end method

.method private static final defaultZoomState_delegate$lambda$0(Landroidx/camera/camera2/impl/ZoomControl;)Landroidx/camera/camera2/adapter/ZoomValue;
    .locals 3

    new-instance v0, Landroidx/camera/camera2/adapter/ZoomValue;

    iget v1, p0, Landroidx/camera/camera2/impl/ZoomControl;->minZoomRatio:F

    iget p0, p0, Landroidx/camera/camera2/impl/ZoomControl;->maxZoomRatio:F

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v1, p0}, Landroidx/camera/camera2/adapter/ZoomValue;-><init>(FFF)V

    return-object v0
.end method

.method private final get_zoomState()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Landroidx/camera/core/ZoomState;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/impl/ZoomControl;->_zoomState$delegate:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method private final setZoomState(Landroidx/camera/core/ZoomState;)V
    .locals 1

    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/camera/camera2/impl/ZoomControl;->get_zoomState()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-direct {p0}, Landroidx/camera/camera2/impl/ZoomControl;->get_zoomState()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final toZoomRatio(F)F
    .locals 2

    sget-object v0, Landroidx/camera/camera2/internal/ZoomMath;->INSTANCE:Landroidx/camera/camera2/internal/ZoomMath;

    iget v1, p0, Landroidx/camera/camera2/impl/ZoomControl;->minZoomRatio:F

    iget p0, p0, Landroidx/camera/camera2/impl/ZoomControl;->maxZoomRatio:F

    invoke-virtual {v0, p1, v1, p0}, Landroidx/camera/camera2/internal/ZoomMath;->getZoomRatioFromLinearZoom(FFF)F

    move-result p0

    return p0
.end method


# virtual methods
.method public final applyZoomState(Landroidx/camera/core/ZoomState;ZZ)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/ZoomState;",
            "ZZ)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lyp1;

    invoke-direct {v0}, Lyp1;-><init>()V

    iget-object v1, p0, Landroidx/camera/camera2/impl/ZoomControl;->updateSignal:Lxp1;

    if-eqz v1, :cond_1

    if-eqz p2, :cond_0

    new-instance p2, Landroidx/camera/core/CameraControl$OperationCanceledException;

    const-string v2, "Cancelled due to another zoom value being set."

    invoke-direct {p2, v2}, Landroidx/camera/core/CameraControl$OperationCanceledException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p2}, Lxp1;->e(Ljava/lang/Throwable;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Landroidx/camera/camera2/adapter/CoroutineAdaptersKt;->propagateTo(Lmk2;Lxp1;)V

    :cond_1
    :goto_0
    iput-object v0, p0, Landroidx/camera/camera2/impl/ZoomControl;->updateSignal:Lxp1;

    invoke-direct {p0, p1}, Landroidx/camera/camera2/impl/ZoomControl;->setZoomState(Landroidx/camera/core/ZoomState;)V

    invoke-virtual {p0}, Landroidx/camera/camera2/impl/ZoomControl;->getRequestControl()Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Landroidx/camera/core/ZoomState;->getZoomRatio()F

    move-result p1

    iget-object p0, p0, Landroidx/camera/camera2/impl/ZoomControl;->zoomCompat:Landroidx/camera/camera2/compat/ZoomCompat;

    if-eqz p3, :cond_2

    invoke-interface {p0, p1, p2}, Landroidx/camera/camera2/compat/ZoomCompat;->applyAsync(FLandroidx/camera/camera2/impl/UseCaseCameraRequestControl;)Lmk2;

    move-result-object p0

    goto :goto_1

    :cond_2
    invoke-interface {p0, p2}, Landroidx/camera/camera2/compat/ZoomCompat;->resetAsync(Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;)Lmk2;

    move-result-object p0

    :goto_1
    invoke-static {p0, v0}, Landroidx/camera/camera2/adapter/CoroutineAdaptersKt;->propagateTo(Lmk2;Lxp1;)V

    goto :goto_2

    :cond_3
    new-instance p0, Landroidx/camera/core/CameraControl$OperationCanceledException;

    const-string p1, "Camera is not active."

    invoke-direct {p0, p1}, Landroidx/camera/core/CameraControl$OperationCanceledException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lyp1;->e(Ljava/lang/Throwable;)Z

    :goto_2
    const/4 p0, 0x0

    const/4 p1, 0x1

    invoke-static {v0, p0, p1, p0}, Landroidx/camera/camera2/adapter/CoroutineAdaptersKt;->asListenableFuture$default(Lmb4;Ljava/lang/Object;ILjava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    invoke-static {p0}, Landroidx/camera/core/impl/utils/futures/Futures;->nonCancellationPropagating(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public final getDefaultZoomState()Landroidx/camera/camera2/adapter/ZoomValue;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/impl/ZoomControl;->defaultZoomState$delegate:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/adapter/ZoomValue;

    return-object p0
.end method

.method public final getMaxZoomRatio()F
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/impl/ZoomControl;->maxZoomRatio:F

    return p0
.end method

.method public final getMinZoomRatio()F
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/impl/ZoomControl;->minZoomRatio:F

    return p0
.end method

.method public getRequestControl()Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/impl/ZoomControl;->_requestControl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    return-object p0
.end method

.method public final getZoomStateLiveData()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Landroidx/camera/core/ZoomState;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/camera/camera2/impl/ZoomControl;->get_zoomState()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    return-object p0
.end method

.method public reset()V
    .locals 6

    invoke-virtual {p0}, Landroidx/camera/camera2/impl/ZoomControl;->getDefaultZoomState()Landroidx/camera/camera2/adapter/ZoomValue;

    move-result-object v1

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Landroidx/camera/camera2/impl/ZoomControl;->applyZoomState$default(Landroidx/camera/camera2/impl/ZoomControl;Landroidx/camera/core/ZoomState;ZZILjava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method public final setLinearZoom(F)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Landroidx/camera/camera2/adapter/ZoomValue;

    new-instance v0, Landroidx/camera/camera2/adapter/ZoomValue$LinearZoom;

    invoke-direct {v0, p1}, Landroidx/camera/camera2/adapter/ZoomValue$LinearZoom;-><init>(F)V

    iget p1, p0, Landroidx/camera/camera2/impl/ZoomControl;->minZoomRatio:F

    iget v1, p0, Landroidx/camera/camera2/impl/ZoomControl;->maxZoomRatio:F

    invoke-direct {v2, v0, p1, v1}, Landroidx/camera/camera2/adapter/ZoomValue;-><init>(Landroidx/camera/camera2/adapter/ZoomValue$LinearZoom;FF)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Landroidx/camera/camera2/impl/ZoomControl;->applyZoomState$default(Landroidx/camera/camera2/impl/ZoomControl;Landroidx/camera/core/ZoomState;ZZILjava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Requested linearZoom "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " is not within valid range [0, 1]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public setRequestControl(Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;)V
    .locals 4

    iput-object p1, p0, Landroidx/camera/camera2/impl/ZoomControl;->_requestControl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    invoke-direct {p0}, Landroidx/camera/camera2/impl/ZoomControl;->get_zoomState()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/core/ZoomState;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/camera/camera2/impl/ZoomControl;->getDefaultZoomState()Landroidx/camera/camera2/adapter/ZoomValue;

    move-result-object p1

    :cond_0
    iget-boolean v0, p0, Landroidx/camera/camera2/impl/ZoomControl;->isInitialized:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-interface {p1}, Landroidx/camera/core/ZoomState;->getZoomRatio()F

    move-result v0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v3

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-virtual {p0, p1, v2, v0}, Landroidx/camera/camera2/impl/ZoomControl;->applyZoomState(Landroidx/camera/core/ZoomState;ZZ)Lcom/google/common/util/concurrent/ListenableFuture;

    iput-boolean v1, p0, Landroidx/camera/camera2/impl/ZoomControl;->isInitialized:Z

    return-void
.end method

.method public final setZoomRatio(F)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget v0, p0, Landroidx/camera/camera2/impl/ZoomControl;->maxZoomRatio:F

    cmpl-float v1, p1, v0

    if-gtz v1, :cond_0

    iget v1, p0, Landroidx/camera/camera2/impl/ZoomControl;->minZoomRatio:F

    cmpg-float v2, p1, v1

    if-gez v2, :cond_1

    :cond_0
    move-object v3, p0

    goto :goto_0

    :cond_1
    new-instance v4, Landroidx/camera/camera2/adapter/ZoomValue;

    invoke-direct {v4, p1, v1, v0}, Landroidx/camera/camera2/adapter/ZoomValue;-><init>(FFF)V

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Landroidx/camera/camera2/impl/ZoomControl;->applyZoomState$default(Landroidx/camera/camera2/impl/ZoomControl;Landroidx/camera/core/ZoomState;ZZILjava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0

    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Requested zoomRatio "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " is not within valid range ["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v3, Landroidx/camera/camera2/impl/ZoomControl;->minZoomRatio:F

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v3, Landroidx/camera/camera2/impl/ZoomControl;->maxZoomRatio:F

    const/16 v0, 0x5d

    invoke-static {p0, p1, v0}, Ljs2;->b(Ljava/lang/StringBuilder;FC)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public final toLinearZoom(F)F
    .locals 2

    sget-object v0, Landroidx/camera/camera2/internal/ZoomMath;->INSTANCE:Landroidx/camera/camera2/internal/ZoomMath;

    iget v1, p0, Landroidx/camera/camera2/impl/ZoomControl;->minZoomRatio:F

    iget p0, p0, Landroidx/camera/camera2/impl/ZoomControl;->maxZoomRatio:F

    invoke-virtual {v0, p1, v1, p0}, Landroidx/camera/camera2/internal/ZoomMath;->getLinearZoomFromZoomRatio(FFF)F

    move-result p0

    return p0
.end method
