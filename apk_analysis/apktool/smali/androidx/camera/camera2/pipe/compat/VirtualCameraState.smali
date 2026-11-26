.class public final Landroidx/camera/camera2/pipe/compat/VirtualCameraState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/compat/VirtualCamera;


# instance fields
.field private _lastState:Landroidx/camera/camera2/pipe/compat/CameraState;

.field private final _stateFlow:Lvg5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvg5<",
            "Landroidx/camera/camera2/pipe/compat/CameraState;",
            ">;"
        }
    .end annotation
.end field

.field private final _states:Lhd3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhd3<",
            "Landroidx/camera/camera2/pipe/compat/CameraState;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraId:Ljava/lang/String;

.field private closed:Z

.field private currentVirtualAndroidCamera:Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;

.field private final debugId:I

.field private final graphListener:Landroidx/camera/camera2/pipe/graph/GraphListener;

.field private job:Lmb4;

.field private final lock:Ljava/lang/Object;

.field private final scope:Ly22;

.field private wakelockToken:Landroidx/camera/camera2/pipe/core/Token;


# direct methods
.method private constructor <init>(Ljava/lang/String;Landroidx/camera/camera2/pipe/graph/GraphListener;Ly22;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->cameraId:Ljava/lang/String;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->graphListener:Landroidx/camera/camera2/pipe/graph/GraphListener;

    iput-object p3, p0, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->scope:Ly22;

    invoke-static {}, Landroidx/camera/camera2/pipe/compat/VirtualCameraKt;->getVirtualCameraDebugIds()Llt;

    move-result-object p1

    invoke-virtual {p1}, Llt;->b()I

    move-result p1

    iput p1, p0, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->debugId:I

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->lock:Ljava/lang/Object;

    const/4 p1, 0x4

    const/4 p2, 0x1

    const/4 p3, 0x3

    const/4 v0, 0x0

    invoke-static {p2, p3, v0, p1}, Lbt7;->b(IILcu0;I)Lzs7;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->_stateFlow:Lvg5;

    invoke-static {p1}, Lzd3;->c(Lhd3;)Lhd3;

    move-result-object p2

    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->_states:Lhd3;

    sget-object p2, Landroidx/camera/camera2/pipe/compat/CameraStateUnopened;->INSTANCE:Landroidx/camera/camera2/pipe/compat/CameraStateUnopened;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->_lastState:Landroidx/camera/camera2/pipe/compat/CameraState;

    invoke-virtual {p1, p2}, Lzs7;->e(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const-string p0, "Check failed."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Landroidx/camera/camera2/pipe/graph/GraphListener;Ly22;Ljh2;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;-><init>(Ljava/lang/String;Landroidx/camera/camera2/pipe/graph/GraphListener;Ly22;)V

    return-void
.end method

.method public static final synthetic access$emitState(Landroidx/camera/camera2/pipe/compat/VirtualCameraState;Landroidx/camera/camera2/pipe/compat/CameraState;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->emitState(Landroidx/camera/camera2/pipe/compat/CameraState;)V

    return-void
.end method

.method public static final synthetic access$getLock$p(Landroidx/camera/camera2/pipe/compat/VirtualCameraState;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->lock:Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic access$setCurrentVirtualAndroidCamera$p(Landroidx/camera/camera2/pipe/compat/VirtualCameraState;Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->currentVirtualAndroidCamera:Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;

    return-void
.end method

.method private final emitState(Landroidx/camera/camera2/pipe/compat/CameraState;)V
    .locals 2

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->_lastState:Landroidx/camera/camera2/pipe/compat/CameraState;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->_stateFlow:Lvg5;

    invoke-interface {v0, p1}, Lvg5;->e(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Failed to emit "

    const-string v1, " in "

    invoke-static {v0, p1, v1, p0}, Lfg;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final connect$camera_camera2_pipe(Lhd3;Landroidx/camera/camera2/pipe/core/Token;Le02;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhd3<",
            "+",
            "Landroidx/camera/camera2/pipe/compat/CameraState;",
            ">;",
            "Landroidx/camera/camera2/pipe/core/Token;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p3, p0, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->lock:Ljava/lang/Object;

    monitor-enter p3

    :try_start_0
    iget-boolean v0, p0, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->closed:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroidx/camera/camera2/pipe/core/Token;->release()Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p3

    return-object p0

    :cond_1
    :try_start_1
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->scope:Ly22;

    new-instance v1, Landroidx/camera/camera2/pipe/compat/VirtualCameraState$connect$2$1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Landroidx/camera/camera2/pipe/compat/VirtualCameraState$connect$2$1;-><init>(Lhd3;Landroidx/camera/camera2/pipe/compat/VirtualCameraState;Le02;)V

    const/4 p1, 0x3

    invoke-static {v0, v2, v2, v1, p1}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->job:Lmb4;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->wakelockToken:Landroidx/camera/camera2/pipe/core/Token;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p3

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :goto_1
    monitor-exit p3

    throw p0
.end method

.method public disconnect-TPqeGZw(Landroidx/camera/camera2/pipe/CameraError;)V
    .locals 14

    const-string v0, "Disconnecting "

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p0, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->closed:Z

    sget-object v3, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/core/Log;->getINFO_LOGGABLE()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "CXCP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->currentVirtualAndroidCamera:Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->disconnect$camera_camera2_pipe()V

    :cond_2
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->job:Lmb4;

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0, v3}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_3
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->wakelockToken:Landroidx/camera/camera2/pipe/core/Token;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroidx/camera/camera2/pipe/core/Token;->release()Z

    :cond_4
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->getValue()Landroidx/camera/camera2/pipe/compat/CameraState;

    move-result-object v0

    instance-of v0, v0, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;

    if-nez v0, :cond_6

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->_lastState:Landroidx/camera/camera2/pipe/compat/CameraState;

    instance-of v0, v0, Landroidx/camera/camera2/pipe/compat/CameraStateClosing;

    if-nez v0, :cond_5

    new-instance v0, Landroidx/camera/camera2/pipe/compat/CameraStateClosing;

    invoke-direct {v0, v3, v2, v3}, Landroidx/camera/camera2/pipe/compat/CameraStateClosing;-><init>(Landroidx/camera/camera2/pipe/CameraError;ILjh2;)V

    invoke-direct {p0, v0}, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->emitState(Landroidx/camera/camera2/pipe/compat/CameraState;)V

    :cond_5
    new-instance v2, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;

    iget-object v3, p0, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->cameraId:Ljava/lang/String;

    sget-object v4, Landroidx/camera/camera2/pipe/compat/ClosedReason;->APP_DISCONNECTED:Landroidx/camera/camera2/pipe/compat/ClosedReason;

    const/16 v12, 0xfc

    const/4 v13, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v11, p1

    invoke-direct/range {v2 .. v13}, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;-><init>(Ljava/lang/String;Landroidx/camera/camera2/pipe/compat/ClosedReason;Ljava/lang/Integer;Landroidx/camera/camera2/pipe/core/DurationNs;Ljava/lang/Throwable;Landroidx/camera/camera2/pipe/core/DurationNs;Landroidx/camera/camera2/pipe/core/DurationNs;Landroidx/camera/camera2/pipe/core/DurationNs;Landroidx/camera/camera2/pipe/CameraError;ILjh2;)V

    invoke-direct {p0, v2}, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->emitState(Landroidx/camera/camera2/pipe/compat/CameraState;)V

    :cond_6
    sget-object p0, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1

    throw p0
.end method

.method public final getCameraId-Dz_R5H8()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->cameraId:Ljava/lang/String;

    return-object p0
.end method

.method public final getGraphListener()Landroidx/camera/camera2/pipe/graph/GraphListener;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->graphListener:Landroidx/camera/camera2/pipe/graph/GraphListener;

    return-object p0
.end method

.method public final getScope()Ly22;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->scope:Ly22;

    return-object p0
.end method

.method public getState()Lhd3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lhd3<",
            "Landroidx/camera/camera2/pipe/compat/CameraState;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->_states:Lhd3;

    return-object p0
.end method

.method public getValue()Landroidx/camera/camera2/pipe/compat/CameraState;
    .locals 1

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->_lastState:Landroidx/camera/camera2/pipe/compat/CameraState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VirtualCamera-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->debugId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
