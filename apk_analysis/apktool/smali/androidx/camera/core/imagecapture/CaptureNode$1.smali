.class Landroidx/camera/core/imagecapture/CaptureNode$1;
.super Landroidx/camera/core/impl/CameraCaptureCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/core/imagecapture/CaptureNode;->transform(Landroidx/camera/core/imagecapture/CaptureNode$In;)Landroidx/camera/core/imagecapture/ProcessingNode$In;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/camera/core/imagecapture/CaptureNode;


# direct methods
.method public constructor <init>(Landroidx/camera/core/imagecapture/CaptureNode;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/core/imagecapture/CaptureNode$1;->this$0:Landroidx/camera/core/imagecapture/CaptureNode;

    invoke-direct {p0}, Landroidx/camera/core/impl/CameraCaptureCallback;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroidx/camera/core/imagecapture/CaptureNode$1;)V
    .locals 0

    invoke-direct {p0}, Landroidx/camera/core/imagecapture/CaptureNode$1;->lambda$onCaptureStarted$0()V

    return-void
.end method

.method public static synthetic b(Landroidx/camera/core/imagecapture/CaptureNode$1;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/camera/core/imagecapture/CaptureNode$1;->lambda$onCaptureProcessProgressed$1(I)V

    return-void
.end method

.method private synthetic lambda$onCaptureProcessProgressed$1(I)V
    .locals 0

    iget-object p0, p0, Landroidx/camera/core/imagecapture/CaptureNode$1;->this$0:Landroidx/camera/core/imagecapture/CaptureNode;

    iget-object p0, p0, Landroidx/camera/core/imagecapture/CaptureNode;->mCurrentRequest:Landroidx/camera/core/imagecapture/ProcessingRequest;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/camera/core/imagecapture/ProcessingRequest;->onCaptureProcessProgressed(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onCaptureStarted$0()V
    .locals 0

    iget-object p0, p0, Landroidx/camera/core/imagecapture/CaptureNode$1;->this$0:Landroidx/camera/core/imagecapture/CaptureNode;

    iget-object p0, p0, Landroidx/camera/core/imagecapture/CaptureNode;->mCurrentRequest:Landroidx/camera/core/imagecapture/ProcessingRequest;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/camera/core/imagecapture/ProcessingRequest;->onCaptureStarted()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCaptureProcessProgressed(II)V
    .locals 1

    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->mainThreadExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    new-instance v0, Landroidx/camera/core/imagecapture/i;

    invoke-direct {v0, p0, p2}, Landroidx/camera/core/imagecapture/i;-><init>(Landroidx/camera/core/imagecapture/CaptureNode$1;I)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCaptureStarted(I)V
    .locals 1

    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->mainThreadExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    new-instance v0, Landroidx/camera/core/imagecapture/j;

    invoke-direct {v0, p0}, Landroidx/camera/core/imagecapture/j;-><init>(Landroidx/camera/core/imagecapture/CaptureNode$1;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
