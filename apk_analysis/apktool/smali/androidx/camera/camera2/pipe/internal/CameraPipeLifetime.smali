.class public final Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$Companion;,
        Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$ShutdownType;,
        Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$WhenMappings;
    }
.end annotation


# static fields
.field private static final CAMERA_PIPE_JOB_CANCEL_TIMEOUT_MS:J = 0xbb8L

.field public static final Companion:Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$Companion;


# instance fields
.field private final cameraLock:Ljava/lang/Object;

.field private final cameraPipeJob:Lmb4;

.field private final cameraShutdownActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private isCameraShutdown:Z

.field private isScopeShutdown:Z

.field private isThreadShutdown:Z

.field private final scopeLock:Ljava/lang/Object;

.field private final scopeShutdownActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final threadLock:Ljava/lang/Object;

.field private final threadShutdownActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;->Companion:Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$Companion;

    return-void
.end method

.method public constructor <init>(Lmb4;)V
    .locals 0
    .param p1    # Lmb4;
        .annotation runtime Landroidx/camera/camera2/pipe/config/CameraPipeJob;
        .end annotation
    .end param

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;->cameraPipeJob:Lmb4;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;->cameraLock:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;->cameraShutdownActions:Ljava/util/List;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;->scopeLock:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;->scopeShutdownActions:Ljava/util/List;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;->threadLock:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;->threadShutdownActions:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getCameraPipeJob$p(Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;)Lmb4;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;->cameraPipeJob:Lmb4;

    return-object p0
.end method

.method private final addCameraShutdownAction(Ljava/lang/Runnable;)Z
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;->cameraLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;->isCameraShutdown:Z

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;->cameraShutdownActions:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private final addScopeShutdownAction(Ljava/lang/Runnable;)Z
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;->scopeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;->isScopeShutdown:Z

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;->scopeShutdownActions:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private final addThreadShutdownAction(Ljava/lang/Runnable;)Z
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;->threadLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;->isThreadShutdown:Z

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;->threadShutdownActions:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private final shutdownCamera()V
    .locals 3

    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;->cameraLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "CXCP"

    const-string v2, "Shutting down cameras..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    iget-object p0, p0, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;->cameraShutdownActions:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_1
    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0

    throw p0
.end method

.method private final shutdownScope()Lj59;
    .locals 3

    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;->scopeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "CXCP"

    const-string v2, "Shutting down scopes..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    iget-object v1, p0, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;->scopeShutdownActions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_1
    new-instance v1, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$shutdownScope$1$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$shutdownScope$1$2;-><init>(Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;Le02;)V

    sget-object p0, Lgx2;->b:Lgx2;

    invoke-static {p0, v1}, Lbv0;->a(Lo22;Lbm3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_2
    monitor-exit v0

    throw p0
.end method

.method private final shutdownThread()V
    .locals 3

    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;->threadLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "CXCP"

    const-string v2, "Shutting down threads..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    iget-object p0, p0, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;->threadShutdownActions:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_1
    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final addShutdownAction(Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$ShutdownType;Ljava/lang/Runnable;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p2}, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;->addThreadShutdownAction(Ljava/lang/Runnable;)Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lme0;->e()V

    return-void

    :cond_1
    invoke-direct {p0, p2}, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;->addScopeShutdownAction(Ljava/lang/Runnable;)Z

    move-result p0

    goto :goto_0

    :cond_2
    invoke-direct {p0, p2}, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;->addCameraShutdownAction(Ljava/lang/Runnable;)Z

    move-result p0

    :goto_0
    if-nez p0, :cond_4

    sget-object p0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/core/Log;->getERROR_LOGGABLE()Z

    move-result p0

    if-eqz p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "CameraPipeLifetime already shut down. This is unexpected. Executing "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " shutdown action immediately..."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CXCP"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_4
    return-void
.end method

.method public final shutdown()V
    .locals 0

    invoke-direct {p0}, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;->shutdownCamera()V

    invoke-direct {p0}, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;->shutdownScope()Lj59;

    invoke-direct {p0}, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;->shutdownThread()V

    return-void
.end method
