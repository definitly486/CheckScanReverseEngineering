.class public final Landroidx/camera/core/RotationProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/RotationProvider$Companion;,
        Landroidx/camera/core/RotationProvider$Listener;,
        Landroidx/camera/core/RotationProvider$ListenerWrapper;
    }
.end annotation


# static fields
.field private static final Companion:Landroidx/camera/core/RotationProvider$Companion;

.field private static final TAG:Ljava/lang/String; = "RotationProvider"


# instance fields
.field private final ignoreCanDetectForTest:Z

.field private isShutdown:Z

.field private final listeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/camera/core/RotationProvider$Listener;",
            "Landroidx/camera/core/RotationProvider$ListenerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;

.field private final orientationListener:Landroid/view/OrientationEventListener;

.field private volatile rotation:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/core/RotationProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/core/RotationProvider$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/camera/core/RotationProvider;->Companion:Landroidx/camera/core/RotationProvider$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, v0}, Landroidx/camera/core/RotationProvider;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/RotationProvider;->lock:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/RotationProvider;->listeners:Ljava/util/Map;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/camera/core/RotationProvider;->rotation:I

    iput-boolean p2, p0, Landroidx/camera/core/RotationProvider;->ignoreCanDetectForTest:Z

    new-instance p2, Landroidx/camera/core/RotationProvider$1;

    invoke-direct {p2, p1, p0}, Landroidx/camera/core/RotationProvider$1;-><init>(Landroid/content/Context;Landroidx/camera/core/RotationProvider;)V

    iput-object p2, p0, Landroidx/camera/core/RotationProvider;->orientationListener:Landroid/view/OrientationEventListener;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;ZILjh2;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 34
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/camera/core/RotationProvider;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public static final synthetic access$orientationToSurfaceRotation(Landroidx/camera/core/RotationProvider;I)I
    .locals 0

    invoke-direct {p0, p1}, Landroidx/camera/core/RotationProvider;->orientationToSurfaceRotation(I)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$updateRotation(Landroidx/camera/core/RotationProvider;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/camera/core/RotationProvider;->updateRotation(I)V

    return-void
.end method

.method private final orientationToSurfaceRotation(I)I
    .locals 6

    iget v0, p0, Landroidx/camera/core/RotationProvider;->rotation:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-ne v0, v1, :cond_4

    const/16 p0, 0x2d

    if-ltz p1, :cond_0

    if-ge p1, p0, :cond_0

    return v5

    :cond_0
    const/16 v0, 0x87

    if-gt p0, p1, :cond_1

    if-ge p1, v0, :cond_1

    return v4

    :cond_1
    const/16 p0, 0xe1

    if-gt v0, p1, :cond_2

    if-ge p1, p0, :cond_2

    return v3

    :cond_2
    if-gt p0, p1, :cond_3

    const/16 p0, 0x13b

    if-ge p1, p0, :cond_3

    return v2

    :cond_3
    return v5

    :cond_4
    if-ltz p1, :cond_5

    const/16 v0, 0x28

    if-ge p1, v0, :cond_5

    goto :goto_0

    :cond_5
    const/16 v0, 0x140

    if-gt v0, p1, :cond_6

    const/16 v0, 0x168

    if-ge p1, v0, :cond_6

    :goto_0
    return v5

    :cond_6
    const/16 v0, 0x32

    if-gt v0, p1, :cond_7

    const/16 v0, 0x82

    if-ge p1, v0, :cond_7

    return v4

    :cond_7
    const/16 v0, 0x8c

    if-gt v0, p1, :cond_8

    const/16 v0, 0xdc

    if-ge p1, v0, :cond_8

    return v3

    :cond_8
    const/16 v0, 0xe6

    if-gt v0, p1, :cond_9

    const/16 v0, 0x136

    if-ge p1, v0, :cond_9

    return v2

    :cond_9
    iget p0, p0, Landroidx/camera/core/RotationProvider;->rotation:I

    return p0
.end method

.method private final updateRotation(I)V
    .locals 2

    iget v0, p0, Landroidx/camera/core/RotationProvider;->rotation:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroidx/camera/core/RotationProvider;->rotation:I

    iget-object v0, p0, Landroidx/camera/core/RotationProvider;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroidx/camera/core/RotationProvider;->listeners:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lqn1;->t0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    sget-object v1, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/RotationProvider$ListenerWrapper;

    invoke-virtual {v0, p1}, Landroidx/camera/core/RotationProvider$ListenerWrapper;->onRotationChanged(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_0
    return-void
.end method


# virtual methods
.method public final addListener(Ljava/util/concurrent/Executor;Landroidx/camera/core/RotationProvider$Listener;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/core/RotationProvider;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/core/RotationProvider;->ignoreCanDetectForTest:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/camera/core/RotationProvider;->orientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v1, Landroidx/camera/core/RotationProvider$ListenerWrapper;

    invoke-direct {v1, p2, p1}, Landroidx/camera/core/RotationProvider$ListenerWrapper;-><init>(Landroidx/camera/core/RotationProvider$Listener;Ljava/util/concurrent/Executor;)V

    iget-object p1, p0, Landroidx/camera/core/RotationProvider;->listeners:Ljava/util/Map;

    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Landroidx/camera/core/RotationProvider;->rotation:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    iget p1, p0, Landroidx/camera/core/RotationProvider;->rotation:I

    invoke-virtual {v1, p1}, Landroidx/camera/core/RotationProvider$ListenerWrapper;->onRotationChanged(I)V

    :cond_1
    iget-object p1, p0, Landroidx/camera/core/RotationProvider;->listeners:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    iget-object p0, p0, Landroidx/camera/core/RotationProvider;->orientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {p0}, Landroid/view/OrientationEventListener;->enable()V

    :cond_2
    sget-object p0, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return p2

    :goto_0
    monitor-exit v0

    throw p0
.end method

.method public final isShutdown()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/camera/core/RotationProvider;->isShutdown:Z

    return p0
.end method

.method public final removeListener(Landroidx/camera/core/RotationProvider$Listener;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/core/RotationProvider;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/camera/core/RotationProvider;->listeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/RotationProvider$ListenerWrapper;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/camera/core/RotationProvider$ListenerWrapper;->disable()V

    iget-object v1, p0, Landroidx/camera/core/RotationProvider;->listeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Landroidx/camera/core/RotationProvider;->listeners:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/camera/core/RotationProvider;->orientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {p1}, Landroid/view/OrientationEventListener;->disable()V

    const/4 p1, -0x1

    iput p1, p0, Landroidx/camera/core/RotationProvider;->rotation:I

    :cond_1
    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public final shutdown()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/core/RotationProvider;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/camera/core/RotationProvider;->orientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->disable()V

    iget-object v1, p0, Landroidx/camera/core/RotationProvider;->listeners:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/camera/core/RotationProvider;->isShutdown:Z

    const/4 v1, -0x1

    iput v1, p0, Landroidx/camera/core/RotationProvider;->rotation:I

    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final updateOrientationForTesting(I)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/camera/core/RotationProvider;->orientationToSurfaceRotation(I)I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/camera/core/RotationProvider;->updateRotation(I)V

    return-void
.end method
