.class public final Landroidx/camera/camera2/impl/UseCaseThreads;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final backgroundDispatcher:Lr22;

.field private final backgroundExecutor:Ljava/util/concurrent/Executor;

.field private final isSequentialThread:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mainHandler:Landroid/os/Handler;

.field private final scope:Ly22;

.field private final sequentialDispatcher:Lr22;

.field private final sequentialExecutor:Ljava/util/concurrent/Executor;

.field private final sequentialExecutorDelegate:Ljava/util/concurrent/Executor;

.field private sequentialScope:Ly22;


# direct methods
.method public constructor <init>(Ly22;Ljava/util/concurrent/Executor;Lr22;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseThreads;->scope:Ly22;

    iput-object p2, p0, Landroidx/camera/camera2/impl/UseCaseThreads;->backgroundExecutor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroidx/camera/camera2/impl/UseCaseThreads;->backgroundDispatcher:Lr22;

    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Landroidx/camera/camera2/impl/UseCaseThreads;->mainHandler:Landroid/os/Handler;

    invoke-static {p2}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->newSequentialExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Landroidx/camera/camera2/impl/UseCaseThreads;->sequentialExecutorDelegate:Ljava/util/concurrent/Executor;

    new-instance p2, Ljava/lang/ThreadLocal;

    invoke-direct {p2}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object p2, p0, Landroidx/camera/camera2/impl/UseCaseThreads;->isSequentialThread:Ljava/lang/ThreadLocal;

    new-instance p2, Lzi2;

    const/4 p3, 0x1

    invoke-direct {p2, p0, p3}, Lzi2;-><init>(Ljava/lang/Object;I)V

    iput-object p2, p0, Landroidx/camera/camera2/impl/UseCaseThreads;->sequentialExecutor:Ljava/util/concurrent/Executor;

    invoke-static {p2}, Laq5;->x(Ljava/util/concurrent/Executor;)Lr22;

    move-result-object p2

    iput-object p2, p0, Landroidx/camera/camera2/impl/UseCaseThreads;->sequentialDispatcher:Lr22;

    invoke-interface {p1}, Ly22;->getCoroutineContext()Lo22;

    move-result-object p1

    invoke-static {}, Lrm9;->b()Ljd8;

    move-result-object p3

    invoke-interface {p1, p3}, Lo22;->plus(Lo22;)Lo22;

    move-result-object p1

    invoke-interface {p1, p2}, Lo22;->plus(Lo22;)Lo22;

    move-result-object p1

    invoke-static {p1}, Lz22;->a(Lo22;)Lkz1;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseThreads;->sequentialScope:Ly22;

    return-void
.end method

.method public static synthetic a(Landroidx/camera/camera2/impl/UseCaseThreads;Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/camera/camera2/impl/UseCaseThreads;->sequentialExecutor$lambda$0$0(Landroidx/camera/camera2/impl/UseCaseThreads;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic b(Landroidx/camera/camera2/impl/UseCaseThreads;Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/camera/camera2/impl/UseCaseThreads;->sequentialExecutor$lambda$0(Landroidx/camera/camera2/impl/UseCaseThreads;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static confineDeferredListSuspend$default(Landroidx/camera/camera2/impl/UseCaseThreads;ILc32;Lnl3;ILjava/lang/Object;)Ljava/util/List;
    .locals 1

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    sget-object p2, Lc32;->DEFAULT:Lc32;

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 p5, 0x0

    :goto_0
    if-ge p5, p1, :cond_1

    new-instance v0, Lyp1;

    invoke-direct {v0}, Lyp1;-><init>()V

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/camera/camera2/impl/UseCaseThreads;->getSequentialScope()Ly22;

    move-result-object p0

    new-instance p1, Landroidx/camera/camera2/impl/UseCaseThreads$confineDeferredListSuspend$1;

    const/4 p5, 0x0

    invoke-direct {p1, p3, p4, p5}, Landroidx/camera/camera2/impl/UseCaseThreads$confineDeferredListSuspend$1;-><init>(Lnl3;Ljava/util/List;Le02;)V

    const/4 p3, 0x1

    invoke-static {p0, p5, p2, p1, p3}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    return-object p4
.end method

.method public static confineDeferredSuspend$default(Landroidx/camera/camera2/impl/UseCaseThreads;Lnl3;Lc32;ILjava/lang/Object;)Lmk2;
    .locals 1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    sget-object p2, Lc32;->DEFAULT:Lc32;

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Lyp1;

    invoke-direct {p3}, Lyp1;-><init>()V

    invoke-virtual {p0}, Landroidx/camera/camera2/impl/UseCaseThreads;->getSequentialScope()Ly22;

    move-result-object p0

    new-instance p4, Landroidx/camera/camera2/impl/UseCaseThreads$confineDeferredSuspend$1;

    const/4 v0, 0x0

    invoke-direct {p4, p1, p3, v0}, Landroidx/camera/camera2/impl/UseCaseThreads$confineDeferredSuspend$1;-><init>(Lnl3;Lxp1;Le02;)V

    const/4 p1, 0x1

    invoke-static {p0, v0, p2, p4, p1}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    return-object p3
.end method

.method private static final sequentialExecutor$lambda$0(Landroidx/camera/camera2/impl/UseCaseThreads;Ljava/lang/Runnable;)V
    .locals 3

    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseThreads;->sequentialExecutorDelegate:Ljava/util/concurrent/Executor;

    new-instance v1, Lp01;

    const/4 v2, 0x5

    invoke-direct {v1, v2, p0, p1}, Lp01;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final sequentialExecutor$lambda$0$0(Landroidx/camera/camera2/impl/UseCaseThreads;Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseThreads;->isSequentialThread:Ljava/lang/ThreadLocal;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseThreads;->isSequentialThread:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->remove()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseThreads;->isSequentialThread:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->remove()V

    throw p1
.end method


# virtual methods
.method public final checkOnSequentialThread()V
    .locals 1

    invoke-virtual {p0}, Landroidx/camera/camera2/impl/UseCaseThreads;->isOnSequentialThread()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Thread check failed: This method must be called from the UseCaseThreads sequential scope. Current thread: "

    invoke-static {p0, v0}, Lvh;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final confineDeferred(Lll3;)Lmk2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lll3<",
            "+",
            "Lmk2<",
            "+TT;>;>;)",
            "Lmk2<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lyp1;

    invoke-direct {v0}, Lyp1;-><init>()V

    invoke-virtual {p0}, Landroidx/camera/camera2/impl/UseCaseThreads;->getSequentialScope()Ly22;

    move-result-object p0

    new-instance v1, Landroidx/camera/camera2/impl/UseCaseThreads$confineDeferred$1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2}, Landroidx/camera/camera2/impl/UseCaseThreads$confineDeferred$1;-><init>(Lll3;Lxp1;Le02;)V

    const/4 p1, 0x3

    invoke-static {p0, v2, v2, v1, p1}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    return-object v0
.end method

.method public final confineDeferredList(ILll3;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lll3<",
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

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    new-instance v2, Lyp1;

    invoke-direct {v2}, Lyp1;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/camera/camera2/impl/UseCaseThreads;->getSequentialScope()Ly22;

    move-result-object p0

    new-instance p1, Landroidx/camera/camera2/impl/UseCaseThreads$confineDeferredList$1;

    const/4 v1, 0x0

    invoke-direct {p1, p2, v0, v1}, Landroidx/camera/camera2/impl/UseCaseThreads$confineDeferredList$1;-><init>(Lll3;Ljava/util/List;Le02;)V

    const/4 p2, 0x3

    invoke-static {p0, v1, v1, p1, p2}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    return-object v0
.end method

.method public final confineDeferredListSuspend(ILc32;Lnl3;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lc32;",
            "Lnl3<",
            "-",
            "Le02<",
            "-",
            "Ljava/util/List<",
            "+",
            "Lmk2<",
            "+TT;>;>;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "Lmk2<",
            "TT;>;>;"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    new-instance v2, Lyp1;

    invoke-direct {v2}, Lyp1;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/camera/camera2/impl/UseCaseThreads;->getSequentialScope()Ly22;

    move-result-object p0

    new-instance p1, Landroidx/camera/camera2/impl/UseCaseThreads$confineDeferredListSuspend$1;

    const/4 v1, 0x0

    invoke-direct {p1, p3, v0, v1}, Landroidx/camera/camera2/impl/UseCaseThreads$confineDeferredListSuspend$1;-><init>(Lnl3;Ljava/util/List;Le02;)V

    const/4 p3, 0x1

    invoke-static {p0, v1, p2, p1, p3}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    return-object v0
.end method

.method public final confineDeferredSuspend(Lnl3;Lc32;)Lmk2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lnl3<",
            "-",
            "Le02<",
            "-",
            "Lmk2<",
            "+TT;>;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lc32;",
            ")",
            "Lmk2<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lyp1;

    invoke-direct {v0}, Lyp1;-><init>()V

    invoke-virtual {p0}, Landroidx/camera/camera2/impl/UseCaseThreads;->getSequentialScope()Ly22;

    move-result-object p0

    new-instance v1, Landroidx/camera/camera2/impl/UseCaseThreads$confineDeferredSuspend$1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2}, Landroidx/camera/camera2/impl/UseCaseThreads$confineDeferredSuspend$1;-><init>(Lnl3;Lxp1;Le02;)V

    const/4 p1, 0x1

    invoke-static {p0, v2, p2, v1, p1}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    return-object v0
.end method

.method public final confineLaunch(Lnl3;)Lmb4;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Le02<",
            "-",
            "Lj59;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lmb4;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/camera/camera2/impl/UseCaseThreads;->getSequentialScope()Ly22;

    move-result-object p0

    new-instance v0, Landroidx/camera/camera2/impl/UseCaseThreads$confineLaunch$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/camera/camera2/impl/UseCaseThreads$confineLaunch$1;-><init>(Lnl3;Le02;)V

    const/4 p1, 0x3

    invoke-static {p0, v1, v1, v0, p1}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    move-result-object p0

    return-object p0
.end method

.method public final getBackgroundDispatcher()Lr22;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseThreads;->backgroundDispatcher:Lr22;

    return-object p0
.end method

.method public final getBackgroundExecutor()Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseThreads;->backgroundExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public final getMainHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseThreads;->mainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public final getScope()Ly22;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseThreads;->scope:Ly22;

    return-object p0
.end method

.method public final getSequentialExecutor()Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseThreads;->sequentialExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public final getSequentialScope()Ly22;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseThreads;->sequentialScope:Ly22;

    return-object p0
.end method

.method public final isOnSequentialThread()Z
    .locals 1

    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseThreads;->isSequentialThread:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final setSequentialScope(Ly22;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseThreads;->sequentialScope:Ly22;

    return-void
.end method
