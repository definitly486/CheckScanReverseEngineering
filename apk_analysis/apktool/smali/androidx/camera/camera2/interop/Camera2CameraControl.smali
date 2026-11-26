.class public final Landroidx/camera/camera2/interop/Camera2CameraControl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/impl/UseCaseCameraControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/interop/Camera2CameraControl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/interop/Camera2CameraControl$Companion;


# instance fields
.field private _useCaseCameraRequestControl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

.field private final compat:Landroidx/camera/camera2/compat/Camera2CameraControlCompat;

.field private final requestListener:Landroidx/camera/camera2/impl/ComboRequestListener;

.field private final threads:Landroidx/camera/camera2/impl/UseCaseThreads;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/interop/Camera2CameraControl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/interop/Camera2CameraControl$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/camera/camera2/interop/Camera2CameraControl;->Companion:Landroidx/camera/camera2/interop/Camera2CameraControl$Companion;

    return-void
.end method

.method private constructor <init>(Landroidx/camera/camera2/compat/Camera2CameraControlCompat;Landroidx/camera/camera2/impl/UseCaseThreads;Landroidx/camera/camera2/impl/ComboRequestListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/interop/Camera2CameraControl;->compat:Landroidx/camera/camera2/compat/Camera2CameraControlCompat;

    iput-object p2, p0, Landroidx/camera/camera2/interop/Camera2CameraControl;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    iput-object p3, p0, Landroidx/camera/camera2/interop/Camera2CameraControl;->requestListener:Landroidx/camera/camera2/impl/ComboRequestListener;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/camera/camera2/compat/Camera2CameraControlCompat;Landroidx/camera/camera2/impl/UseCaseThreads;Landroidx/camera/camera2/impl/ComboRequestListener;Ljh2;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/camera2/interop/Camera2CameraControl;-><init>(Landroidx/camera/camera2/compat/Camera2CameraControlCompat;Landroidx/camera/camera2/impl/UseCaseThreads;Landroidx/camera/camera2/impl/ComboRequestListener;)V

    return-void
.end method

.method public static final create(Landroidx/camera/camera2/compat/Camera2CameraControlCompat;Landroidx/camera/camera2/impl/UseCaseThreads;Landroidx/camera/camera2/impl/ComboRequestListener;)Landroidx/camera/camera2/interop/Camera2CameraControl;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/interop/Camera2CameraControl;->Companion:Landroidx/camera/camera2/interop/Camera2CameraControl$Companion;

    invoke-virtual {v0, p0, p1, p2}, Landroidx/camera/camera2/interop/Camera2CameraControl$Companion;->create(Landroidx/camera/camera2/compat/Camera2CameraControlCompat;Landroidx/camera/camera2/impl/UseCaseThreads;Landroidx/camera/camera2/impl/ComboRequestListener;)Landroidx/camera/camera2/interop/Camera2CameraControl;

    move-result-object p0

    return-object p0
.end method

.method public static final from(Landroidx/camera/core/CameraControl;)Landroidx/camera/camera2/interop/Camera2CameraControl;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/interop/Camera2CameraControl;->Companion:Landroidx/camera/camera2/interop/Camera2CameraControl$Companion;

    invoke-virtual {v0, p0}, Landroidx/camera/camera2/interop/Camera2CameraControl$Companion;->from(Landroidx/camera/core/CameraControl;)Landroidx/camera/camera2/interop/Camera2CameraControl;

    move-result-object p0

    return-object p0
.end method

.method private final updateAsync(Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/camera/camera2/interop/Camera2CameraControl;->compat:Landroidx/camera/camera2/compat/Camera2CameraControlCompat;

    invoke-virtual {p0}, Landroidx/camera/camera2/interop/Camera2CameraControl;->getRequestControl()Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    move-result-object p0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, p0, v3, v1, v2}, Landroidx/camera/camera2/compat/Camera2CameraControlCompat;->applyAsync$default(Landroidx/camera/camera2/compat/Camera2CameraControlCompat;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;ZILjava/lang/Object;)Lmk2;

    move-result-object p0

    invoke-static {p0, p1}, Landroidx/camera/camera2/adapter/CoroutineAdaptersKt;->asListenableFuture(Lmk2;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    invoke-static {p0}, Landroidx/camera/core/impl/utils/futures/Futures;->nonCancellationPropagating(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method


# virtual methods
.method public final addCaptureRequestOptions(Landroidx/camera/camera2/interop/CaptureRequestOptions;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/interop/CaptureRequestOptions;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/camera2/interop/Camera2CameraControl;->compat:Landroidx/camera/camera2/compat/Camera2CameraControlCompat;

    invoke-interface {v0, p1}, Landroidx/camera/camera2/compat/Camera2CameraControlCompat;->addRequestOption(Landroidx/camera/camera2/interop/CaptureRequestOptions;)V

    const-string p1, "addCaptureRequestOptions"

    invoke-direct {p0, p1}, Landroidx/camera/camera2/interop/Camera2CameraControl;->updateAsync(Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public final clearCaptureRequestOptions()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/camera/camera2/interop/Camera2CameraControl;->compat:Landroidx/camera/camera2/compat/Camera2CameraControlCompat;

    invoke-interface {v0}, Landroidx/camera/camera2/compat/Camera2CameraControlCompat;->clearRequestOption()V

    const-string v0, "clearCaptureRequestOptions"

    invoke-direct {p0, v0}, Landroidx/camera/camera2/interop/Camera2CameraControl;->updateAsync(Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public final getCaptureRequestOptions()Landroidx/camera/camera2/interop/CaptureRequestOptions;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/interop/Camera2CameraControl;->compat:Landroidx/camera/camera2/compat/Camera2CameraControlCompat;

    invoke-interface {p0}, Landroidx/camera/camera2/compat/Camera2CameraControlCompat;->getRequestOption()Landroidx/camera/camera2/interop/CaptureRequestOptions;

    move-result-object p0

    return-object p0
.end method

.method public getRequestControl()Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/interop/Camera2CameraControl;->_useCaseCameraRequestControl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    return-object p0
.end method

.method public final getRequestListener$camera_camera2()Landroidx/camera/camera2/impl/ComboRequestListener;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/interop/Camera2CameraControl;->requestListener:Landroidx/camera/camera2/impl/ComboRequestListener;

    return-object p0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Landroidx/camera/camera2/interop/Camera2CameraControl;->compat:Landroidx/camera/camera2/compat/Camera2CameraControlCompat;

    invoke-interface {v0}, Landroidx/camera/camera2/compat/Camera2CameraControlCompat;->cancelCurrentTask()V

    iget-object v0, p0, Landroidx/camera/camera2/interop/Camera2CameraControl;->requestListener:Landroidx/camera/camera2/impl/ComboRequestListener;

    iget-object p0, p0, Landroidx/camera/camera2/interop/Camera2CameraControl;->compat:Landroidx/camera/camera2/compat/Camera2CameraControlCompat;

    invoke-virtual {v0, p0}, Landroidx/camera/camera2/impl/ComboRequestListener;->removeListener(Landroidx/camera/camera2/pipe/Request$Listener;)V

    return-void
.end method

.method public final setCaptureRequestOptions(Landroidx/camera/camera2/interop/CaptureRequestOptions;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/interop/CaptureRequestOptions;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/camera2/interop/Camera2CameraControl;->compat:Landroidx/camera/camera2/compat/Camera2CameraControlCompat;

    invoke-interface {v0}, Landroidx/camera/camera2/compat/Camera2CameraControlCompat;->clearRequestOption()V

    iget-object v0, p0, Landroidx/camera/camera2/interop/Camera2CameraControl;->compat:Landroidx/camera/camera2/compat/Camera2CameraControlCompat;

    invoke-interface {v0, p1}, Landroidx/camera/camera2/compat/Camera2CameraControlCompat;->addRequestOption(Landroidx/camera/camera2/interop/CaptureRequestOptions;)V

    const-string p1, "setCaptureRequestOptions"

    invoke-direct {p0, p1}, Landroidx/camera/camera2/interop/Camera2CameraControl;->updateAsync(Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public setRequestControl(Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;)V
    .locals 3

    iput-object p1, p0, Landroidx/camera/camera2/interop/Camera2CameraControl;->_useCaseCameraRequestControl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/camera/camera2/interop/Camera2CameraControl;->requestListener:Landroidx/camera/camera2/impl/ComboRequestListener;

    iget-object v1, p0, Landroidx/camera/camera2/interop/Camera2CameraControl;->compat:Landroidx/camera/camera2/compat/Camera2CameraControlCompat;

    invoke-virtual {v0, v1}, Landroidx/camera/camera2/impl/ComboRequestListener;->removeListener(Landroidx/camera/camera2/pipe/Request$Listener;)V

    iget-object v0, p0, Landroidx/camera/camera2/interop/Camera2CameraControl;->requestListener:Landroidx/camera/camera2/impl/ComboRequestListener;

    iget-object v1, p0, Landroidx/camera/camera2/interop/Camera2CameraControl;->compat:Landroidx/camera/camera2/compat/Camera2CameraControlCompat;

    iget-object v2, p0, Landroidx/camera/camera2/interop/Camera2CameraControl;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    invoke-virtual {v2}, Landroidx/camera/camera2/impl/UseCaseThreads;->getSequentialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/camera/camera2/impl/ComboRequestListener;->addListener(Landroidx/camera/camera2/pipe/Request$Listener;Ljava/util/concurrent/Executor;)V

    iget-object p0, p0, Landroidx/camera/camera2/interop/Camera2CameraControl;->compat:Landroidx/camera/camera2/compat/Camera2CameraControlCompat;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroidx/camera/camera2/compat/Camera2CameraControlCompat;->applyAsync(Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;Z)Lmk2;

    :cond_0
    return-void
.end method
