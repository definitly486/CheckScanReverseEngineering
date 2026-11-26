.class public final Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;
.super Landroidx/camera/core/impl/AbstractCameraPresenceSource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/adapter/PipeCameraPresenceSource$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/adapter/PipeCameraPresenceSource$Companion;

.field private static final TAG:Ljava/lang/String; = "PipePresenceSrc"


# instance fields
.field private final cameraManager:Landroid/hardware/camera2/CameraManager;

.field private final coroutineScope:Ly22;

.field private flowCollectionJob:Lmb4;

.field private final idFlow:Lhd3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhd3<",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/CameraId;",
            ">;>;"
        }
    .end annotation
.end field

.field private final isMonitoring:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;->Companion:Landroidx/camera/camera2/adapter/PipeCameraPresenceSource$Companion;

    return-void
.end method

.method public constructor <init>(Lhd3;Ly22;Ljava/util/List;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhd3<",
            "+",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/CameraId;",
            ">;>;",
            "Ly22;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p3}, Landroidx/camera/core/impl/AbstractCameraPresenceSource;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;->idFlow:Lhd3;

    iput-object p2, p0, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;->coroutineScope:Ly22;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;->isMonitoring:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string p1, "camera"

    invoke-virtual {p4, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Landroid/hardware/camera2/CameraManager;

    iput-object p1, p0, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;->cameraManager:Landroid/hardware/camera2/CameraManager;

    return-void
.end method

.method public static final synthetic access$getCameraManager$p(Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;)Landroid/hardware/camera2/CameraManager;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;->cameraManager:Landroid/hardware/camera2/CameraManager;

    return-object p0
.end method

.method public static final synthetic access$isMonitoring$p(Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;->isMonitoring:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static final synthetic access$updateData(Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/camera/core/impl/AbstractCameraPresenceSource;->updateData(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$updateError(Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/camera/core/impl/AbstractCameraPresenceSource;->updateError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic b(Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;->fetchData$lambda$0(Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final fetchData$lambda$0(Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;->coroutineScope:Ly22;

    new-instance v1, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource$fetchData$1$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource$fetchData$1$1;-><init>(Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Le02;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    const-string p0, "FetchData for PipeCameraPresence0"

    return-object p0
.end method


# virtual methods
.method public fetchData()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/util/List<",
            "Landroidx/camera/core/CameraIdentifier;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lxq;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lxq;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public startMonitoring()V
    .locals 4

    iget-object v0, p0, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;->isMonitoring:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    const-string v1, "PipePresenceSrc"

    if-nez v0, :cond_0

    const-string p0, "Monitoring is already active. Ignoring redundant start call."

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "Starting to collect camera ID flow."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;->flowCollectionJob:Lmb4;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0, v1}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_1
    new-instance v0, Ln07;

    invoke-direct {v0}, Ln07;-><init>()V

    iput-boolean v2, v0, Ln07;->b:Z

    iget-object v2, p0, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;->idFlow:Lhd3;

    new-instance v3, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource$startMonitoring$$inlined$map$1;

    invoke-direct {v3, v2}, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource$startMonitoring$$inlined$map$1;-><init>(Lhd3;)V

    new-instance v2, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource$startMonitoring$2;

    invoke-direct {v2, p0, v0, v1}, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource$startMonitoring$2;-><init>(Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;Ln07;Le02;)V

    new-instance v0, Ldf3;

    invoke-direct {v0, v3, v2}, Ldf3;-><init>(Lhd3;Lbm3;)V

    new-instance v2, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource$startMonitoring$3;

    invoke-direct {v2, p0, v1}, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource$startMonitoring$3;-><init>(Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;Le02;)V

    new-instance v1, Lde3;

    invoke-direct {v1, v0, v2}, Lde3;-><init>(Lhd3;Ldm3;)V

    iget-object v0, p0, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;->coroutineScope:Ly22;

    invoke-static {v1, v0}, Lpx;->h(Lhd3;Ly22;)Ls68;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;->flowCollectionJob:Lmb4;

    return-void
.end method

.method public stopMonitoring()V
    .locals 3

    const-string v0, "PipePresenceSrc"

    const-string v1, "Stopping camera ID flow collection."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;->isMonitoring:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;->flowCollectionJob:Lmb4;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0, v1}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_1
    iput-object v1, p0, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;->flowCollectionJob:Lmb4;

    return-void
.end method
