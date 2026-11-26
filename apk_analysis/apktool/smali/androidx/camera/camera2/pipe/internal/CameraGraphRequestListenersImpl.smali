.class public final Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/RequestListeners;


# annotations
.annotation runtime Landroidx/camera/camera2/pipe/config/CameraGraphScope;
.end annotation


# instance fields
.field private dirty:Z

.field private final graphProcessor:Landroidx/camera/camera2/pipe/graph/GraphProcessor;

.field private final graphScope:Ly22;

.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/camera/camera2/pipe/Request$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;

.field private final sessionLock:Landroidx/camera/camera2/pipe/internal/GraphSessionLock;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/internal/GraphSessionLock;Landroidx/camera/camera2/pipe/graph/GraphProcessor;Ly22;)V
    .locals 0
    .param p3    # Ly22;
        .annotation runtime Landroidx/camera/camera2/pipe/config/ForCameraGraph;
        .end annotation
    .end param

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;->sessionLock:Landroidx/camera/camera2/pipe/internal/GraphSessionLock;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;->graphProcessor:Landroidx/camera/camera2/pipe/graph/GraphProcessor;

    iput-object p3, p0, Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;->graphScope:Ly22;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;->lock:Ljava/lang/Object;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;->listeners:Ljava/util/Set;

    return-void
.end method

.method public static final synthetic access$getGraphProcessor$p(Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;)Landroidx/camera/camera2/pipe/graph/GraphProcessor;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;->graphProcessor:Landroidx/camera/camera2/pipe/graph/GraphProcessor;

    return-object p0
.end method

.method private final applyUpdate()V
    .locals 5

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;->fetchUpdatedListeners$camera_camera2_pipe()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;->sessionLock:Landroidx/camera/camera2/pipe/internal/GraphSessionLock;

    iget-object v2, p0, Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;->graphScope:Ly22;

    new-instance v3, Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl$applyUpdate$1;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v0, v4}, Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl$applyUpdate$1;-><init>(Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;Ljava/util/List;Le02;)V

    invoke-virtual {v1, v2, v3}, Landroidx/camera/camera2/pipe/internal/GraphSessionLock;->withTokenIn$camera_camera2_pipe(Ly22;Lbm3;)Lmk2;

    return-void
.end method


# virtual methods
.method public add(Landroidx/camera/camera2/pipe/Request$Listener;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;->addAll(Ljava/util/List;)V

    return-void
.end method

.method public addAll(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/camera2/pipe/Request$Listener;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;->listeners:Ljava/util/Set;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;->dirty:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;->dirty:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    sget-object v1, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    if-eqz p1, :cond_1

    invoke-direct {p0}, Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;->applyUpdate()V

    :cond_1
    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public final fetchUpdatedListeners$camera_camera2_pipe()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/Request$Listener;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;->dirty:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;->dirty:Z

    iget-object p0, p0, Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;->listeners:Ljava/util/Set;

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lqn1;->t0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public remove(Landroidx/camera/camera2/pipe/Request$Listener;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;->removeAll(Ljava/util/List;)V

    return-void
.end method

.method public removeAll(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/camera2/pipe/Request$Listener;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;->listeners:Ljava/util/Set;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;->dirty:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;->dirty:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    sget-object v1, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    if-eqz p1, :cond_1

    invoke-direct {p0}, Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;->applyUpdate()V

    :cond_1
    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method
