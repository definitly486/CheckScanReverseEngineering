.class public Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/processing/Node;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode$In;,
        Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode$Out;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/camera/core/processing/Node<",
        "Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode$In;",
        "Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode$Out;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DualSurfaceProcessorNode"


# instance fields
.field private final mDebugInfo:Ljava/lang/String;

.field private mInput:Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode$In;

.field private mOutput:Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode$Out;

.field final mPrimaryCameraInternal:Landroidx/camera/core/impl/CameraInternal;

.field final mSecondaryCameraInternal:Landroidx/camera/core/impl/CameraInternal;

.field final mSurfaceProcessor:Landroidx/camera/core/processing/SurfaceProcessorInternal;


# direct methods
.method public constructor <init>(Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/processing/SurfaceProcessorInternal;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode;->mPrimaryCameraInternal:Landroidx/camera/core/impl/CameraInternal;

    iput-object p2, p0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode;->mSecondaryCameraInternal:Landroidx/camera/core/impl/CameraInternal;

    iput-object p3, p0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode;->mSurfaceProcessor:Landroidx/camera/core/processing/SurfaceProcessorInternal;

    iput-object p4, p0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode;->mDebugInfo:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode;)V
    .locals 0

    invoke-direct {p0}, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode;->lambda$release$1()V

    return-void
.end method

