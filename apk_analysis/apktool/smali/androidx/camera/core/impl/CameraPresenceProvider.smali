.class public final Landroidx/camera/core/impl/CameraPresenceProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/impl/CameraPresenceProvider$Companion;,
        Landroidx/camera/core/impl/CameraPresenceProvider$ListenerWrapper;,
        Landroidx/camera/core/impl/CameraPresenceProvider$SourceObservableObserver;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/core/impl/CameraPresenceProvider$Companion;

.field private static final MAX_SCAN_RETRIES:I = 0x3

.field private static final RETRY_DELAY_MS:J = 0x190L

.field private static final TAG:Ljava/lang/String; = "CameraPresencePrvdr"


# instance fields
.field private final backgroundExecutor:Ljava/util/concurrent/Executor;

.field private cameraFactory:Landroidx/camera/core/impl/CameraFactory;

.field private cameraRepository:Landroidx/camera/core/impl/CameraRepository;

.field private final cameraStateObservers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/lifecycle/Observer<",
            "Landroidx/camera/core/CameraState;",
            ">;>;"
        }
    .end annotation
.end field

.field private cameraValidator:Landroidx/camera/core/impl/CameraValidator;

.field private volatile currentFilteredIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/core/CameraIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field private final dependentInternalListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/camera/core/impl/InternalCameraPresenceListener;",
            ">;"
        }
    .end annotation
.end field

.field private final isMonitoring:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final observerLock:Ljava/lang/Object;

.field private final publicApiListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/camera/core/impl/CameraPresenceProvider$ListenerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final retryLock:Ljava/lang/Object;

.field private retryScanFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private final scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private final sourceObserver:Landroidx/camera/core/impl/CameraPresenceProvider$SourceObservableObserver;

.field private sourcePresenceObservable:Landroidx/camera/core/impl/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/core/impl/Observable<",
            "Ljava/util/List<",
            "Landroidx/camera/core/CameraIdentifier;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/core/impl/CameraPresenceProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/core/impl/CameraPresenceProvider$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/camera/core/impl/CameraPresenceProvider;->Companion:Landroidx/camera/core/impl/CameraPresenceProvider$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->backgroundExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->observerLock:Ljava/lang/Object;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->retryLock:Ljava/lang/Object;

    new-instance p1, Landroidx/camera/core/impl/CameraPresenceProvider$SourceObservableObserver;

    invoke-direct {p1, p0}, Landroidx/camera/core/impl/CameraPresenceProvider$SourceObservableObserver;-><init>(Landroidx/camera/core/impl/CameraPresenceProvider;)V

    iput-object p1, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->sourceObserver:Landroidx/camera/core/impl/CameraPresenceProvider$SourceObservableObserver;

    sget-object p1, Lkx2;->b:Lkx2;

    iput-object p1, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->currentFilteredIds:Ljava/util/List;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->isMonitoring:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->dependentInternalListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->publicApiListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->cameraStateObservers:Ljava/util/Map;

    return-void
.end method

