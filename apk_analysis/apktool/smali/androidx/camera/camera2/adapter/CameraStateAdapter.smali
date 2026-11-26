.class public final Landroidx/camera/camera2/adapter/CameraStateAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Landroidx/camera/camera2/config/CameraScope;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;,
        Landroidx/camera/camera2/adapter/CameraStateAdapter$Companion;,
        Landroidx/camera/camera2/adapter/CameraStateAdapter$WhenMappings;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/adapter/CameraStateAdapter$Companion;


# instance fields
.field private final cameraInternalState:Landroidx/camera/core/impl/LiveDataObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/core/impl/LiveDataObservable<",
            "Landroidx/camera/core/impl/CameraInternal$State;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraState:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Landroidx/camera/core/CameraState;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraStateListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/core/util/Consumer<",
            "Landroidx/camera/core/CameraState;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private currentCameraInternalState:Landroidx/camera/core/impl/CameraInternal$State;

.field private currentCameraStateError:Landroidx/camera/core/CameraState$StateError;

.field private currentGraph:Landroidx/camera/camera2/pipe/CameraGraph;

.field private isRemoved:Z

.field private final lock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/adapter/CameraStateAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/adapter/CameraStateAdapter$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->Companion:Landroidx/camera/camera2/adapter/CameraStateAdapter$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->lock:Ljava/lang/Object;

    new-instance v0, Landroidx/camera/core/impl/LiveDataObservable;

    invoke-direct {v0}, Landroidx/camera/core/impl/LiveDataObservable;-><init>()V

    iput-object v0, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->cameraInternalState:Landroidx/camera/core/impl/LiveDataObservable;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->cameraState:Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Landroidx/camera/core/impl/CameraInternal$State;->CLOSED:Landroidx/camera/core/impl/CameraInternal$State;

    iput-object v0, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->currentCameraInternalState:Landroidx/camera/core/impl/CameraInternal$State;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->cameraStateListeners:Ljava/util/Map;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Landroidx/camera/camera2/adapter/CameraStateAdapter;->postCameraState$default(Landroidx/camera/camera2/adapter/CameraStateAdapter;Landroidx/camera/core/impl/CameraInternal$State;Landroidx/camera/core/CameraState$StateError;ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic a(Landroidx/core/util/Consumer;Landroidx/camera/core/CameraState;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/camera/camera2/adapter/CameraStateAdapter;->postCameraState$lambda$1$0(Landroidx/core/util/Consumer;Landroidx/camera/core/CameraState;)V

    return-void
.end method

.method public static final synthetic access$getCurrentCameraInternalState$p(Landroidx/camera/camera2/adapter/CameraStateAdapter;)Landroidx/camera/core/impl/CameraInternal$State;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->currentCameraInternalState:Landroidx/camera/core/impl/CameraInternal$State;

    return-object p0
.end method

.method public static final synthetic access$getCurrentGraph$p(Landroidx/camera/camera2/adapter/CameraStateAdapter;)Landroidx/camera/camera2/pipe/CameraGraph;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->currentGraph:Landroidx/camera/camera2/pipe/CameraGraph;

    return-object p0
.end method

.method private final handleStateTransition(Landroidx/camera/camera2/pipe/CameraGraph;Landroidx/camera/camera2/pipe/GraphState;)V
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->currentGraph:Landroidx/camera/camera2/pipe/CameraGraph;

    invoke-static {p1, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "CXCP"

    if-nez v0, :cond_0

    sget-object p0, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    invoke-static {v1}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ignored stale transition "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " for "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p1, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->currentCameraInternalState:Landroidx/camera/core/impl/CameraInternal$State;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/adapter/CameraStateAdapter;->calculateNextState$camera_camera2(Landroidx/camera/core/impl/CameraInternal$State;Landroidx/camera/camera2/pipe/GraphState;)Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;

    move-result-object p1

    if-nez p1, :cond_2

    sget-object p1, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    invoke-static {v1}, Landroidx/camera/core/Logger;->isWarnEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Impermissible state transition: current camera internal state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/camera/camera2/adapter/CameraStateAdapter;->access$getCurrentCameraInternalState$p(Landroidx/camera/camera2/adapter/CameraStateAdapter;)Landroidx/camera/core/impl/CameraInternal$State;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", received graph state: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;->getState()Landroidx/camera/core/impl/CameraInternal$State;

    move-result-object p2

    iput-object p2, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->currentCameraInternalState:Landroidx/camera/core/impl/CameraInternal$State;

    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;->getError()Landroidx/camera/core/CameraState$StateError;

    move-result-object p2

    iput-object p2, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->currentCameraStateError:Landroidx/camera/core/CameraState$StateError;

    sget-object p2, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    invoke-static {v1}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Updated current camera internal state to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object p1, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->currentCameraInternalState:Landroidx/camera/core/impl/CameraInternal$State;

    iget-object p2, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->currentCameraStateError:Landroidx/camera/core/CameraState$StateError;

    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/adapter/CameraStateAdapter;->postCameraState(Landroidx/camera/core/impl/CameraInternal$State;Landroidx/camera/core/CameraState$StateError;)V

    return-void
.end method

.method private final postCameraState(Landroidx/camera/core/impl/CameraInternal$State;Landroidx/camera/core/CameraState$StateError;)V
    .locals 3

    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->cameraInternalState:Landroidx/camera/core/impl/LiveDataObservable;

    invoke-virtual {v0, p1}, Landroidx/camera/core/impl/LiveDataObservable;->postValue(Ljava/lang/Object;)V

    sget-object v0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->Companion:Landroidx/camera/camera2/adapter/CameraStateAdapter$Companion;

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/adapter/CameraStateAdapter$Companion;->toCameraState$camera_camera2(Landroidx/camera/core/impl/CameraInternal$State;)Landroidx/camera/core/CameraState$Type;

    move-result-object p1

    invoke-static {p1, p2}, Landroidx/camera/core/CameraState;->create(Landroidx/camera/core/CameraState$Type;Landroidx/camera/core/CameraState$StateError;)Landroidx/camera/core/CameraState;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->cameraState:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p2, p1}, Landroidx/camera/camera2/adapter/CameraStateAdapter$Companion;->setOrPostValue$camera_camera2(Landroidx/lifecycle/MutableLiveData;Landroidx/camera/core/CameraState;)V

    iget-object p2, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->lock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->cameraStateListeners:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lqn1;->t0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p2

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/util/Consumer;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/concurrent/Executor;

    new-instance v1, Lg00;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0, p1}, Lg00;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2

    throw p0
.end method

.method public static synthetic postCameraState$default(Landroidx/camera/camera2/adapter/CameraStateAdapter;Landroidx/camera/core/impl/CameraInternal$State;Landroidx/camera/core/CameraState$StateError;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/adapter/CameraStateAdapter;->postCameraState(Landroidx/camera/core/impl/CameraInternal$State;Landroidx/camera/core/CameraState$StateError;)V

    return-void
.end method

.method private static final postCameraState$lambda$1$0(Landroidx/core/util/Consumer;Landroidx/camera/core/CameraState;)V
    .locals 0

    invoke-interface {p0, p1}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final addCameraStateListener$camera_camera2(Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/core/util/Consumer<",
            "Landroidx/camera/core/CameraState;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->cameraStateListeners:Ljava/util/Map;

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

.method public final calculateNextState$camera_camera2(Landroidx/camera/core/impl/CameraInternal$State;Landroidx/camera/camera2/pipe/GraphState;)Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Landroidx/camera/camera2/adapter/CameraStateAdapter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p0, p1, :cond_15

    if-eq p0, v0, :cond_e

    const/4 p1, 0x3

    if-eq p0, p1, :cond_9

    const/4 p1, 0x4

    if-eq p0, p1, :cond_5

    const/4 p1, 0x5

    if-eq p0, p1, :cond_0

    return-object v1

    :cond_0
    sget-object p0, Landroidx/camera/camera2/pipe/GraphState$GraphStateStarting;->INSTANCE:Landroidx/camera/camera2/pipe/GraphState$GraphStateStarting;

    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;

    sget-object p1, Landroidx/camera/core/impl/CameraInternal$State;->OPENING:Landroidx/camera/core/impl/CameraInternal$State;

    invoke-direct {p0, p1, v1, v0, v1}, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;-><init>(Landroidx/camera/core/impl/CameraInternal$State;Landroidx/camera/core/CameraState$StateError;ILjh2;)V

    return-object p0

    :cond_1
    sget-object p0, Landroidx/camera/camera2/pipe/GraphState$GraphStateStarted;->INSTANCE:Landroidx/camera/camera2/pipe/GraphState$GraphStateStarted;

    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;

    sget-object p1, Landroidx/camera/core/impl/CameraInternal$State;->OPEN:Landroidx/camera/core/impl/CameraInternal$State;

    invoke-direct {p0, p1, v1, v0, v1}, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;-><init>(Landroidx/camera/core/impl/CameraInternal$State;Landroidx/camera/core/CameraState$StateError;ILjh2;)V

    return-object p0

    :cond_2
    instance-of p0, p2, Landroidx/camera/camera2/pipe/GraphState$GraphStateError;

    if-eqz p0, :cond_4

    sget-object p0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->Companion:Landroidx/camera/camera2/adapter/CameraStateAdapter$Companion;

    check-cast p2, Landroidx/camera/camera2/pipe/GraphState$GraphStateError;

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/GraphState$GraphStateError;->getCameraError-v7Vf74A()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/adapter/CameraStateAdapter$Companion;->isRecoverableError-90vkdD0$camera_camera2(I)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;

    sget-object v0, Landroidx/camera/core/impl/CameraInternal$State;->PENDING_OPEN:Landroidx/camera/core/impl/CameraInternal$State;

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/GraphState$GraphStateError;->getCameraError-v7Vf74A()I

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/camera/camera2/adapter/CameraStateAdapter$Companion;->toCameraStateError-90vkdD0$camera_camera2(I)Landroidx/camera/core/CameraState$StateError;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;-><init>(Landroidx/camera/core/impl/CameraInternal$State;Landroidx/camera/core/CameraState$StateError;)V

    return-object p1

    :cond_3
    new-instance p1, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;

    sget-object v0, Landroidx/camera/core/impl/CameraInternal$State;->CLOSED:Landroidx/camera/core/impl/CameraInternal$State;

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/GraphState$GraphStateError;->getCameraError-v7Vf74A()I

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/camera/camera2/adapter/CameraStateAdapter$Companion;->toCameraStateError-90vkdD0$camera_camera2(I)Landroidx/camera/core/CameraState$StateError;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;-><init>(Landroidx/camera/core/impl/CameraInternal$State;Landroidx/camera/core/CameraState$StateError;)V

    return-object p1

    :cond_4
    return-object v1

    :cond_5
    sget-object p0, Landroidx/camera/camera2/pipe/GraphState$GraphStateStopped;->INSTANCE:Landroidx/camera/camera2/pipe/GraphState$GraphStateStopped;

    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    new-instance p0, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;

    sget-object p1, Landroidx/camera/core/impl/CameraInternal$State;->CLOSED:Landroidx/camera/core/impl/CameraInternal$State;

    invoke-direct {p0, p1, v1, v0, v1}, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;-><init>(Landroidx/camera/core/impl/CameraInternal$State;Landroidx/camera/core/CameraState$StateError;ILjh2;)V

    return-object p0

    :cond_6
    sget-object p0, Landroidx/camera/camera2/pipe/GraphState$GraphStateStarting;->INSTANCE:Landroidx/camera/camera2/pipe/GraphState$GraphStateStarting;

    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    new-instance p0, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;

    sget-object p1, Landroidx/camera/core/impl/CameraInternal$State;->OPENING:Landroidx/camera/core/impl/CameraInternal$State;

    invoke-direct {p0, p1, v1, v0, v1}, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;-><init>(Landroidx/camera/core/impl/CameraInternal$State;Landroidx/camera/core/CameraState$StateError;ILjh2;)V

    return-object p0

    :cond_7
    instance-of p0, p2, Landroidx/camera/camera2/pipe/GraphState$GraphStateError;

    if-eqz p0, :cond_8

    new-instance p0, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;

    sget-object p1, Landroidx/camera/core/impl/CameraInternal$State;->CLOSING:Landroidx/camera/core/impl/CameraInternal$State;

    sget-object v0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->Companion:Landroidx/camera/camera2/adapter/CameraStateAdapter$Companion;

    check-cast p2, Landroidx/camera/camera2/pipe/GraphState$GraphStateError;

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/GraphState$GraphStateError;->getCameraError-v7Vf74A()I

    move-result p2

    invoke-virtual {v0, p2}, Landroidx/camera/camera2/adapter/CameraStateAdapter$Companion;->toCameraStateError-90vkdD0$camera_camera2(I)Landroidx/camera/core/CameraState$StateError;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;-><init>(Landroidx/camera/core/impl/CameraInternal$State;Landroidx/camera/core/CameraState$StateError;)V

    return-object p0

    :cond_8
    return-object v1

    :cond_9
    sget-object p0, Landroidx/camera/camera2/pipe/GraphState$GraphStateStopping;->INSTANCE:Landroidx/camera/camera2/pipe/GraphState$GraphStateStopping;

    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    new-instance p0, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;

    sget-object p1, Landroidx/camera/core/impl/CameraInternal$State;->CLOSING:Landroidx/camera/core/impl/CameraInternal$State;

    invoke-direct {p0, p1, v1, v0, v1}, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;-><init>(Landroidx/camera/core/impl/CameraInternal$State;Landroidx/camera/core/CameraState$StateError;ILjh2;)V

    return-object p0

    :cond_a
    sget-object p0, Landroidx/camera/camera2/pipe/GraphState$GraphStateStopped;->INSTANCE:Landroidx/camera/camera2/pipe/GraphState$GraphStateStopped;

    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    new-instance p0, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;

    sget-object p1, Landroidx/camera/core/impl/CameraInternal$State;->CLOSED:Landroidx/camera/core/impl/CameraInternal$State;

    invoke-direct {p0, p1, v1, v0, v1}, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;-><init>(Landroidx/camera/core/impl/CameraInternal$State;Landroidx/camera/core/CameraState$StateError;ILjh2;)V

    return-object p0

    :cond_b
    instance-of p0, p2, Landroidx/camera/camera2/pipe/GraphState$GraphStateError;

    if-eqz p0, :cond_d

    sget-object p0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->Companion:Landroidx/camera/camera2/adapter/CameraStateAdapter$Companion;

    check-cast p2, Landroidx/camera/camera2/pipe/GraphState$GraphStateError;

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/GraphState$GraphStateError;->getCameraError-v7Vf74A()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/adapter/CameraStateAdapter$Companion;->isRecoverableError-90vkdD0$camera_camera2(I)Z

    move-result p1

    if-eqz p1, :cond_c

    new-instance p1, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;

    sget-object v0, Landroidx/camera/core/impl/CameraInternal$State;->PENDING_OPEN:Landroidx/camera/core/impl/CameraInternal$State;

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/GraphState$GraphStateError;->getCameraError-v7Vf74A()I

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/camera/camera2/adapter/CameraStateAdapter$Companion;->toCameraStateError-90vkdD0$camera_camera2(I)Landroidx/camera/core/CameraState$StateError;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;-><init>(Landroidx/camera/core/impl/CameraInternal$State;Landroidx/camera/core/CameraState$StateError;)V

    return-object p1

    :cond_c
    new-instance p1, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;

    sget-object v0, Landroidx/camera/core/impl/CameraInternal$State;->CLOSED:Landroidx/camera/core/impl/CameraInternal$State;

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/GraphState$GraphStateError;->getCameraError-v7Vf74A()I

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/camera/camera2/adapter/CameraStateAdapter$Companion;->toCameraStateError-90vkdD0$camera_camera2(I)Landroidx/camera/core/CameraState$StateError;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;-><init>(Landroidx/camera/core/impl/CameraInternal$State;Landroidx/camera/core/CameraState$StateError;)V

    return-object p1

    :cond_d
    return-object v1

    :cond_e
    sget-object p0, Landroidx/camera/camera2/pipe/GraphState$GraphStateStarted;->INSTANCE:Landroidx/camera/camera2/pipe/GraphState$GraphStateStarted;

    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    new-instance p0, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;

    sget-object p1, Landroidx/camera/core/impl/CameraInternal$State;->OPEN:Landroidx/camera/core/impl/CameraInternal$State;

    invoke-direct {p0, p1, v1, v0, v1}, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;-><init>(Landroidx/camera/core/impl/CameraInternal$State;Landroidx/camera/core/CameraState$StateError;ILjh2;)V

    return-object p0

    :cond_f
    instance-of p0, p2, Landroidx/camera/camera2/pipe/GraphState$GraphStateError;

    if-eqz p0, :cond_12

    check-cast p2, Landroidx/camera/camera2/pipe/GraphState$GraphStateError;

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/GraphState$GraphStateError;->getWillAttemptRetry()Z

    move-result p0

    if-eqz p0, :cond_10

    new-instance p0, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;

    sget-object p1, Landroidx/camera/core/impl/CameraInternal$State;->OPENING:Landroidx/camera/core/impl/CameraInternal$State;

    sget-object v0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->Companion:Landroidx/camera/camera2/adapter/CameraStateAdapter$Companion;

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/GraphState$GraphStateError;->getCameraError-v7Vf74A()I

    move-result p2

    invoke-virtual {v0, p2}, Landroidx/camera/camera2/adapter/CameraStateAdapter$Companion;->toCameraStateError-90vkdD0$camera_camera2(I)Landroidx/camera/core/CameraState$StateError;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;-><init>(Landroidx/camera/core/impl/CameraInternal$State;Landroidx/camera/core/CameraState$StateError;)V

    return-object p0

    :cond_10
    sget-object p0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->Companion:Landroidx/camera/camera2/adapter/CameraStateAdapter$Companion;

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/GraphState$GraphStateError;->getCameraError-v7Vf74A()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/adapter/CameraStateAdapter$Companion;->isRecoverableError-90vkdD0$camera_camera2(I)Z

    move-result p1

    if-eqz p1, :cond_11

    new-instance p1, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;

    sget-object v0, Landroidx/camera/core/impl/CameraInternal$State;->PENDING_OPEN:Landroidx/camera/core/impl/CameraInternal$State;

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/GraphState$GraphStateError;->getCameraError-v7Vf74A()I

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/camera/camera2/adapter/CameraStateAdapter$Companion;->toCameraStateError-90vkdD0$camera_camera2(I)Landroidx/camera/core/CameraState$StateError;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;-><init>(Landroidx/camera/core/impl/CameraInternal$State;Landroidx/camera/core/CameraState$StateError;)V

    return-object p1

    :cond_11
    new-instance p1, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;

    sget-object v0, Landroidx/camera/core/impl/CameraInternal$State;->CLOSING:Landroidx/camera/core/impl/CameraInternal$State;

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/GraphState$GraphStateError;->getCameraError-v7Vf74A()I

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/camera/camera2/adapter/CameraStateAdapter$Companion;->toCameraStateError-90vkdD0$camera_camera2(I)Landroidx/camera/core/CameraState$StateError;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;-><init>(Landroidx/camera/core/impl/CameraInternal$State;Landroidx/camera/core/CameraState$StateError;)V

    return-object p1

    :cond_12
    sget-object p0, Landroidx/camera/camera2/pipe/GraphState$GraphStateStopping;->INSTANCE:Landroidx/camera/camera2/pipe/GraphState$GraphStateStopping;

    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    new-instance p0, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;

    sget-object p1, Landroidx/camera/core/impl/CameraInternal$State;->CLOSING:Landroidx/camera/core/impl/CameraInternal$State;

    invoke-direct {p0, p1, v1, v0, v1}, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;-><init>(Landroidx/camera/core/impl/CameraInternal$State;Landroidx/camera/core/CameraState$StateError;ILjh2;)V

    return-object p0

    :cond_13
    sget-object p0, Landroidx/camera/camera2/pipe/GraphState$GraphStateStopped;->INSTANCE:Landroidx/camera/camera2/pipe/GraphState$GraphStateStopped;

    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    new-instance p0, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;

    sget-object p1, Landroidx/camera/core/impl/CameraInternal$State;->CLOSED:Landroidx/camera/core/impl/CameraInternal$State;

    invoke-direct {p0, p1, v1, v0, v1}, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;-><init>(Landroidx/camera/core/impl/CameraInternal$State;Landroidx/camera/core/CameraState$StateError;ILjh2;)V

    return-object p0

    :cond_14
    return-object v1

    :cond_15
    sget-object p0, Landroidx/camera/camera2/pipe/GraphState$GraphStateStarting;->INSTANCE:Landroidx/camera/camera2/pipe/GraphState$GraphStateStarting;

    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    new-instance p0, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;

    sget-object p1, Landroidx/camera/core/impl/CameraInternal$State;->OPENING:Landroidx/camera/core/impl/CameraInternal$State;

    invoke-direct {p0, p1, v1, v0, v1}, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;-><init>(Landroidx/camera/core/impl/CameraInternal$State;Landroidx/camera/core/CameraState$StateError;ILjh2;)V

    return-object p0

    :cond_16
    sget-object p0, Landroidx/camera/camera2/pipe/GraphState$GraphStateStarted;->INSTANCE:Landroidx/camera/camera2/pipe/GraphState$GraphStateStarted;

    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_17

    new-instance p0, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;

    sget-object p1, Landroidx/camera/core/impl/CameraInternal$State;->OPEN:Landroidx/camera/core/impl/CameraInternal$State;

    invoke-direct {p0, p1, v1, v0, v1}, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;-><init>(Landroidx/camera/core/impl/CameraInternal$State;Landroidx/camera/core/CameraState$StateError;ILjh2;)V

    return-object p0

    :cond_17
    return-object v1
.end method

.method public final getCameraInternalState$camera_camera2()Landroidx/camera/core/impl/LiveDataObservable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/camera/core/impl/LiveDataObservable<",
            "Landroidx/camera/core/impl/CameraInternal$State;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->cameraInternalState:Landroidx/camera/core/impl/LiveDataObservable;

    return-object p0
.end method

.method public final getCameraState$camera_camera2()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Landroidx/camera/core/CameraState;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->cameraState:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final onGraphStateUpdated(Landroidx/camera/camera2/pipe/CameraGraph;Landroidx/camera/camera2/pipe/GraphState;)V
    .locals 4

    const-string v0, "Ignoring graph state update "

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->isRemoved:Z

    if-eqz v2, :cond_1

    sget-object p0, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    const-string p0, "CXCP"

    invoke-static {p0}, Landroidx/camera/core/Logger;->isWarnEnabled(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " on removed camera."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    sget-object v0, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    const-string v0, "CXCP"

    invoke-static {v0}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " state updated to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/adapter/CameraStateAdapter;->handleStateTransition(Landroidx/camera/camera2/pipe/CameraGraph;Landroidx/camera/camera2/pipe/GraphState;)V

    sget-object p0, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1

    throw p0
.end method

.method public final onGraphUpdated(Landroidx/camera/camera2/pipe/CameraGraph;)V
    .locals 5

    const-string v0, "Camera graph updated from "

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    const-string v2, "CXCP"

    invoke-static {v2}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/camera/camera2/adapter/CameraStateAdapter;->access$getCurrentGraph$p(Landroidx/camera/camera2/adapter/CameraStateAdapter;)Landroidx/camera/camera2/pipe/CameraGraph;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->currentCameraInternalState:Landroidx/camera/core/impl/CameraInternal$State;

    sget-object v2, Landroidx/camera/core/impl/CameraInternal$State;->CLOSED:Landroidx/camera/core/impl/CameraInternal$State;

    if-eq v0, v2, :cond_1

    sget-object v0, Landroidx/camera/core/impl/CameraInternal$State;->CLOSING:Landroidx/camera/core/impl/CameraInternal$State;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {p0, v0, v4, v3, v4}, Landroidx/camera/camera2/adapter/CameraStateAdapter;->postCameraState$default(Landroidx/camera/camera2/adapter/CameraStateAdapter;Landroidx/camera/core/impl/CameraInternal$State;Landroidx/camera/core/CameraState$StateError;ILjava/lang/Object;)V

    invoke-static {p0, v2, v4, v3, v4}, Landroidx/camera/camera2/adapter/CameraStateAdapter;->postCameraState$default(Landroidx/camera/camera2/adapter/CameraStateAdapter;Landroidx/camera/core/impl/CameraInternal$State;Landroidx/camera/core/CameraState$StateError;ILjava/lang/Object;)V

    :cond_1
    iput-object p1, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->currentGraph:Landroidx/camera/camera2/pipe/CameraGraph;

    iput-object v2, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->currentCameraInternalState:Landroidx/camera/core/impl/CameraInternal$State;

    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1

    throw p0
.end method

.method public final onRemoved()V
    .locals 4

    const/16 v0, 0x8

    invoke-static {v0}, Landroidx/camera/core/CameraState$StateError;->create(I)Landroidx/camera/core/CameraState$StateError;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->isRemoved:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    sget-object v2, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    const-string v2, "CXCP"

    invoke-static {v2}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Camera is removed, forcing state to CLOSED."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->isRemoved:Z

    sget-object v2, Landroidx/camera/core/impl/CameraInternal$State;->CLOSED:Landroidx/camera/core/impl/CameraInternal$State;

    iput-object v2, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->currentCameraInternalState:Landroidx/camera/core/impl/CameraInternal$State;

    iput-object v0, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->currentCameraStateError:Landroidx/camera/core/CameraState$StateError;

    invoke-direct {p0, v2, v0}, Landroidx/camera/camera2/adapter/CameraStateAdapter;->postCameraState(Landroidx/camera/core/impl/CameraInternal$State;Landroidx/camera/core/CameraState$StateError;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->currentGraph:Landroidx/camera/camera2/pipe/CameraGraph;

    sget-object p0, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1

    throw p0
.end method

.method public final removeCameraStateListener$camera_camera2(Landroidx/core/util/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Consumer<",
            "Landroidx/camera/core/CameraState;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->cameraStateListeners:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/Executor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
