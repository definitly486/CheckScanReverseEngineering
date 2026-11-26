.class public final Landroidx/camera/camera2/compat/Camera2CameraControlCompatImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/compat/Camera2CameraControlCompat;


# annotations
.annotation runtime Landroidx/camera/camera2/config/CameraScope;
.end annotation


# instance fields
.field private configBuilder:Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

.field private final lock:Ljava/lang/Object;

.field private pendingSignal:Lxp1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxp1<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private updateSignal:Lxp1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxp1<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final updateSignalLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/camera/camera2/compat/Camera2CameraControlCompatImpl;->lock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/camera/camera2/compat/Camera2CameraControlCompatImpl;->updateSignalLock:Ljava/lang/Object;

    new-instance v0, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    invoke-direct {v0}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;-><init>()V

    iput-object v0, p0, Landroidx/camera/camera2/compat/Camera2CameraControlCompatImpl;->configBuilder:Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    return-void
.end method

.method private final cancelSignal(Lxp1;Ljava/lang/String;)Lxp1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxp1<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lxp1<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance p0, Landroidx/camera/core/CameraControl$OperationCanceledException;

    invoke-direct {p0, p2}, Landroidx/camera/core/CameraControl$OperationCanceledException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lxp1;->e(Ljava/lang/Throwable;)Z

    return-object p1
.end method