.method public static synthetic a(Landroidx/camera/core/impl/CameraInfoInternal;Lm11;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/camera/core/impl/CameraPresenceProvider;->setupCameraStateObserver$lambda$0$1(Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public static final synthetic access$getCameraFactory$p(Landroidx/camera/core/impl/CameraPresenceProvider;)Landroidx/camera/core/impl/CameraFactory;
    .locals 0

    iget-object p0, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->cameraFactory:Landroidx/camera/core/impl/CameraFactory;

    return-object p0
.end method

.method public static final synthetic access$getCameraRepository$p(Landroidx/camera/core/impl/CameraPresenceProvider;)Landroidx/camera/core/impl/CameraRepository;
    .locals 0

    iget-object p0, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->cameraRepository:Landroidx/camera/core/impl/CameraRepository;

    return-object p0
.end method

.method public static final synthetic access$getCameraValidator$p(Landroidx/camera/core/impl/CameraPresenceProvider;)Landroidx/camera/core/impl/CameraValidator;
    .locals 0

    iget-object p0, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->cameraValidator:Landroidx/camera/core/impl/CameraValidator;

    return-object p0
.end method

.method public static final synthetic access$getCurrentFilteredIds$p(Landroidx/camera/core/impl/CameraPresenceProvider;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->currentFilteredIds:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getSourcePresenceObservable$p(Landroidx/camera/core/impl/CameraPresenceProvider;)Landroidx/camera/core/impl/Observable;
    .locals 0

    iget-object p0, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->sourcePresenceObservable:Landroidx/camera/core/impl/Observable;

    return-object p0
.end method

.method public static final synthetic access$isMonitoring$p(Landroidx/camera/core/impl/CameraPresenceProvider;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->isMonitoring:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static final synthetic access$processFilteredCameraIdUpdate(Landroidx/camera/core/impl/CameraPresenceProvider;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/camera/core/impl/CameraPresenceProvider;->processFilteredCameraIdUpdate(Ljava/util/List;)V

    return-void
.end method

.method private static final addCameraPresenceListener$lambda$0(Landroidx/camera/core/impl/CameraPresenceProvider;Landroidx/camera/core/CameraPresenceListener;)V
    .locals 1

    iget-object p0, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->currentFilteredIds:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lqn1;->y0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1, p0}, Landroidx/camera/core/CameraPresenceListener;->onCamerasAdded(Ljava/util/Set;)V

    :cond_0
    return-void
.end method

.method public static synthetic b(Landroidx/camera/core/impl/CameraPresenceProvider;Landroidx/camera/core/CameraPresenceListener;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/camera/core/impl/CameraPresenceProvider;->addCameraPresenceListener$lambda$0(Landroidx/camera/core/impl/CameraPresenceProvider;Landroidx/camera/core/CameraPresenceListener;)V

    return-void
.end method

.method public static synthetic c(Landroidx/camera/core/impl/CameraPresenceProvider$ListenerWrapper;Ljava/util/Set;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/camera/core/impl/CameraPresenceProvider;->notifyPublicCamerasRemoved$lambda$0$0(Landroidx/camera/core/impl/CameraPresenceProvider$ListenerWrapper;Ljava/util/Set;)V

    return-void
.end method

.method private final clearAllCameraStateObservers()V
    .locals 5

    iget-object v0, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->observerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->cameraStateObservers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->cameraStateObservers:Ljava/util/Map;

    invoke-static {v1}, Ln05;->l(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->cameraStateObservers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    sget-object v2, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    iget-object p0, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->cameraRepository:Landroidx/camera/core/impl/CameraRepository;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroidx/camera/core/impl/CameraRepository;->getCameras()Ljava/util/LinkedHashSet;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/core/impl/CameraInternal;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroidx/camera/core/impl/CameraInternal;->getCameraInfoInternal()Landroidx/camera/core/impl/CameraInfoInternal;

    move-result-object v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const-string p0, "CameraPresencePrvdr"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Clearing all "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " state observers."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/Observer;

    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->mainThreadExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v3

    new-instance v4, Lg11;

    invoke-direct {v4, v0, v1, v2}, Lg11;-><init>(Ljava/util/ArrayList;Landroidx/lifecycle/Observer;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_4
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static final clearAllCameraStateObservers$lambda$2$0(Ljava/util/List;Landroidx/lifecycle/Observer;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/camera/core/impl/CameraInfoInternal;

    invoke-interface {v1}, Landroidx/camera/core/impl/CameraInfoInternal;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Landroidx/camera/core/impl/CameraInfoInternal;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroidx/camera/core/CameraInfo;->getCameraState()Landroidx/lifecycle/LiveData;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method private final conditionallySetupCameraStateObserver(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->cameraRepository:Landroidx/camera/core/impl/CameraRepository;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Landroidx/camera/core/impl/CameraRepository;->getCamera(Ljava/lang/String;)Landroidx/camera/core/impl/CameraInternal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Landroidx/camera/core/impl/CameraInternal;->getCameraInfoInternal()Landroidx/camera/core/impl/CameraInfoInternal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, v0}, Landroidx/camera/core/impl/CameraPresenceProvider;->setupCameraStateObserver(Landroidx/camera/core/impl/CameraInfoInternal;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "CameraInternal not found for "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Cannot setup state observer."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CameraPresencePrvdr"

    invoke-static {p1, p0}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic d(Landroidx/camera/core/impl/CameraInternal;Landroidx/lifecycle/Observer;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/camera/core/impl/CameraPresenceProvider;->removeCameraStateObserver$lambda$0$0(Landroidx/camera/core/impl/CameraInternal;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public static synthetic e(Landroidx/camera/core/CameraPresenceListener;Landroidx/camera/core/impl/CameraPresenceProvider$ListenerWrapper;)Z
    .locals 0

    invoke-static {p0, p1}, Landroidx/camera/core/impl/CameraPresenceProvider;->removeCameraPresenceListener$lambda$0(Landroidx/camera/core/CameraPresenceListener;Landroidx/camera/core/impl/CameraPresenceProvider$ListenerWrapper;)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(Landroidx/camera/core/impl/CameraPresenceProvider;)V
    .locals 0

    invoke-static {p0}, Landroidx/camera/core/impl/CameraPresenceProvider;->setupCameraStateObserver$lambda$0$0$0(Landroidx/camera/core/impl/CameraPresenceProvider;)V

    return-void
.end method

.method public static synthetic g(Landroidx/camera/core/impl/CameraPresenceProvider;Ljava/lang/String;Landroidx/camera/core/CameraState;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/camera/core/impl/CameraPresenceProvider;->setupCameraStateObserver$lambda$0$0(Landroidx/camera/core/impl/CameraPresenceProvider;Ljava/lang/String;Landroidx/camera/core/CameraState;)V

    return-void
.end method

.method public static synthetic h(Landroidx/camera/core/impl/CameraPresenceProvider;Ljava/util/List;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/camera/core/impl/CameraPresenceProvider;->scheduleRetryAttempt$lambda$0(Landroidx/camera/core/impl/CameraPresenceProvider;Ljava/util/List;I)V

    return-void
.end method

.method public static synthetic i(Landroidx/camera/core/impl/CameraPresenceProvider$ListenerWrapper;Ljava/util/Set;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/camera/core/impl/CameraPresenceProvider;->notifyPublicCamerasAdded$lambda$0$0(Landroidx/camera/core/impl/CameraPresenceProvider$ListenerWrapper;Ljava/util/Set;)V

    return-void
.end method

.method public static synthetic j(Landroidx/camera/core/impl/CameraPresenceProvider;Ljava/util/List;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/camera/core/impl/CameraPresenceProvider;->scheduleRetryAttempt$lambda$0$0(Landroidx/camera/core/impl/CameraPresenceProvider;Ljava/util/List;I)V

    return-void
.end method

.method public static synthetic k(Ljava/util/ArrayList;Landroidx/lifecycle/Observer;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/camera/core/impl/CameraPresenceProvider;->clearAllCameraStateObservers$lambda$2$0(Ljava/util/List;Landroidx/lifecycle/Observer;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic l(Landroidx/camera/core/impl/CameraPresenceProvider;)V
    .locals 0

    invoke-static {p0}, Landroidx/camera/core/impl/CameraPresenceProvider;->startup$lambda$1(Landroidx/camera/core/impl/CameraPresenceProvider;)V

    return-void
.end method

.method private final notifyPublicCamerasAdded(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/camera/core/CameraIdentifier;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->publicApiListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/CameraPresenceProvider$ListenerWrapper;

    invoke-virtual {v0}, Landroidx/camera/core/impl/CameraPresenceProvider$ListenerWrapper;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroidx/camera/core/impl/d;

    invoke-direct {v2, v0, p1}, Landroidx/camera/core/impl/d;-><init>(Landroidx/camera/core/impl/CameraPresenceProvider$ListenerWrapper;Ljava/util/Set;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static final notifyPublicCamerasAdded$lambda$0$0(Landroidx/camera/core/impl/CameraPresenceProvider$ListenerWrapper;Ljava/util/Set;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/camera/core/impl/CameraPresenceProvider$ListenerWrapper;->getListener()Landroidx/camera/core/CameraPresenceListener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroidx/camera/core/CameraPresenceListener;->onCamerasAdded(Ljava/util/Set;)V

    return-void
.end method

.method private final notifyPublicCamerasRemoved(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/camera/core/CameraIdentifier;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->publicApiListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/CameraPresenceProvider$ListenerWrapper;

    invoke-virtual {v0}, Landroidx/camera/core/impl/CameraPresenceProvider$ListenerWrapper;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroidx/camera/core/impl/b;

    invoke-direct {v2, v0, p1}, Landroidx/camera/core/impl/b;-><init>(Landroidx/camera/core/impl/CameraPresenceProvider$ListenerWrapper;Ljava/util/Set;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static final notifyPublicCamerasRemoved$lambda$0$0(Landroidx/camera/core/impl/CameraPresenceProvider$ListenerWrapper;Ljava/util/Set;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/camera/core/impl/CameraPresenceProvider$ListenerWrapper;->getListener()Landroidx/camera/core/CameraPresenceListener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroidx/camera/core/CameraPresenceListener;->onCamerasRemoved(Ljava/util/Set;)V

    return-void
.end method

.method private final notifyPublicListeners(Ljava/util/Set;Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/camera/core/CameraIdentifier;",
            ">;",
            "Ljava/util/Set<",
            "Landroidx/camera/core/CameraIdentifier;",
            ">;)V"
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const-string v1, "Notifying "

    const-string v2, "CameraPresencePrvdr"

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " cameras added."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroidx/camera/core/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/camera/core/impl/CameraPresenceProvider;->notifyPublicCamerasAdded(Ljava/util/Set;)V

    :cond_0
    move-object p1, p2

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " cameras removed."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroidx/camera/core/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Landroidx/camera/core/impl/CameraPresenceProvider;->notifyPublicCamerasRemoved(Ljava/util/Set;)V

    :cond_1
    return-void
.end method

.method private final processFilteredCameraIdUpdate(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/camera/core/CameraIdentifier;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->currentFilteredIds:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lqn1;->t0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_a

    :cond_0
    iget-object v1, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->retryLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->retryScanFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v2, :cond_1

    const-string v2, "CameraPresencePrvdr"

    const-string v3, "Camera list updated. Cancelling any pending retries."

    invoke-static {v2, v3}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->retryScanFuture:Ljava/util/concurrent/ScheduledFuture;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->retryScanFuture:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_b

    :cond_1
    :goto_0
    sget-object v2, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lqn1;->y0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2}, Lqn1;->y0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v3

    move-object v4, v1

    check-cast v4, Ljava/lang/Iterable;

    invoke-static {v3, v4}, Lmr7;->j(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v4

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v1, v3}, Lmr7;->j(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v2, v6}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/camera/core/CameraIdentifier;

    invoke-virtual {v7}, Landroidx/camera/core/CameraIdentifier;->getInternalId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    :try_start_1
    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/camera/core/CameraIdentifier;

    invoke-virtual {v7}, Landroidx/camera/core/CameraIdentifier;->getInternalId()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Landroidx/camera/core/impl/CameraPresenceProvider;->removeCameraStateObserver(Ljava/lang/String;)V

    goto :goto_2

    :catch_0
    move-exception p1

    goto/16 :goto_5

    :cond_3
    iget-object v2, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->cameraRepository:Landroidx/camera/core/impl/CameraRepository;

    if-eqz v2, :cond_4

    const-string v7, "CameraPresencePrvdr"

    const-string v8, "Updating CameraRepository..."

    invoke-static {v7, v8}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Landroidx/camera/core/impl/CameraRepository;->onCamerasUpdated(Ljava/util/List;)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "CameraPresencePrvdr"

    const-string v7, "CameraRepository updated successfully."

    invoke-static {v2, v7}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v2, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->dependentInternalListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "CameraPresencePrvdr"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Updating "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->dependentInternalListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " dependent listeners..."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->dependentInternalListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/camera/core/impl/InternalCameraPresenceListener;

    invoke-interface {v7, v5}, Landroidx/camera/core/impl/InternalCameraPresenceListener;->onCamerasUpdated(Ljava/util/List;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    iput-object p1, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->currentFilteredIds:Ljava/util/List;

    move-object p1, v4

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/core/CameraIdentifier;

    invoke-virtual {v2}, Landroidx/camera/core/CameraIdentifier;->getInternalId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroidx/camera/core/impl/CameraPresenceProvider;->conditionallySetupCameraStateObserver(Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    invoke-direct {p0, v4, v1}, Landroidx/camera/core/impl/CameraPresenceProvider;->notifyPublicListeners(Ljava/util/Set;Ljava/util/Set;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :goto_5
    const-string v2, "CameraPresencePrvdr"

    const-string v5, "A core module failed to update. Rolling back changes."

    invoke-static {v2, v5, p1}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-static {v0, v6}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/core/CameraIdentifier;

    invoke-virtual {v2}, Landroidx/camera/core/CameraIdentifier;->getInternalId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_7
    new-instance v0, Ly67;

    invoke-direct {v0, v3}, Ly67;-><init>(Ljava/util/List;)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/core/impl/InternalCameraPresenceListener;

    :try_start_2
    invoke-interface {v2, p1}, Landroidx/camera/core/impl/InternalCameraPresenceListener;->onCamerasUpdated(Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_7

    :catch_1
    move-exception v3

    const-string v5, "CameraPresencePrvdr"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Failed to rollback listener: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2, v3}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_8
    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/CameraIdentifier;

    invoke-virtual {v0}, Landroidx/camera/core/CameraIdentifier;->getInternalId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/camera/core/impl/CameraPresenceProvider;->conditionallySetupCameraStateObserver(Ljava/lang/String;)V

    goto :goto_8

    :cond_9
    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/CameraIdentifier;

    invoke-virtual {v0}, Landroidx/camera/core/CameraIdentifier;->getInternalId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/camera/core/impl/CameraPresenceProvider;->removeCameraStateObserver(Ljava/lang/String;)V

    goto :goto_9

    :cond_a
    :goto_a
    return-void

    :goto_b
    monitor-exit v1

    throw p0
.end method

.method private static final removeCameraPresenceListener$lambda$0(Landroidx/camera/core/CameraPresenceListener;Landroidx/camera/core/impl/CameraPresenceProvider$ListenerWrapper;)Z
    .locals 0

    invoke-virtual {p1}, Landroidx/camera/core/impl/CameraPresenceProvider$ListenerWrapper;->getListener()Landroidx/camera/core/CameraPresenceListener;

    move-result-object p1

    invoke-static {p1, p0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private final removeCameraStateObserver(Ljava/lang/String;)V
    .locals 6

    const-string v0, "Removed state observer for: "

    iget-object v1, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->observerLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->cameraStateObservers:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/Observer;

    iget-object p0, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->cameraRepository:Landroidx/camera/core/impl/CameraRepository;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    if-eqz p0, :cond_0

    :try_start_1
    invoke-virtual {p0, p1}, Landroidx/camera/core/impl/CameraRepository;->getCamera(Ljava/lang/String;)Landroidx/camera/core/impl/CameraInternal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->mainThreadExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v3

    new-instance v4, Lh11;

    const/4 v5, 0x0

    invoke-direct {v4, v5, p0, v2}, Lh11;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const-string p0, "CameraPresencePrvdr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    :cond_0
    :goto_0
    :try_start_2
    sget-object p0, Lj59;->a:Lj59;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1

    throw p0
.end method

.method private static final removeCameraStateObserver$lambda$0$0(Landroidx/camera/core/impl/CameraInternal;Landroidx/lifecycle/Observer;)V
    .locals 0

    invoke-interface {p0}, Landroidx/camera/core/impl/CameraInternal;->getCameraInfoInternal()Landroidx/camera/core/impl/CameraInfoInternal;

    move-result-object p0

    invoke-interface {p0}, Landroidx/camera/core/CameraInfo;->getCameraState()Landroidx/lifecycle/LiveData;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private final scheduleRetryAttempt(ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/camera/core/CameraIdentifier;",
            ">;)V"
        }
    .end annotation

    if-lez p1, :cond_2

    iget-object v0, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->isMonitoring:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x190

    :goto_0
    iget-object v2, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lf11;

    invoke-direct {v3, p0, p2, p1}, Lf11;-><init>(Landroidx/camera/core/impl/CameraPresenceProvider;Ljava/util/List;I)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v0, v1, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->retryScanFuture:Ljava/util/concurrent/ScheduledFuture;

    return-void

    :cond_2
    :goto_1
    if-gtz p1, :cond_3

    const-string p0, "CameraPresencePrvdr"

    const-string p1, "Exhausted all retries for camera list refresh."

    invoke-static {p0, p1}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private static final scheduleRetryAttempt$lambda$0(Landroidx/camera/core/impl/CameraPresenceProvider;Ljava/util/List;I)V
    .locals 2

    iget-object v0, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Ll11;

    invoke-direct {v1, p0, p1, p2}, Ll11;-><init>(Landroidx/camera/core/impl/CameraPresenceProvider;Ljava/util/List;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final scheduleRetryAttempt$lambda$0$0(Landroidx/camera/core/impl/CameraPresenceProvider;Ljava/util/List;I)V
    .locals 2

    iget-object v0, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->isMonitoring:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->currentFilteredIds:Ljava/util/List;

    invoke-static {v0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Triggering refresh. Attempts left: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraPresencePrvdr"

    invoke-static {v1, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->sourcePresenceObservable:Landroidx/camera/core/impl/Observable;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroidx/camera/core/impl/Observable;->fetchData()Lcom/google/common/util/concurrent/ListenableFuture;

    :cond_1
    add-int/lit8 p2, p2, -0x1

    invoke-direct {p0, p2, p1}, Landroidx/camera/core/impl/CameraPresenceProvider;->scheduleRetryAttempt(ILjava/util/List;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private final setupCameraStateObserver(Landroidx/camera/core/impl/CameraInfoInternal;)V
    .locals 7

    const-string v0, "Registered state observer for camera: "

    invoke-interface {p1}, Landroidx/camera/core/impl/CameraInfoInternal;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->isMonitoring:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->observerLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->cameraStateObservers:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    monitor-exit v2

    return-void

    :cond_1
    :try_start_1
    new-instance v3, Lm11;

    invoke-direct {v3, p0, v1}, Lm11;-><init>(Landroidx/camera/core/impl/CameraPresenceProvider;Ljava/lang/String;)V

    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->mainThreadExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v4

    new-instance v5, Ln11;

    const/4 v6, 0x0

    invoke-direct {v5, v6, p1, v3}, Ln11;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object p0, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->cameraStateObservers:Ljava/util/Map;

    invoke-interface {p0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "CameraPresencePrvdr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v2

    throw p0
.end method

.method private static final setupCameraStateObserver$lambda$0$0(Landroidx/camera/core/impl/CameraPresenceProvider;Ljava/lang/String;Landroidx/camera/core/CameraState;)V
    .locals 3

    iget-object v0, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->isMonitoring:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "CameraPresencePrvdr"

    if-nez v0, :cond_0

    const-string p0, "Ignore camera state change handling since already stop monitoring"

    invoke-static {v1, p0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p2}, Landroidx/camera/core/CameraState;->getError()Landroidx/camera/core/CameraState$StateError;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "Camera "

    const-string v2, " state changed to "

    invoke-static {v0, p1, v2}, Ln7;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Landroidx/camera/core/CameraState;->getType()Landroidx/camera/core/CameraState$Type;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " with error: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroidx/camera/core/CameraState;->getError()Landroidx/camera/core/CameraState$StateError;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroidx/camera/core/CameraState$StateError;->getCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ". Triggering refresh."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance p2, Li11;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Li11;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method private static final setupCameraStateObserver$lambda$0$0$0(Landroidx/camera/core/impl/CameraPresenceProvider;)V
    .locals 0

    invoke-direct {p0}, Landroidx/camera/core/impl/CameraPresenceProvider;->triggerRefreshWithRetries()V

    return-void
.end method

.method private static final setupCameraStateObserver$lambda$0$1(Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/lifecycle/Observer;)V
    .locals 0

    invoke-interface {p0}, Landroidx/camera/core/CameraInfo;->getCameraState()Landroidx/lifecycle/LiveData;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private static final startup$lambda$1(Landroidx/camera/core/impl/CameraPresenceProvider;)V
    .locals 2

    iget-object v0, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->currentFilteredIds:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/CameraIdentifier;

    invoke-virtual {v1}, Landroidx/camera/core/CameraIdentifier;->getInternalId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroidx/camera/core/impl/CameraPresenceProvider;->conditionallySetupCameraStateObserver(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final triggerRefreshWithRetries()V
    .locals 3

    iget-object v0, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->retryLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->retryScanFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    const-string v1, "CameraPresencePrvdr"

    const-string v2, "Starting new refresh-with-retries sequence."

    invoke-static {v1, v2}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->currentFilteredIds:Ljava/util/List;

    const/4 v2, 0x3

    invoke-direct {p0, v2, v1}, Landroidx/camera/core/impl/CameraPresenceProvider;->scheduleRetryAttempt(ILjava/util/List;)V

    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final addCameraPresenceListener(Landroidx/camera/core/CameraPresenceListener;Ljava/util/concurrent/Executor;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/camera/core/impl/CameraPresenceProvider$ListenerWrapper;

    invoke-direct {v0, p1, p2}, Landroidx/camera/core/impl/CameraPresenceProvider$ListenerWrapper;-><init>(Landroidx/camera/core/CameraPresenceListener;Ljava/util/concurrent/Executor;)V

    iget-object v1, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->publicApiListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lk11;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lk11;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final addDependentInternalListener(Landroidx/camera/core/impl/InternalCameraPresenceListener;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->dependentInternalListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final removeCameraPresenceListener(Landroidx/camera/core/CameraPresenceListener;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->publicApiListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Landroidx/camera/core/impl/c;

    invoke-direct {v0, p1}, Landroidx/camera/core/impl/c;-><init>(Landroidx/camera/core/CameraPresenceListener;)V

    invoke-static {v0, p0}, Lnn1;->y(Lnl3;Ljava/util/List;)V

    return-void
.end method

.method public final removeDependentInternalListener(Landroidx/camera/core/impl/InternalCameraPresenceListener;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->dependentInternalListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final shutdown()V
    .locals 3

    iget-object v0, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->isMonitoring:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "CameraPresencePrvdr"

    const-string v0, "Shutdown called when not monitoring. Ignoring."

    invoke-static {p0, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "CameraPresencePrvdr"

    const-string v2, "Shutting down CameraPresenceProvider monitoring."

    invoke-static {v0, v2}, Landroidx/camera/core/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->retryLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->retryScanFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v2, :cond_1

    invoke-interface {v2, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->retryScanFuture:Ljava/util/concurrent/ScheduledFuture;

    sget-object v2, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    iget-object v0, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->sourcePresenceObservable:Landroidx/camera/core/impl/Observable;

    if-eqz v0, :cond_2

    iget-object v2, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->sourceObserver:Landroidx/camera/core/impl/CameraPresenceProvider$SourceObservableObserver;

    invoke-interface {v0, v2}, Landroidx/camera/core/impl/Observable;->removeObserver(Landroidx/camera/core/impl/Observable$Observer;)V

    :cond_2
    invoke-direct {p0}, Landroidx/camera/core/impl/CameraPresenceProvider;->clearAllCameraStateObservers()V

    iput-object v1, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->cameraValidator:Landroidx/camera/core/impl/CameraValidator;

    iget-object v0, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->dependentInternalListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object v0, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->publicApiListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    sget-object v0, Lkx2;->b:Lkx2;

    iput-object v0, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->currentFilteredIds:Ljava/util/List;

    iput-object v1, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->cameraFactory:Landroidx/camera/core/impl/CameraFactory;

    iput-object v1, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->cameraRepository:Landroidx/camera/core/impl/CameraRepository;

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public final startup(Landroidx/camera/core/impl/CameraValidator;Landroidx/camera/core/impl/CameraFactory;Landroidx/camera/core/impl/CameraRepository;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->isMonitoring:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "CameraPresencePrvdr"

    const-string v1, "Starting CameraPresenceProvider monitoring."

    invoke-static {v0, v1}, Landroidx/camera/core/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->cameraValidator:Landroidx/camera/core/impl/CameraValidator;

    invoke-interface {p2}, Landroidx/camera/core/impl/CameraFactory;->getAvailableCameraIds()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-static {v1, v4, v4, v3, v4}, Landroidx/camera/core/CameraIdentifier$Factory;->create$default(Ljava/lang/String;Ljava/lang/String;Landroidx/camera/core/impl/Identifier;ILjava/lang/Object;)Landroidx/camera/core/CameraIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iput-object v0, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->currentFilteredIds:Ljava/util/List;

    iput-object p2, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->cameraFactory:Landroidx/camera/core/impl/CameraFactory;

    iput-object p3, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->cameraRepository:Landroidx/camera/core/impl/CameraRepository;

    invoke-interface {p2}, Landroidx/camera/core/impl/CameraFactory;->getCameraPresenceSource()Landroidx/camera/core/impl/Observable;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->sourcePresenceObservable:Landroidx/camera/core/impl/Observable;

    iget-object p1, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance p2, Lj11;

    invoke-direct {p2, p0, v2}, Lj11;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object p1, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->sourcePresenceObservable:Landroidx/camera/core/impl/Observable;

    if-eqz p1, :cond_2

    iget-object p2, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->backgroundExecutor:Ljava/util/concurrent/Executor;

    invoke-static {p2}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->newSequentialExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p2

    iget-object p0, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->sourceObserver:Landroidx/camera/core/impl/CameraPresenceProvider$SourceObservableObserver;

    invoke-interface {p1, p2, p0}, Landroidx/camera/core/impl/Observable;->addObserver(Ljava/util/concurrent/Executor;Landroidx/camera/core/impl/Observable$Observer;)V

    :cond_2
    :goto_1
    return-void
.end method
