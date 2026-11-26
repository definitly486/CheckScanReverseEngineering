.class public final Landroidx/camera/camera2/impl/MeteringRepeating;
.super Landroidx/camera/core/UseCase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/impl/MeteringRepeating$Builder;,
        Landroidx/camera/camera2/impl/MeteringRepeating$MeteringRepeatingConfig;
    }
.end annotation


# instance fields
.field private final cameraProperties:Landroidx/camera/camera2/impl/CameraProperties;

.field private closeableErrorListener:Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;

.field private deferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

.field private final deferrableSurfaceLock:Ljava/lang/Object;

.field private final displayInfoManager:Landroidx/camera/camera2/impl/DisplayInfoManager;

.field private final meteringSurfaceSize:Landroid/util/Size;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/impl/CameraProperties;Landroidx/camera/camera2/impl/MeteringRepeating$MeteringRepeatingConfig;Landroidx/camera/camera2/impl/DisplayInfoManager;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p2}, Landroidx/camera/core/UseCase;-><init>(Landroidx/camera/core/impl/UseCaseConfig;)V

    iput-object p1, p0, Landroidx/camera/camera2/impl/MeteringRepeating;->cameraProperties:Landroidx/camera/camera2/impl/CameraProperties;

    iput-object p3, p0, Landroidx/camera/camera2/impl/MeteringRepeating;->displayInfoManager:Landroidx/camera/camera2/impl/DisplayInfoManager;

    invoke-static {p1, p3}, Landroidx/camera/camera2/impl/MeteringRepeatingKt;->getProperPreviewSize(Landroidx/camera/camera2/impl/CameraProperties;Landroidx/camera/camera2/impl/DisplayInfoManager;)Landroid/util/Size;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/impl/MeteringRepeating;->meteringSurfaceSize:Landroid/util/Size;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/impl/MeteringRepeating;->deferrableSurfaceLock:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic a(Landroidx/camera/camera2/impl/MeteringRepeating;Landroid/util/Size;Landroidx/camera/core/impl/SessionConfig;Landroidx/camera/core/impl/SessionConfig$SessionError;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/camera/camera2/impl/MeteringRepeating;->createPipeline$lambda$1(Landroidx/camera/camera2/impl/MeteringRepeating;Landroid/util/Size;Landroidx/camera/core/impl/SessionConfig;Landroidx/camera/core/impl/SessionConfig$SessionError;)V

    return-void
.end method

.method public static synthetic b(Landroid/view/Surface;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/camera/camera2/impl/MeteringRepeating;->createAndManageDeferrableSurface$lambda$1(Landroid/view/Surface;Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method private final createAndManageDeferrableSurface(Landroid/util/Size;)Landroidx/camera/core/impl/DeferrableSurface;
    .locals 4

    new-instance v0, Landroid/graphics/SurfaceTexture;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iget-object v2, p0, Landroidx/camera/camera2/impl/MeteringRepeating;->deferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroidx/camera/core/impl/DeferrableSurface;->close()V

    :cond_0
    new-instance v2, Landroidx/camera/core/impl/ImmediateSurface;

    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getImageFormat()I

    move-result v3

    invoke-direct {v2, v1, p1, v3}, Landroidx/camera/core/impl/ImmediateSurface;-><init>(Landroid/view/Surface;Landroid/util/Size;I)V

    iput-object v2, p0, Landroidx/camera/camera2/impl/MeteringRepeating;->deferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    invoke-virtual {v2}, Landroidx/camera/core/impl/DeferrableSurface;->getTerminationFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    new-instance p1, Lku;

    const/4 v3, 0x2

    invoke-direct {p1, v3, v1, v0}, Lku;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v2
.end method

.method private static final createAndManageDeferrableSurface$lambda$1(Landroid/view/Surface;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/Surface;->release()V

    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    return-void
.end method

.method private final createPipeline(Landroid/util/Size;)Landroidx/camera/core/impl/SessionConfig$Builder;
    .locals 3

    iget-object v0, p0, Landroidx/camera/camera2/impl/MeteringRepeating;->deferrableSurfaceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Landroidx/camera/camera2/impl/MeteringRepeating;->createAndManageDeferrableSurface(Landroid/util/Size;)Landroidx/camera/core/impl/DeferrableSurface;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    iget-object v0, p0, Landroidx/camera/camera2/impl/MeteringRepeating;->closeableErrorListener:Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;->close()V

    :cond_0
    new-instance v0, Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;

    new-instance v2, Lqa5;

    invoke-direct {v2, p0, p1}, Lqa5;-><init>(Landroidx/camera/camera2/impl/MeteringRepeating;Landroid/util/Size;)V

    invoke-direct {v0, v2}, Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;-><init>(Landroidx/camera/core/impl/SessionConfig$ErrorListener;)V

    iput-object v0, p0, Landroidx/camera/camera2/impl/MeteringRepeating;->closeableErrorListener:Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;

    new-instance p0, Landroidx/camera/camera2/impl/MeteringRepeating$MeteringRepeatingConfig;

    invoke-direct {p0}, Landroidx/camera/camera2/impl/MeteringRepeating$MeteringRepeatingConfig;-><init>()V

    invoke-static {p0, p1}, Landroidx/camera/core/impl/SessionConfig$Builder;->createFrom(Landroidx/camera/core/impl/UseCaseConfig;Landroid/util/Size;)Landroidx/camera/core/impl/SessionConfig$Builder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/camera/core/impl/SessionConfig$Builder;->setTemplateType(I)Landroidx/camera/core/impl/SessionConfig$Builder;

    invoke-virtual {p0, v1}, Landroidx/camera/core/impl/SessionConfig$Builder;->addSurface(Landroidx/camera/core/impl/DeferrableSurface;)Landroidx/camera/core/impl/SessionConfig$Builder;

    invoke-virtual {p0, v0}, Landroidx/camera/core/impl/SessionConfig$Builder;->setErrorListener(Landroidx/camera/core/impl/SessionConfig$ErrorListener;)Landroidx/camera/core/impl/SessionConfig$Builder;

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static final createPipeline$lambda$1(Landroidx/camera/camera2/impl/MeteringRepeating;Landroid/util/Size;Landroidx/camera/core/impl/SessionConfig;Landroidx/camera/core/impl/SessionConfig$SessionError;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Landroidx/camera/camera2/impl/MeteringRepeating;->createPipeline(Landroid/util/Size;)Landroidx/camera/core/impl/SessionConfig$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/camera/core/impl/SessionConfig$Builder;->build()Landroidx/camera/core/impl/SessionConfig;

    move-result-object p1

    invoke-static {p1}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/camera/core/UseCase;->updateSessionConfig(Ljava/util/List;)V

    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->notifyReset()V

    return-void
.end method


# virtual methods
.method public getDefaultConfig(ZLandroidx/camera/core/impl/UseCaseConfigFactory;)Landroidx/camera/camera2/impl/MeteringRepeating$MeteringRepeatingConfig;
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroidx/camera/camera2/impl/MeteringRepeating$Builder;

    iget-object p2, p0, Landroidx/camera/camera2/impl/MeteringRepeating;->cameraProperties:Landroidx/camera/camera2/impl/CameraProperties;

    iget-object p0, p0, Landroidx/camera/camera2/impl/MeteringRepeating;->displayInfoManager:Landroidx/camera/camera2/impl/DisplayInfoManager;

    invoke-direct {p1, p2, p0}, Landroidx/camera/camera2/impl/MeteringRepeating$Builder;-><init>(Landroidx/camera/camera2/impl/CameraProperties;Landroidx/camera/camera2/impl/DisplayInfoManager;)V

    invoke-virtual {p1}, Landroidx/camera/camera2/impl/MeteringRepeating$Builder;->getUseCaseConfig()Landroidx/camera/camera2/impl/MeteringRepeating$MeteringRepeatingConfig;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultConfig(ZLandroidx/camera/core/impl/UseCaseConfigFactory;)Landroidx/camera/core/impl/UseCaseConfig;
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/impl/MeteringRepeating;->getDefaultConfig(ZLandroidx/camera/core/impl/UseCaseConfigFactory;)Landroidx/camera/camera2/impl/MeteringRepeating$MeteringRepeatingConfig;

    move-result-object p0

    return-object p0
.end method

.method public getUseCaseConfigBuilder(Landroidx/camera/core/impl/Config;)Landroidx/camera/camera2/impl/MeteringRepeating$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroidx/camera/camera2/impl/MeteringRepeating$Builder;

    iget-object v0, p0, Landroidx/camera/camera2/impl/MeteringRepeating;->cameraProperties:Landroidx/camera/camera2/impl/CameraProperties;

    iget-object p0, p0, Landroidx/camera/camera2/impl/MeteringRepeating;->displayInfoManager:Landroidx/camera/camera2/impl/DisplayInfoManager;

    invoke-direct {p1, v0, p0}, Landroidx/camera/camera2/impl/MeteringRepeating$Builder;-><init>(Landroidx/camera/camera2/impl/CameraProperties;Landroidx/camera/camera2/impl/DisplayInfoManager;)V

    return-object p1
.end method

.method public bridge synthetic getUseCaseConfigBuilder(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/UseCaseConfig$Builder;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/impl/MeteringRepeating;->getUseCaseConfigBuilder(Landroidx/camera/core/impl/Config;)Landroidx/camera/camera2/impl/MeteringRepeating$Builder;

    move-result-object p0

    return-object p0
.end method

.method public onSuggestedStreamSpecUpdated(Landroidx/camera/core/impl/StreamSpec;Landroidx/camera/core/impl/StreamSpec;)Landroidx/camera/core/impl/StreamSpec;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p0, Landroidx/camera/camera2/impl/MeteringRepeating;->meteringSurfaceSize:Landroid/util/Size;

    invoke-direct {p0, p2}, Landroidx/camera/camera2/impl/MeteringRepeating;->createPipeline(Landroid/util/Size;)Landroidx/camera/core/impl/SessionConfig$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/camera/core/impl/SessionConfig$Builder;->build()Landroidx/camera/core/impl/SessionConfig;

    move-result-object p2

    invoke-static {p2}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/camera/core/UseCase;->updateSessionConfig(Ljava/util/List;)V

    invoke-virtual {p1}, Landroidx/camera/core/impl/StreamSpec;->toBuilder()Landroidx/camera/core/impl/StreamSpec$Builder;

    move-result-object p1

    iget-object p0, p0, Landroidx/camera/camera2/impl/MeteringRepeating;->meteringSurfaceSize:Landroid/util/Size;

    invoke-virtual {p1, p0}, Landroidx/camera/core/impl/StreamSpec$Builder;->setResolution(Landroid/util/Size;)Landroidx/camera/core/impl/StreamSpec$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/camera/core/impl/StreamSpec$Builder;->build()Landroidx/camera/core/impl/StreamSpec;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public onUnbind()V
    .locals 3

    iget-object v0, p0, Landroidx/camera/camera2/impl/MeteringRepeating;->closeableErrorListener:Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;->close()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/camera/camera2/impl/MeteringRepeating;->closeableErrorListener:Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;

    iget-object v1, p0, Landroidx/camera/camera2/impl/MeteringRepeating;->deferrableSurfaceLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroidx/camera/camera2/impl/MeteringRepeating;->deferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroidx/camera/core/impl/DeferrableSurface;->close()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    iput-object v0, p0, Landroidx/camera/camera2/impl/MeteringRepeating;->deferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1

    throw p0
.end method

.method public final setupSession()V
    .locals 2

    invoke-static {}, Landroidx/camera/camera2/impl/MeteringRepeatingKt;->access$getDEFAULT_PREVIEW_SIZE$p()Landroid/util/Size;

    move-result-object v0

    invoke-static {v0}, Landroidx/camera/core/impl/StreamSpec;->builder(Landroid/util/Size;)Landroidx/camera/core/impl/StreamSpec$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/core/impl/StreamSpec$Builder;->build()Landroidx/camera/core/impl/StreamSpec;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/camera/core/UseCase;->updateSuggestedStreamSpec(Landroidx/camera/core/impl/StreamSpec;Landroidx/camera/core/impl/StreamSpec;)V

    return-void
.end method
