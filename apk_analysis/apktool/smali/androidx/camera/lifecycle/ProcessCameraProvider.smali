.class public final Landroidx/camera/lifecycle/ProcessCameraProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/CameraProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/lifecycle/ProcessCameraProvider$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/lifecycle/ProcessCameraProvider$Companion;

.field private static final sAppInstance:Landroidx/camera/lifecycle/ProcessCameraProvider;


# instance fields
.field private final lifecycleCameraProvider:Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/lifecycle/ProcessCameraProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/lifecycle/ProcessCameraProvider$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/camera/lifecycle/ProcessCameraProvider;->Companion:Landroidx/camera/lifecycle/ProcessCameraProvider$Companion;

    new-instance v0, Landroidx/camera/lifecycle/ProcessCameraProvider;

    new-instance v1, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;

    invoke-direct {v1}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;-><init>()V

    invoke-direct {v0, v1}, Landroidx/camera/lifecycle/ProcessCameraProvider;-><init>(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;)V

    sput-object v0, Landroidx/camera/lifecycle/ProcessCameraProvider;->sAppInstance:Landroidx/camera/lifecycle/ProcessCameraProvider;

    return-void
.end method

.method private constructor <init>(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/lifecycle/ProcessCameraProvider;->lifecycleCameraProvider:Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;

    return-void
.end method

.method public static final synthetic access$configure(Landroidx/camera/lifecycle/ProcessCameraProvider;Landroidx/camera/core/CameraXConfig;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/camera/lifecycle/ProcessCameraProvider;->configure(Landroidx/camera/core/CameraXConfig;)V

    return-void
.end method

.method public static final synthetic access$getSAppInstance$cp()Landroidx/camera/lifecycle/ProcessCameraProvider;
    .locals 1

    sget-object v0, Landroidx/camera/lifecycle/ProcessCameraProvider;->sAppInstance:Landroidx/camera/lifecycle/ProcessCameraProvider;

    return-object v0
.end method

.method public static final synthetic access$initAsync(Landroidx/camera/lifecycle/ProcessCameraProvider;Landroid/content/Context;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    invoke-direct {p0, p1}, Landroidx/camera/lifecycle/ProcessCameraProvider;->initAsync(Landroid/content/Context;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static final clearConfiguration-LRDsOJo(J)V
    .locals 1

    sget-object v0, Landroidx/camera/lifecycle/ProcessCameraProvider;->Companion:Landroidx/camera/lifecycle/ProcessCameraProvider$Companion;

    invoke-virtual {v0, p0, p1}, Landroidx/camera/lifecycle/ProcessCameraProvider$Companion;->clearConfiguration-LRDsOJo(J)V

    return-void
.end method

.method private final configure(Landroidx/camera/core/CameraXConfig;)V
    .locals 0

    iget-object p0, p0, Landroidx/camera/lifecycle/ProcessCameraProvider;->lifecycleCameraProvider:Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;

    invoke-virtual {p0, p1}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->configure$camera_lifecycle(Landroidx/camera/core/CameraXConfig;)V

    return-void
.end method

.method public static final configureInstance(Landroidx/camera/core/CameraXConfig;)V
    .locals 1

    sget-object v0, Landroidx/camera/lifecycle/ProcessCameraProvider;->Companion:Landroidx/camera/lifecycle/ProcessCameraProvider$Companion;

    invoke-virtual {v0, p0}, Landroidx/camera/lifecycle/ProcessCameraProvider$Companion;->configureInstance(Landroidx/camera/core/CameraXConfig;)V

    return-void
.end method

.method public static final getInstance(Landroid/content/Context;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/camera/lifecycle/ProcessCameraProvider;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroidx/camera/lifecycle/ProcessCameraProvider;->Companion:Landroidx/camera/lifecycle/ProcessCameraProvider$Companion;

    invoke-virtual {v0, p0}, Landroidx/camera/lifecycle/ProcessCameraProvider$Companion;->getInstance(Landroid/content/Context;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method private final initAsync(Landroid/content/Context;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/lifecycle/ProcessCameraProvider;->lifecycleCameraProvider:Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->initAsync$camera_lifecycle(Landroid/content/Context;Landroidx/camera/core/CameraXConfig;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static final shutdown()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroidx/camera/lifecycle/ProcessCameraProvider;->Companion:Landroidx/camera/lifecycle/ProcessCameraProvider$Companion;

    invoke-virtual {v0}, Landroidx/camera/lifecycle/ProcessCameraProvider$Companion;->shutdown()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addCameraPresenceListener(Ljava/util/concurrent/Executor;Landroidx/camera/core/CameraPresenceListener;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/camera/lifecycle/ProcessCameraProvider;->lifecycleCameraProvider:Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->addCameraPresenceListener(Ljava/util/concurrent/Executor;Landroidx/camera/core/CameraPresenceListener;)V

    return-void
.end method

.method public final bindToLifecycle(Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/SessionConfig;)Landroidx/camera/core/Camera;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    iget-object p0, p0, Landroidx/camera/lifecycle/ProcessCameraProvider;->lifecycleCameraProvider:Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->bindToLifecycle(Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/SessionConfig;)Landroidx/camera/core/Camera;

    move-result-object p0

    return-object p0
.end method

.method public final bindToLifecycle(Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/UseCaseGroup;)Landroidx/camera/core/Camera;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    iget-object p0, p0, Landroidx/camera/lifecycle/ProcessCameraProvider;->lifecycleCameraProvider:Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->bindToLifecycle(Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/UseCaseGroup;)Landroidx/camera/core/Camera;

    move-result-object p0

    return-object p0
.end method

.method public final varargs bindToLifecycle(Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/CameraSelector;[Landroidx/camera/core/UseCase;)Landroidx/camera/core/Camera;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/camera/lifecycle/ProcessCameraProvider;->lifecycleCameraProvider:Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;

    array-length v0, p3

    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Landroidx/camera/core/UseCase;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->bindToLifecycle(Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/CameraSelector;[Landroidx/camera/core/UseCase;)Landroidx/camera/core/Camera;

    move-result-object p0

    return-object p0
.end method

.method public final bindToLifecycle(Ljava/util/List;)Landroidx/camera/core/ConcurrentCamera;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;",
            ">;)",
            "Landroidx/camera/core/ConcurrentCamera;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    iget-object p0, p0, Landroidx/camera/lifecycle/ProcessCameraProvider;->lifecycleCameraProvider:Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;

    invoke-virtual {p0, p1}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->bindToLifecycle(Ljava/util/List;)Landroidx/camera/core/ConcurrentCamera;

    move-result-object p0

    return-object p0
.end method

.method public getAvailableCameraInfos()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/core/CameraInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/lifecycle/ProcessCameraProvider;->lifecycleCameraProvider:Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;

    invoke-virtual {p0}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->getAvailableCameraInfos()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getAvailableConcurrentCameraInfos()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Landroidx/camera/core/CameraInfo;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/lifecycle/ProcessCameraProvider;->lifecycleCameraProvider:Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;

    invoke-virtual {p0}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->getAvailableConcurrentCameraInfos()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getCameraInfo(Landroidx/camera/core/CameraSelector;)Landroidx/camera/core/CameraInfo;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    iget-object p0, p0, Landroidx/camera/lifecycle/ProcessCameraProvider;->lifecycleCameraProvider:Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;

    invoke-virtual {p0, p1}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->getCameraInfo(Landroidx/camera/core/CameraSelector;)Landroidx/camera/core/CameraInfo;

    move-result-object p0

    return-object p0
.end method

.method public getCameraInfo(Landroidx/camera/core/CameraSelector;Landroidx/camera/core/SessionConfig;)Landroidx/camera/core/CameraInfo;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/camera/lifecycle/ProcessCameraProvider;->lifecycleCameraProvider:Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->getCameraInfo(Landroidx/camera/core/CameraSelector;Landroidx/camera/core/SessionConfig;)Landroidx/camera/core/CameraInfo;

    move-result-object p0

    return-object p0
.end method

.method public hasCamera(Landroidx/camera/core/CameraSelector;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/camera/lifecycle/ProcessCameraProvider;->lifecycleCameraProvider:Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;

    invoke-virtual {p0, p1}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->hasCamera(Landroidx/camera/core/CameraSelector;)Z

    move-result p0

    return p0
.end method

.method public final isBound(Landroidx/camera/core/SessionConfig;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    iget-object p0, p0, Landroidx/camera/lifecycle/ProcessCameraProvider;->lifecycleCameraProvider:Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;

    invoke-virtual {p0, p1}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->isBound(Landroidx/camera/core/SessionConfig;)Z

    move-result p0

    return p0
.end method

.method public final isBound(Landroidx/camera/core/UseCase;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/camera/lifecycle/ProcessCameraProvider;->lifecycleCameraProvider:Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;

    invoke-virtual {p0, p1}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->isBound(Landroidx/camera/core/UseCase;)Z

    move-result p0

    return p0
.end method

.method public isConcurrentCameraModeOn()Z
    .locals 0

    iget-object p0, p0, Landroidx/camera/lifecycle/ProcessCameraProvider;->lifecycleCameraProvider:Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;

    invoke-virtual {p0}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->isConcurrentCameraModeOn()Z

    move-result p0

    return p0
.end method

.method public removeCameraPresenceListener(Landroidx/camera/core/CameraPresenceListener;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/camera/lifecycle/ProcessCameraProvider;->lifecycleCameraProvider:Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;

    invoke-virtual {p0, p1}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->removeCameraPresenceListener(Landroidx/camera/core/CameraPresenceListener;)V

    return-void
.end method

.method public final shutdownAsync()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/lifecycle/ProcessCameraProvider;->lifecycleCameraProvider:Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->shutdownAsync$camera_lifecycle$default(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;ZILjava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public final unbind(Landroidx/camera/core/SessionConfig;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    iget-object p0, p0, Landroidx/camera/lifecycle/ProcessCameraProvider;->lifecycleCameraProvider:Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;

    invoke-virtual {p0, p1}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->unbind(Landroidx/camera/core/SessionConfig;)V

    return-void
.end method

.method public final varargs unbind([Landroidx/camera/core/UseCase;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/camera/lifecycle/ProcessCameraProvider;->lifecycleCameraProvider:Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/camera/core/UseCase;

    invoke-virtual {p0, p1}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->unbind([Landroidx/camera/core/UseCase;)V

    return-void
.end method

.method public final unbindAll()V
    .locals 0

    iget-object p0, p0, Landroidx/camera/lifecycle/ProcessCameraProvider;->lifecycleCameraProvider:Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;

    invoke-virtual {p0}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->unbindAll()V

    return-void
.end method