.method public static synthetic cancelSignal$default(Landroidx/camera/camera2/compat/Camera2CameraControlCompatImpl;Lxp1;Ljava/lang/String;ILjava/lang/Object;)Lxp1;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const-string p2, "Camera2CameraControl was updated with new options."

    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/compat/Camera2CameraControlCompatImpl;->cancelSignal(Lxp1;Ljava/lang/String;)Lxp1;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addRequestOption(Landroidx/camera/camera2/interop/CaptureRequestOptions;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/camera2/compat/Camera2CameraControlCompatImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-interface {p1}, Landroidx/camera/core/impl/ReadableConfig;->listOptions()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/core/impl/Config$Option;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Landroidx/camera/camera2/compat/Camera2CameraControlCompatImpl;->configBuilder:Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    invoke-virtual {v3}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->getMutableConfig()Landroidx/camera/core/impl/MutableConfig;

    move-result-object v3

    sget-object v4, Landroidx/camera/core/impl/Config$OptionPriority;->ALWAYS_OVERRIDE:Landroidx/camera/core/impl/Config$OptionPriority;

    invoke-interface {p1, v2}, Landroidx/camera/core/impl/ReadableConfig;->retrieveOption(Landroidx/camera/core/impl/Config$Option;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v2, v4, v5}, Landroidx/camera/core/impl/MutableConfig;->insertOption(Landroidx/camera/core/impl/Config$Option;Landroidx/camera/core/impl/Config$OptionPriority;Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public applyAsync(Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;Z)Lmk2;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;",
            "Z)",
            "Lmk2<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lyp1;

    invoke-direct {v0}, Lyp1;-><init>()V

    iget-object v1, p0, Landroidx/camera/camera2/compat/Camera2CameraControlCompatImpl;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroidx/camera/camera2/compat/Camera2CameraControlCompatImpl;->configBuilder:Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    invoke-virtual {v2}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->build()Landroidx/camera/camera2/impl/Camera2ImplConfig;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v1

    iget-object v1, p0, Landroidx/camera/camera2/compat/Camera2CameraControlCompatImpl;->updateSignalLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_2

    iget-object v5, p0, Landroidx/camera/camera2/compat/Camera2CameraControlCompatImpl;->updateSignal:Lxp1;

    if-eqz p2, :cond_0

    if-eqz v5, :cond_1

    :try_start_1
    invoke-static {p0, v5, v3, v4, v3}, Landroidx/camera/camera2/compat/Camera2CameraControlCompatImpl;->cancelSignal$default(Landroidx/camera/camera2/compat/Camera2CameraControlCompatImpl;Lxp1;Ljava/lang/String;ILjava/lang/Object;)Lxp1;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    if-eqz v5, :cond_1

    invoke-static {v0, v5}, Landroidx/camera/camera2/adapter/CoroutineAdaptersKt;->propagateTo(Lmk2;Lxp1;)V

    :cond_1
    :goto_0
    iput-object v0, p0, Landroidx/camera/camera2/compat/Camera2CameraControlCompatImpl;->updateSignal:Lxp1;

    const-string p0, "Camera2CameraControl.tag"

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p0, p2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, v2, p0}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;->updateCamera2ConfigAsync(Landroidx/camera/core/impl/Config;Ljava/util/Map;)Lmk2;

    goto :goto_1

    :cond_2
    iget-object p1, p0, Landroidx/camera/camera2/compat/Camera2CameraControlCompatImpl;->pendingSignal:Lxp1;

    if-eqz p1, :cond_3

    invoke-static {p0, p1, v3, v4, v3}, Landroidx/camera/camera2/compat/Camera2CameraControlCompatImpl;->cancelSignal$default(Landroidx/camera/camera2/compat/Camera2CameraControlCompatImpl;Lxp1;Ljava/lang/String;ILjava/lang/Object;)Lxp1;

    :cond_3
    iput-object v0, p0, Landroidx/camera/camera2/compat/Camera2CameraControlCompatImpl;->pendingSignal:Lxp1;

    sget-object p0, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit v1

    return-object v0

    :goto_2
    monitor-exit v1

    throw p0

    :catchall_1
    move-exception p0

    monitor-exit v1

    throw p0
.end method

.method public cancelCurrentTask()V
    .locals 4

    iget-object v0, p0, Landroidx/camera/camera2/compat/Camera2CameraControlCompatImpl;->updateSignalLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/compat/Camera2CameraControlCompatImpl;->updateSignal:Lxp1;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iput-object v2, p0, Landroidx/camera/camera2/compat/Camera2CameraControlCompatImpl;->updateSignal:Lxp1;

    const-string v3, "The camera control has became inactive."

    invoke-direct {p0, v1, v3}, Landroidx/camera/camera2/compat/Camera2CameraControlCompatImpl;->cancelSignal(Lxp1;Ljava/lang/String;)Lxp1;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Landroidx/camera/camera2/compat/Camera2CameraControlCompatImpl;->pendingSignal:Lxp1;

    if-eqz v1, :cond_1

    iput-object v2, p0, Landroidx/camera/camera2/compat/Camera2CameraControlCompatImpl;->pendingSignal:Lxp1;

    const-string v2, "The camera control has became inactive."

    invoke-direct {p0, v1, v2}, Landroidx/camera/camera2/compat/Camera2CameraControlCompatImpl;->cancelSignal(Lxp1;Ljava/lang/String;)Lxp1;

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

.method public clearRequestOption()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/compat/Camera2CameraControlCompatImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    invoke-direct {v1}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;-><init>()V

    iput-object v1, p0, Landroidx/camera/camera2/compat/Camera2CameraControlCompatImpl;->configBuilder:Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

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

.method public getRequestOption()Landroidx/camera/camera2/interop/CaptureRequestOptions;
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/compat/Camera2CameraControlCompatImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroidx/camera/camera2/interop/CaptureRequestOptions$Builder;->Companion:Landroidx/camera/camera2/interop/CaptureRequestOptions$Builder$Companion;

    iget-object p0, p0, Landroidx/camera/camera2/compat/Camera2CameraControlCompatImpl;->configBuilder:Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    invoke-virtual {p0}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->build()Landroidx/camera/camera2/impl/Camera2ImplConfig;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/camera/camera2/interop/CaptureRequestOptions$Builder$Companion;->from(Landroidx/camera/core/impl/Config;)Landroidx/camera/camera2/interop/CaptureRequestOptions$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/camera/camera2/interop/CaptureRequestOptions$Builder;->build()Landroidx/camera/camera2/interop/CaptureRequestOptions;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public onComplete-CcXjc1I(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameInfo;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p0, Landroidx/camera/camera2/compat/Camera2CameraControlCompatImpl;->updateSignalLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object p3, p0, Landroidx/camera/camera2/compat/Camera2CameraControlCompatImpl;->updateSignal:Lxp1;

    if-eqz p3, :cond_0

    const-string p4, "Camera2CameraControl.tag"

    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, p4, v0}, Landroidx/camera/camera2/impl/ComboRequestListenerKt;->containsTag(Landroidx/camera/camera2/pipe/RequestMetadata;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-interface {p3, p1}, Lxp1;->f(Ljava/lang/Object;)Z

    iput-object p1, p0, Landroidx/camera/camera2/compat/Camera2CameraControlCompatImpl;->updateSignal:Lxp1;

    iget-object p3, p0, Landroidx/camera/camera2/compat/Camera2CameraControlCompatImpl;->pendingSignal:Lxp1;

    if-eqz p3, :cond_0

    invoke-interface {p3, p1}, Lxp1;->f(Ljava/lang/Object;)Z

    iput-object p1, p0, Landroidx/camera/camera2/compat/Camera2CameraControlCompatImpl;->pendingSignal:Lxp1;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p2

    return-void

    :goto_1
    monitor-exit p2

    throw p0
.end method
