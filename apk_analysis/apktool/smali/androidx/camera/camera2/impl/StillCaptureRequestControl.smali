.class public final Landroidx/camera/camera2/impl/StillCaptureRequestControl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/impl/UseCaseCameraControl;


# annotations
.annotation runtime Landroidx/camera/camera2/config/CameraScope;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/impl/StillCaptureRequestControl$Bindings;,
        Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;
    }
.end annotation


# instance fields
.field private _requestControl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

.field private final flashControl:Landroidx/camera/camera2/impl/FlashControl;

.field private final mutex:Lyg5;

.field private final pendingRequests:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final threads:Landroidx/camera/camera2/impl/UseCaseThreads;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/impl/FlashControl;Landroidx/camera/camera2/impl/UseCaseThreads;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl;->flashControl:Landroidx/camera/camera2/impl/FlashControl;

    iput-object p2, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    new-instance p1, Lch5;

    invoke-direct {p1}, Lch5;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl;->mutex:Lyg5;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl;->pendingRequests:Ljava/util/LinkedList;

    return-void
.end method

.method public static synthetic a(Landroidx/camera/camera2/impl/StillCaptureRequestControl;Lmk2;Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;Ljava/lang/Throwable;)Lj59;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/impl/StillCaptureRequestControl;->propagateResultOrEnqueueRequest$lambda$0(Landroidx/camera/camera2/impl/StillCaptureRequestControl;Lmk2;Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;Ljava/lang/Throwable;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMutex$p(Landroidx/camera/camera2/impl/StillCaptureRequestControl;)Lyg5;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl;->mutex:Lyg5;

    return-object p0
.end method

.method public static final synthetic access$getPendingRequests$p(Landroidx/camera/camera2/impl/StillCaptureRequestControl;)Ljava/util/LinkedList;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl;->pendingRequests:Ljava/util/LinkedList;

    return-object p0
.end method

.method public static final synthetic access$propagateResultOrEnqueueRequest(Landroidx/camera/camera2/impl/StillCaptureRequestControl;Lmk2;Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/camera2/impl/StillCaptureRequestControl;->propagateResultOrEnqueueRequest(Lmk2;Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;)V

    return-void
.end method

.method public static final synthetic access$submitRequest(Landroidx/camera/camera2/impl/StillCaptureRequestControl;Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;Le02;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/camera2/impl/StillCaptureRequestControl;->submitRequest(Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final propagateResultOrEnqueueRequest(Lmk2;Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmk2<",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/Void;",
            ">;>;",
            "Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;",
            "Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;",
            ")V"
        }
    .end annotation

    new-instance v0, Lz88;

    invoke-direct {v0, p0, p1, p2, p3}, Lz88;-><init>(Landroidx/camera/camera2/impl/StillCaptureRequestControl;Lmk2;Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;)V

    invoke-interface {p1, v0}, Lmb4;->g(Lnl3;)Lhp2;

    return-void
.end method

.method private static final propagateResultOrEnqueueRequest$lambda$0(Landroidx/camera/camera2/impl/StillCaptureRequestControl;Lmk2;Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;Ljava/lang/Throwable;)Lj59;
    .locals 2

    instance-of v0, p4, Landroidx/camera/core/ImageCaptureException;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Landroidx/camera/core/ImageCaptureException;

    invoke-virtual {v0}, Landroidx/camera/core/ImageCaptureException;->getImageCaptureError()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    invoke-virtual {p1}, Landroidx/camera/camera2/impl/UseCaseThreads;->getSequentialScope()Ly22;

    move-result-object p1

    new-instance p4, Landroidx/camera/camera2/impl/StillCaptureRequestControl$propagateResultOrEnqueueRequest$1$1;

    const/4 v0, 0x0

    invoke-direct {p4, p0, p3, p2, v0}, Landroidx/camera/camera2/impl/StillCaptureRequestControl$propagateResultOrEnqueueRequest$1$1;-><init>(Landroidx/camera/camera2/impl/StillCaptureRequestControl;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;Le02;)V

    invoke-static {p1, v0, v0, p4, v1}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;->getResult()Lxp1;

    move-result-object p0

    invoke-static {p1, p0, p4}, Landroidx/camera/camera2/adapter/CoroutineAdaptersKt;->propagateCompletion(Lmk2;Lxp1;Ljava/lang/Throwable;)V

    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private final submitRequest(Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;Le02;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;",
            "Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;",
            "Le02<",
            "-",
            "Lmk2<",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/Void;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Landroidx/camera/camera2/impl/StillCaptureRequestControl$submitRequest$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$submitRequest$1;

    iget v1, v0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$submitRequest$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$submitRequest$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$submitRequest$1;

    invoke-direct {v0, p0, p3}, Landroidx/camera/camera2/impl/StillCaptureRequestControl$submitRequest$1;-><init>(Landroidx/camera/camera2/impl/StillCaptureRequestControl;Le02;)V

    :goto_0
    iget-object p3, v0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$submitRequest$1;->result:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$submitRequest$1;->label:I

    const/4 v3, 0x0

    const-string v4, "CXCP"

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v5, :cond_1

    iget-object p1, v0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$submitRequest$1;->L$1:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    iget-object p1, v0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$submitRequest$1;->L$0:Ljava/lang/Object;

    check-cast p1, Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;

    invoke-static {p3}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p3}, Lr57;->b(Ljava/lang/Object;)V

    sget-object p3, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    invoke-static {v4}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "StillCaptureRequestControl: submitting "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " at "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object p3, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl;->flashControl:Landroidx/camera/camera2/impl/FlashControl;

    iput-object p1, v0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$submitRequest$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$submitRequest$1;->L$1:Ljava/lang/Object;

    iput v5, v0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$submitRequest$1;->label:I

    invoke-virtual {p3, v0}, Landroidx/camera/camera2/impl/FlashControl;->awaitFlashModeUpdate(Le02;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    sget-object v0, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    invoke-static {v4}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StillCaptureRequestControl: Issuing single capture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {p1}, Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;->getCaptureConfigs()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;->getCaptureMode()I

    move-result v1

    invoke-virtual {p1}, Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;->getFlashType()I

    move-result v2

    invoke-interface {p2, v0, v1, v2, p3}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;->issueSingleCaptureAsync(Ljava/util/List;III)Ljava/util/List;

    move-result-object p2

    iget-object p0, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    invoke-virtual {p0}, Landroidx/camera/camera2/impl/UseCaseThreads;->getSequentialScope()Ly22;

    move-result-object p0

    new-instance p3, Landroidx/camera/camera2/impl/StillCaptureRequestControl$submitRequest$4;

    invoke-direct {p3, p2, p1, v3}, Landroidx/camera/camera2/impl/StillCaptureRequestControl$submitRequest$4;-><init>(Ljava/util/List;Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;Le02;)V

    const/4 p1, 0x3

    invoke-static {p0, v3, v3, p3, p1}, Lav0;->a(Ly22;Lo22;Lc32;Lbm3;I)Lnk2;

    move-result-object p0

    return-object p0
.end method

.method private final trySubmitPendingRequests()V
    .locals 3

    iget-object v0, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    invoke-virtual {v0}, Landroidx/camera/camera2/impl/UseCaseThreads;->getSequentialScope()Ly22;

    move-result-object v0

    new-instance v1, Landroidx/camera/camera2/impl/StillCaptureRequestControl$trySubmitPendingRequests$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroidx/camera/camera2/impl/StillCaptureRequestControl$trySubmitPendingRequests$1;-><init>(Landroidx/camera/camera2/impl/StillCaptureRequestControl;Le02;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    return-void
.end method


# virtual methods
.method public getRequestControl()Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl;->_requestControl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    return-object p0
.end method

.method public final issueCaptureRequests(Ljava/util/List;II)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/CaptureConfig;",
            ">;II)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/util/List<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lyp1;

    invoke-direct {v4}, Lyp1;-><init>()V

    iget-object v0, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    invoke-virtual {v0}, Landroidx/camera/camera2/impl/UseCaseThreads;->getSequentialScope()Ly22;

    move-result-object v7

    new-instance v0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$issueCaptureRequests$1;

    const/4 v6, 0x0

    move-object v5, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Landroidx/camera/camera2/impl/StillCaptureRequestControl$issueCaptureRequests$1;-><init>(Ljava/util/List;IILxp1;Landroidx/camera/camera2/impl/StillCaptureRequestControl;Le02;)V

    const/4 p0, 0x3

    const/4 p1, 0x0

    invoke-static {v7, p1, p1, v0, p0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    const/4 p0, 0x1

    invoke-static {v4, p1, p0, p1}, Landroidx/camera/camera2/adapter/CoroutineAdaptersKt;->asListenableFuture$default(Lmk2;Ljava/lang/Object;ILjava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    invoke-static {p0}, Landroidx/camera/core/impl/utils/futures/Futures;->nonCancellationPropagating(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public reset()V
    .locals 3

    iget-object v0, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    invoke-virtual {v0}, Landroidx/camera/camera2/impl/UseCaseThreads;->getSequentialScope()Ly22;

    move-result-object v0

    new-instance v1, Landroidx/camera/camera2/impl/StillCaptureRequestControl$reset$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroidx/camera/camera2/impl/StillCaptureRequestControl$reset$1;-><init>(Landroidx/camera/camera2/impl/StillCaptureRequestControl;Le02;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    return-void
.end method

.method public setRequestControl(Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl;->_requestControl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    invoke-direct {p0}, Landroidx/camera/camera2/impl/StillCaptureRequestControl;->trySubmitPendingRequests()V

    return-void
.end method
