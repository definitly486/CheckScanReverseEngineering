.class public final Landroidx/camera/camera2/adapter/CoroutineAdaptersKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Lmb4;Ljava/lang/Object;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/camera/camera2/adapter/CoroutineAdaptersKt;->asListenableFuture$lambda$0(Lmb4;Ljava/lang/Object;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final asListenableFuture(Lmb4;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmb4;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Li22;

    invoke-direct {v0, p0, p1}, Li22;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public static final asListenableFuture(Lmk2;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lmk2<",
            "+TT;>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    new-instance v0, Lm22;

    invoke-direct {v0, p0, p1}, Lm22;-><init>(Lmk2;Ljava/lang/Object;)V

    .line 17
    invoke-static {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public static synthetic asListenableFuture$default(Lmb4;Ljava/lang/Object;ILjava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const-string p1, "Job.asListenableFuture"

    :cond_0
    invoke-static {p0, p1}, Landroidx/camera/camera2/adapter/CoroutineAdaptersKt;->asListenableFuture(Lmb4;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic asListenableFuture$default(Lmk2;Ljava/lang/Object;ILjava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 11
    const-string p1, "Deferred.asListenableFuture"

    .line 12
    :cond_0
    invoke-static {p0, p1}, Landroidx/camera/camera2/adapter/CoroutineAdaptersKt;->asListenableFuture(Lmk2;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method private static final asListenableFuture$lambda$0(Lmb4;Ljava/lang/Object;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lj22;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lj22;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p0, v0}, Lmb4;->g(Lnl3;)Lhp2;

    return-object p1
.end method

.method private static final asListenableFuture$lambda$0$0(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Ljava/lang/Throwable;)Lj59;
    .locals 1

    if-eqz p1, :cond_1

    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setCancelled()Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final asListenableFuture$lambda$1(Lmk2;Ljava/lang/Object;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ll22;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, p0}, Ll22;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lmb4;->g(Lnl3;)Lhp2;

    return-object p1
.end method

.method private static final asListenableFuture$lambda$1$0(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Lmk2;Ljava/lang/Throwable;)Lj59;
    .locals 0

    if-eqz p2, :cond_1

    instance-of p1, p2, Ljava/util/concurrent/CancellationException;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setCancelled()Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lmk2;->m()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final asVoidListenableFuture(Lmk2;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lmk2<",
            "+TT;>;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Landroidx/camera/camera2/adapter/CoroutineAdaptersKt;->asListenableFuture$default(Lmk2;Ljava/lang/Object;ILjava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    invoke-static {p0}, Landroidx/camera/core/impl/utils/futures/FutureChain;->from(Lcom/google/common/util/concurrent/ListenableFuture;)Landroidx/camera/core/impl/utils/futures/FutureChain;

    move-result-object p0

    new-instance v0, Lqg;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lqg;-><init>(I)V

    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/camera/core/impl/utils/futures/FutureChain;->transform(Landroidx/arch/core/util/Function;Ljava/util/concurrent/Executor;)Landroidx/camera/core/impl/utils/futures/FutureChain;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method private static final asVoidListenableFuture$lambda$0(Ljava/lang/Object;)Ljava/lang/Void;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static final awaitUntil(Lmk2;JLe02;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lmk2<",
            "+TT;>;J",
            "Le02<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Landroidx/camera/camera2/adapter/CoroutineAdaptersKt$awaitUntil$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Landroidx/camera/camera2/adapter/CoroutineAdaptersKt$awaitUntil$1;

    iget v1, v0, Landroidx/camera/camera2/adapter/CoroutineAdaptersKt$awaitUntil$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/camera/camera2/adapter/CoroutineAdaptersKt$awaitUntil$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/camera/camera2/adapter/CoroutineAdaptersKt$awaitUntil$1;

    invoke-direct {v0, p3}, Landroidx/camera/camera2/adapter/CoroutineAdaptersKt$awaitUntil$1;-><init>(Le02;)V

    :goto_0
    iget-object p3, v0, Landroidx/camera/camera2/adapter/CoroutineAdaptersKt$awaitUntil$1;->result:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Landroidx/camera/camera2/adapter/CoroutineAdaptersKt$awaitUntil$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p3}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p3}, Lr57;->b(Ljava/lang/Object;)V

    new-instance p3, Landroidx/camera/camera2/adapter/CoroutineAdaptersKt$awaitUntil$2;

    invoke-direct {p3, p0, v3}, Landroidx/camera/camera2/adapter/CoroutineAdaptersKt$awaitUntil$2;-><init>(Lmk2;Le02;)V

    iput v4, v0, Landroidx/camera/camera2/adapter/CoroutineAdaptersKt$awaitUntil$1;->label:I

    invoke-static {p1, p2, p3, v0}, Lyv8;->c(JLbm3;Le02;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    if-eqz p3, :cond_4

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lmk2;Ljava/lang/Object;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/camera/camera2/adapter/CoroutineAdaptersKt;->asListenableFuture$lambda$1(Lmk2;Ljava/lang/Object;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ljava/lang/Object;)Ljava/lang/Void;
    .locals 0

    invoke-static {p0}, Landroidx/camera/camera2/adapter/CoroutineAdaptersKt;->asVoidListenableFuture$lambda$0(Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public static final completeFailing(Lxp1;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lxp1<",
            "TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-interface {p0, p1}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    return-void

    :cond_0
    invoke-interface {p0, p1}, Lxp1;->e(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public static synthetic d(Lmk2;Lxp1;Ljava/lang/Throwable;)Lj59;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/camera/camera2/adapter/CoroutineAdaptersKt;->propagateTo$lambda$0(Lmk2;Lxp1;Ljava/lang/Throwable;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lmk2;Lxp1;Lnl3;Ljava/lang/Throwable;)Lj59;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/camera/camera2/adapter/CoroutineAdaptersKt;->propagateTo$lambda$1(Lmk2;Lxp1;Lnl3;Ljava/lang/Throwable;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Lmk2;Ljava/lang/Throwable;)Lj59;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/camera/camera2/adapter/CoroutineAdaptersKt;->asListenableFuture$lambda$1$0(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Lmk2;Ljava/lang/Throwable;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static final future(Ly22;Lnl3;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ly22;",
            "Lnl3<",
            "-",
            "Le02<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/camera/camera2/adapter/CoroutineAdaptersKt$future$resolver$1;

    invoke-direct {v0, p0, p1}, Landroidx/camera/camera2/adapter/CoroutineAdaptersKt$future$resolver$1;-><init>(Ly22;Lnl3;)V

    invoke-static {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public static synthetic g(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Ljava/lang/Throwable;)Lj59;
    .locals 0

    invoke-static {p0, p1}, Landroidx/camera/camera2/adapter/CoroutineAdaptersKt;->asListenableFuture$lambda$0$0(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Ljava/lang/Throwable;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static final propagateCompletion(Lmk2;Lxp1;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lmk2<",
            "+TT;>;",
            "Lxp1<",
            "TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p2, :cond_0

    .line 27
    invoke-static {p1, p2}, Landroidx/camera/camera2/adapter/CoroutineAdaptersKt;->completeFailing(Lxp1;Ljava/lang/Throwable;)V

    return-void

    .line 28
    :cond_0
    invoke-interface {p0}, Lmk2;->m()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Lxp1;->f(Ljava/lang/Object;)Z

    return-void
.end method

.method public static final propagateCompletion(Lmk2;Lxp1;Ljava/lang/Throwable;Lnl3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lmk2<",
            "+TT;>;",
            "Lxp1<",
            "TR;>;",
            "Ljava/lang/Throwable;",
            "Lnl3<",
            "-TT;+TR;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p2, :cond_0

    invoke-static {p1, p2}, Landroidx/camera/camera2/adapter/CoroutineAdaptersKt;->completeFailing(Lxp1;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    invoke-interface {p0}, Lmk2;->m()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p3, p0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Lxp1;->f(Ljava/lang/Object;)Z

    return-void
.end method

.method public static final propagateTo(Lmk2;Lxp1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lmk2<",
            "+TT;>;",
            "Lxp1<",
            "TT;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    new-instance v0, Lk22;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lk22;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lmb4;->g(Lnl3;)Lhp2;

    return-void
.end method

.method public static final propagateTo(Lmk2;Lxp1;Lnl3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lmk2<",
            "+TT;>;",
            "Lxp1<",
            "TR;>;",
            "Lnl3<",
            "-TT;+TR;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ln22;

    invoke-direct {v0, p0, p1, p2}, Ln22;-><init>(Lmk2;Lxp1;Lnl3;)V

    invoke-interface {p0, v0}, Lmb4;->g(Lnl3;)Lhp2;

    return-void
.end method

.method private static final propagateTo$lambda$0(Lmk2;Lxp1;Ljava/lang/Throwable;)Lj59;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/camera/camera2/adapter/CoroutineAdaptersKt;->propagateCompletion(Lmk2;Lxp1;Ljava/lang/Throwable;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final propagateTo$lambda$1(Lmk2;Lxp1;Lnl3;Ljava/lang/Throwable;)Lj59;
    .locals 0

    invoke-static {p0, p1, p3, p2}, Landroidx/camera/camera2/adapter/CoroutineAdaptersKt;->propagateCompletion(Lmk2;Lxp1;Ljava/lang/Throwable;Lnl3;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
