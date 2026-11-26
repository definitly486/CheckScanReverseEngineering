.class public final Landroidx/camera/camera2/pipe/config/ThreadConfigModule;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final backgroundThreadCount:I

.field private final cameraThreadPriority:I

.field private final defaultThreadPriority:I

.field private final lightweightThreadCount:I

.field private final threadConfig:Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/ThreadConfigModule;->threadConfig:Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result p1

    add-int/lit8 p1, p1, -0x2

    const/4 v0, 0x4

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroidx/camera/camera2/pipe/config/ThreadConfigModule;->lightweightThreadCount:I

    iput v0, p0, Landroidx/camera/camera2/pipe/config/ThreadConfigModule;->backgroundThreadCount:I

    const/4 p1, -0x3

    iput p1, p0, Landroidx/camera/camera2/pipe/config/ThreadConfigModule;->cameraThreadPriority:I

    const/4 p1, -0x1

    iput p1, p0, Landroidx/camera/camera2/pipe/config/ThreadConfigModule;->defaultThreadPriority:I

    return-void
.end method

.method public static synthetic a(Landroidx/camera/camera2/pipe/config/ThreadConfigModule;Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;)Ljava/util/concurrent/Executor;
    .locals 0

    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/config/ThreadConfigModule;->provideThreads$lambda$5(Landroidx/camera/camera2/pipe/config/ThreadConfigModule;Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;)Ljava/util/concurrent/Executor;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Landroidx/camera/camera2/pipe/config/ThreadConfigModule;)Landroid/os/Handler;
    .locals 0

    invoke-static {p0}, Landroidx/camera/camera2/pipe/config/ThreadConfigModule;->provideTestOnlyThreads$lambda$0(Landroidx/camera/camera2/pipe/config/ThreadConfigModule;)Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Landroid/os/HandlerThread;)V
    .locals 0

    invoke-static {p0}, Landroidx/camera/camera2/pipe/config/ThreadConfigModule;->provideThreads$lambda$4$1(Landroid/os/HandlerThread;)V

    return-void
.end method