.method public static synthetic b(Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode;Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/processing/SurfaceEdge;Landroidx/camera/core/processing/SurfaceEdge;Ljava/util/Map$Entry;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode;->lambda$sendSurfaceOutputs$0(Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/processing/SurfaceEdge;Landroidx/camera/core/processing/SurfaceEdge;Ljava/util/Map$Entry;)V

    return-void
.end method

.method private createAndSendSurfaceOutput(Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/processing/SurfaceEdge;Landroidx/camera/core/processing/SurfaceEdge;Ljava/util/Map$Entry;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/impl/CameraInternal;",
            "Landroidx/camera/core/impl/CameraInternal;",
            "Landroidx/camera/core/processing/SurfaceEdge;",
            "Landroidx/camera/core/processing/SurfaceEdge;",
            "Ljava/util/Map$Entry<",
            "Landroidx/camera/core/processing/concurrent/DualOutConfig;",
            "Landroidx/camera/core/processing/SurfaceEdge;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/processing/SurfaceEdge;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "     -> outputEdge = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DualSurfaceProcessorNode"

    invoke-static {v2, v1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroidx/camera/core/processing/SurfaceEdge;->getStreamSpec()Landroidx/camera/core/impl/StreamSpec;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/camera/core/impl/StreamSpec;->getResolution()Landroid/util/Size;

    move-result-object v1

    invoke-interface {p5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/core/processing/concurrent/DualOutConfig;

    invoke-virtual {v2}, Landroidx/camera/core/processing/concurrent/DualOutConfig;->getPrimaryOutConfig()Landroidx/camera/core/processing/util/OutConfig;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/camera/core/processing/util/OutConfig;->getCropRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p3}, Landroidx/camera/core/processing/SurfaceEdge;->hasCameraTransform()Z

    move-result p3

    const/4 v3, 0x0

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v3

    :goto_0
    invoke-interface {p5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/camera/core/processing/concurrent/DualOutConfig;

    invoke-virtual {p3}, Landroidx/camera/core/processing/concurrent/DualOutConfig;->getPrimaryOutConfig()Landroidx/camera/core/processing/util/OutConfig;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/camera/core/processing/util/OutConfig;->getRotationDegrees()I

    move-result p3

    invoke-interface {p5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/camera/core/processing/concurrent/DualOutConfig;

    invoke-virtual {v4}, Landroidx/camera/core/processing/concurrent/DualOutConfig;->getPrimaryOutConfig()Landroidx/camera/core/processing/util/OutConfig;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/camera/core/processing/util/OutConfig;->isMirroring()Z

    move-result v4

    invoke-static {v1, v2, p1, p3, v4}, Landroidx/camera/core/SurfaceOutput$CameraInputInfo;->of(Landroid/util/Size;Landroid/graphics/Rect;Landroidx/camera/core/impl/CameraInternal;IZ)Landroidx/camera/core/SurfaceOutput$CameraInputInfo;

    move-result-object p1

    invoke-virtual {p4}, Landroidx/camera/core/processing/SurfaceEdge;->getStreamSpec()Landroidx/camera/core/impl/StreamSpec;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/camera/core/impl/StreamSpec;->getResolution()Landroid/util/Size;

    move-result-object p3

    invoke-interface {p5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/processing/concurrent/DualOutConfig;

    invoke-virtual {v1}, Landroidx/camera/core/processing/concurrent/DualOutConfig;->getSecondaryOutConfig()Landroidx/camera/core/processing/util/OutConfig;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/camera/core/processing/util/OutConfig;->getCropRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p4}, Landroidx/camera/core/processing/SurfaceEdge;->hasCameraTransform()Z

    move-result p4

    if-eqz p4, :cond_1

    goto :goto_1

    :cond_1
    move-object p2, v3

    :goto_1
    invoke-interface {p5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroidx/camera/core/processing/concurrent/DualOutConfig;

    invoke-virtual {p4}, Landroidx/camera/core/processing/concurrent/DualOutConfig;->getSecondaryOutConfig()Landroidx/camera/core/processing/util/OutConfig;

    move-result-object p4

    invoke-virtual {p4}, Landroidx/camera/core/processing/util/OutConfig;->getRotationDegrees()I

    move-result p4

    invoke-interface {p5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/core/processing/concurrent/DualOutConfig;

    invoke-virtual {v2}, Landroidx/camera/core/processing/concurrent/DualOutConfig;->getSecondaryOutConfig()Landroidx/camera/core/processing/util/OutConfig;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/camera/core/processing/util/OutConfig;->isMirroring()Z

    move-result v2

    invoke-static {p3, v1, p2, p4, v2}, Landroidx/camera/core/SurfaceOutput$CameraInputInfo;->of(Landroid/util/Size;Landroid/graphics/Rect;Landroidx/camera/core/impl/CameraInternal;IZ)Landroidx/camera/core/SurfaceOutput$CameraInputInfo;

    move-result-object p2

    invoke-interface {p5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/camera/core/processing/concurrent/DualOutConfig;

    invoke-virtual {p3}, Landroidx/camera/core/processing/concurrent/DualOutConfig;->getPrimaryOutConfig()Landroidx/camera/core/processing/util/OutConfig;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/camera/core/processing/util/OutConfig;->getFormat()I

    move-result p3

    invoke-virtual {v0, p3, p1, p2}, Landroidx/camera/core/processing/SurfaceEdge;->createSurfaceOutputFuture(ILandroidx/camera/core/SurfaceOutput$CameraInputInfo;Landroidx/camera/core/SurfaceOutput$CameraInputInfo;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    new-instance p2, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode$1;

    invoke-direct {p2, p0, v0}, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode$1;-><init>(Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode;Landroidx/camera/core/processing/SurfaceEdge;)V

    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->mainThreadExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p0

    invoke-static {p1, p2, p0}, Landroidx/camera/core/impl/utils/futures/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/camera/core/impl/utils/futures/FutureCallback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private synthetic lambda$release$1()V
    .locals 1

    iget-object p0, p0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode;->mOutput:Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode$Out;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/AbstractMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/processing/SurfaceEdge;

    invoke-virtual {v0}, Landroidx/camera/core/processing/SurfaceEdge;->close()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$sendSurfaceOutputs$0(Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/processing/SurfaceEdge;Landroidx/camera/core/processing/SurfaceEdge;Ljava/util/Map$Entry;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode;->createAndSendSurfaceOutput(Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/processing/SurfaceEdge;Landroidx/camera/core/processing/SurfaceEdge;Ljava/util/Map$Entry;)V

    return-void
.end method

.method private sendSurfaceOutputs(Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/processing/SurfaceEdge;Landroidx/camera/core/processing/SurfaceEdge;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/impl/CameraInternal;",
            "Landroidx/camera/core/impl/CameraInternal;",
            "Landroidx/camera/core/processing/SurfaceEdge;",
            "Landroidx/camera/core/processing/SurfaceEdge;",
            "Ljava/util/Map<",
            "Landroidx/camera/core/processing/concurrent/DualOutConfig;",
            "Landroidx/camera/core/processing/SurfaceEdge;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p5

    invoke-interface {p5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/Map$Entry;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode;->createAndSendSurfaceOutput(Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/processing/SurfaceEdge;Landroidx/camera/core/processing/SurfaceEdge;Ljava/util/Map$Entry;)V

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/core/processing/SurfaceEdge;

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    new-instance v1, Lvt2;

    invoke-direct/range {v1 .. v7}, Lvt2;-><init>(Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode;Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/processing/SurfaceEdge;Landroidx/camera/core/processing/SurfaceEdge;Ljava/util/Map$Entry;)V

    move-object p1, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    invoke-virtual {p0, p1}, Landroidx/camera/core/processing/SurfaceEdge;->addOnInvalidatedListener(Ljava/lang/Runnable;)V

    move-object p0, v1

    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object p4, v5

    goto :goto_0

    :cond_0
    return-void
.end method

.method private sendSurfaceRequest(Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/processing/SurfaceEdge;Z)V
    .locals 0

    invoke-virtual {p2, p1, p3}, Landroidx/camera/core/processing/SurfaceEdge;->createSurfaceRequest(Landroidx/camera/core/impl/CameraInternal;Z)Landroidx/camera/core/SurfaceRequest;

    move-result-object p1

    :try_start_0
    iget-object p0, p0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode;->mSurfaceProcessor:Landroidx/camera/core/processing/SurfaceProcessorInternal;

    invoke-interface {p0, p1}, Landroidx/camera/core/SurfaceProcessor;->onInputSurface(Landroidx/camera/core/SurfaceRequest;)V
    :try_end_0
    .catch Landroidx/camera/core/ProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "DualSurfaceProcessorNode"

    const-string p2, "Failed to send SurfaceRequest to SurfaceProcessor."

    invoke-static {p1, p2, p0}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private transformSingleOutput(Landroidx/camera/core/processing/SurfaceEdge;Landroidx/camera/core/processing/util/OutConfig;)Landroidx/camera/core/processing/SurfaceEdge;
    .locals 12

    invoke-virtual {p2}, Landroidx/camera/core/processing/util/OutConfig;->getCropRect()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p2}, Landroidx/camera/core/processing/util/OutConfig;->getRotationDegrees()I

    move-result v0

    invoke-virtual {p2}, Landroidx/camera/core/processing/util/OutConfig;->isMirroring()Z

    move-result v1

    new-instance v6, Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroidx/camera/core/processing/SurfaceEdge;->getSensorToBufferTransform()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-direct {v6, v2}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p2}, Landroidx/camera/core/processing/util/OutConfig;->getSize()Landroid/util/Size;

    move-result-object v3

    invoke-static {v3}, Landroidx/camera/core/impl/utils/TransformUtils;->sizeToRectF(Landroid/util/Size;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-static {v2, v3, v0, v1}, Landroidx/camera/core/impl/utils/TransformUtils;->getRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;IZ)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    invoke-static {p0, v0}, Landroidx/camera/core/impl/utils/TransformUtils;->getRotatedSize(Landroid/graphics/Rect;I)Landroid/util/Size;

    move-result-object p0

    invoke-virtual {p2}, Landroidx/camera/core/processing/util/OutConfig;->getSize()Landroid/util/Size;

    move-result-object v2

    invoke-static {p0, v2}, Landroidx/camera/core/impl/utils/TransformUtils;->isAspectRatioMatchingWithRoundingError(Landroid/util/Size;Landroid/util/Size;)Z

    move-result p0

    invoke-static {p0}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    invoke-virtual {p2}, Landroidx/camera/core/processing/util/OutConfig;->getSize()Landroid/util/Size;

    move-result-object p0

    invoke-static {p0}, Landroidx/camera/core/impl/utils/TransformUtils;->sizeToRect(Landroid/util/Size;)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {p1}, Landroidx/camera/core/processing/SurfaceEdge;->getStreamSpec()Landroidx/camera/core/impl/StreamSpec;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/camera/core/impl/StreamSpec;->toBuilder()Landroidx/camera/core/impl/StreamSpec$Builder;

    move-result-object p0

    invoke-virtual {p2}, Landroidx/camera/core/processing/util/OutConfig;->getSize()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroidx/camera/core/impl/StreamSpec$Builder;->setResolution(Landroid/util/Size;)Landroidx/camera/core/impl/StreamSpec$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/camera/core/impl/StreamSpec$Builder;->build()Landroidx/camera/core/impl/StreamSpec;

    move-result-object v5

    new-instance v2, Landroidx/camera/core/processing/SurfaceEdge;

    invoke-virtual {p2}, Landroidx/camera/core/processing/util/OutConfig;->getTargets()I

    move-result v3

    invoke-virtual {p2}, Landroidx/camera/core/processing/util/OutConfig;->getFormat()I

    move-result v4

    invoke-virtual {p1}, Landroidx/camera/core/processing/SurfaceEdge;->getRotationDegrees()I

    move-result p0

    sub-int v9, p0, v0

    invoke-virtual {p1}, Landroidx/camera/core/processing/SurfaceEdge;->isMirroring()Z

    move-result p0

    if-eq p0, v1, :cond_0

    const/4 p0, 0x1

    :goto_0
    move v11, p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :goto_1
    const/4 v7, 0x0

    const/4 v10, -0x1

    invoke-direct/range {v2 .. v11}, Landroidx/camera/core/processing/SurfaceEdge;-><init>(IILandroidx/camera/core/impl/StreamSpec;Landroid/graphics/Matrix;ZLandroid/graphics/Rect;IIZ)V

    return-object v2
.end method


# virtual methods
.method public release()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode;->mSurfaceProcessor:Landroidx/camera/core/processing/SurfaceProcessorInternal;

    invoke-interface {v0}, Landroidx/camera/core/processing/SurfaceProcessorInternal;->release()V

    new-instance v0, Lut2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lut2;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0}, Landroidx/camera/core/impl/utils/Threads;->runOnMain(Ljava/lang/Runnable;)V

    return-void
.end method

.method public transform(Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode$In;)Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode$Out;
    .locals 6

    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    iget-object v0, p0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode;->mDebugInfo:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode;->mDebugInfo:Ljava/lang/String;

    const-string v2, "] "

    invoke-static {v0, v1, v2}, Lme0;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "DualSurfaceProcessorNode Transform Processor = "

    invoke-static {v0, v1}, Lfh;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode;->mSurfaceProcessor:Landroidx/camera/core/processing/SurfaceProcessorInternal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n   primary input = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode$In;->getPrimarySurfaceEdge()Landroidx/camera/core/processing/SurfaceEdge;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n   secondary input = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode$In;->getSecondarySurfaceEdge()Landroidx/camera/core/processing/SurfaceEdge;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DualSurfaceProcessorNode"

    invoke-static {v1, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode$In;->getOutConfigs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/processing/concurrent/DualOutConfig;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "   outputConfig = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SurfaceProcessorNode"

    invoke-static {v2, v1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iput-object p1, p0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode;->mInput:Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode$In;

    new-instance p1, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode$Out;

    invoke-direct {p1}, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode$Out;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode;->mOutput:Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode$Out;

    iget-object p1, p0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode;->mInput:Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode$In;

    invoke-virtual {p1}, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode$In;->getPrimarySurfaceEdge()Landroidx/camera/core/processing/SurfaceEdge;

    move-result-object v3

    iget-object p1, p0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode;->mInput:Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode$In;

    invoke-virtual {p1}, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode$In;->getSecondarySurfaceEdge()Landroidx/camera/core/processing/SurfaceEdge;

    move-result-object v4

    iget-object p1, p0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode;->mInput:Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode$In;

    invoke-virtual {p1}, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode$In;->getOutConfigs()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/processing/concurrent/DualOutConfig;

    iget-object v1, p0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode;->mOutput:Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode$Out;

    invoke-virtual {v0}, Landroidx/camera/core/processing/concurrent/DualOutConfig;->getPrimaryOutConfig()Landroidx/camera/core/processing/util/OutConfig;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode;->transformSingleOutput(Landroidx/camera/core/processing/SurfaceEdge;Landroidx/camera/core/processing/util/OutConfig;)Landroidx/camera/core/processing/SurfaceEdge;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    iget-object p1, p0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode;->mPrimaryCameraInternal:Landroidx/camera/core/impl/CameraInternal;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v3, v0}, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode;->sendSurfaceRequest(Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/processing/SurfaceEdge;Z)V

    iget-object p1, p0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode;->mSecondaryCameraInternal:Landroidx/camera/core/impl/CameraInternal;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v4, v0}, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode;->sendSurfaceRequest(Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/processing/SurfaceEdge;Z)V

    iget-object v1, p0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode;->mPrimaryCameraInternal:Landroidx/camera/core/impl/CameraInternal;

    iget-object v2, p0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode;->mSecondaryCameraInternal:Landroidx/camera/core/impl/CameraInternal;

    iget-object v5, p0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode;->mOutput:Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode$Out;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode;->sendSurfaceOutputs(Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/processing/SurfaceEdge;Landroidx/camera/core/processing/SurfaceEdge;Ljava/util/Map;)V

    iget-object p0, v0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode;->mOutput:Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode$Out;

    return-object p0
.end method

.method public bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 191
    check-cast p1, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode$In;

    invoke-virtual {p0, p1}, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode;->transform(Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode$In;)Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode$Out;

    move-result-object p0

    return-object p0
.end method
