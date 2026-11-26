.class public final Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;


# annotations
.annotation runtime Landroidx/camera/camera2/config/UseCaseCameraScope;
.end annotation


# instance fields
.field private volatile impl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;

.field private final implProvider:Lws6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lws6<",
            "Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final threads:Landroidx/camera/camera2/impl/UseCaseThreads;


# direct methods
.method public constructor <init>(Lws6;Landroidx/camera/camera2/impl/UseCaseThreads;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lws6<",
            "Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;",
            ">;",
            "Landroidx/camera/camera2/impl/UseCaseThreads;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;->implProvider:Lws6;

    iput-object p2, p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static final synthetic access$getImpl$p(Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;)Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;->impl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;

    return-object p0
.end method

.method public static final synthetic access$getOrCreateImpl(Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;)Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;
    .locals 0

    invoke-direct {p0}, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;->getOrCreateImpl()Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;

    move-result-object p0

    return-object p0
.end method

.method private final getOrCreateImpl()Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;->impl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;->implProvider:Lws6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;

    iget-object v1, p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_1

    iput-object v0, p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;->impl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :cond_1
    invoke-virtual {v0}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->close()V

    new-instance p0, Ljava/util/concurrent/CancellationException;

    const-string v0, "UseCaseCameraRequestControl closed during initialization"

    invoke-direct {p0, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/util/concurrent/CancellationException;

    const-string v0, "UseCaseCameraRequestControl is closed"

    invoke-direct {p0, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final runOnSequential(Lnl3;)Lmk2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lnl3<",
            "-",
            "Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;",
            "+",
            "Lmk2<",
            "+TT;>;>;)",
            "Lmk2<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;->impl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmk2;

    return-object p0

    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    invoke-virtual {v0}, Landroidx/camera/camera2/impl/UseCaseThreads;->getSequentialScope()Ly22;

    move-result-object v0

    new-instance v1, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$runOnSequential$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$runOnSequential$2;-><init>(Lnl3;Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;Le02;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lav0;->a(Ly22;Lo22;Lc32;Lbm3;I)Lnk2;

    move-result-object p0

    return-object p0
.end method

.method private final runOnSequentialList(ILnl3;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lnl3<",
            "-",
            "Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;",
            "+",
            "Ljava/util/List<",
            "+",
            "Lmk2<",
            "+TT;>;>;>;)",
            "Ljava/util/List<",
            "Lmk2<",
            "TT;>;>;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;->impl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;

    if-eqz v0, :cond_0

    invoke-interface {p2, v0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    invoke-virtual {v0}, Landroidx/camera/camera2/impl/UseCaseThreads;->getSequentialScope()Ly22;

    move-result-object v0

    new-instance v1, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$runOnSequentialList$submissionJob$1;

    const/4 v2, 0x0

    invoke-direct {v1, p2, p0, v2}, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$runOnSequentialList$submissionJob$1;-><init>(Lnl3;Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;Le02;)V

    const/4 p2, 0x3

    invoke-static {v0, v2, v2, v1, p2}, Lav0;->a(Ly22;Lo22;Lc32;Lbm3;I)Lnk2;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_1

    iget-object v4, p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    invoke-virtual {v4}, Landroidx/camera/camera2/impl/UseCaseThreads;->getSequentialScope()Ly22;

    move-result-object v4

    new-instance v5, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$runOnSequentialList$2$1;

    invoke-direct {v5, v0, v3, v2}, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$runOnSequentialList$2$1;-><init>(Lmk2;ILe02;)V

    invoke-static {v4, v2, v2, v5, p2}, Lav0;->a(Ly22;Lo22;Lc32;Lbm3;I)Lnk2;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private final runOnSequentialSuspend(Lbm3;Le02;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lbm3<",
            "-",
            "Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;",
            "-",
            "Le02<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Le02<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;->impl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p1, v0, v1}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    invoke-virtual {v0}, Landroidx/camera/camera2/impl/UseCaseThreads;->getSequentialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-static {v0}, Laq5;->x(Ljava/util/concurrent/Executor;)Lr22;

    move-result-object v0

    new-instance v2, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$runOnSequentialSuspend$3;

    invoke-direct {v2, p1, p0, v1}, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$runOnSequentialSuspend$3;-><init>(Lbm3;Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;Le02;)V

    invoke-static {v0, v2, p2}, Lav0;->d(Lo22;Lbm3;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public awaitSurfaceSetup(Le02;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;->impl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;->awaitSurfaceSetup(Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    invoke-virtual {v0}, Landroidx/camera/camera2/impl/UseCaseThreads;->getSequentialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-static {v0}, Laq5;->x(Ljava/util/concurrent/Executor;)Lr22;

    move-result-object v0

    new-instance v1, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$awaitSurfaceSetup$$inlined$runOnSequentialSuspend$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$awaitSurfaceSetup$$inlined$runOnSequentialSuspend$1;-><init>(Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;Le02;)V

    invoke-static {v0, v1, p1}, Lav0;->d(Lo22;Lbm3;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public cancelFocusAndMeteringAsync()Lmk2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmk2<",
            "Landroidx/camera/camera2/pipe/Result3A;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;->impl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;->cancelFocusAndMeteringAsync()Lmk2;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    invoke-virtual {v0}, Landroidx/camera/camera2/impl/UseCaseThreads;->getSequentialScope()Ly22;

    move-result-object v0

    new-instance v1, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$cancelFocusAndMeteringAsync$$inlined$runOnSequential$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$cancelFocusAndMeteringAsync$$inlined$runOnSequential$1;-><init>(Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;Le02;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lav0;->a(Ly22;Lo22;Lc32;Lbm3;I)Lnk2;

    move-result-object p0

    return-object p0
.end method

.method public close()V
    .locals 3

    iget-object v0, p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    invoke-virtual {v0}, Landroidx/camera/camera2/impl/UseCaseThreads;->getSequentialScope()Ly22;

    move-result-object v0

    new-instance v1, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$close$$inlined$confineLaunch$1;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$close$$inlined$confineLaunch$1;-><init>(Le02;Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    return-void
.end method

.method public issueSingleCaptureAsync(Ljava/util/List;III)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/CaptureConfig;",
            ">;III)",
            "Ljava/util/List<",
            "Lmk2<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;->impl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2, p3, p4}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;->issueSingleCaptureAsync(Ljava/util/List;III)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v1, p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    invoke-virtual {v1}, Landroidx/camera/camera2/impl/UseCaseThreads;->getSequentialScope()Ly22;

    move-result-object v1

    new-instance v2, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$issueSingleCaptureAsync$$inlined$runOnSequentialList$1;

    const/4 v4, 0x0

    move-object v3, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-direct/range {v2 .. v8}, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$issueSingleCaptureAsync$$inlined$runOnSequentialList$1;-><init>(Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;Le02;Ljava/util/List;III)V

    const/4 p0, 0x0

    const/4 p1, 0x3

    invoke-static {v1, p0, p0, v2, p1}, Lav0;->a(Ly22;Lo22;Lc32;Lbm3;I)Lnk2;

    move-result-object p2

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 p4, 0x0

    :goto_0
    if-ge p4, v0, :cond_1

    iget-object v1, v3, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    invoke-virtual {v1}, Landroidx/camera/camera2/impl/UseCaseThreads;->getSequentialScope()Ly22;

    move-result-object v1

    new-instance v2, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$runOnSequentialList$2$1;

    invoke-direct {v2, p2, p4, p0}, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$runOnSequentialList$2$1;-><init>(Lmk2;ILe02;)V

    invoke-static {v1, p0, p0, v2, p1}, Lav0;->a(Ly22;Lo22;Lc32;Lbm3;I)Lnk2;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    return-object p3
.end method

.method public removeParametersAsync(Ljava/util/List;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl$Type;)Lmk2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;>;",
            "Landroidx/camera/camera2/impl/UseCaseCameraRequestControl$Type;",
            ")",
            "Lmk2<",
            "Lj59;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;->impl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;->removeParametersAsync(Ljava/util/List;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl$Type;)Lmk2;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    invoke-virtual {v0}, Landroidx/camera/camera2/impl/UseCaseThreads;->getSequentialScope()Ly22;

    move-result-object v0

    new-instance v1, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$removeParametersAsync$$inlined$runOnSequential$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1, p2}, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$removeParametersAsync$$inlined$runOnSequential$1;-><init>(Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;Le02;Ljava/util/List;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl$Type;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lav0;->a(Ly22;Lo22;Lc32;Lbm3;I)Lnk2;

    move-result-object p0

    return-object p0
.end method

.method public setParametersAsync(Ljava/util/Map;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl$Type;Landroidx/camera/core/impl/Config$OptionPriority;)Lmk2;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;+",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/camera/camera2/impl/UseCaseCameraRequestControl$Type;",
            "Landroidx/camera/core/impl/Config$OptionPriority;",
            ")",
            "Lmk2<",
            "Lj59;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;->impl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;->setParametersAsync(Ljava/util/Map;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl$Type;Landroidx/camera/core/impl/Config$OptionPriority;)Lmk2;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    invoke-virtual {v0}, Landroidx/camera/camera2/impl/UseCaseThreads;->getSequentialScope()Ly22;

    move-result-object v0

    new-instance v1, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$setParametersAsync$$inlined$runOnSequential$1;

    const/4 v3, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$setParametersAsync$$inlined$runOnSequential$1;-><init>(Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;Le02;Ljava/util/Map;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl$Type;Landroidx/camera/core/impl/Config$OptionPriority;)V

    const/4 p0, 0x3

    const/4 p1, 0x0

    invoke-static {v0, p1, p1, v1, p0}, Lav0;->a(Ly22;Lo22;Lc32;Lbm3;I)Lnk2;

    move-result-object p0

    return-object p0
.end method

.method public setTorchOffAsync-MtizInI(I)Lmk2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lmk2<",
            "Landroidx/camera/camera2/pipe/Result3A;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;->impl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;->setTorchOffAsync-MtizInI(I)Lmk2;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    invoke-virtual {v0}, Landroidx/camera/camera2/impl/UseCaseThreads;->getSequentialScope()Ly22;

    move-result-object v0

    new-instance v1, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$setTorchOffAsync-MtizInI$$inlined$runOnSequential$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1}, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$setTorchOffAsync-MtizInI$$inlined$runOnSequential$1;-><init>(Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;Le02;I)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lav0;->a(Ly22;Lo22;Lc32;Lbm3;I)Lnk2;

    move-result-object p0

    return-object p0
.end method

.method public setTorchOnAsync()Lmk2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmk2<",
            "Landroidx/camera/camera2/pipe/Result3A;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;->impl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;->setTorchOnAsync()Lmk2;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    invoke-virtual {v0}, Landroidx/camera/camera2/impl/UseCaseThreads;->getSequentialScope()Ly22;

    move-result-object v0

    new-instance v1, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$setTorchOnAsync$$inlined$runOnSequential$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$setTorchOnAsync$$inlined$runOnSequential$1;-><init>(Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;Le02;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lav0;->a(Ly22;Lo22;Lc32;Lbm3;I)Lnk2;

    move-result-object p0

    return-object p0
.end method

.method public startFocusAndMeteringAsync-NxRnBj4(Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/AeMode;J)Lmk2;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MeteringRectangle;",
            ">;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MeteringRectangle;",
            ">;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MeteringRectangle;",
            ">;",
            "Landroidx/camera/camera2/pipe/Lock3ABehavior;",
            "Landroidx/camera/camera2/pipe/Lock3ABehavior;",
            "Landroidx/camera/camera2/pipe/Lock3ABehavior;",
            "Landroidx/camera/camera2/pipe/AeMode;",
            "J)",
            "Lmk2<",
            "Landroidx/camera/camera2/pipe/Result3A;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;->impl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-wide/from16 v8, p8

    invoke-interface/range {v0 .. v9}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;->startFocusAndMeteringAsync-NxRnBj4(Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/AeMode;J)Lmk2;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    invoke-virtual {v0}, Landroidx/camera/camera2/impl/UseCaseThreads;->getSequentialScope()Ly22;

    move-result-object v12

    new-instance v0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$startFocusAndMeteringAsync-NxRnBj4$$inlined$runOnSequential$1;

    const/4 v2, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-wide/from16 v10, p8

    invoke-direct/range {v0 .. v11}, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$startFocusAndMeteringAsync-NxRnBj4$$inlined$runOnSequential$1;-><init>(Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;Le02;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/AeMode;J)V

    const/4 p0, 0x3

    const/4 p1, 0x0

    invoke-static {v12, p1, p1, v0, p0}, Lav0;->a(Ly22;Lo22;Lc32;Lbm3;I)Lnk2;

    move-result-object p0

    return-object p0
.end method

.method public submitParameters(Ljava/util/Map;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl$Type;Landroidx/camera/core/impl/Config$OptionPriority;)Lmk2;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;+",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/camera/camera2/impl/UseCaseCameraRequestControl$Type;",
            "Landroidx/camera/core/impl/Config$OptionPriority;",
            ")",
            "Lmk2<",
            "Lj59;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;->impl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;->submitParameters(Ljava/util/Map;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl$Type;Landroidx/camera/core/impl/Config$OptionPriority;)Lmk2;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    invoke-virtual {v0}, Landroidx/camera/camera2/impl/UseCaseThreads;->getSequentialScope()Ly22;

    move-result-object v0

    new-instance v1, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$submitParameters$$inlined$runOnSequential$1;

    const/4 v3, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$submitParameters$$inlined$runOnSequential$1;-><init>(Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;Le02;Ljava/util/Map;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl$Type;Landroidx/camera/core/impl/Config$OptionPriority;)V

    const/4 p0, 0x3

    const/4 p1, 0x0

    invoke-static {v0, p1, p1, v1, p0}, Lav0;->a(Ly22;Lo22;Lc32;Lbm3;I)Lnk2;

    move-result-object p0

    return-object p0
.end method

.method public update3aRegions(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lmk2;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MeteringRectangle;",
            ">;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MeteringRectangle;",
            ">;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MeteringRectangle;",
            ">;)",
            "Lmk2<",
            "Landroidx/camera/camera2/pipe/Result3A;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;->impl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;->update3aRegions(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lmk2;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    invoke-virtual {v0}, Landroidx/camera/camera2/impl/UseCaseThreads;->getSequentialScope()Ly22;

    move-result-object v0

    new-instance v1, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$update3aRegions$$inlined$runOnSequential$1;

    const/4 v3, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$update3aRegions$$inlined$runOnSequential$1;-><init>(Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;Le02;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    const/4 p0, 0x3

    const/4 p1, 0x0

    invoke-static {v0, p1, p1, v1, p0}, Lav0;->a(Ly22;Lo22;Lc32;Lbm3;I)Lnk2;

    move-result-object p0

    return-object p0
.end method

.method public updateCamera2ConfigAsync(Landroidx/camera/core/impl/Config;Ljava/util/Map;)Lmk2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/impl/Config;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lmk2<",
            "Lj59;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;->impl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;->updateCamera2ConfigAsync(Landroidx/camera/core/impl/Config;Ljava/util/Map;)Lmk2;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    invoke-virtual {v0}, Landroidx/camera/camera2/impl/UseCaseThreads;->getSequentialScope()Ly22;

    move-result-object v0

    new-instance v1, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$updateCamera2ConfigAsync$$inlined$runOnSequential$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1, p2}, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$updateCamera2ConfigAsync$$inlined$runOnSequential$1;-><init>(Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;Le02;Landroidx/camera/core/impl/Config;Ljava/util/Map;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lav0;->a(Ly22;Lo22;Lc32;Lbm3;I)Lnk2;

    move-result-object p0

    return-object p0
.end method

.method public updateRepeatingRequestAsync(ZLjava/util/Collection;)Lmk2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection<",
            "+",
            "Landroidx/camera/core/UseCase;",
            ">;)",
            "Lmk2<",
            "Lj59;",
            ">;"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;->impl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;->updateRepeatingRequestAsync(ZLjava/util/Collection;)Lmk2;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    invoke-virtual {v0}, Landroidx/camera/camera2/impl/UseCaseThreads;->getSequentialScope()Ly22;

    move-result-object v0

    new-instance v1, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$updateRepeatingRequestAsync$$inlined$runOnSequential$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1, p2}, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$updateRepeatingRequestAsync$$inlined$runOnSequential$1;-><init>(Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;Le02;ZLjava/util/Collection;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lav0;->a(Ly22;Lo22;Lc32;Lbm3;I)Lnk2;

    move-result-object p0

    return-object p0
.end method