.method public static synthetic d(Ljava/util/ArrayList;)V
    .locals 0

    invoke-static {p0}, Landroidx/camera/camera2/pipe/config/ThreadConfigModule;->provideThreads$lambda$3(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic e(Lr07;Lr07;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/config/ThreadConfigModule;->provideThreads$lambda$6(Lr07;Lr07;)V

    return-void
.end method

.method public static synthetic f(Landroidx/camera/camera2/pipe/config/ThreadConfigModule;Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;)Landroid/os/Handler;
    .locals 0

    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/config/ThreadConfigModule;->provideThreads$lambda$4(Landroidx/camera/camera2/pipe/config/ThreadConfigModule;Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;)Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;
    .locals 0

    invoke-static {p0}, Landroidx/camera/camera2/pipe/config/ThreadConfigModule;->provideTestOnlyThreads$lambda$1(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    invoke-static {p0}, Landroidx/camera/camera2/pipe/config/ThreadConfigModule;->provideThreads$lambda$5$0(Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method private final provideTestOnlyThreads(Lr22;Ly22;)Landroidx/camera/camera2/pipe/core/Threads;
    .locals 11

    invoke-static {p1}, Laq5;->a(Lr22;)Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v9, Lp14;

    const/4 v0, 0x3

    invoke-direct {v9, p0, v0}, Lp14;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Landroidx/camera/camera2/pipe/core/Threads;

    new-instance v10, Lv77;

    const/4 p0, 0x1

    invoke-direct {v10, v3, p0}, Lv77;-><init>(Ljava/lang/Object;I)V

    move-object v2, p2

    move-object v5, v3

    move-object v6, p1

    move-object v7, v3

    move-object v8, p1

    move-object v4, p1

    move-object v1, p2

    invoke-direct/range {v0 .. v10}, Landroidx/camera/camera2/pipe/core/Threads;-><init>(Ly22;Ly22;Ljava/util/concurrent/Executor;Lr22;Ljava/util/concurrent/Executor;Lr22;Ljava/util/concurrent/Executor;Lr22;Lll3;Lll3;)V

    return-object v0
.end method

.method private static final provideTestOnlyThreads$lambda$0(Landroidx/camera/camera2/pipe/config/ThreadConfigModule;)Landroid/os/Handler;
    .locals 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CXCP-Camera-H"

    iget p0, p0, Landroidx/camera/camera2/pipe/config/ThreadConfigModule;->cameraThreadPriority:I

    invoke-direct {v0, v1, p0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance p0, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object p0
.end method

.method private static final provideTestOnlyThreads$lambda$1(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;
    .locals 0

    return-object p0
.end method

.method private static final provideThreads$lambda$3(Ljava/util/List;)V
    .locals 4

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    const-wide/16 v1, 0x1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    goto :goto_1

    :cond_1
    return-void
.end method

.method private static final provideThreads$lambda$4(Landroidx/camera/camera2/pipe/config/ThreadConfigModule;Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;)Landroid/os/Handler;
    .locals 3

    iget-object v0, p0, Landroidx/camera/camera2/pipe/config/ThreadConfigModule;->threadConfig:Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;->getDefaultCameraHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CXCP-Camera-H"

    iget p0, p0, Landroidx/camera/camera2/pipe/config/ThreadConfigModule;->cameraThreadPriority:I

    invoke-direct {v0, v1, p0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    sget-object p0, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$ShutdownType;->THREAD:Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$ShutdownType;

    new-instance v1, Led0;

    const/4 v2, 0x4

    invoke-direct {v1, v0, v2}, Led0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p0, v1}, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;->addShutdownAction(Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$ShutdownType;Ljava/lang/Runnable;)V

    new-instance p0, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/camera/camera2/pipe/config/ThreadConfigModule;->threadConfig:Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;->getDefaultCameraHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method private static final provideThreads$lambda$4$1(Landroid/os/HandlerThread;)V
    .locals 2

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, v0, v1}, Ljava/lang/Thread;->join(J)V

    return-void
.end method

.method private static final provideThreads$lambda$5(Landroidx/camera/camera2/pipe/config/ThreadConfigModule;Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;)Ljava/util/concurrent/Executor;
    .locals 3

    iget-object v0, p0, Landroidx/camera/camera2/pipe/config/ThreadConfigModule;->threadConfig:Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;->getDefaultCameraExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Landroidx/camera/camera2/pipe/core/AndroidThreads;->INSTANCE:Landroidx/camera/camera2/pipe/core/AndroidThreads;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/AndroidThreads;->getFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    const-string v2, "CXCP-Camera-E"

    invoke-virtual {v0, v1, v2}, Landroidx/camera/camera2/pipe/core/AndroidThreads;->withPrefix(Ljava/util/concurrent/ThreadFactory;Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    iget p0, p0, Landroidx/camera/camera2/pipe/config/ThreadConfigModule;->cameraThreadPriority:I

    invoke-virtual {v0, v1, p0}, Landroidx/camera/camera2/pipe/core/AndroidThreads;->withAndroidPriority(Ljava/util/concurrent/ThreadFactory;I)Ljava/util/concurrent/ThreadFactory;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroidx/camera/camera2/pipe/core/AndroidThreads;->asFixedSizeThreadPool(Ljava/util/concurrent/ThreadFactory;I)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    sget-object v0, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$ShutdownType;->THREAD:Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$ShutdownType;

    new-instance v1, Lph;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lph;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0, v1}, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;->addShutdownAction(Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$ShutdownType;Ljava/lang/Runnable;)V

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/camera/camera2/pipe/config/ThreadConfigModule;->threadConfig:Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;->getDefaultCameraExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    return-object p0
.end method

.method private static final provideThreads$lambda$5$0(Ljava/util/concurrent/ExecutorService;)V
    .locals 3

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    const-wide/16 v0, 0x1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v0, v1, v2}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    return-void
.end method

.method private static final provideThreads$lambda$6(Lr07;Lr07;)V
    .locals 1

    iget-object p0, p0, Lr07;->b:Ljava/lang/Object;

    check-cast p0, Ly22;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lz22;->b(Ly22;Ljava/util/concurrent/CancellationException;)V

    iget-object p0, p1, Lr07;->b:Ljava/lang/Object;

    check-cast p0, Ly22;

    invoke-static {p0, v0}, Lz22;->b(Ly22;Ljava/util/concurrent/CancellationException;)V

    return-void
.end method


# virtual methods
.method public final provideThreads(Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;Lmb4;)Landroidx/camera/camera2/pipe/core/Threads;
    .locals 13
    .param p2    # Lmb4;
        .annotation runtime Landroidx/camera/camera2/pipe/config/CameraPipeJob;
        .end annotation
    .end param

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroidx/camera/camera2/pipe/config/ThreadConfigModule;->threadConfig:Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;->getDefaultBlockingExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Landroidx/camera/camera2/pipe/core/AndroidThreads;->INSTANCE:Landroidx/camera/camera2/pipe/core/AndroidThreads;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/core/AndroidThreads;->getFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v2

    const-string v3, "CXCP-IO-"

    invoke-virtual {v1, v2, v3}, Landroidx/camera/camera2/pipe/core/AndroidThreads;->withPrefix(Ljava/util/concurrent/ThreadFactory;Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v2

    iget v3, p0, Landroidx/camera/camera2/pipe/config/ThreadConfigModule;->defaultThreadPriority:I

    invoke-virtual {v1, v2, v3}, Landroidx/camera/camera2/pipe/core/AndroidThreads;->withAndroidPriority(Ljava/util/concurrent/ThreadFactory;I)Ljava/util/concurrent/ThreadFactory;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Landroidx/camera/camera2/pipe/core/AndroidThreads;->asScheduledThreadPool(Ljava/util/concurrent/ThreadFactory;I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    move-object v5, v1

    invoke-static {v5}, Laq5;->x(Ljava/util/concurrent/Executor;)Lr22;

    move-result-object v6

    iget-object v1, p0, Landroidx/camera/camera2/pipe/config/ThreadConfigModule;->threadConfig:Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;->getDefaultBackgroundExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v1, Landroidx/camera/camera2/pipe/core/AndroidThreads;->INSTANCE:Landroidx/camera/camera2/pipe/core/AndroidThreads;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/core/AndroidThreads;->getFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v2

    const-string v3, "CXCP-BG-"

    invoke-virtual {v1, v2, v3}, Landroidx/camera/camera2/pipe/core/AndroidThreads;->withPrefix(Ljava/util/concurrent/ThreadFactory;Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v2

    iget v3, p0, Landroidx/camera/camera2/pipe/config/ThreadConfigModule;->defaultThreadPriority:I

    invoke-virtual {v1, v2, v3}, Landroidx/camera/camera2/pipe/core/AndroidThreads;->withAndroidPriority(Ljava/util/concurrent/ThreadFactory;I)Ljava/util/concurrent/ThreadFactory;

    move-result-object v2

    iget v3, p0, Landroidx/camera/camera2/pipe/config/ThreadConfigModule;->backgroundThreadCount:I

    invoke-virtual {v1, v2, v3}, Landroidx/camera/camera2/pipe/core/AndroidThreads;->asScheduledThreadPool(Ljava/util/concurrent/ThreadFactory;I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    move-object v7, v1

    invoke-static {v7}, Laq5;->x(Ljava/util/concurrent/Executor;)Lr22;

    move-result-object v8

    iget-object v1, p0, Landroidx/camera/camera2/pipe/config/ThreadConfigModule;->threadConfig:Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;->getDefaultLightweightExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    if-nez v1, :cond_2

    sget-object v1, Landroidx/camera/camera2/pipe/core/AndroidThreads;->INSTANCE:Landroidx/camera/camera2/pipe/core/AndroidThreads;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/core/AndroidThreads;->getFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v2

    const-string v3, "CXCP-"

    invoke-virtual {v1, v2, v3}, Landroidx/camera/camera2/pipe/core/AndroidThreads;->withPrefix(Ljava/util/concurrent/ThreadFactory;Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v2

    iget v3, p0, Landroidx/camera/camera2/pipe/config/ThreadConfigModule;->cameraThreadPriority:I

    invoke-virtual {v1, v2, v3}, Landroidx/camera/camera2/pipe/core/AndroidThreads;->withAndroidPriority(Ljava/util/concurrent/ThreadFactory;I)Ljava/util/concurrent/ThreadFactory;

    move-result-object v2

    iget v3, p0, Landroidx/camera/camera2/pipe/config/ThreadConfigModule;->lightweightThreadCount:I

    invoke-virtual {v1, v2, v3}, Landroidx/camera/camera2/pipe/core/AndroidThreads;->asScheduledThreadPool(Ljava/util/concurrent/ThreadFactory;I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    move-object v9, v1

    invoke-static {v9}, Laq5;->x(Ljava/util/concurrent/Executor;)Lr22;

    move-result-object v10

    sget-object v1, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$ShutdownType;->THREAD:Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$ShutdownType;

    new-instance v2, Llh;

    const/4 v3, 0x3

    invoke-direct {v2, v0, v3}, Llh;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v1, v2}, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;->addShutdownAction(Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$ShutdownType;Ljava/lang/Runnable;)V

    iget-object v0, p0, Landroidx/camera/camera2/pipe/config/ThreadConfigModule;->threadConfig:Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;->getDefaultCameraHandlerFn()Lll3;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Lul;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0, p1}, Lul;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    move-object v11, v0

    new-instance v12, Lgt8;

    const/4 v0, 0x0

    invoke-direct {v12, v0, p0, p1}, Lgt8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lr07;

    invoke-direct {v1}, Lr07;-><init>()V

    new-instance v2, Lr07;

    invoke-direct {v2}, Lr07;-><init>()V

    iget-object v3, p0, Landroidx/camera/camera2/pipe/config/ThreadConfigModule;->threadConfig:Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;

    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;->getTestOnlyScope()Ly22;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object p1, p0, Landroidx/camera/camera2/pipe/config/ThreadConfigModule;->threadConfig:Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;->getTestOnlyScope()Ly22;

    move-result-object p1

    iput-object p1, v1, Lr07;->b:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/config/ThreadConfigModule;->threadConfig:Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;->getTestOnlyScope()Ly22;

    move-result-object p0

    iput-object p0, v2, Lr07;->b:Ljava/lang/Object;

    :goto_0
    move-object p0, v2

    goto :goto_1

    :cond_4
    new-instance p0, Ljd8;

    invoke-direct {p0, p2}, Lnb4;-><init>(Lmb4;)V

    invoke-static {p0, v10}, Lo22$a$a;->d(Lo22$a;Lo22;)Lo22;

    move-result-object p0

    new-instance v3, Lw22;

    const-string v4, "CXCP"

    invoke-direct {v3, v4}, Lw22;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v3}, Lo22;->plus(Lo22;)Lo22;

    move-result-object p0

    invoke-static {p0}, Lz22;->a(Lo22;)Lkz1;

    move-result-object p0

    iput-object p0, v1, Lr07;->b:Ljava/lang/Object;

    new-instance p0, Ljd8;

    invoke-direct {p0, p2}, Lnb4;-><init>(Lmb4;)V

    new-instance p2, Lw22;

    const-string v3, "CXCP-Dispatch"

    invoke-direct {p2, v3}, Lw22;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2}, Lo22$a$a;->d(Lo22$a;Lo22;)Lo22;

    move-result-object p0

    invoke-static {p0}, Lz22;->a(Lo22;)Lkz1;

    move-result-object p0

    iput-object p0, v2, Lr07;->b:Ljava/lang/Object;

    sget-object p0, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$ShutdownType;->SCOPE:Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$ShutdownType;

    new-instance p2, Lht8;

    invoke-direct {p2, v0, v1, v2}, Lht8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p0, p2}, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;->addShutdownAction(Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$ShutdownType;Ljava/lang/Runnable;)V

    goto :goto_0

    :goto_1
    new-instance v2, Landroidx/camera/camera2/pipe/core/Threads;

    iget-object p1, v1, Lr07;->b:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Ly22;

    iget-object p0, p0, Lr07;->b:Ljava/lang/Object;

    move-object v4, p0

    check-cast v4, Ly22;

    invoke-direct/range {v2 .. v12}, Landroidx/camera/camera2/pipe/core/Threads;-><init>(Ly22;Ly22;Ljava/util/concurrent/Executor;Lr22;Ljava/util/concurrent/Executor;Lr22;Ljava/util/concurrent/Executor;Lr22;Lll3;Lll3;)V

    return-object v2
.end method
