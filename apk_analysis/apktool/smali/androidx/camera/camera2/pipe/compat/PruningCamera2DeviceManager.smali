.class public final Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/compat/Camera2DeviceManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$OpenVirtualCameraResult;,
        Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$PendingRequestOpen;,
        Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$RetrieveActiveCameraResult;
    }
.end annotation


# instance fields
.field private final activeCameras:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/camera/camera2/pipe/compat/ActiveCamera;",
            ">;"
        }
    .end annotation
.end field

.field private final camera2DeviceCloser:Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloser;

.field private final camera2ErrorProcessor:Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;

.field private final pendingRequestOpens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$PendingRequestOpen;",
            ">;"
        }
    .end annotation
.end field

.field private final permissions:Landroidx/camera/camera2/pipe/core/Permissions;

.field private final queue:Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/camera2/pipe/core/PruningProcessingQueue<",
            "Landroidx/camera/camera2/pipe/compat/CameraRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final retryingCameraStateOpener:Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpener;

.field private final scope:Ly22;

.field private final threads:Landroidx/camera/camera2/pipe/core/Threads;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/core/Permissions;Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpener;Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloser;Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;Landroidx/camera/camera2/pipe/core/Threads;)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->permissions:Landroidx/camera/camera2/pipe/core/Permissions;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->retryingCameraStateOpener:Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpener;

    iput-object p3, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->camera2DeviceCloser:Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloser;

    iput-object p4, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->camera2ErrorProcessor:Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;

    iput-object p5, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    invoke-virtual {p5}, Landroidx/camera/camera2/pipe/core/Threads;->getCameraPipeScope()Ly22;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->scope:Ly22;

    sget-object p2, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->Companion:Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$Companion;

    new-instance v0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;

    new-instance v2, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$queue$1;

    invoke-direct {v2, p0}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$queue$1;-><init>(Ljava/lang/Object;)V

    new-instance v4, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$queue$2;

    const/4 p3, 0x0

    invoke-direct {v4, p0, p3}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$queue$2;-><init>(Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;Le02;)V

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v6}, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;-><init>(ILnl3;Lnl3;Lbm3;ILjh2;)V

    invoke-virtual {p2, v0, p1}, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$Companion;->processIn(Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;Ly22;)Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->queue:Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->activeCameras:Ljava/util/Set;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->pendingRequestOpens:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Landroidx/camera/camera2/pipe/compat/RequestCloseById;Ljava/lang/Throwable;)Lj59;
    .locals 0

    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->prune$lambda$6(Landroidx/camera/camera2/pipe/compat/CameraRequest;Ljava/lang/Throwable;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$connectPendingRequestOpens(Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;Ljava/util/Set;Le02;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->connectPendingRequestOpens(Ljava/util/Set;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$disconnectPendingRequestOpens(Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;Ljava/util/List;Le02;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->disconnectPendingRequestOpens(Ljava/util/List;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$openCameraWithRetry-zDSwpeU(Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;Ljava/lang/String;Ljava/util/List;Lnl3;Ly22;Le02;)Ljava/lang/Object;
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->openCameraWithRetry-zDSwpeU(Ljava/lang/String;Ljava/util/List;Lnl3;Ly22;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$process(Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;Landroidx/camera/camera2/pipe/compat/CameraRequest;Le02;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->process(Landroidx/camera/camera2/pipe/compat/CameraRequest;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$processRequestClose(Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;Landroidx/camera/camera2/pipe/compat/RequestClose;Le02;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->processRequestClose(Landroidx/camera/camera2/pipe/compat/RequestClose;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$processRequestCloseAll(Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;Landroidx/camera/camera2/pipe/compat/RequestCloseAll;Le02;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->processRequestCloseAll(Landroidx/camera/camera2/pipe/compat/RequestCloseAll;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$processRequestCloseById(Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;Landroidx/camera/camera2/pipe/compat/RequestCloseById;Le02;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->processRequestCloseById(Landroidx/camera/camera2/pipe/compat/RequestCloseById;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$processRequestOpen(Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;Landroidx/camera/camera2/pipe/compat/RequestOpen;Le02;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->processRequestOpen(Landroidx/camera/camera2/pipe/compat/RequestOpen;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$retrieveActiveCamera-RzXb1QE(Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;Ljava/lang/String;Landroidx/camera/camera2/pipe/compat/RequestOpen;Le02;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->retrieveActiveCamera-RzXb1QE(Ljava/lang/String;Landroidx/camera/camera2/pipe/compat/RequestOpen;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lj59;)Z
    .locals 0

    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->prewarm_EfqyGwQ$lambda$0(Lj59;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lxp1;Ljava/lang/Throwable;)Lj59;
    .locals 0

    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->prune$lambda$2$0(Lxp1;Ljava/lang/Throwable;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method private final connectPendingRequestOpens(Ljava/util/Set;Le02;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/camera/camera2/pipe/CameraId;",
            ">;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$connectPendingRequestOpens$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$connectPendingRequestOpens$1;

    iget v1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$connectPendingRequestOpens$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$connectPendingRequestOpens$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$connectPendingRequestOpens$1;

    invoke-direct {v0, p0, p2}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$connectPendingRequestOpens$1;-><init>(Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;Le02;)V

    :goto_0
    iget-object p2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$connectPendingRequestOpens$1;->result:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$connectPendingRequestOpens$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$connectPendingRequestOpens$1;->L$1:Ljava/lang/Object;

    check-cast p1, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$PendingRequestOpen;

    iget-object v2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$connectPendingRequestOpens$1;->L$0:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->pendingRequestOpens:Ljava/util/List;

    check-cast p2, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$PendingRequestOpen;

    invoke-virtual {v6}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$PendingRequestOpen;->getRequest()Landroidx/camera/camera2/pipe/compat/RequestOpen;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/camera/camera2/pipe/compat/RequestOpen;->getVirtualCamera()Landroidx/camera/camera2/pipe/compat/VirtualCameraState;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroidx/camera/camera2/pipe/CameraId;->box-impl(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraId;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v2, p1

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$PendingRequestOpen;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$PendingRequestOpen;->getRequest()Landroidx/camera/camera2/pipe/compat/RequestOpen;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/compat/RequestOpen;->getVirtualCamera()Landroidx/camera/camera2/pipe/compat/VirtualCameraState;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroidx/camera/camera2/pipe/CameraId;->box-impl(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraId;

    move-result-object v5

    invoke-static {v5}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/compat/RequestOpen;->getSharedCameraIds()Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    invoke-static {v6, v5}, Lqn1;->h0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/camera/camera2/pipe/CameraId;

    invoke-virtual {v6}, Landroidx/camera/camera2/pipe/CameraId;->unbox-impl()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->activeCameras:Ljava/util/Set;

    check-cast v7, Ljava/lang/Iterable;

    instance-of v8, v7, Ljava/util/Collection;

    if-eqz v8, :cond_6

    move-object v8, v7

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_8

    :cond_6
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    invoke-virtual {v8}, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v6}, Landroidx/camera/camera2/pipe/CameraId;->equals-impl0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    goto :goto_3

    :cond_8
    const-string p0, "Check failed."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_9
    :goto_4
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$PendingRequestOpen;->getActiveCamera()Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    move-result-object v5

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/compat/RequestOpen;->getVirtualCamera()Landroidx/camera/camera2/pipe/compat/VirtualCameraState;

    move-result-object p2

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$PendingRequestOpen;->getToken()Landroidx/camera/camera2/pipe/core/Token;

    move-result-object v6

    iput-object v2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$connectPendingRequestOpens$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$connectPendingRequestOpens$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$connectPendingRequestOpens$1;->label:I

    invoke-virtual {v5, p2, v6, v0}, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->connectTo(Landroidx/camera/camera2/pipe/compat/VirtualCameraState;Landroidx/camera/camera2/pipe/core/Token;Le02;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_a

    return-object v1

    :cond_a
    :goto_5
    iget-object p2, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->pendingRequestOpens:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_b
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static synthetic d(Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;Landroidx/camera/camera2/pipe/compat/ActiveCamera;)Lj59;
    .locals 0

    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->openCameraWithRetry_zDSwpeU$lambda$1(Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;Landroidx/camera/camera2/pipe/compat/ActiveCamera;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method private final disconnectPendingRequestOpens(Ljava/util/List;Le02;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$PendingRequestOpen;",
            ">;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$PendingRequestOpen;

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$PendingRequestOpen;->getToken()Landroidx/camera/camera2/pipe/core/Token;

    move-result-object v0

    invoke-interface {v0}, Landroidx/camera/camera2/pipe/core/Token;->release()Z

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->pendingRequestOpens:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private final firstFromIndexOrNull(Ljava/util/List;ILnl3;)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+TT;>;I",
            "Lnl3<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    if-ge p2, p0, :cond_1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, v0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private final onRemoved(Landroidx/camera/camera2/pipe/compat/CameraRequest;)V
    .locals 1

    instance-of p0, p1, Landroidx/camera/camera2/pipe/compat/RequestOpen;

    if-eqz p0, :cond_0

    check-cast p1, Landroidx/camera/camera2/pipe/compat/RequestOpen;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/RequestOpen;->getVirtualCamera()Landroidx/camera/camera2/pipe/compat/VirtualCameraState;

    move-result-object p0

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, v0}, Landroidx/camera/camera2/pipe/compat/VirtualCamera;->disconnect-TPqeGZw$default(Landroidx/camera/camera2/pipe/compat/VirtualCamera;Landroidx/camera/camera2/pipe/CameraError;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private final openCameraWithRetry-zDSwpeU(Ljava/lang/String;Ljava/util/List;Lnl3;Ly22;Le02;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/CameraId;",
            ">;",
            "Lnl3<",
            "-",
            "Lj59;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ly22;",
            "Le02<",
            "-",
            "Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$OpenVirtualCameraResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p5, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$openCameraWithRetry$1;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$openCameraWithRetry$1;

    iget v1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$openCameraWithRetry$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$openCameraWithRetry$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$openCameraWithRetry$1;

    invoke-direct {v0, p0, p5}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$openCameraWithRetry$1;-><init>(Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;Le02;)V

    :goto_0
    iget-object p5, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$openCameraWithRetry$1;->result:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$openCameraWithRetry$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$openCameraWithRetry$1;->L$2:Ljava/lang/Object;

    move-object p4, p1

    check-cast p4, Ly22;

    iget-object p1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$openCameraWithRetry$1;->L$1:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Ljava/util/List;

    iget-object p1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$openCameraWithRetry$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p5}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p5}, Lr57;->b(Ljava/lang/Object;)V

    sget-object p5, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {p5}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result p5

    if-eqz p5, :cond_3

    new-instance p5, Ljava/lang/StringBuilder;

    const-string v2, "Opening "

    invoke-direct {p5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " with retries..."

    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    const-string v2, "CXCP"

    invoke-static {v2, p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object p5, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->retryingCameraStateOpener:Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpener;

    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->camera2DeviceCloser:Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloser;

    iput-object p1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$openCameraWithRetry$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$openCameraWithRetry$1;->L$1:Ljava/lang/Object;

    iput-object p4, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$openCameraWithRetry$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$openCameraWithRetry$1;->label:I

    invoke-interface {p5, p1, v2, p3, v0}, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpener;->openCameraWithRetry-aeCOTgg(Ljava/lang/String;Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloser;Lnl3;Le02;)Ljava/lang/Object;

    move-result-object p5

    if-ne p5, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    check-cast p5, Landroidx/camera/camera2/pipe/compat/OpenCameraResult;

    invoke-virtual {p5}, Landroidx/camera/camera2/pipe/compat/OpenCameraResult;->getCameraState()Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

    move-result-object p3

    if-nez p3, :cond_5

    new-instance p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$OpenVirtualCameraResult$Error;

    invoke-virtual {p5}, Landroidx/camera/camera2/pipe/compat/OpenCameraResult;->getErrorCode-mVEW8x0()Landroidx/camera/camera2/pipe/CameraError;

    move-result-object p1

    invoke-direct {p0, p1, v3}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$OpenVirtualCameraResult$Error;-><init>(Landroidx/camera/camera2/pipe/CameraError;Ljh2;)V

    return-object p0

    :cond_5
    new-instance p3, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$OpenVirtualCameraResult$Success;

    new-instance v0, Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    invoke-virtual {p5}, Landroidx/camera/camera2/pipe/compat/OpenCameraResult;->getCameraState()Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

    move-result-object p5

    check-cast p2, Ljava/util/Collection;

    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraId;->box-impl(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraId;

    move-result-object p1

    invoke-static {p1, p2}, Lqn1;->i0(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Lqn1;->y0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    new-instance p2, Lui5;

    invoke-direct {p2, p0, v4}, Lui5;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v0, p5, p1, p4, p2}, Landroidx/camera/camera2/pipe/compat/ActiveCamera;-><init>(Landroidx/camera/camera2/pipe/compat/AndroidCameraState;Ljava/util/Set;Ly22;Lnl3;)V

    invoke-direct {p3, v0}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$OpenVirtualCameraResult$Success;-><init>(Landroidx/camera/camera2/pipe/compat/ActiveCamera;)V

    return-object p3
.end method

.method private static final openCameraWithRetry_zDSwpeU$lambda$1(Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;Landroidx/camera/camera2/pipe/compat/ActiveCamera;)Lj59;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->queue:Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;

    new-instance v0, Landroidx/camera/camera2/pipe/compat/RequestClose;

    invoke-direct {v0, p1}, Landroidx/camera/camera2/pipe/compat/RequestClose;-><init>(Landroidx/camera/camera2/pipe/compat/ActiveCamera;)V

    invoke-virtual {p0, v0}, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->tryEmit(Ljava/lang/Object;)Z

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final prewarm_EfqyGwQ$lambda$0(Lj59;)Z
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return p0
.end method

.method private final process(Landroidx/camera/camera2/pipe/compat/CameraRequest;Le02;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/compat/CameraRequest;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Landroidx/camera/camera2/pipe/compat/RequestOpen;

    if-eqz v0, :cond_1

    check-cast p1, Landroidx/camera/camera2/pipe/compat/RequestOpen;

    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->processRequestOpen(Landroidx/camera/camera2/pipe/compat/RequestOpen;Le02;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_1
    instance-of v0, p1, Landroidx/camera/camera2/pipe/compat/RequestClose;

    if-eqz v0, :cond_3

    check-cast p1, Landroidx/camera/camera2/pipe/compat/RequestClose;

    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->processRequestClose(Landroidx/camera/camera2/pipe/compat/RequestClose;Le02;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_2

    return-object p0

    :cond_2
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_3
    instance-of v0, p1, Landroidx/camera/camera2/pipe/compat/RequestCloseById;

    if-eqz v0, :cond_5

    check-cast p1, Landroidx/camera/camera2/pipe/compat/RequestCloseById;

    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->processRequestCloseById(Landroidx/camera/camera2/pipe/compat/RequestCloseById;Le02;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_4

    return-object p0

    :cond_4
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_5
    instance-of v0, p1, Landroidx/camera/camera2/pipe/compat/RequestCloseAll;

    if-eqz v0, :cond_7

    check-cast p1, Landroidx/camera/camera2/pipe/compat/RequestCloseAll;

    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->processRequestCloseAll(Landroidx/camera/camera2/pipe/compat/RequestCloseAll;Le02;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_6

    return-object p0

    :cond_6
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_7
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private final processRequestClose(Landroidx/camera/camera2/pipe/compat/RequestClose;Le02;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/compat/RequestClose;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestClose$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestClose$1;

    iget v1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestClose$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestClose$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestClose$1;

    invoke-direct {v0, p0, p2}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestClose$1;-><init>(Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;Le02;)V

    :goto_0
    iget-object p2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestClose$1;->result:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestClose$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_2
    iget-object p0, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestClose$1;->L$0:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Landroidx/camera/camera2/pipe/compat/RequestClose;

    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_3
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/RequestClose;->getActiveCamera()Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object p2

    sget-object v2, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/core/Log;->getINFO_LOGGABLE()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "PruningCamera2DeviceManager#processRequestClose("

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p2, 0x29

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "CXCP"

    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object p2, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->activeCameras:Ljava/util/Set;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/RequestClose;->getActiveCamera()Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->activeCameras:Ljava/util/Set;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/RequestClose;->getActiveCamera()Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_5
    iget-object p2, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->pendingRequestOpens:Ljava/util/List;

    check-cast p2, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$PendingRequestOpen;

    invoke-virtual {v7}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$PendingRequestOpen;->getActiveCamera()Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    move-result-object v7

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/RequestClose;->getActiveCamera()Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    move-result-object v8

    invoke-static {v7, v8}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    iput-object p1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestClose$1;->L$0:Ljava/lang/Object;

    iput v5, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestClose$1;->label:I

    invoke-direct {p0, v2, v0}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->disconnectPendingRequestOpens(Ljava/util/List;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_8

    goto :goto_3

    :cond_8
    :goto_2
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/RequestClose;->getActiveCamera()Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->close()V

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/RequestClose;->getActiveCamera()Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    move-result-object p0

    iput-object v3, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestClose$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestClose$1;->label:I

    invoke-virtual {p0, v0}, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->awaitClosed(Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_9

    :goto_3
    return-object v1

    :cond_9
    :goto_4
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private final processRequestCloseAll(Landroidx/camera/camera2/pipe/compat/RequestCloseAll;Le02;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/compat/RequestCloseAll;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseAll$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseAll$1;

    iget v1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseAll$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseAll$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseAll$1;

    invoke-direct {v0, p0, p2}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseAll$1;-><init>(Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;Le02;)V

    :goto_0
    iget-object p2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseAll$1;->result:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseAll$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseAll$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/util/Iterator;

    iget-object v2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseAll$1;->L$0:Ljava/lang/Object;

    check-cast v2, Landroidx/camera/camera2/pipe/compat/RequestCloseAll;

    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    iget-object p1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseAll$1;->L$0:Ljava/lang/Object;

    check-cast p1, Landroidx/camera/camera2/pipe/compat/RequestCloseAll;

    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    sget-object p2, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/core/Log;->getINFO_LOGGABLE()Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "CXCP"

    const-string v2, "PruningCamera2DeviceManager#processRequestCloseAll()"

    invoke-static {p2, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object p2, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->pendingRequestOpens:Ljava/util/List;

    iput-object p1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseAll$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseAll$1;->label:I

    invoke-direct {p0, p2, v0}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->disconnectPendingRequestOpens(Ljava/util/List;Le02;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    goto :goto_4

    :cond_5
    :goto_1
    iget-object p2, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->activeCameras:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->close()V

    goto :goto_2

    :cond_6
    iget-object p2, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->activeCameras:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move-object v2, p1

    move-object p1, p2

    :cond_7
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    iput-object v2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseAll$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseAll$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseAll$1;->label:I

    invoke-virtual {p2, v0}, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->awaitClosed(Le02;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_7

    :goto_4
    return-object v1

    :cond_8
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->activeCameras:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/compat/RequestCloseAll;->getDeferred()Lxp1;

    move-result-object p0

    sget-object p1, Lj59;->a:Lj59;

    invoke-interface {p0, p1}, Lxp1;->f(Ljava/lang/Object;)Z

    return-object p1
.end method

.method private final processRequestCloseById(Landroidx/camera/camera2/pipe/compat/RequestCloseById;Le02;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/compat/RequestCloseById;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseById$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseById$1;

    iget v1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseById$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseById$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseById$1;

    invoke-direct {v0, p0, p2}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseById$1;-><init>(Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;Le02;)V

    :goto_0
    iget-object p2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseById$1;->result:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseById$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseById$1;->L$0:Ljava/lang/Object;

    check-cast p0, Landroidx/camera/camera2/pipe/compat/RequestCloseById;

    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_2
    iget-object p1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseById$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseById$1;->L$0:Ljava/lang/Object;

    check-cast v2, Landroidx/camera/camera2/pipe/compat/RequestCloseById;

    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/RequestCloseById;->getActiveCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object p2

    sget-object v2, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/core/Log;->getINFO_LOGGABLE()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "PruningCamera2DeviceManager#processRequestCloseById("

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/RequestCloseById;->getActiveCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v6, 0x29

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "CXCP"

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->pendingRequestOpens:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$PendingRequestOpen;

    invoke-virtual {v8}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$PendingRequestOpen;->getRequest()Landroidx/camera/camera2/pipe/compat/RequestOpen;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/camera/camera2/pipe/compat/RequestOpen;->getVirtualCamera()Landroidx/camera/camera2/pipe/compat/VirtualCameraState;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, p2}, Landroidx/camera/camera2/pipe/CameraId;->equals-impl0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    iput-object p1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseById$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseById$1;->L$1:Ljava/lang/Object;

    iput v5, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseById$1;->label:I

    invoke-direct {p0, v6, v0}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->disconnectPendingRequestOpens(Ljava/util/List;Le02;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_7

    goto :goto_4

    :cond_7
    move-object v2, p1

    move-object p1, p2

    :goto_2
    iget-object p2, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->activeCameras:Ljava/util/Set;

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_8
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    invoke-virtual {v6}, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p1}, Landroidx/camera/camera2/pipe/CameraId;->equals-impl0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_3

    :cond_9
    move-object v5, v3

    :goto_3
    check-cast v5, Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    if-eqz v5, :cond_b

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->activeCameras:Ljava/util/Set;

    invoke-interface {p0, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->close()V

    iput-object v2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseById$1;->L$0:Ljava/lang/Object;

    iput-object v3, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseById$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseById$1;->label:I

    invoke-virtual {v5, v0}, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->awaitClosed(Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_a

    :goto_4
    return-object v1

    :cond_a
    move-object p0, v2

    :goto_5
    move-object v2, p0

    :cond_b
    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/compat/RequestCloseById;->getDeferred()Lxp1;

    move-result-object p0

    sget-object p1, Lj59;->a:Lj59;

    invoke-interface {p0, p1}, Lxp1;->f(Ljava/lang/Object;)Z

    return-object p1
.end method

.method private final processRequestOpen(Landroidx/camera/camera2/pipe/compat/RequestOpen;Le02;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/compat/RequestOpen;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;

    iget v1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;

    invoke-direct {v0, p0, p2}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;-><init>(Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;Le02;)V

    :goto_0
    iget-object p2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->result:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->label:I

    const-string v3, "CXCP"

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_0

    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v4

    :pswitch_0
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    goto/16 :goto_11

    :pswitch_1
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    goto/16 :goto_f

    :pswitch_2
    iget-object p1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->L$0:Ljava/lang/Object;

    check-cast p1, Landroidx/camera/camera2/pipe/compat/RequestOpen;

    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    goto/16 :goto_e

    :pswitch_3
    iget-object p1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->L$0:Ljava/lang/Object;

    check-cast v2, Landroidx/camera/camera2/pipe/compat/RequestOpen;

    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    move-object v9, p2

    move-object p2, p1

    move-object p1, v2

    move-object v2, v0

    move-object v0, v9

    goto/16 :goto_9

    :pswitch_4
    iget-object p1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->L$2:Ljava/lang/Object;

    check-cast p1, Ljava/util/Iterator;

    iget-object v2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v5, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->L$0:Ljava/lang/Object;

    check-cast v5, Landroidx/camera/camera2/pipe/compat/RequestOpen;

    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_5
    iget-object p1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->L$2:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iget-object v2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v5, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->L$0:Ljava/lang/Object;

    check-cast v5, Landroidx/camera/camera2/pipe/compat/RequestOpen;

    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_6
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/RequestOpen;->getVirtualCamera()Landroidx/camera/camera2/pipe/compat/VirtualCameraState;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v2

    sget-object p2, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/core/Log;->getINFO_LOGGABLE()Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v5, "PruningCamera2DeviceManager#processRequestOpen("

    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v5, 0x29

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/RequestOpen;->getSharedCameraIds()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->activeCameras:Ljava/util/Set;

    check-cast p2, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    invoke-virtual {v7}, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v2}, Landroidx/camera/camera2/pipe/CameraId;->equals-impl0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/RequestOpen;->getSharedCameraIds()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/RequestOpen;->getVirtualCamera()Landroidx/camera/camera2/pipe/compat/VirtualCameraState;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroidx/camera/camera2/pipe/CameraId;->box-impl(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraId;

    move-result-object v5

    invoke-static {v5, p2}, Lqn1;->i0(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {p2}, Lqn1;->y0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p2

    iget-object v5, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->activeCameras:Ljava/util/Set;

    check-cast v5, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    invoke-virtual {v8}, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->getAllCameraIds$camera_camera2_pipe()Ljava/util/Set;

    move-result-object v8

    invoke-static {v8, p2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    move-object v5, v6

    :cond_6
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_d

    iget-object p2, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->activeCameras:Ljava/util/Set;

    invoke-interface {p2, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    iget-object p2, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->pendingRequestOpens:Ljava/util/List;

    check-cast p2, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_7
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$PendingRequestOpen;

    invoke-virtual {v8}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$PendingRequestOpen;->getActiveCamera()Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    iput-object p1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->L$2:Ljava/lang/Object;

    const/4 p2, 0x1

    iput p2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->label:I

    invoke-direct {p0, v6, v0}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->disconnectPendingRequestOpens(Ljava/util/List;Le02;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_9

    goto/16 :goto_10

    :cond_9
    move-object v9, v5

    move-object v5, p1

    move-object p1, v9

    :goto_4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    invoke-virtual {v6}, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->close()V

    goto :goto_5

    :cond_a
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    iput-object v5, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->L$1:Ljava/lang/Object;

    iput-object p1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->L$2:Ljava/lang/Object;

    const/4 v6, 0x2

    iput v6, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->label:I

    invoke-virtual {p2, v0}, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->awaitClosed(Le02;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_b

    goto/16 :goto_10

    :cond_c
    :goto_7
    move-object p1, v2

    goto :goto_8

    :cond_d
    move-object v5, p1

    goto :goto_7

    :goto_8
    iget-object p2, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->camera2ErrorProcessor:Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;

    invoke-virtual {v5}, Landroidx/camera/camera2/pipe/compat/RequestOpen;->getVirtualCamera()Landroidx/camera/camera2/pipe/compat/VirtualCameraState;

    move-result-object v2

    invoke-virtual {p2, p1, v2}, Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;->setActiveVirtualCamera-0r8Bogc$camera_camera2_pipe(Ljava/lang/String;Landroidx/camera/camera2/pipe/compat/VirtualCameraState;)V

    iput-object v5, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->L$1:Ljava/lang/Object;

    iput-object v4, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->L$2:Ljava/lang/Object;

    const/4 p2, 0x3

    iput p2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->label:I

    invoke-direct {p0, p1, v5, v0}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->retrieveActiveCamera-RzXb1QE(Ljava/lang/String;Landroidx/camera/camera2/pipe/compat/RequestOpen;Le02;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_e

    goto/16 :goto_10

    :cond_e
    move-object v2, v0

    move-object v0, p2

    move-object p2, p1

    move-object p1, v5

    :goto_9
    check-cast v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$RetrieveActiveCameraResult;

    instance-of v5, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$RetrieveActiveCameraResult$Error;

    if-eqz v5, :cond_11

    check-cast v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$RetrieveActiveCameraResult$Error;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$RetrieveActiveCameraResult$Error;->getLastCameraError-mVEW8x0()Landroidx/camera/camera2/pipe/CameraError;

    move-result-object p0

    const-string p1, "Failed to retrieve active camera for "

    if-eqz p0, :cond_f

    sget-object p0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/core/Log;->getERROR_LOGGABLE()Z

    move-result p0

    if-eqz p0, :cond_10

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". Last camera error was "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$RetrieveActiveCameraResult$Error;->getLastCameraError-mVEW8x0()Landroidx/camera/camera2/pipe/CameraError;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraError;->unbox-impl()I

    move-result p1

    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraError;->toString-impl(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_f
    sget-object p0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result p0

    if-eqz p0, :cond_10

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". Camera might have been closed during opening."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    :goto_a
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_11
    instance-of p2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$RetrieveActiveCameraResult$Success;

    const-string v3, "Check failed."

    if-eqz p2, :cond_1d

    check-cast v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$RetrieveActiveCameraResult$Success;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$RetrieveActiveCameraResult$Success;->getActiveCamera()Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    move-result-object p2

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$RetrieveActiveCameraResult$Success;->getToken()Landroidx/camera/camera2/pipe/core/Token;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/RequestOpen;->getSharedCameraIds()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1a

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/RequestOpen;->getSharedCameraIds()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    instance-of v6, v5, Ljava/util/Collection;

    if-eqz v6, :cond_12

    move-object v6, v5

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_12

    goto :goto_d

    :cond_12
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_16

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/camera/camera2/pipe/CameraId;

    invoke-virtual {v6}, Landroidx/camera/camera2/pipe/CameraId;->unbox-impl()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->pendingRequestOpens:Ljava/util/List;

    check-cast v7, Ljava/lang/Iterable;

    instance-of v8, v7, Ljava/util/Collection;

    if-eqz v8, :cond_13

    move-object v8, v7

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_13

    goto :goto_c

    :cond_13
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_14
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_15

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$PendingRequestOpen;

    invoke-virtual {v8}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$PendingRequestOpen;->getActiveCamera()Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v6}, Landroidx/camera/camera2/pipe/CameraId;->equals-impl0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_14

    goto :goto_b

    :cond_15
    :goto_c
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->pendingRequestOpens:Ljava/util/List;

    new-instance v1, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$PendingRequestOpen;

    invoke-direct {v1, p1, p2, v0}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$PendingRequestOpen;-><init>(Landroidx/camera/camera2/pipe/compat/RequestOpen;Landroidx/camera/camera2/pipe/compat/ActiveCamera;Landroidx/camera/camera2/pipe/core/Token;)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_16
    :goto_d
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/RequestOpen;->isPrewarm()Z

    move-result v5

    if-nez v5, :cond_19

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/RequestOpen;->getVirtualCamera()Landroidx/camera/camera2/pipe/compat/VirtualCameraState;

    move-result-object v3

    iput-object p1, v2, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->L$0:Ljava/lang/Object;

    iput-object v4, v2, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->L$1:Ljava/lang/Object;

    const/4 v5, 0x4

    iput v5, v2, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->label:I

    invoke-virtual {p2, v3, v0, v2}, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->connectTo(Landroidx/camera/camera2/pipe/compat/VirtualCameraState;Landroidx/camera/camera2/pipe/core/Token;Le02;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_17

    goto :goto_10

    :cond_17
    move-object v0, v2

    :goto_e
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/RequestOpen;->getSharedCameraIds()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lqn1;->y0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    iput-object v4, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->L$0:Ljava/lang/Object;

    const/4 p2, 0x5

    iput p2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->label:I

    invoke-direct {p0, p1, v0}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->connectPendingRequestOpens(Ljava/util/Set;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_18

    goto :goto_10

    :cond_18
    :goto_f
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_19
    invoke-static {v3}, Lah;->f(Ljava/lang/String;)V

    return-object v4

    :cond_1a
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/RequestOpen;->isPrewarm()Z

    move-result p0

    if-nez p0, :cond_1c

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/RequestOpen;->getVirtualCamera()Landroidx/camera/camera2/pipe/compat/VirtualCameraState;

    move-result-object p0

    iput-object v4, v2, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->L$0:Ljava/lang/Object;

    iput-object v4, v2, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->L$1:Ljava/lang/Object;

    const/4 p1, 0x6

    iput p1, v2, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->label:I

    invoke-virtual {p2, p0, v0, v2}, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->connectTo(Landroidx/camera/camera2/pipe/compat/VirtualCameraState;Landroidx/camera/camera2/pipe/core/Token;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_1b

    :goto_10
    return-object v1

    :cond_1b
    :goto_11
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_1c
    invoke-interface {v0}, Landroidx/camera/camera2/pipe/core/Token;->release()Z

    :goto_12
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_1d
    invoke-static {v3}, Lah;->f(Ljava/lang/String;)V

    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final prune$lambda$2$0(Lxp1;Ljava/lang/Throwable;)Lj59;
    .locals 0

    sget-object p1, Lj59;->a:Lj59;

    invoke-interface {p0, p1}, Lxp1;->f(Ljava/lang/Object;)Z

    return-object p1
.end method

.method private static final prune$lambda$6(Landroidx/camera/camera2/pipe/compat/CameraRequest;Ljava/lang/Throwable;)Lj59;
    .locals 0

    check-cast p0, Landroidx/camera/camera2/pipe/compat/RequestCloseById;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/RequestCloseById;->getDeferred()Lxp1;

    move-result-object p0

    sget-object p1, Lj59;->a:Lj59;

    invoke-interface {p0, p1}, Lxp1;->f(Ljava/lang/Object;)Z

    return-object p1
.end method

.method private final removeIndices(Ljava/util/List;Ljava/util/Set;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/lang/Iterable;

    invoke-static {p2}, Lqn1;->m0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private final retrieveActiveCamera-RzXb1QE(Ljava/lang/String;Landroidx/camera/camera2/pipe/compat/RequestOpen;Le02;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/camera/camera2/pipe/compat/RequestOpen;",
            "Le02<",
            "-",
            "Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$RetrieveActiveCameraResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$retrieveActiveCamera$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$retrieveActiveCamera$1;

    iget v1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$retrieveActiveCamera$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$retrieveActiveCamera$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$retrieveActiveCamera$1;

    invoke-direct {v0, p0, p3}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$retrieveActiveCamera$1;-><init>(Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;Le02;)V

    :goto_0
    iget-object p3, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$retrieveActiveCamera$1;->result:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$retrieveActiveCamera$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$retrieveActiveCamera$1;->L$1:Ljava/lang/Object;

    check-cast p1, Landroidx/camera/camera2/pipe/compat/RequestOpen;

    iget-object p2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$retrieveActiveCamera$1;->L$0:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    invoke-static {p3}, Lr57;->b(Ljava/lang/Object;)V

    move-object v6, p0

    goto/16 :goto_5

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v5

    :cond_2
    iget-object p1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$retrieveActiveCamera$1;->L$3:Ljava/lang/Object;

    check-cast p1, Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    iget-object p2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$retrieveActiveCamera$1;->L$2:Ljava/lang/Object;

    check-cast p2, Ljava/util/Iterator;

    iget-object v2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$retrieveActiveCamera$1;->L$1:Ljava/lang/Object;

    check-cast v2, Landroidx/camera/camera2/pipe/compat/RequestOpen;

    iget-object v6, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$retrieveActiveCamera$1;->L$0:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-static {p3}, Lr57;->b(Ljava/lang/Object;)V

    move-object v11, v0

    move-object v7, v6

    goto :goto_2

    :cond_3
    invoke-static {p3}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p3, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->activeCameras:Ljava/util/Set;

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    move-object v7, p1

    move-object p1, p2

    move-object p2, p3

    move-object v11, v0

    :cond_4
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Landroidx/camera/camera2/pipe/CameraId;->equals-impl0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->acquire()Landroidx/camera/camera2/pipe/core/Token;

    move-result-object v0

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->close()V

    iput-object v7, v11, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$retrieveActiveCamera$1;->L$0:Ljava/lang/Object;

    iput-object p1, v11, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$retrieveActiveCamera$1;->L$1:Ljava/lang/Object;

    iput-object p2, v11, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$retrieveActiveCamera$1;->L$2:Ljava/lang/Object;

    iput-object p3, v11, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$retrieveActiveCamera$1;->L$3:Ljava/lang/Object;

    iput v4, v11, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$retrieveActiveCamera$1;->label:I

    invoke-virtual {p3, v11}, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->awaitClosed(Le02;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_6

    goto :goto_4

    :cond_6
    move-object v2, p1

    move-object p1, p3

    :goto_2
    iget-object p3, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->activeCameras:Ljava/util/Set;

    invoke-interface {p3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-object p1, v2

    goto :goto_1

    :cond_7
    move-object p3, v5

    move-object v0, p3

    :goto_3
    if-nez p3, :cond_f

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/RequestOpen;->getSharedCameraIds()Ljava/util/List;

    move-result-object v8

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/RequestOpen;->isForegroundObserver()Lnl3;

    move-result-object v9

    iget-object v10, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->scope:Ly22;

    iput-object v7, v11, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$retrieveActiveCamera$1;->L$0:Ljava/lang/Object;

    iput-object p1, v11, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$retrieveActiveCamera$1;->L$1:Ljava/lang/Object;

    iput-object v5, v11, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$retrieveActiveCamera$1;->L$2:Ljava/lang/Object;

    iput-object v5, v11, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$retrieveActiveCamera$1;->L$3:Ljava/lang/Object;

    iput v3, v11, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$retrieveActiveCamera$1;->label:I

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->openCameraWithRetry-zDSwpeU(Ljava/lang/String;Ljava/util/List;Lnl3;Ly22;Le02;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_8

    :goto_4
    return-object v1

    :cond_8
    move-object p2, v7

    :goto_5
    check-cast p3, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$OpenVirtualCameraResult;

    instance-of p0, p3, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$OpenVirtualCameraResult$Success;

    const-string v0, "PruningCameraDeviceManager: Failed to open "

    const-string v1, "CXCP"

    if-eqz p0, :cond_c

    check-cast p3, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$OpenVirtualCameraResult$Success;

    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$OpenVirtualCameraResult$Success;->getActiveCamera()Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->acquire()Landroidx/camera/camera2/pipe/core/Token;

    move-result-object p0

    if-eqz p0, :cond_a

    sget-object p1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getINFO_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_9

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "PruningCameraDeviceManager: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " opened successfully"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object p1, v6, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->activeCameras:Ljava/util/Set;

    invoke-interface {p1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v0, p0

    goto :goto_6

    :cond_a
    sget-object p0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/core/Log;->getINFO_LOGGABLE()Z

    move-result p0

    if-eqz p0, :cond_b

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ": Camera may have been closed (possibly due to an error) immediately after opening"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/RequestOpen;->getVirtualCamera()Landroidx/camera/camera2/pipe/compat/VirtualCameraState;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->disconnect-TPqeGZw(Landroidx/camera/camera2/pipe/CameraError;)V

    new-instance p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$RetrieveActiveCameraResult$Error;

    invoke-direct {p0, v5, v5}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$RetrieveActiveCameraResult$Error;-><init>(Landroidx/camera/camera2/pipe/CameraError;Ljh2;)V

    return-object p0

    :cond_c
    instance-of p0, p3, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$OpenVirtualCameraResult$Error;

    if-eqz p0, :cond_e

    sget-object p0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/core/Log;->getINFO_LOGGABLE()Z

    move-result p0

    if-eqz p0, :cond_d

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/RequestOpen;->getVirtualCamera()Landroidx/camera/camera2/pipe/compat/VirtualCameraState;

    move-result-object p0

    check-cast p3, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$OpenVirtualCameraResult$Error;

    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$OpenVirtualCameraResult$Error;->getLastCameraError-mVEW8x0()Landroidx/camera/camera2/pipe/CameraError;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->disconnect-TPqeGZw(Landroidx/camera/camera2/pipe/CameraError;)V

    new-instance p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$RetrieveActiveCameraResult$Error;

    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$OpenVirtualCameraResult$Error;->getLastCameraError-mVEW8x0()Landroidx/camera/camera2/pipe/CameraError;

    move-result-object p1

    invoke-direct {p0, p1, v5}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$RetrieveActiveCameraResult$Error;-><init>(Landroidx/camera/camera2/pipe/CameraError;Ljh2;)V

    return-object p0

    :cond_e
    invoke-static {}, Lme0;->e()V

    return-object v5

    :cond_f
    :goto_6
    new-instance p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$RetrieveActiveCameraResult$Success;

    if-eqz v0, :cond_10

    invoke-direct {p0, p3, v0}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$RetrieveActiveCameraResult$Success;-><init>(Landroidx/camera/camera2/pipe/compat/ActiveCamera;Landroidx/camera/camera2/pipe/core/Token;)V

    return-object p0

    :cond_10
    const-string p0, "Required value was null."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v5
.end method


# virtual methods
.method public close-EfqyGwQ(Ljava/lang/String;)Lmk2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lmk2<",
            "Lj59;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/camera/camera2/pipe/compat/RequestCloseById;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/camera/camera2/pipe/compat/RequestCloseById;-><init>(Ljava/lang/String;Ljh2;)V

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->queue:Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;

    invoke-virtual {p0, v0}, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->tryEmit(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/core/Log;->getERROR_LOGGABLE()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Camera close by ID request failed for "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x21

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CXCP"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/compat/RequestCloseById;->getDeferred()Lxp1;

    move-result-object p0

    sget-object p1, Lj59;->a:Lj59;

    invoke-interface {p0, p1}, Lxp1;->f(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/compat/RequestCloseById;->getDeferred()Lxp1;

    move-result-object p0

    return-object p0
.end method

.method public closeAll(Z)Lmk2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lmk2<",
            "Lj59;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->retryingCameraStateOpener:Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpener;

    invoke-interface {p1}, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpener;->cancelOpen()V

    :cond_0
    new-instance p1, Landroidx/camera/camera2/pipe/compat/RequestCloseAll;

    invoke-direct {p1}, Landroidx/camera/camera2/pipe/compat/RequestCloseAll;-><init>()V

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->queue:Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->tryEmit(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    sget-object p0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/core/Log;->getERROR_LOGGABLE()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "CXCP"

    const-string v0, "Camera close all request failed!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/RequestCloseAll;->getDeferred()Lxp1;

    move-result-object p0

    sget-object v0, Lj59;->a:Lj59;

    invoke-interface {p0, v0}, Lxp1;->f(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/RequestCloseAll;->getDeferred()Lxp1;

    move-result-object p0

    return-object p0
.end method

.method public final getThreads()Landroidx/camera/camera2/pipe/core/Threads;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    return-object p0
.end method

.method public open-zDSwpeU(Ljava/lang/String;Ljava/util/List;Landroidx/camera/camera2/pipe/graph/GraphListener;ZLnl3;)Landroidx/camera/camera2/pipe/compat/VirtualCamera;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/CameraId;",
            ">;",
            "Landroidx/camera/camera2/pipe/graph/GraphListener;",
            "Z",
            "Lnl3<",
            "-",
            "Lj59;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroidx/camera/camera2/pipe/compat/VirtualCamera;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->scope:Ly22;

    const/4 v6, 0x0

    invoke-direct {v1, p1, p3, v0, v6}, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;-><init>(Ljava/lang/String;Landroidx/camera/camera2/pipe/graph/GraphListener;Ly22;Ljh2;)V

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->queue:Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;

    new-instance v0, Landroidx/camera/camera2/pipe/compat/RequestOpen;

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Landroidx/camera/camera2/pipe/compat/RequestOpen;-><init>(Landroidx/camera/camera2/pipe/compat/VirtualCameraState;Ljava/util/List;Landroidx/camera/camera2/pipe/graph/GraphListener;ZLnl3;)V

    invoke-virtual {p0, v0}, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->tryEmit(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/core/Log;->getERROR_LOGGABLE()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Camera open request failed for "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x21

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CXCP"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance p0, Landroidx/camera/camera2/pipe/GraphState$GraphStateError;

    sget-object p1, Landroidx/camera/camera2/pipe/CameraError;->Companion:Landroidx/camera/camera2/pipe/CameraError$Companion;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_CAMERA_OPENER-v7Vf74A()I

    move-result p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, v6}, Landroidx/camera/camera2/pipe/GraphState$GraphStateError;-><init>(IZLjh2;)V

    invoke-interface {v3, p0}, Landroidx/camera/camera2/pipe/graph/GraphListener;->onGraphError(Landroidx/camera/camera2/pipe/GraphState$GraphStateError;)V

    return-object v6

    :cond_1
    return-object v1
.end method

.method public prewarm-EfqyGwQ(Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Landroidx/camera/camera2/pipe/compat/NoOpGraphListener;->INSTANCE:Landroidx/camera/camera2/pipe/compat/NoOpGraphListener;

    new-instance v5, Ldt3;

    const/4 v0, 0x1

    invoke-direct {v5, v0}, Ldt3;-><init>(I)V

    sget-object v2, Lkx2;->b:Lkx2;

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->open-zDSwpeU(Ljava/lang/String;Ljava/util/List;Landroidx/camera/camera2/pipe/graph/GraphListener;ZLnl3;)Landroidx/camera/camera2/pipe/compat/VirtualCamera;

    return-void
.end method

.method public final prune$camera_camera2_pipe(Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/compat/CameraRequest;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Landroidx/camera/camera2/pipe/compat/CameraRequest;

    instance-of v6, v6, Landroidx/camera/camera2/pipe/compat/RequestClose;

    if-eqz v6, :cond_0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v1, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-static {v3}, Lqn1;->j0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/camera/camera2/pipe/compat/CameraRequest;

    invoke-interface {v1, v5, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/camera/camera2/pipe/compat/CameraRequest;

    instance-of v4, v4, Landroidx/camera/camera2/pipe/compat/RequestCloseAll;

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/ListIterator;->nextIndex()I

    move-result v3

    goto :goto_2

    :cond_4
    const/4 v3, -0x1

    :goto_2
    const/4 v6, 0x1

    if-lez v3, :cond_8

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v7, Landroidx/camera/camera2/pipe/compat/RequestCloseAll;

    move v8, v5

    :goto_3
    if-ge v8, v3, :cond_8

    invoke-interface {v1, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/camera/camera2/pipe/compat/CameraRequest;

    instance-of v10, v9, Landroidx/camera/camera2/pipe/compat/RequestCloseById;

    if-eqz v10, :cond_5

    move-object v10, v9

    check-cast v10, Landroidx/camera/camera2/pipe/compat/RequestCloseById;

    invoke-virtual {v10}, Landroidx/camera/camera2/pipe/compat/RequestCloseById;->getDeferred()Lxp1;

    move-result-object v10

    goto :goto_4

    :cond_5
    instance-of v10, v9, Landroidx/camera/camera2/pipe/compat/RequestCloseAll;

    if-eqz v10, :cond_6

    move-object v10, v9

    check-cast v10, Landroidx/camera/camera2/pipe/compat/RequestCloseAll;

    invoke-virtual {v10}, Landroidx/camera/camera2/pipe/compat/RequestCloseAll;->getDeferred()Lxp1;

    move-result-object v10

    goto :goto_4

    :cond_6
    const/4 v10, 0x0

    :goto_4
    if-eqz v10, :cond_7

    invoke-virtual {v7}, Landroidx/camera/camera2/pipe/compat/RequestCloseAll;->getDeferred()Lxp1;

    move-result-object v11

    new-instance v12, Lcl5;

    invoke-direct {v12, v10, v6}, Lcl5;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v11, v12}, Lmb4;->g(Lnl3;)Lhp2;

    :cond_7
    invoke-direct {v0, v9}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->onRemoved(Landroidx/camera/camera2/pipe/compat/CameraRequest;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_8
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v7, v5

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_14

    add-int/lit8 v8, v7, 0x1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/camera/camera2/pipe/compat/CameraRequest;

    instance-of v10, v9, Landroidx/camera/camera2/pipe/compat/RequestOpen;

    if-eqz v10, :cond_10

    move-object v10, v9

    check-cast v10, Landroidx/camera/camera2/pipe/compat/RequestOpen;

    invoke-virtual {v10}, Landroidx/camera/camera2/pipe/compat/RequestOpen;->getVirtualCamera()Landroidx/camera/camera2/pipe/compat/VirtualCameraState;

    move-result-object v11

    invoke-virtual {v11}, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10}, Landroidx/camera/camera2/pipe/compat/RequestOpen;->getSharedCameraIds()Ljava/util/List;

    move-result-object v12

    check-cast v12, Ljava/util/Collection;

    invoke-static {v11}, Landroidx/camera/camera2/pipe/CameraId;->box-impl(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraId;

    move-result-object v13

    invoke-static {v13, v12}, Lqn1;->i0(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-static {v12}, Lqn1;->y0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v12

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v13

    move v14, v8

    :goto_6
    if-ge v14, v13, :cond_f

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/camera/camera2/pipe/compat/CameraRequest;

    instance-of v4, v15, Landroidx/camera/camera2/pipe/compat/RequestCloseById;

    if-eqz v4, :cond_9

    check-cast v15, Landroidx/camera/camera2/pipe/compat/RequestCloseById;

    invoke-virtual {v15}, Landroidx/camera/camera2/pipe/compat/RequestCloseById;->getActiveCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroidx/camera/camera2/pipe/CameraId;->box-impl(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraId;

    move-result-object v4

    invoke-interface {v12, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_9

    :cond_9
    instance-of v4, v15, Landroidx/camera/camera2/pipe/compat/RequestOpen;

    if-eqz v4, :cond_d

    invoke-virtual {v10}, Landroidx/camera/camera2/pipe/compat/RequestOpen;->isPrewarm()Z

    move-result v4

    if-nez v4, :cond_b

    move-object v4, v15

    check-cast v4, Landroidx/camera/camera2/pipe/compat/RequestOpen;

    invoke-virtual {v4}, Landroidx/camera/camera2/pipe/compat/RequestOpen;->isPrewarm()Z

    move-result v4

    if-nez v4, :cond_a

    goto :goto_7

    :cond_a
    move v4, v5

    goto :goto_8

    :cond_b
    :goto_7
    move v4, v6

    :goto_8
    check-cast v15, Landroidx/camera/camera2/pipe/compat/RequestOpen;

    invoke-virtual {v15}, Landroidx/camera/camera2/pipe/compat/RequestOpen;->getVirtualCamera()Landroidx/camera/camera2/pipe/compat/VirtualCameraState;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15}, Landroidx/camera/camera2/pipe/compat/RequestOpen;->getSharedCameraIds()Ljava/util/List;

    move-result-object v15

    check-cast v15, Ljava/util/Collection;

    invoke-static {v5}, Landroidx/camera/camera2/pipe/CameraId;->box-impl(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraId;

    move-result-object v6

    invoke-static {v6, v15}, Lqn1;->i0(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-static {v6}, Lqn1;->y0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v6

    if-eqz v4, :cond_d

    invoke-static {v11, v5}, Landroidx/camera/camera2/pipe/CameraId;->equals-impl0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_c

    invoke-virtual {v12, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    :cond_c
    const/4 v4, 0x1

    goto :goto_9

    :cond_d
    const/4 v4, 0x0

    :goto_9
    if-eqz v4, :cond_e

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_b

    :cond_e
    add-int/lit8 v14, v14, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    goto :goto_6

    :cond_f
    const/4 v4, 0x0

    goto :goto_b

    :cond_10
    instance-of v4, v9, Landroidx/camera/camera2/pipe/compat/RequestCloseById;

    if-eqz v4, :cond_f

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    move v5, v8

    :goto_a
    if-ge v5, v4, :cond_f

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/camera/camera2/pipe/compat/CameraRequest;

    instance-of v10, v6, Landroidx/camera/camera2/pipe/compat/RequestCloseById;

    if-eqz v10, :cond_11

    check-cast v6, Landroidx/camera/camera2/pipe/compat/RequestCloseById;

    invoke-virtual {v6}, Landroidx/camera/camera2/pipe/compat/RequestCloseById;->getActiveCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v6

    move-object v10, v9

    check-cast v10, Landroidx/camera/camera2/pipe/compat/RequestCloseById;

    invoke-virtual {v10}, Landroidx/camera/camera2/pipe/compat/RequestCloseById;->getActiveCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroidx/camera/camera2/pipe/CameraId;->equals-impl0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_b

    :cond_11
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :goto_b
    if-eqz v4, :cond_13

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/camera/camera2/pipe/compat/CameraRequest;

    sget-object v5, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v5}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v5

    if-eqz v5, :cond_12

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " is pruned by "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CXCP"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    instance-of v5, v9, Landroidx/camera/camera2/pipe/compat/RequestCloseById;

    if-eqz v5, :cond_13

    instance-of v5, v4, Landroidx/camera/camera2/pipe/compat/RequestCloseById;

    if-eqz v5, :cond_13

    check-cast v4, Landroidx/camera/camera2/pipe/compat/RequestCloseById;

    invoke-virtual {v4}, Landroidx/camera/camera2/pipe/compat/RequestCloseById;->getDeferred()Lxp1;

    move-result-object v4

    new-instance v5, Lim1;

    check-cast v9, Landroidx/camera/camera2/pipe/compat/RequestCloseById;

    const/4 v6, 0x2

    invoke-direct {v5, v9, v6}, Lim1;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v4, v5}, Lmb4;->g(Lnl3;)Lhp2;

    :cond_13
    move v7, v8

    const/4 v5, 0x0

    const/4 v6, 0x1

    goto/16 :goto_5

    :cond_14
    invoke-direct {v0, v1, v3}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->removeIndices(Ljava/util/List;Ljava/util/Set;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/camera2/pipe/compat/CameraRequest;

    invoke-direct {v0, v2}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->onRemoved(Landroidx/camera/camera2/pipe/compat/CameraRequest;)V

    goto :goto_c

    :cond_15
    return-void
.end method
