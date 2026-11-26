.class public final Landroidx/camera/camera2/impl/CapturePipelineImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/impl/CapturePipeline;


# annotations
.annotation runtime Landroidx/camera/camera2/config/UseCaseCameraScope;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;,
        Landroidx/camera/camera2/impl/CapturePipelineImpl$PipelineTask;
    }
.end annotation


# instance fields
.field private final configAdapter:Landroidx/camera/camera2/adapter/CaptureConfigAdapter;

.field private final emptyRequestMetadata:Landroidx/camera/camera2/impl/CapturePipelineImpl$emptyRequestMetadata$1;

.field private final flashControl:Landroidx/camera/camera2/impl/FlashControl;

.field private frameMetadata:Landroidx/camera/camera2/pipe/FrameMetadata;

.field private final hasFlashUnit$delegate:Lcl4;

.field private final requestListener:Landroidx/camera/camera2/impl/ComboRequestListener;

.field private template:I

.field private final threads:Landroidx/camera/camera2/impl/UseCaseThreads;

.field private final torchControl:Landroidx/camera/camera2/impl/TorchControl;

.field private final useCaseCameraState$delegate:Lcl4;

.field private final useCaseCameraStateProvider:Lws6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lws6<",
            "Landroidx/camera/camera2/impl/UseCaseCameraState;",
            ">;"
        }
    .end annotation
.end field

.field private final useCaseGraphContext:Landroidx/camera/camera2/config/UseCaseGraphContext;

.field private final useTorchAsFlash:Landroidx/camera/camera2/compat/workaround/UseTorchAsFlash;

.field private final videoUsageControl:Landroidx/camera/camera2/impl/VideoUsageControl;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/adapter/CaptureConfigAdapter;Landroidx/camera/camera2/impl/FlashControl;Landroidx/camera/camera2/impl/TorchControl;Landroidx/camera/camera2/impl/VideoUsageControl;Landroidx/camera/camera2/impl/UseCaseThreads;Landroidx/camera/camera2/impl/ComboRequestListener;Landroidx/camera/camera2/compat/workaround/UseTorchAsFlash;Landroidx/camera/camera2/impl/CameraProperties;Lws6;Landroidx/camera/camera2/config/UseCaseGraphContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/adapter/CaptureConfigAdapter;",
            "Landroidx/camera/camera2/impl/FlashControl;",
            "Landroidx/camera/camera2/impl/TorchControl;",
            "Landroidx/camera/camera2/impl/VideoUsageControl;",
            "Landroidx/camera/camera2/impl/UseCaseThreads;",
            "Landroidx/camera/camera2/impl/ComboRequestListener;",
            "Landroidx/camera/camera2/compat/workaround/UseTorchAsFlash;",
            "Landroidx/camera/camera2/impl/CameraProperties;",
            "Lws6<",
            "Landroidx/camera/camera2/impl/UseCaseCameraState;",
            ">;",
            "Landroidx/camera/camera2/config/UseCaseGraphContext;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl;->configAdapter:Landroidx/camera/camera2/adapter/CaptureConfigAdapter;

    iput-object p2, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl;->flashControl:Landroidx/camera/camera2/impl/FlashControl;

    iput-object p3, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl;->torchControl:Landroidx/camera/camera2/impl/TorchControl;

    iput-object p4, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl;->videoUsageControl:Landroidx/camera/camera2/impl/VideoUsageControl;

    iput-object p5, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    iput-object p6, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl;->requestListener:Landroidx/camera/camera2/impl/ComboRequestListener;

    iput-object p7, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl;->useTorchAsFlash:Landroidx/camera/camera2/compat/workaround/UseTorchAsFlash;

    iput-object p9, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl;->useCaseCameraStateProvider:Lws6;

    iput-object p10, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl;->useCaseGraphContext:Landroidx/camera/camera2/config/UseCaseGraphContext;

    new-instance p1, Ll31;

    const/4 p2, 0x0

    invoke-direct {p1, p8, p2}, Ll31;-><init>(Ljava/lang/Object;I)V

    new-instance p3, Lfh8;

    invoke-direct {p3, p1}, Lfh8;-><init>(Lll3;)V

    iput-object p3, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl;->hasFlashUnit$delegate:Lcl4;

    new-instance p1, Lm31;

    invoke-direct {p1, p0, p2}, Lm31;-><init>(Ljava/lang/Object;I)V

    new-instance p2, Lfh8;

    invoke-direct {p2, p1}, Lfh8;-><init>(Lll3;)V

    iput-object p2, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl;->useCaseCameraState$delegate:Lcl4;

    const/4 p1, 0x1

    iput p1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl;->template:I

    new-instance p1, Landroidx/camera/camera2/impl/CapturePipelineImpl$emptyRequestMetadata$1;

    invoke-direct {p1}, Landroidx/camera/camera2/impl/CapturePipelineImpl$emptyRequestMetadata$1;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl;->emptyRequestMetadata:Landroidx/camera/camera2/impl/CapturePipelineImpl$emptyRequestMetadata$1;

    return-void
.end method

.method public static synthetic a(Landroidx/camera/camera2/impl/CapturePipelineImpl;)Landroidx/camera/camera2/impl/UseCaseCameraState;
    .locals 0

    invoke-static {p0}, Landroidx/camera/camera2/impl/CapturePipelineImpl;->useCaseCameraState_delegate$lambda$0(Landroidx/camera/camera2/impl/CapturePipelineImpl;)Landroidx/camera/camera2/impl/UseCaseCameraState;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$aePreCaptureApplyCapture(Landroidx/camera/camera2/impl/CapturePipelineImpl;Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;JILjava/util/List;Le02;)Ljava/lang/Object;
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroidx/camera/camera2/impl/CapturePipelineImpl;->aePreCaptureApplyCapture(Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;JILjava/util/List;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$defaultCapture(Landroidx/camera/camera2/impl/CapturePipelineImpl;Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;IILjava/util/List;Le02;)Ljava/lang/Object;
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroidx/camera/camera2/impl/CapturePipelineImpl;->defaultCapture(Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;IILjava/util/List;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$defaultNoFlashCapture(Landroidx/camera/camera2/impl/CapturePipelineImpl;Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;ILjava/util/List;Le02;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/impl/CapturePipelineImpl;->defaultNoFlashCapture(Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;ILjava/util/List;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getEmptyRequestMetadata$p(Landroidx/camera/camera2/impl/CapturePipelineImpl;)Landroidx/camera/camera2/impl/CapturePipelineImpl$emptyRequestMetadata$1;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl;->emptyRequestMetadata:Landroidx/camera/camera2/impl/CapturePipelineImpl$emptyRequestMetadata$1;

    return-object p0
.end method

.method public static final synthetic access$getFrameMetadata(Landroidx/camera/camera2/impl/CapturePipelineImpl;Le02;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Landroidx/camera/camera2/impl/CapturePipelineImpl;->getFrameMetadata(Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getFrameMetadata$p(Landroidx/camera/camera2/impl/CapturePipelineImpl;)Landroidx/camera/camera2/pipe/FrameMetadata;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl;->frameMetadata:Landroidx/camera/camera2/pipe/FrameMetadata;

    return-object p0
.end method

.method public static final synthetic access$getRequestListener$p(Landroidx/camera/camera2/impl/CapturePipelineImpl;)Landroidx/camera/camera2/impl/ComboRequestListener;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl;->requestListener:Landroidx/camera/camera2/impl/ComboRequestListener;

    return-object p0
.end method

.method public static final synthetic access$getThreads$p(Landroidx/camera/camera2/impl/CapturePipelineImpl;)Landroidx/camera/camera2/impl/UseCaseThreads;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    return-object p0
.end method

.method public static final synthetic access$getTorchControl$p(Landroidx/camera/camera2/impl/CapturePipelineImpl;)Landroidx/camera/camera2/impl/TorchControl;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl;->torchControl:Landroidx/camera/camera2/impl/TorchControl;

    return-object p0
.end method

.method public static final synthetic access$getUseCaseCameraState(Landroidx/camera/camera2/impl/CapturePipelineImpl;)Landroidx/camera/camera2/impl/UseCaseCameraState;
    .locals 0

    invoke-direct {p0}, Landroidx/camera/camera2/impl/CapturePipelineImpl;->getUseCaseCameraState()Landroidx/camera/camera2/impl/UseCaseCameraState;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getUseCaseGraphContext$p(Landroidx/camera/camera2/impl/CapturePipelineImpl;)Landroidx/camera/camera2/config/UseCaseGraphContext;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl;->useCaseGraphContext:Landroidx/camera/camera2/config/UseCaseGraphContext;

    return-object p0
.end method

.method public static final synthetic access$invokeCaptureTasks(Landroidx/camera/camera2/impl/CapturePipelineImpl;Ljava/util/List;IIILandroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;Le02;)Ljava/lang/Object;
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroidx/camera/camera2/impl/CapturePipelineImpl;->invokeCaptureTasks(Ljava/util/List;IIILandroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$isPhysicalFlashRequired(Landroidx/camera/camera2/impl/CapturePipelineImpl;ILe02;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/impl/CapturePipelineImpl;->isPhysicalFlashRequired(ILe02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$isTorchAsFlash(Landroidx/camera/camera2/impl/CapturePipelineImpl;ILe02;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/impl/CapturePipelineImpl;->isTorchAsFlash(ILe02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$lockAf(Landroidx/camera/camera2/impl/CapturePipelineImpl;JZLe02;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/impl/CapturePipelineImpl;->lockAf(JZLe02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$screenFlashCapture(Landroidx/camera/camera2/impl/CapturePipelineImpl;Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;ILjava/util/List;Le02;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/impl/CapturePipelineImpl;->screenFlashCapture(Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;ILjava/util/List;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$toCameraCaptureResult(Landroidx/camera/camera2/impl/CapturePipelineImpl;Landroidx/camera/camera2/pipe/FrameMetadata;)Landroidx/camera/core/impl/CameraCaptureResult;
    .locals 0

    invoke-direct {p0, p1}, Landroidx/camera/camera2/impl/CapturePipelineImpl;->toCameraCaptureResult(Landroidx/camera/camera2/pipe/FrameMetadata;)Landroidx/camera/core/impl/CameraCaptureResult;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$torchApplyCapture(Landroidx/camera/camera2/impl/CapturePipelineImpl;Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;IJLjava/util/List;ZLe02;)Ljava/lang/Object;
    .locals 0

    invoke-direct/range {p0 .. p7}, Landroidx/camera/camera2/impl/CapturePipelineImpl;->torchApplyCapture(Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;IJLjava/util/List;ZLe02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$torchAsFlashCapture(Landroidx/camera/camera2/impl/CapturePipelineImpl;Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;IILjava/util/List;Le02;)Ljava/lang/Object;
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroidx/camera/camera2/impl/CapturePipelineImpl;->torchAsFlashCapture(Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;IILjava/util/List;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$unlockAf(Landroidx/camera/camera2/impl/CapturePipelineImpl;JLe02;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/camera2/impl/CapturePipelineImpl;->unlockAf(JLe02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$waitForResult(Landroidx/camera/camera2/impl/CapturePipelineImpl;JLnl3;Le02;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/impl/CapturePipelineImpl;->waitForResult(JLnl3;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final aePreCaptureApplyCapture(Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;JILjava/util/List;Le02;)Ljava/lang/Object;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;",
            "JI",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/camera2/impl/CapturePipelineImpl$PipelineTask;",
            ">;",
            "Le02<",
            "-",
            "Ljava/util/List<",
            "+",
            "Lmk2<",
            "Ljava/lang/Void;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    instance-of v3, v2, Landroidx/camera/camera2/impl/CapturePipelineImpl$aePreCaptureApplyCapture$1;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Landroidx/camera/camera2/impl/CapturePipelineImpl$aePreCaptureApplyCapture$1;

    iget v4, v3, Landroidx/camera/camera2/impl/CapturePipelineImpl$aePreCaptureApplyCapture$1;->label:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Landroidx/camera/camera2/impl/CapturePipelineImpl$aePreCaptureApplyCapture$1;->label:I

    :goto_0
    move-object v10, v3

    goto :goto_1

    :cond_0
    new-instance v3, Landroidx/camera/camera2/impl/CapturePipelineImpl$aePreCaptureApplyCapture$1;

    invoke-direct {v3, v0, v2}, Landroidx/camera/camera2/impl/CapturePipelineImpl$aePreCaptureApplyCapture$1;-><init>(Landroidx/camera/camera2/impl/CapturePipelineImpl;Le02;)V

    goto :goto_0

    :goto_1
    iget-object v2, v10, Landroidx/camera/camera2/impl/CapturePipelineImpl$aePreCaptureApplyCapture$1;->result:Ljava/lang/Object;

    sget-object v3, La32;->COROUTINE_SUSPENDED:La32;

    iget v4, v10, Landroidx/camera/camera2/impl/CapturePipelineImpl$aePreCaptureApplyCapture$1;->label:I

    const/4 v13, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const-string v14, "CXCP"

    const/4 v15, 0x0

    if-eqz v4, :cond_4

    if-eq v4, v6, :cond_3

    if-eq v4, v5, :cond_2

    if-ne v4, v13, :cond_1

    iget v1, v10, Landroidx/camera/camera2/impl/CapturePipelineImpl$aePreCaptureApplyCapture$1;->I$0:I

    iget-object v3, v10, Landroidx/camera/camera2/impl/CapturePipelineImpl$aePreCaptureApplyCapture$1;->L$3:Ljava/lang/Object;

    check-cast v3, Ljava/lang/AutoCloseable;

    iget-object v4, v10, Landroidx/camera/camera2/impl/CapturePipelineImpl$aePreCaptureApplyCapture$1;->L$2:Ljava/lang/Object;

    check-cast v4, Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;

    iget-object v5, v10, Landroidx/camera/camera2/impl/CapturePipelineImpl$aePreCaptureApplyCapture$1;->L$1:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    iget-object v6, v10, Landroidx/camera/camera2/impl/CapturePipelineImpl$aePreCaptureApplyCapture$1;->L$0:Ljava/lang/Object;

    check-cast v6, Landroidx/camera/camera2/impl/CapturePipelineImpl;

    :try_start_0
    invoke-static {v2}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_7

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto/16 :goto_9

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-object v15

    :cond_2
    iget v1, v10, Landroidx/camera/camera2/impl/CapturePipelineImpl$aePreCaptureApplyCapture$1;->I$0:I

    iget-object v4, v10, Landroidx/camera/camera2/impl/CapturePipelineImpl$aePreCaptureApplyCapture$1;->L$3:Ljava/lang/Object;

    check-cast v4, Ljava/lang/AutoCloseable;

    iget-object v5, v10, Landroidx/camera/camera2/impl/CapturePipelineImpl$aePreCaptureApplyCapture$1;->L$2:Ljava/lang/Object;

    check-cast v5, Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;

    iget-object v6, v10, Landroidx/camera/camera2/impl/CapturePipelineImpl$aePreCaptureApplyCapture$1;->L$1:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    iget-object v7, v10, Landroidx/camera/camera2/impl/CapturePipelineImpl$aePreCaptureApplyCapture$1;->L$0:Ljava/lang/Object;

    check-cast v7, Landroidx/camera/camera2/impl/CapturePipelineImpl;

    :try_start_1
    invoke-static {v2}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v15, v4

    move-object v4, v6

    move-object v6, v7

    goto/16 :goto_5

    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object v3, v4

    goto/16 :goto_9

    :cond_3
    iget v1, v10, Landroidx/camera/camera2/impl/CapturePipelineImpl$aePreCaptureApplyCapture$1;->I$0:I

    iget-wide v7, v10, Landroidx/camera/camera2/impl/CapturePipelineImpl$aePreCaptureApplyCapture$1;->J$0:J

    iget-object v4, v10, Landroidx/camera/camera2/impl/CapturePipelineImpl$aePreCaptureApplyCapture$1;->L$2:Ljava/lang/Object;

    check-cast v4, Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;

    iget-object v9, v10, Landroidx/camera/camera2/impl/CapturePipelineImpl$aePreCaptureApplyCapture$1;->L$1:Ljava/lang/Object;

    check-cast v9, Ljava/util/List;

    iget-object v11, v10, Landroidx/camera/camera2/impl/CapturePipelineImpl$aePreCaptureApplyCapture$1;->L$0:Ljava/lang/Object;

    check-cast v11, Landroidx/camera/camera2/impl/CapturePipelineImpl;

    invoke-static {v2}, Lr57;->b(Ljava/lang/Object;)V

    move-object/from16 v19, v2

    move v2, v1

    move-object v1, v4

    move-object v4, v9

    move-wide v8, v7

    move-object/from16 v7, v19

    goto/16 :goto_2

    :cond_4
    invoke-static {v2}, Lr57;->b(Ljava/lang/Object;)V

    sget-object v2, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    invoke-static {v14}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v2

    const-string v4, "CapturePipeline#aePreCaptureApplyCapture"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-static {v14}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "CapturePipeline#List<PipelineTask>.invoke: tasks = "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    sget-object v2, Landroidx/camera/camera2/impl/CapturePipelineImpl$PipelineTask;->PRE_CAPTURE:Landroidx/camera/camera2/impl/CapturePipelineImpl$PipelineTask;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-static {v14}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v2

    const-string v4, "CapturePipeline#List<PipelineTask>.invoke: starting PRE_CAPTURE"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-static {v14}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v2

    const-string v4, "CapturePipeline#aePreCaptureApplyCapture: Acquiring session for locking 3A"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-static {v0}, Landroidx/camera/camera2/impl/CapturePipelineImpl;->access$getUseCaseGraphContext$p(Landroidx/camera/camera2/impl/CapturePipelineImpl;)Landroidx/camera/camera2/config/UseCaseGraphContext;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/camera/camera2/config/UseCaseGraphContext;->getGraph()Landroidx/camera/camera2/pipe/CameraGraph;

    move-result-object v2

    iput-object v0, v10, Landroidx/camera/camera2/impl/CapturePipelineImpl$aePreCaptureApplyCapture$1;->L$0:Ljava/lang/Object;

    iput-object v1, v10, Landroidx/camera/camera2/impl/CapturePipelineImpl$aePreCaptureApplyCapture$1;->L$1:Ljava/lang/Object;

    move-object/from16 v4, p1

    iput-object v4, v10, Landroidx/camera/camera2/impl/CapturePipelineImpl$aePreCaptureApplyCapture$1;->L$2:Ljava/lang/Object;

    move-wide/from16 v7, p2

    iput-wide v7, v10, Landroidx/camera/camera2/impl/CapturePipelineImpl$aePreCaptureApplyCapture$1;->J$0:J

    move/from16 v9, p4

    iput v9, v10, Landroidx/camera/camera2/impl/CapturePipelineImpl$aePreCaptureApplyCapture$1;->I$0:I

    iput v6, v10, Landroidx/camera/camera2/impl/CapturePipelineImpl$aePreCaptureApplyCapture$1;->label:I

    invoke-interface {v2, v10}, Landroidx/camera/camera2/pipe/CameraGraphBase;->acquireSession(Le02;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_9

    goto/16 :goto_6

    :cond_9
    move-object v11, v4

    move-object v4, v1

    move-object v1, v11

    move-wide/from16 v19, v7

    move-object v7, v2

    move v2, v9

    move-wide/from16 v8, v19

    move-object v11, v0

    :goto_2
    check-cast v7, Ljava/lang/AutoCloseable;

    :try_start_2
    move-object v12, v7

    check-cast v12, Landroidx/camera/camera2/pipe/CameraGraph$Session;

    sget-object v16, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    invoke-static {v14}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    if-eqz v16, :cond_a

    :try_start_3
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v6

    const-string v15, "CapturePipeline#aePreCaptureApplyCapture: Locking 3A for capture"

    invoke-static {v6, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v1, v0

    move-object v3, v7

    goto/16 :goto_9

    :cond_a
    :goto_3
    const/4 v6, 0x0

    if-nez v2, :cond_b

    const/4 v15, 0x1

    goto :goto_4

    :cond_b
    move v15, v6

    :goto_4
    if-nez v2, :cond_c

    const/4 v6, 0x1

    :cond_c
    :try_start_4
    iput-object v11, v10, Landroidx/camera/camera2/impl/CapturePipelineImpl$aePreCaptureApplyCapture$1;->L$0:Ljava/lang/Object;

    iput-object v4, v10, Landroidx/camera/camera2/impl/CapturePipelineImpl$aePreCaptureApplyCapture$1;->L$1:Ljava/lang/Object;

    iput-object v1, v10, Landroidx/camera/camera2/impl/CapturePipelineImpl$aePreCaptureApplyCapture$1;->L$2:Ljava/lang/Object;

    iput-object v7, v10, Landroidx/camera/camera2/impl/CapturePipelineImpl$aePreCaptureApplyCapture$1;->L$3:Ljava/lang/Object;

    iput v2, v10, Landroidx/camera/camera2/impl/CapturePipelineImpl$aePreCaptureApplyCapture$1;->I$0:I

    iput v5, v10, Landroidx/camera/camera2/impl/CapturePipelineImpl$aePreCaptureApplyCapture$1;->label:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-object v5, v7

    const/4 v7, 0x0

    move-object/from16 v17, v11

    const/4 v11, 0x4

    move-object/from16 v18, v4

    move-object v4, v12

    const/4 v12, 0x0

    move/from16 v19, v15

    move-object v15, v5

    move/from16 v5, v19

    :try_start_5
    invoke-static/range {v4 .. v12}, Landroidx/camera/camera2/pipe/CameraGraph$Session;->lock3AForCapture$default(Landroidx/camera/camera2/pipe/CameraGraph$Session;ZZIJLe02;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_d

    goto :goto_6

    :cond_d
    move-object v5, v1

    move v1, v2

    move-object v2, v4

    move-object/from16 v6, v17

    move-object/from16 v4, v18

    :goto_5
    check-cast v2, Lmk2;

    iput-object v6, v10, Landroidx/camera/camera2/impl/CapturePipelineImpl$aePreCaptureApplyCapture$1;->L$0:Ljava/lang/Object;

    iput-object v4, v10, Landroidx/camera/camera2/impl/CapturePipelineImpl$aePreCaptureApplyCapture$1;->L$1:Ljava/lang/Object;

    iput-object v5, v10, Landroidx/camera/camera2/impl/CapturePipelineImpl$aePreCaptureApplyCapture$1;->L$2:Ljava/lang/Object;

    iput-object v15, v10, Landroidx/camera/camera2/impl/CapturePipelineImpl$aePreCaptureApplyCapture$1;->L$3:Ljava/lang/Object;

    iput v1, v10, Landroidx/camera/camera2/impl/CapturePipelineImpl$aePreCaptureApplyCapture$1;->I$0:I

    iput v13, v10, Landroidx/camera/camera2/impl/CapturePipelineImpl$aePreCaptureApplyCapture$1;->label:I

    invoke-interface {v2, v10}, Lmb4;->e0(Le02;)Ljava/lang/Object;

    move-result-object v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-ne v2, v3, :cond_e

    :goto_6
    return-object v3

    :cond_e
    move-object v3, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v15

    :goto_7
    :try_start_6
    sget-object v2, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    invoke-static {v14}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v2

    const-string v7, "CapturePipeline#aePreCaptureApplyCapture: Locking 3A for capture done"

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    sget-object v2, Lj59;->a:Lj59;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/4 v2, 0x0

    invoke-static {v3, v2}, Laq5;->c(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    invoke-static {v14}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CapturePipeline#List<PipelineTask>.invoke: PRE_CAPTURE completed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    move v9, v1

    move-object v1, v5

    goto :goto_a

    :catchall_3
    move-exception v0

    :goto_8
    move-object v1, v0

    move-object v3, v15

    goto :goto_9

    :catchall_4
    move-exception v0

    move-object v15, v7

    goto :goto_8

    :goto_9
    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :catchall_5
    move-exception v0

    invoke-static {v3, v1}, Laq5;->c(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0

    :cond_11
    move-object/from16 v4, p1

    move/from16 v9, p4

    move-object v6, v0

    :goto_a
    sget-object v2, Landroidx/camera/camera2/impl/CapturePipelineImpl$PipelineTask;->MAIN_CAPTURE:Landroidx/camera/camera2/impl/CapturePipelineImpl$PipelineTask;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-static {v14}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CapturePipeline#List<PipelineTask>.invoke: starting MAIN_CAPTURE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    if-eqz v4, :cond_14

    invoke-direct {v6, v4}, Landroidx/camera/camera2/impl/CapturePipelineImpl;->submitRequestInternal(Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;)Ljava/util/List;

    move-result-object v2

    invoke-static {v14}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CapturePipeline#List<PipelineTask>.invoke: MAIN_CAPTURE completed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    move-object v3, v2

    const/4 v2, 0x0

    goto :goto_b

    :cond_14
    const-string v0, "Required value was null."

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    const/4 v2, 0x0

    return-object v2

    :cond_15
    const/4 v2, 0x0

    invoke-static {v2}, Lga1;->a(Ljava/lang/Object;)Lyp1;

    move-result-object v3

    invoke-static {v3}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    :goto_b
    sget-object v4, Landroidx/camera/camera2/impl/CapturePipelineImpl$PipelineTask;->POST_CAPTURE:Landroidx/camera/camera2/impl/CapturePipelineImpl$PipelineTask;

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, v6, Landroidx/camera/camera2/impl/CapturePipelineImpl;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    invoke-virtual {v1}, Landroidx/camera/camera2/impl/UseCaseThreads;->getSequentialScope()Ly22;

    move-result-object v1

    new-instance v4, Landroidx/camera/camera2/impl/CapturePipelineImpl$aePreCaptureApplyCapture$$inlined$invoke$1;

    invoke-direct {v4, v3, v2, v0, v9}, Landroidx/camera/camera2/impl/CapturePipelineImpl$aePreCaptureApplyCapture$$inlined$invoke$1;-><init>(Ljava/util/List;Le02;Landroidx/camera/camera2/impl/CapturePipelineImpl;I)V

    invoke-static {v1, v2, v2, v4, v13}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    :cond_16
    return-object v3
.end method

.method public static synthetic b(Landroidx/camera/camera2/impl/CameraProperties;)Z
    .locals 0

    invoke-static {p0}, Landroidx/camera/camera2/impl/CapturePipelineImpl;->hasFlashUnit_delegate$lambda$0(Landroidx/camera/camera2/impl/CameraProperties;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Landroidx/camera/camera2/pipe/FrameInfo;)Z
    .locals 0

    invoke-static {p0}, Landroidx/camera/camera2/impl/CapturePipelineImpl;->waitForResult$lambda$0(Landroidx/camera/camera2/pipe/FrameInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Landroidx/camera/camera2/impl/CapturePipelineImpl;ZLandroidx/camera/camera2/pipe/FrameMetadata;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/camera/camera2/impl/CapturePipelineImpl;->getConvergeCondition$lambda$0(Landroidx/camera/camera2/impl/CapturePipelineImpl;ZLandroidx/camera/camera2/pipe/FrameMetadata;)Z

    move-result p0

    return p0
.end method

.method private final defaultCapture(Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;IILjava/util/List;Le02;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;",
            "II",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/camera2/impl/CapturePipelineImpl$PipelineTask;",
            ">;",
            "Le02<",
            "-",
            "Ljava/util/List<",
            "+",
            "Lmk2<",
            "Ljava/lang/Void;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p5, Landroidx/camera/camera2/impl/CapturePipelineImpl$defaultCapture$1;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$defaultCapture$1;

    iget v1, v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$defaultCapture$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$defaultCapture$1;->label:I

    :goto_0
    move-object v7, v0

    goto :goto_1

    :cond_0
    new-instance v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$defaultCapture$1;

    invoke-direct {v0, p0, p5}, Landroidx/camera/camera2/impl/CapturePipelineImpl$defaultCapture$1;-><init>(Landroidx/camera/camera2/impl/CapturePipelineImpl;Le02;)V

    goto :goto_0

    :goto_1
    iget-object p5, v7, Landroidx/camera/camera2/impl/CapturePipelineImpl$defaultCapture$1;->result:Ljava/lang/Object;

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, v7, Landroidx/camera/camera2/impl/CapturePipelineImpl$defaultCapture$1;->label:I

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_6

    if-eq v1, v5, :cond_4

    if-eq v1, v4, :cond_3

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    invoke-static {p5}, Lr57;->b(Ljava/lang/Object;)V

    return-object p5

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v6

    :cond_2
    invoke-static {p5}, Lr57;->b(Ljava/lang/Object;)V

    return-object p5

    :cond_3
    invoke-static {p5}, Lr57;->b(Ljava/lang/Object;)V

    return-object p5

    :cond_4
    iget p2, v7, Landroidx/camera/camera2/impl/CapturePipelineImpl$defaultCapture$1;->I$0:I

    iget-object p1, v7, Landroidx/camera/camera2/impl/CapturePipelineImpl$defaultCapture$1;->L$1:Ljava/lang/Object;

    move-object p4, p1

    check-cast p4, Ljava/util/List;

    iget-object p1, v7, Landroidx/camera/camera2/impl/CapturePipelineImpl$defaultCapture$1;->L$0:Ljava/lang/Object;

    check-cast p1, Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;

    invoke-static {p5}, Lr57;->b(Ljava/lang/Object;)V

    :cond_5
    move-object v2, p1

    move v5, p2

    goto :goto_2

    :cond_6
    invoke-static {p5}, Lr57;->b(Ljava/lang/Object;)V

    invoke-direct {p0}, Landroidx/camera/camera2/impl/CapturePipelineImpl;->getHasFlashUnit()Z

    move-result p5

    if-eqz p5, :cond_c

    iput-object p1, v7, Landroidx/camera/camera2/impl/CapturePipelineImpl$defaultCapture$1;->L$0:Ljava/lang/Object;

    iput-object p4, v7, Landroidx/camera/camera2/impl/CapturePipelineImpl$defaultCapture$1;->L$1:Ljava/lang/Object;

    iput p2, v7, Landroidx/camera/camera2/impl/CapturePipelineImpl$defaultCapture$1;->I$0:I

    iput v5, v7, Landroidx/camera/camera2/impl/CapturePipelineImpl$defaultCapture$1;->label:I

    invoke-direct {p0, p3, v7}, Landroidx/camera/camera2/impl/CapturePipelineImpl;->isPhysicalFlashRequired(ILe02;)Ljava/lang/Object;

    move-result-object p5

    if-ne p5, v0, :cond_5

    goto :goto_5

    :goto_2
    check-cast p5, Ljava/lang/Boolean;

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-static {}, Landroidx/camera/camera2/impl/CapturePipelineKt;->access$getCHECK_3A_WITH_FLASH_TIMEOUT_IN_NS$p()J

    move-result-wide p2

    goto :goto_3

    :cond_7
    invoke-static {}, Landroidx/camera/camera2/impl/CapturePipelineKt;->access$getCHECK_3A_TIMEOUT_IN_NS$p()J

    move-result-wide p2

    :goto_3
    if-nez p1, :cond_a

    if-nez v5, :cond_8

    goto :goto_4

    :cond_8
    iput-object v6, v7, Landroidx/camera/camera2/impl/CapturePipelineImpl$defaultCapture$1;->L$0:Ljava/lang/Object;

    iput-object v6, v7, Landroidx/camera/camera2/impl/CapturePipelineImpl$defaultCapture$1;->L$1:Ljava/lang/Object;

    iput v3, v7, Landroidx/camera/camera2/impl/CapturePipelineImpl$defaultCapture$1;->label:I

    invoke-direct {p0, v2, v5, p4, v7}, Landroidx/camera/camera2/impl/CapturePipelineImpl;->defaultNoFlashCapture(Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;ILjava/util/List;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_9

    goto :goto_5

    :cond_9
    return-object p0

    :cond_a
    :goto_4
    iput-object v6, v7, Landroidx/camera/camera2/impl/CapturePipelineImpl$defaultCapture$1;->L$0:Ljava/lang/Object;

    iput-object v6, v7, Landroidx/camera/camera2/impl/CapturePipelineImpl$defaultCapture$1;->L$1:Ljava/lang/Object;

    iput v4, v7, Landroidx/camera/camera2/impl/CapturePipelineImpl$defaultCapture$1;->label:I

    move-object v1, p0

    move-wide v3, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Landroidx/camera/camera2/impl/CapturePipelineImpl;->aePreCaptureApplyCapture(Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;JILjava/util/List;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_b

    goto :goto_5

    :cond_b
    return-object p0

    :cond_c
    move-object v1, p0

    iput v2, v7, Landroidx/camera/camera2/impl/CapturePipelineImpl$defaultCapture$1;->label:I

    invoke-direct {v1, p1, p2, p4, v7}, Landroidx/camera/camera2/impl/CapturePipelineImpl;->defaultNoFlashCapture(Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;ILjava/util/List;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_d

    :goto_5
    return-object v0

    :cond_d
    return-object p0
.end method

.method private final defaultNoFlashCapture(Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;ILjava/util/List;Le02;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;",
            "I",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/camera2/impl/CapturePipelineImpl$PipelineTask;",
            ">;",
            "Le02<",
            "-",
            "Ljava/util/List<",
            "+",
            "Lmk2<",
            "Ljava/lang/Void;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Landroidx/camera/camera2/impl/CapturePipelineImpl$defaultNoFlashCapture$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$defaultNoFlashCapture$1;

    iget v1, v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$defaultNoFlashCapture$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$defaultNoFlashCapture$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$defaultNoFlashCapture$1;

    invoke-direct {v0, p0, p4}, Landroidx/camera/camera2/impl/CapturePipelineImpl$defaultNoFlashCapture$1;-><init>(Landroidx/camera/camera2/impl/CapturePipelineImpl;Le02;)V

    :goto_0
    iget-object p4, v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$defaultNoFlashCapture$1;->result:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$defaultNoFlashCapture$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v6, "CXCP"

    if-eqz v2, :cond_2

    if-ne v2, v5, :cond_1

    iget p1, v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$defaultNoFlashCapture$1;->I$0:I

    iget-object p2, v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$defaultNoFlashCapture$1;->L$2:Ljava/lang/Object;

    check-cast p2, Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;

    iget-object p3, v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$defaultNoFlashCapture$1;->L$1:Ljava/lang/Object;

    check-cast p3, Ljava/util/List;

    iget-object v0, v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$defaultNoFlashCapture$1;->L$0:Ljava/lang/Object;

    check-cast v0, Landroidx/camera/camera2/impl/CapturePipelineImpl;

    invoke-static {p4}, Lr57;->b(Ljava/lang/Object;)V

    move-object v9, p2

    move p2, p1

    move-object p1, v9

    goto/16 :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p4}, Lr57;->b(Ljava/lang/Object;)V

    sget-object p4, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    invoke-static {v6}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p4

    const-string v2, "CapturePipeline#defaultNoFlashCapture"

    invoke-static {p4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-nez p2, :cond_4

    move p2, v5

    goto :goto_1

    :cond_4
    move p2, v4

    :goto_1
    invoke-static {v6}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_5

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "CapturePipeline#List<PipelineTask>.invoke: tasks = "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    sget-object p4, Landroidx/camera/camera2/impl/CapturePipelineImpl$PipelineTask;->PRE_CAPTURE:Landroidx/camera/camera2/impl/CapturePipelineImpl$PipelineTask;

    invoke-interface {p3, p4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_b

    invoke-static {v6}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_6

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p4

    const-string v2, "CapturePipeline#List<PipelineTask>.invoke: starting PRE_CAPTURE"

    invoke-static {p4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    if-eqz p2, :cond_9

    invoke-static {v6}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_7

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p4

    const-string v2, "CapturePipeline#defaultNoFlashCapture: Locking 3A"

    invoke-static {p4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-static {}, Landroidx/camera/camera2/impl/CapturePipelineKt;->access$getCHECK_3A_TIMEOUT_IN_NS$p()J

    move-result-wide v7

    iput-object p0, v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$defaultNoFlashCapture$1;->L$0:Ljava/lang/Object;

    iput-object p3, v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$defaultNoFlashCapture$1;->L$1:Ljava/lang/Object;

    iput-object p1, v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$defaultNoFlashCapture$1;->L$2:Ljava/lang/Object;

    iput p2, v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$defaultNoFlashCapture$1;->I$0:I

    iput v5, v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$defaultNoFlashCapture$1;->label:I

    invoke-static {p0, v7, v8, v4, v0}, Landroidx/camera/camera2/impl/CapturePipelineImpl;->access$lockAf(Landroidx/camera/camera2/impl/CapturePipelineImpl;JZLe02;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_8

    return-object v1

    :cond_8
    move-object v0, p0

    :goto_2
    sget-object p4, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    invoke-static {v6}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_a

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p4

    const-string v1, "CapturePipeline#defaultNoFlashCapture: Locking 3A done"

    invoke-static {p4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_9
    move-object v0, p0

    :cond_a
    :goto_3
    invoke-static {v6}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_c

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p4

    const-string v1, "CapturePipeline#List<PipelineTask>.invoke: PRE_CAPTURE completed"

    invoke-static {p4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_b
    move-object v0, p0

    :cond_c
    :goto_4
    sget-object p4, Landroidx/camera/camera2/impl/CapturePipelineImpl$PipelineTask;->MAIN_CAPTURE:Landroidx/camera/camera2/impl/CapturePipelineImpl$PipelineTask;

    invoke-interface {p3, p4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_f

    invoke-static {v6}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_d

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p4

    const-string v1, "CapturePipeline#List<PipelineTask>.invoke: starting MAIN_CAPTURE"

    invoke-static {p4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    if-eqz p1, :cond_e

    invoke-direct {v0, p1}, Landroidx/camera/camera2/impl/CapturePipelineImpl;->submitRequestInternal(Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;)Ljava/util/List;

    move-result-object p1

    invoke-static {v6}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_10

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p4

    const-string v1, "CapturePipeline#List<PipelineTask>.invoke: MAIN_CAPTURE completed"

    invoke-static {p4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_e
    const-string p0, "Required value was null."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_f
    invoke-static {v3}, Lga1;->a(Ljava/lang/Object;)Lyp1;

    move-result-object p1

    invoke-static {p1}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :cond_10
    :goto_5
    sget-object p4, Landroidx/camera/camera2/impl/CapturePipelineImpl$PipelineTask;->POST_CAPTURE:Landroidx/camera/camera2/impl/CapturePipelineImpl$PipelineTask;

    invoke-interface {p3, p4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_12

    iget-object p3, v0, Landroidx/camera/camera2/impl/CapturePipelineImpl;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    invoke-virtual {p3}, Landroidx/camera/camera2/impl/UseCaseThreads;->getSequentialScope()Ly22;

    move-result-object p3

    new-instance p4, Landroidx/camera/camera2/impl/CapturePipelineImpl$defaultNoFlashCapture$$inlined$invoke$1;

    if-eqz p2, :cond_11

    move v4, v5

    :cond_11
    invoke-direct {p4, p1, v3, v4, p0}, Landroidx/camera/camera2/impl/CapturePipelineImpl$defaultNoFlashCapture$$inlined$invoke$1;-><init>(Ljava/util/List;Le02;ZLandroidx/camera/camera2/impl/CapturePipelineImpl;)V

    const/4 p0, 0x3

    invoke-static {p3, v3, v3, p4, p0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    :cond_12
    return-object p1
.end method

.method private final getConvergeCondition(Z)Lnl3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lnl3<",
            "Landroidx/camera/camera2/pipe/FrameMetadata;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Ln31;

    invoke-direct {v0, p0, p1}, Ln31;-><init>(Landroidx/camera/camera2/impl/CapturePipelineImpl;Z)V

    return-object v0
.end method

.method private static final getConvergeCondition$lambda$0(Landroidx/camera/camera2/impl/CapturePipelineImpl;ZLandroidx/camera/camera2/pipe/FrameMetadata;)Z
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p2}, Landroidx/camera/camera2/impl/CapturePipelineImpl;->toCameraCaptureResult(Landroidx/camera/camera2/pipe/FrameMetadata;)Landroidx/camera/core/impl/CameraCaptureResult;

    move-result-object p0

    invoke-static {p0, p1}, Landroidx/camera/core/impl/ConvergenceUtils;->is3AConverged(Landroidx/camera/core/impl/CameraCaptureResult;Z)Z

    move-result p0

    return p0
.end method

.method private final getFrameMetadata(Le02;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "-",
            "Landroidx/camera/camera2/pipe/FrameMetadata;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Landroidx/camera/camera2/impl/CapturePipelineImpl$getFrameMetadata$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$getFrameMetadata$1;

    iget v1, v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$getFrameMetadata$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$getFrameMetadata$1;->label:I

    :goto_0
    move-object v5, v0

    goto :goto_1

    :cond_0
    new-instance v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$getFrameMetadata$1;

    invoke-direct {v0, p0, p1}, Landroidx/camera/camera2/impl/CapturePipelineImpl$getFrameMetadata$1;-><init>(Landroidx/camera/camera2/impl/CapturePipelineImpl;Le02;)V

    goto :goto_0

    :goto_1
    iget-object p1, v5, Landroidx/camera/camera2/impl/CapturePipelineImpl$getFrameMetadata$1;->result:Ljava/lang/Object;

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, v5, Landroidx/camera/camera2/impl/CapturePipelineImpl$getFrameMetadata$1;->label:I

    const/4 v8, 0x0

    const-string v9, "CXCP"

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-object v0, v5, Landroidx/camera/camera2/impl/CapturePipelineImpl$getFrameMetadata$1;->L$0:Ljava/lang/Object;

    check-cast v0, Landroidx/camera/camera2/impl/CapturePipelineImpl;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    move-object v1, p0

    goto :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v8

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl;->frameMetadata:Landroidx/camera/camera2/pipe/FrameMetadata;

    if-nez p1, :cond_6

    sget-object p1, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    invoke-static {v9}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p1

    const-string v1, "getFrameMetadata: waiting for result"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move p1, v2

    invoke-static {}, Landroidx/camera/camera2/impl/CapturePipelineKt;->access$getCHECK_FLASH_REQUIRED_TIMEOUT_IN_NS$p()J

    move-result-wide v2

    iput-object p0, v5, Landroidx/camera/camera2/impl/CapturePipelineImpl$getFrameMetadata$1;->L$0:Ljava/lang/Object;

    iput p1, v5, Landroidx/camera/camera2/impl/CapturePipelineImpl$getFrameMetadata$1;->label:I

    const/4 v4, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Landroidx/camera/camera2/impl/CapturePipelineImpl;->waitForResult$default(Landroidx/camera/camera2/impl/CapturePipelineImpl;JLnl3;Le02;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    move-object v0, v1

    :goto_2
    check-cast p1, Landroidx/camera/camera2/pipe/FrameInfo;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Landroidx/camera/camera2/pipe/FrameInfo;->getMetadata()Landroidx/camera/camera2/pipe/FrameMetadata;

    move-result-object v8

    :cond_5
    iput-object v8, v0, Landroidx/camera/camera2/impl/CapturePipelineImpl;->frameMetadata:Landroidx/camera/camera2/pipe/FrameMetadata;

    goto :goto_3

    :cond_6
    move-object v1, p0

    :goto_3
    sget-object p0, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    invoke-static {v9}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "getFrameMetadata: frameMetadata = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroidx/camera/camera2/impl/CapturePipelineImpl;->access$getFrameMetadata$p(Landroidx/camera/camera2/impl/CapturePipelineImpl;)Landroidx/camera/camera2/pipe/FrameMetadata;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object p0, v1, Landroidx/camera/camera2/impl/CapturePipelineImpl;->frameMetadata:Landroidx/camera/camera2/pipe/FrameMetadata;

    return-object p0
.end method

.method private final getHasFlashUnit()Z
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl;->hasFlashUnit$delegate:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private final getUseCaseCameraState()Landroidx/camera/camera2/impl/UseCaseCameraState;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl;->useCaseCameraState$delegate:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/impl/UseCaseCameraState;

    return-object p0
.end method

.method private static final hasFlashUnit_delegate$lambda$0(Landroidx/camera/camera2/impl/CameraProperties;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Landroidx/camera/camera2/compat/workaround/FlashAvailabilityCheckerKt;->isFlashAvailable$default(Landroidx/camera/camera2/impl/CameraProperties;ZILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private final invoke(Ljava/util/List;Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;Lnl3;Lnl3;Le02;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/camera2/impl/CapturePipelineImpl$PipelineTask;",
            ">;",
            "Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;",
            "Lnl3<",
            "-",
            "Le02<",
            "-",
            "Lj59;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lnl3<",
            "-",
            "Le02<",
            "-",
            "Lj59;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Le02<",
            "-",
            "Ljava/util/List<",
            "+",
            "Lmk2<",
            "Ljava/lang/Void;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    const-string v0, "CXCP"

    invoke-static {v0}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CapturePipeline#List<PipelineTask>.invoke: tasks = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v1, Landroidx/camera/camera2/impl/CapturePipelineImpl$PipelineTask;->PRE_CAPTURE:Landroidx/camera/camera2/impl/CapturePipelineImpl$PipelineTask;

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CapturePipeline#List<PipelineTask>.invoke: starting PRE_CAPTURE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-interface {p3, p5}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p3

    const-string p5, "CapturePipeline#List<PipelineTask>.invoke: PRE_CAPTURE completed"

    invoke-static {p3, p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-object p3, Landroidx/camera/camera2/impl/CapturePipelineImpl$PipelineTask;->MAIN_CAPTURE:Landroidx/camera/camera2/impl/CapturePipelineImpl$PipelineTask;

    invoke-interface {p1, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    const/4 p5, 0x0

    if-eqz p3, :cond_6

    invoke-static {v0}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p3

    const-string v1, "CapturePipeline#List<PipelineTask>.invoke: starting MAIN_CAPTURE"

    invoke-static {p3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz p2, :cond_5

    invoke-direct {p0, p2}, Landroidx/camera/camera2/impl/CapturePipelineImpl;->submitRequestInternal(Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;)Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-static {v0}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p3

    const-string v0, "CapturePipeline#List<PipelineTask>.invoke: MAIN_CAPTURE completed"

    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    sget-object p3, Lj59;->a:Lj59;

    goto :goto_0

    :cond_5
    const-string p0, "Required value was null."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object p5

    :cond_6
    invoke-static {p5}, Lga1;->a(Ljava/lang/Object;)Lyp1;

    move-result-object p2

    invoke-static {p2}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    :goto_0
    move-object p3, p2

    check-cast p3, Ljava/util/List;

    sget-object v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$PipelineTask;->POST_CAPTURE:Landroidx/camera/camera2/impl/CapturePipelineImpl$PipelineTask;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p0, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    invoke-virtual {p0}, Landroidx/camera/camera2/impl/UseCaseThreads;->getSequentialScope()Ly22;

    move-result-object p0

    new-instance p1, Landroidx/camera/camera2/impl/CapturePipelineImpl$invoke$7$1;

    invoke-direct {p1, p3, p4, p5}, Landroidx/camera/camera2/impl/CapturePipelineImpl$invoke$7$1;-><init>(Ljava/util/List;Lnl3;Le02;)V

    const/4 p3, 0x3

    invoke-static {p0, p5, p5, p1, p3}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    :cond_7
    sget-object p0, Lj59;->a:Lj59;

    return-object p2
.end method

.method private final invokeCaptureTasks(Ljava/util/List;IIILandroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;Le02;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/camera2/impl/CapturePipelineImpl$PipelineTask;",
            ">;III",
            "Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;",
            "Le02<",
            "-",
            "Ljava/util/List<",
            "+",
            "Lmk2<",
            "Ljava/lang/Void;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p6, Landroidx/camera/camera2/impl/CapturePipelineImpl$invokeCaptureTasks$1;

    if-eqz v0, :cond_0

    move-object v0, p6

    check-cast v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$invokeCaptureTasks$1;

    iget v1, v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$invokeCaptureTasks$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$invokeCaptureTasks$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$invokeCaptureTasks$1;

    invoke-direct {v0, p0, p6}, Landroidx/camera/camera2/impl/CapturePipelineImpl$invokeCaptureTasks$1;-><init>(Landroidx/camera/camera2/impl/CapturePipelineImpl;Le02;)V

    :goto_0
    iget-object p6, v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$invokeCaptureTasks$1;->result:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$invokeCaptureTasks$1;->label:I

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x3

    const/4 v7, 0x0

    if-eqz v2, :cond_6

    if-eq v2, v5, :cond_5

    if-eq v2, v4, :cond_3

    if-eq v2, v6, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p6}, Lr57;->b(Ljava/lang/Object;)V

    return-object p6

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v7

    :cond_2
    invoke-static {p6}, Lr57;->b(Ljava/lang/Object;)V

    return-object p6

    :cond_3
    iget p3, v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$invokeCaptureTasks$1;->I$1:I

    iget p2, v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$invokeCaptureTasks$1;->I$0:I

    iget-object p1, v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$invokeCaptureTasks$1;->L$1:Ljava/lang/Object;

    move-object p5, p1

    check-cast p5, Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;

    iget-object p1, v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$invokeCaptureTasks$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-static {p6}, Lr57;->b(Ljava/lang/Object;)V

    :cond_4
    move-object p4, p1

    move-object p1, p5

    goto :goto_2

    :cond_5
    invoke-static {p6}, Lr57;->b(Ljava/lang/Object;)V

    return-object p6

    :cond_6
    invoke-static {p6}, Lr57;->b(Ljava/lang/Object;)V

    sget-object p6, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    const-string p6, "CXCP"

    invoke-static {p6}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result p6

    if-eqz p6, :cond_7

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p6

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "CapturePipeline#invokeCaptureTasks: tasks = "

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", captureMode = "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", flashMode = "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", flashType = "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iput-object v7, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl;->frameMetadata:Landroidx/camera/camera2/pipe/FrameMetadata;

    sget-object p6, Landroidx/camera/camera2/impl/CapturePipelineImpl$PipelineTask;->MAIN_CAPTURE:Landroidx/camera/camera2/impl/CapturePipelineImpl$PipelineTask;

    invoke-interface {p1, p6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_9

    if-eqz p5, :cond_8

    goto :goto_1

    :cond_8
    const-string p0, "Must not be null for PipelineType.MAIN_CAPTURE"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v7

    :cond_9
    :goto_1
    if-ne p3, v6, :cond_b

    iput v5, v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$invokeCaptureTasks$1;->label:I

    invoke-direct {p0, p5, p2, p1, v0}, Landroidx/camera/camera2/impl/CapturePipelineImpl;->screenFlashCapture(Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;ILjava/util/List;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_a

    goto :goto_3

    :cond_a
    return-object p0

    :cond_b
    iput-object p1, v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$invokeCaptureTasks$1;->L$0:Ljava/lang/Object;

    iput-object p5, v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$invokeCaptureTasks$1;->L$1:Ljava/lang/Object;

    iput p2, v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$invokeCaptureTasks$1;->I$0:I

    iput p3, v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$invokeCaptureTasks$1;->I$1:I

    iput v4, v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$invokeCaptureTasks$1;->label:I

    invoke-direct {p0, p4, v0}, Landroidx/camera/camera2/impl/CapturePipelineImpl;->isTorchAsFlash(ILe02;)Ljava/lang/Object;

    move-result-object p6

    if-ne p6, v1, :cond_4

    goto :goto_3

    :goto_2
    check-cast p6, Ljava/lang/Boolean;

    invoke-virtual {p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p5

    if-eqz p5, :cond_d

    iput-object v7, v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$invokeCaptureTasks$1;->L$0:Ljava/lang/Object;

    iput-object v7, v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$invokeCaptureTasks$1;->L$1:Ljava/lang/Object;

    iput v6, v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$invokeCaptureTasks$1;->label:I

    move-object p5, v0

    invoke-direct/range {p0 .. p5}, Landroidx/camera/camera2/impl/CapturePipelineImpl;->torchAsFlashCapture(Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;IILjava/util/List;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_c

    goto :goto_3

    :cond_c
    return-object p0

    :cond_d
    move-object p5, v0

    iput-object v7, p5, Landroidx/camera/camera2/impl/CapturePipelineImpl$invokeCaptureTasks$1;->L$0:Ljava/lang/Object;

    iput-object v7, p5, Landroidx/camera/camera2/impl/CapturePipelineImpl$invokeCaptureTasks$1;->L$1:Ljava/lang/Object;

    iput v3, p5, Landroidx/camera/camera2/impl/CapturePipelineImpl$invokeCaptureTasks$1;->label:I

    invoke-direct/range {p0 .. p5}, Landroidx/camera/camera2/impl/CapturePipelineImpl;->defaultCapture(Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;IILjava/util/List;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_e

    :goto_3
    return-object v1

    :cond_e
    return-object p0
.end method

.method private final isPhysicalFlashRequired(ILe02;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Le02<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Landroidx/camera/camera2/impl/CapturePipelineImpl$isPhysicalFlashRequired$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$isPhysicalFlashRequired$1;

    iget v1, v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$isPhysicalFlashRequired$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$isPhysicalFlashRequired$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$isPhysicalFlashRequired$1;

    invoke-direct {v0, p0, p2}, Landroidx/camera/camera2/impl/CapturePipelineImpl$isPhysicalFlashRequired$1;-><init>(Landroidx/camera/camera2/impl/CapturePipelineImpl;Le02;)V

    :goto_0
    iget-object p2, v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$isPhysicalFlashRequired$1;->result:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$isPhysicalFlashRequired$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    if-eqz p1, :cond_5

    if-eq p1, v4, :cond_4

    const/4 p0, 0x2

    if-eq p1, p0, :cond_8

    const/4 p0, 0x3

    if-ne p1, p0, :cond_3

    goto :goto_3

    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(I)V

    throw p0

    :cond_4
    :goto_1
    move v3, v4

    goto :goto_3

    :cond_5
    iput v4, v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$isPhysicalFlashRequired$1;->label:I

    invoke-direct {p0, v0}, Landroidx/camera/camera2/impl/CapturePipelineImpl;->getFrameMetadata(Le02;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_6

    return-object v1

    :cond_6
    :goto_2
    check-cast p2, Landroidx/camera/camera2/pipe/FrameMetadata;

    if-eqz p2, :cond_8

    sget-object p0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p2, p0}, Landroidx/camera/camera2/pipe/FrameMetadata;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 p1, 0x4

    if-ne p0, p1, :cond_8

    goto :goto_1

    :cond_8
    :goto_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private final isTorchAsFlash(ILe02;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Le02<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/camera/camera2/impl/CapturePipelineImpl;->getTemplate()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl;->useTorchAsFlash:Landroidx/camera/camera2/compat/workaround/UseTorchAsFlash;

    new-instance v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$isTorchAsFlash$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/camera/camera2/impl/CapturePipelineImpl$isTorchAsFlash$2;-><init>(Landroidx/camera/camera2/impl/CapturePipelineImpl;Le02;)V

    invoke-interface {p1, v0, p2}, Landroidx/camera/camera2/compat/workaround/UseTorchAsFlash;->shouldUseTorchAsFlash(Lnl3;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private final lockAf(JZLe02;)Ljava/lang/Object;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ",
            "Le02<",
            "-",
            "Landroidx/camera/camera2/pipe/Result3A;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    instance-of v2, v1, Landroidx/camera/camera2/impl/CapturePipelineImpl$lockAf$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Landroidx/camera/camera2/impl/CapturePipelineImpl$lockAf$1;

    iget v3, v2, Landroidx/camera/camera2/impl/CapturePipelineImpl$lockAf$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Landroidx/camera/camera2/impl/CapturePipelineImpl$lockAf$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Landroidx/camera/camera2/impl/CapturePipelineImpl$lockAf$1;

    invoke-direct {v2, v0, v1}, Landroidx/camera/camera2/impl/CapturePipelineImpl$lockAf$1;-><init>(Landroidx/camera/camera2/impl/CapturePipelineImpl;Le02;)V

    :goto_0
    iget-object v1, v2, Landroidx/camera/camera2/impl/CapturePipelineImpl$lockAf$1;->result:Ljava/lang/Object;

    sget-object v3, La32;->COROUTINE_SUSPENDED:La32;

    iget v4, v2, Landroidx/camera/camera2/impl/CapturePipelineImpl$lockAf$1;->label:I

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v4, :cond_5

    if-eq v4, v7, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    invoke-static {v1}, Lr57;->b(Ljava/lang/Object;)V

    return-object v1

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-object v8

    :cond_2
    iget-object v0, v2, Landroidx/camera/camera2/impl/CapturePipelineImpl$lockAf$1;->L$0:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljava/lang/AutoCloseable;

    :try_start_0
    invoke-static {v1}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    move-object v3, v4

    move-object v4, v2

    move-object v2, v8

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    :goto_1
    move-object v1, v0

    goto/16 :goto_5

    :cond_3
    iget-boolean v4, v2, Landroidx/camera/camera2/impl/CapturePipelineImpl$lockAf$1;->Z$0:Z

    iget-wide v9, v2, Landroidx/camera/camera2/impl/CapturePipelineImpl$lockAf$1;->J$0:J

    invoke-static {v1}, Lr57;->b(Ljava/lang/Object;)V

    :cond_4
    move-wide/from16 v17, v9

    goto :goto_2

    :cond_5
    invoke-static {v1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object v1, v0, Landroidx/camera/camera2/impl/CapturePipelineImpl;->useCaseGraphContext:Landroidx/camera/camera2/config/UseCaseGraphContext;

    invoke-virtual {v1}, Landroidx/camera/camera2/config/UseCaseGraphContext;->getGraph()Landroidx/camera/camera2/pipe/CameraGraph;

    move-result-object v1

    move-wide/from16 v9, p1

    iput-wide v9, v2, Landroidx/camera/camera2/impl/CapturePipelineImpl$lockAf$1;->J$0:J

    move/from16 v4, p3

    iput-boolean v4, v2, Landroidx/camera/camera2/impl/CapturePipelineImpl$lockAf$1;->Z$0:Z

    iput v7, v2, Landroidx/camera/camera2/impl/CapturePipelineImpl$lockAf$1;->label:I

    invoke-interface {v1, v2}, Landroidx/camera/camera2/pipe/CameraGraphBase;->acquireSession(Le02;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_4

    move-object v0, v3

    goto/16 :goto_4

    :goto_2
    check-cast v1, Ljava/lang/AutoCloseable;

    move-object v7, v3

    :try_start_1
    move-object v3, v1

    check-cast v3, Landroidx/camera/camera2/pipe/CameraGraph$Session;

    sget-object v9, Landroidx/camera/camera2/pipe/Lock3ABehavior;->Companion:Landroidx/camera/camera2/pipe/Lock3ABehavior$Companion;

    invoke-virtual {v9}, Landroidx/camera/camera2/pipe/Lock3ABehavior$Companion;->getAFTER_CURRENT_SCAN-hRqSH3k()I

    move-result v9

    invoke-static {v9}, Landroidx/camera/camera2/pipe/Lock3ABehavior;->box-impl(I)Landroidx/camera/camera2/pipe/Lock3ABehavior;

    move-result-object v11

    invoke-direct {v0, v4}, Landroidx/camera/camera2/impl/CapturePipelineImpl;->getConvergeCondition(Z)Lnl3;

    move-result-object v14

    invoke-static {}, Landroidx/camera/camera2/impl/CapturePipelineKt;->access$getCHECK_3A_TIMEOUT_IN_NS$p()J

    move-result-wide v19

    iput-object v1, v2, Landroidx/camera/camera2/impl/CapturePipelineImpl$lockAf$1;->L$0:Ljava/lang/Object;

    iput v6, v2, Landroidx/camera/camera2/impl/CapturePipelineImpl$lockAf$1;->label:I

    const/4 v4, 0x0

    move v0, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v9, v7

    const/4 v7, 0x0

    move-object v10, v8

    const/4 v8, 0x0

    move-object v12, v9

    const/4 v9, 0x0

    move-object v13, v10

    const/4 v10, 0x0

    move-object v15, v12

    const/4 v12, 0x0

    move-object/from16 v16, v13

    const/4 v13, 0x0

    move-object/from16 v21, v15

    const/4 v15, 0x0

    move-object/from16 v22, v16

    const/16 v16, 0x0

    move-object/from16 v23, v22

    const/16 v22, 0x1a3f

    move-object/from16 v24, v23

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v21, v2

    move-object/from16 v2, v24

    invoke-static/range {v3 .. v23}, Landroidx/camera/camera2/pipe/CameraGraph$Session;->lock3A--tS25XM$default(Landroidx/camera/camera2/pipe/CameraGraph$Session;Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/AeMode;Lnl3;Lnl3;IJJLe02;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object/from16 v4, v21

    if-ne v3, v0, :cond_6

    goto :goto_4

    :cond_6
    move-object/from16 v25, v3

    move-object v3, v1

    move-object/from16 v1, v25

    :goto_3
    :try_start_2
    check-cast v1, Lmk2;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v3, v2}, Laq5;->c(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    iput-object v2, v4, Landroidx/camera/camera2/impl/CapturePipelineImpl$lockAf$1;->L$0:Ljava/lang/Object;

    const/4 v2, 0x3

    iput v2, v4, Landroidx/camera/camera2/impl/CapturePipelineImpl$lockAf$1;->label:I

    invoke-interface {v1, v4}, Lmk2;->Z(Le02;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_7

    :goto_4
    return-object v0

    :cond_7
    return-object v1

    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object v4, v3

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v4, v1

    goto/16 :goto_1

    :goto_5
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception v0

    invoke-static {v4, v1}, Laq5;->c(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private final screenFlashCapture(Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;ILjava/util/List;Le02;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;",
            "I",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/camera2/impl/CapturePipelineImpl$PipelineTask;",
            ">;",
            "Le02<",
            "-",
            "Ljava/util/List<",
            "+",
            "Lmk2<",
            "Ljava/lang/Void;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Landroidx/camera/camera2/impl/CapturePipelineImpl$screenFlashCapture$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$screenFlashCapture$1;

    iget v1, v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$screenFlashCapture$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$screenFlashCapture$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$screenFlashCapture$1;

    invoke-direct {v0, p0, p4}, Landroidx/camera/camera2/impl/CapturePipelineImpl$screenFlashCapture$1;-><init>(Landroidx/camera/camera2/impl/CapturePipelineImpl;Le02;)V

    :goto_0
    iget-object p4, v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$screenFlashCapture$1;->result:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$screenFlashCapture$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "CXCP"

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget p2, v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$screenFlashCapture$1;->I$0:I

    iget-object p1, v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$screenFlashCapture$1;->L$2:Ljava/lang/Object;

    check-cast p1, Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;

    iget-object p3, v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$screenFlashCapture$1;->L$1:Ljava/lang/Object;

    check-cast p3, Ljava/util/List;

    iget-object v0, v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$screenFlashCapture$1;->L$0:Ljava/lang/Object;

    check-cast v0, Landroidx/camera/camera2/impl/CapturePipelineImpl;

    invoke-static {p4}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p4}, Lr57;->b(Ljava/lang/Object;)V

    sget-object p4, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    invoke-static {v5}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p4

    const-string v2, "CapturePipeline#screenFlashCapture"

    invoke-static {p4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-static {v5}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_4

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "CapturePipeline#List<PipelineTask>.invoke: tasks = "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    sget-object p4, Landroidx/camera/camera2/impl/CapturePipelineImpl$PipelineTask;->PRE_CAPTURE:Landroidx/camera/camera2/impl/CapturePipelineImpl$PipelineTask;

    invoke-interface {p3, p4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_7

    invoke-static {v5}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_5

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p4

    const-string v2, "CapturePipeline#List<PipelineTask>.invoke: starting PRE_CAPTURE"

    invoke-static {p4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iput-object p0, v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$screenFlashCapture$1;->L$0:Ljava/lang/Object;

    iput-object p3, v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$screenFlashCapture$1;->L$1:Ljava/lang/Object;

    iput-object p1, v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$screenFlashCapture$1;->L$2:Ljava/lang/Object;

    iput p2, v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$screenFlashCapture$1;->I$0:I

    iput v4, v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$screenFlashCapture$1;->label:I

    invoke-virtual {p0, p2, v0}, Landroidx/camera/camera2/impl/CapturePipelineImpl;->invokeScreenFlashPreCaptureTasks(ILe02;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_6

    return-object v1

    :cond_6
    move-object v0, p0

    :goto_1
    sget-object p4, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    invoke-static {v5}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_8

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p4

    const-string v1, "CapturePipeline#List<PipelineTask>.invoke: PRE_CAPTURE completed"

    invoke-static {p4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    move-object v0, p0

    :cond_8
    :goto_2
    sget-object p4, Landroidx/camera/camera2/impl/CapturePipelineImpl$PipelineTask;->MAIN_CAPTURE:Landroidx/camera/camera2/impl/CapturePipelineImpl$PipelineTask;

    invoke-interface {p3, p4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_b

    invoke-static {v5}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_9

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p4

    const-string v1, "CapturePipeline#List<PipelineTask>.invoke: starting MAIN_CAPTURE"

    invoke-static {p4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    if-eqz p1, :cond_a

    invoke-direct {v0, p1}, Landroidx/camera/camera2/impl/CapturePipelineImpl;->submitRequestInternal(Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;)Ljava/util/List;

    move-result-object p1

    invoke-static {v5}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_c

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p4

    const-string v1, "CapturePipeline#List<PipelineTask>.invoke: MAIN_CAPTURE completed"

    invoke-static {p4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_a
    const-string p0, "Required value was null."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_b
    invoke-static {v3}, Lga1;->a(Ljava/lang/Object;)Lyp1;

    move-result-object p1

    invoke-static {p1}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :cond_c
    :goto_3
    sget-object p4, Landroidx/camera/camera2/impl/CapturePipelineImpl$PipelineTask;->POST_CAPTURE:Landroidx/camera/camera2/impl/CapturePipelineImpl$PipelineTask;

    invoke-interface {p3, p4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_d

    iget-object p3, v0, Landroidx/camera/camera2/impl/CapturePipelineImpl;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    invoke-virtual {p3}, Landroidx/camera/camera2/impl/UseCaseThreads;->getSequentialScope()Ly22;

    move-result-object p3

    new-instance p4, Landroidx/camera/camera2/impl/CapturePipelineImpl$screenFlashCapture$$inlined$invoke$1;

    invoke-direct {p4, p1, v3, p0, p2}, Landroidx/camera/camera2/impl/CapturePipelineImpl$screenFlashCapture$$inlined$invoke$1;-><init>(Ljava/util/List;Le02;Landroidx/camera/camera2/impl/CapturePipelineImpl;I)V

    const/4 p0, 0x3

    invoke-static {p3, v3, v3, p4, p0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    :cond_d
    return-object p1
.end method

.method private final submitRequestInternal(Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;",
            ")",
            "Ljava/util/List<",
            "Lmk2<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    const-string v0, "CXCP"

    invoke-static {v0}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CapturePipeline#submitRequestInternal; Submitting "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;->getConfigs()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " with CameraPipe"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;->getConfigs()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/camera/core/impl/CaptureConfig;

    new-instance v6, Lyp1;

    invoke-direct {v6}, Lyp1;-><init>()V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_0
    iget-object v7, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl;->configAdapter:Landroidx/camera/camera2/adapter/CaptureConfigAdapter;

    invoke-virtual {p1}, Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;->getRequestTemplate-fGx8uWA()I

    move-result v8

    invoke-virtual {p1}, Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;->getSessionConfigOptions()Landroidx/camera/core/impl/Config;

    move-result-object v9

    new-instance v10, Landroidx/camera/camera2/impl/CapturePipelineImpl$submitRequestInternal$requests$1$1;

    invoke-direct {v10, v6}, Landroidx/camera/camera2/impl/CapturePipelineImpl$submitRequestInternal$requests$1$1;-><init>(Lxp1;)V

    invoke-static {v10}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v7, v4, v8, v9, v10}, Landroidx/camera/camera2/adapter/CaptureConfigAdapter;->mapToRequest-nAberiA(Landroidx/camera/core/impl/CaptureConfig;ILandroidx/camera/core/impl/Config;Ljava/util/List;)Landroidx/camera/camera2/pipe/Request;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    sget-object v7, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    invoke-static {v0}, Landroidx/camera/core/Logger;->isInfoEnabled(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v7

    const-string v8, "CapturePipeline#submitRequestInternal: configAdapter.mapToRequest failed!"

    invoke-static {v7, v8, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    new-instance v7, Landroidx/camera/core/ImageCaptureException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Capture request failed with reason "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    invoke-direct {v7, v9, v8, v4}, Landroidx/camera/core/ImageCaptureException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v6, v7}, Lyp1;->e(Ljava/lang/Throwable;)Z

    :goto_1
    if-eqz v5, :cond_1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    return-object v1

    :cond_4
    iget-object p1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    invoke-virtual {p1}, Landroidx/camera/camera2/impl/UseCaseThreads;->getSequentialScope()Ly22;

    move-result-object p1

    new-instance v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$submitRequestInternal$$inlined$confineLaunch$1;

    invoke-direct {v0, v5, p0, v1, v3}, Landroidx/camera/camera2/impl/CapturePipelineImpl$submitRequestInternal$$inlined$confineLaunch$1;-><init>(Le02;Landroidx/camera/camera2/impl/CapturePipelineImpl;Ljava/util/List;Ljava/util/List;)V

    const/4 p0, 0x3

    invoke-static {p1, v5, v5, v0, p0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    return-object v1
.end method

.method private final toCameraCaptureResult(Landroidx/camera/camera2/pipe/FrameMetadata;)Landroidx/camera/core/impl/CameraCaptureResult;
    .locals 6

    new-instance v4, Landroidx/camera/camera2/impl/CapturePipelineImpl$toCameraCaptureResult$frameInfo$1;

    invoke-direct {v4, p1, p0}, Landroidx/camera/camera2/impl/CapturePipelineImpl$toCameraCaptureResult$frameInfo$1;-><init>(Landroidx/camera/camera2/pipe/FrameMetadata;Landroidx/camera/camera2/impl/CapturePipelineImpl;)V

    new-instance v0, Landroidx/camera/camera2/adapter/CaptureResultAdapter;

    iget-object v1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl;->emptyRequestMetadata:Landroidx/camera/camera2/impl/CapturePipelineImpl$emptyRequestMetadata$1;

    invoke-interface {p1}, Landroidx/camera/camera2/pipe/FrameMetadata;->getFrameNumber-Ugla2oM()J

    move-result-wide v2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroidx/camera/camera2/adapter/CaptureResultAdapter;-><init>(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameInfo;Ljh2;)V

    return-object v0
.end method

.method private final torchApplyCapture(Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;IJLjava/util/List;ZLe02;)Ljava/lang/Object;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;",
            "IJ",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/camera2/impl/CapturePipelineImpl$PipelineTask;",
            ">;Z",
            "Le02<",
            "-",
            "Ljava/util/List<",
            "+",
            "Lmk2<",
            "Ljava/lang/Void;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v4, p0

    move/from16 v0, p2

    move-object/from16 v1, p5

    move-object/from16 v2, p7

    instance-of v3, v2, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;

    iget v5, v3, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->label:I

    const/high16 v6, -0x80000000

    and-int v7, v5, v6

    if-eqz v7, :cond_0

    sub-int/2addr v5, v6

    iput v5, v3, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->label:I

    :goto_0
    move-object v11, v3

    goto :goto_1

    :cond_0
    new-instance v3, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;

    invoke-direct {v3, v4, v2}, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;-><init>(Landroidx/camera/camera2/impl/CapturePipelineImpl;Le02;)V

    goto :goto_0

    :goto_1
    iget-object v2, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->result:Ljava/lang/Object;

    sget-object v3, La32;->COROUTINE_SUSPENDED:La32;

    iget v5, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->label:I

    const/4 v14, 0x3

    const/4 v6, 0x1

    const-string v16, "CXCP"

    const/4 v7, 0x0

    packed-switch v5, :pswitch_data_0

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-object v7

    :pswitch_0
    iget v0, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->I$2:I

    iget v1, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->I$1:I

    iget-boolean v3, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->Z$0:Z

    iget v5, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->I$0:I

    iget-object v8, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->L$2:Ljava/lang/Object;

    check-cast v8, Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;

    iget-object v9, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->L$1:Ljava/lang/Object;

    check-cast v9, Ljava/util/List;

    iget-object v10, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->L$0:Ljava/lang/Object;

    check-cast v10, Landroidx/camera/camera2/impl/CapturePipelineImpl;

    invoke-static {v2}, Lr57;->b(Ljava/lang/Object;)V

    move v15, v6

    move-object v14, v7

    goto/16 :goto_12

    :pswitch_1
    iget v0, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->I$2:I

    iget v1, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->I$1:I

    iget-boolean v3, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->Z$0:Z

    iget v5, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->I$0:I

    iget-object v8, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->L$2:Ljava/lang/Object;

    check-cast v8, Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;

    iget-object v9, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->L$1:Ljava/lang/Object;

    check-cast v9, Ljava/util/List;

    iget-object v10, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->L$0:Ljava/lang/Object;

    check-cast v10, Landroidx/camera/camera2/impl/CapturePipelineImpl;

    invoke-static {v2}, Lr57;->b(Ljava/lang/Object;)V

    move v15, v6

    move-object v14, v7

    goto/16 :goto_f

    :pswitch_2
    iget v0, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->I$2:I

    iget v1, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->I$1:I

    iget-boolean v3, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->Z$0:Z

    iget v5, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->I$0:I

    iget-object v8, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->L$3:Ljava/lang/Object;

    check-cast v8, Ljava/lang/AutoCloseable;

    iget-object v9, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->L$2:Ljava/lang/Object;

    check-cast v9, Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;

    iget-object v10, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->L$1:Ljava/lang/Object;

    check-cast v10, Ljava/util/List;

    iget-object v11, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->L$0:Ljava/lang/Object;

    check-cast v11, Landroidx/camera/camera2/impl/CapturePipelineImpl;

    :try_start_0
    invoke-static {v2}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v15, v6

    move-object v14, v7

    goto/16 :goto_d

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto/16 :goto_e

    :pswitch_3
    iget v0, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->I$2:I

    iget v1, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->I$1:I

    iget-boolean v5, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->Z$0:Z

    iget v8, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->I$0:I

    iget-object v9, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->L$3:Ljava/lang/Object;

    check-cast v9, Ljava/lang/AutoCloseable;

    iget-object v10, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->L$2:Ljava/lang/Object;

    check-cast v10, Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;

    iget-object v12, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->L$1:Ljava/lang/Object;

    check-cast v12, Ljava/util/List;

    iget-object v13, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->L$0:Ljava/lang/Object;

    check-cast v13, Landroidx/camera/camera2/impl/CapturePipelineImpl;

    :try_start_1
    invoke-static {v2}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v15, v6

    move-object v14, v7

    goto/16 :goto_c

    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object v8, v9

    goto/16 :goto_e

    :pswitch_4
    iget v0, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->I$2:I

    iget v1, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->I$1:I

    iget-boolean v5, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->Z$0:Z

    iget-wide v8, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->J$0:J

    iget v10, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->I$0:I

    iget-object v12, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->L$2:Ljava/lang/Object;

    check-cast v12, Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;

    iget-object v13, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->L$1:Ljava/lang/Object;

    check-cast v13, Ljava/util/List;

    iget-object v7, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->L$0:Ljava/lang/Object;

    check-cast v7, Landroidx/camera/camera2/impl/CapturePipelineImpl;

    invoke-static {v2}, Lr57;->b(Ljava/lang/Object;)V

    move-object v6, v7

    move v7, v10

    move-wide v9, v8

    move-object v8, v12

    move-object v12, v13

    goto/16 :goto_9

    :pswitch_5
    iget v0, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->I$2:I

    iget v1, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->I$1:I

    iget-boolean v5, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->Z$0:Z

    iget-wide v7, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->J$0:J

    iget v9, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->I$0:I

    iget-object v10, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->L$2:Ljava/lang/Object;

    check-cast v10, Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;

    iget-object v12, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->L$1:Ljava/lang/Object;

    check-cast v12, Ljava/util/List;

    iget-object v13, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->L$0:Ljava/lang/Object;

    check-cast v13, Landroidx/camera/camera2/impl/CapturePipelineImpl;

    invoke-static {v2}, Lr57;->b(Ljava/lang/Object;)V

    move v2, v0

    move-wide/from16 v23, v7

    move v7, v1

    move-object v8, v10

    :goto_2
    move-wide/from16 v0, v23

    goto/16 :goto_7

    :pswitch_6
    invoke-static {v2}, Lr57;->b(Ljava/lang/Object;)V

    sget-object v2, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    invoke-static/range {v16 .. v16}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v2

    const-string v5, "CapturePipeline#torchApplyCapture"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v2, v4, Landroidx/camera/camera2/impl/CapturePipelineImpl;->torchControl:Landroidx/camera/camera2/impl/TorchControl;

    invoke-virtual {v2}, Landroidx/camera/camera2/impl/TorchControl;->getTorchStateLiveData()Landroidx/lifecycle/LiveData;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_3

    move v2, v6

    goto :goto_4

    :cond_3
    :goto_3
    const/4 v2, 0x0

    :goto_4
    if-nez v2, :cond_5

    if-nez v0, :cond_4

    goto :goto_5

    :cond_4
    const/4 v5, 0x0

    goto :goto_6

    :cond_5
    :goto_5
    move v5, v6

    :goto_6
    invoke-static/range {v16 .. v16}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "CapturePipeline#List<PipelineTask>.invoke: tasks = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    sget-object v7, Landroidx/camera/camera2/impl/CapturePipelineImpl$PipelineTask;->PRE_CAPTURE:Landroidx/camera/camera2/impl/CapturePipelineImpl$PipelineTask;

    invoke-interface {v1, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1c

    invoke-static/range {v16 .. v16}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v7

    const-string v8, "CapturePipeline#List<PipelineTask>.invoke: starting PRE_CAPTURE"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    if-eqz v2, :cond_b

    invoke-static/range {v16 .. v16}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v7

    const-string v8, "CapturePipeline#torchApplyCapture: Setting torch"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-static {v4}, Landroidx/camera/camera2/impl/CapturePipelineImpl;->access$getTorchControl$p(Landroidx/camera/camera2/impl/CapturePipelineImpl;)Landroidx/camera/camera2/impl/TorchControl;

    move-result-object v17

    sget-object v7, Landroidx/camera/camera2/impl/TorchControl$TorchMode;->Companion:Landroidx/camera/camera2/impl/TorchControl$TorchMode$Companion;

    invoke-virtual {v7}, Landroidx/camera/camera2/impl/TorchControl$TorchMode$Companion;->getUSED_AS_FLASH-IRs_-R8()I

    move-result v18

    const/16 v21, 0x6

    const/16 v22, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v17 .. v22}, Landroidx/camera/camera2/impl/TorchControl;->setTorchAsync-Oup_wC0$camera_camera2$default(Landroidx/camera/camera2/impl/TorchControl;IZZILjava/lang/Object;)Lmk2;

    move-result-object v7

    iput-object v4, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->L$0:Ljava/lang/Object;

    iput-object v1, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->L$1:Ljava/lang/Object;

    move-object/from16 v8, p1

    iput-object v8, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->L$2:Ljava/lang/Object;

    iput v0, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->I$0:I

    move-wide/from16 v9, p3

    iput-wide v9, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->J$0:J

    move/from16 v12, p6

    iput-boolean v12, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->Z$0:Z

    iput v2, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->I$1:I

    iput v5, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->I$2:I

    iput v6, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->label:I

    invoke-interface {v7, v11}, Lmb4;->e0(Le02;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v3, :cond_9

    goto/16 :goto_11

    :cond_9
    move v7, v2

    move-object v13, v4

    move v2, v5

    move v5, v12

    move-object v12, v1

    move-wide/from16 v23, v9

    move v9, v0

    goto/16 :goto_2

    :goto_7
    sget-object v10, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    invoke-static/range {v16 .. v16}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v10

    const-string v6, "CapturePipeline#torchApplyCapture: Setting torch done"

    invoke-static {v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    move-object v10, v13

    goto :goto_8

    :cond_b
    move-object/from16 v8, p1

    move-wide/from16 v9, p3

    move/from16 v12, p6

    move v7, v2

    move v2, v5

    move v5, v12

    move-object v12, v1

    move-wide/from16 v23, v9

    move v9, v0

    move-object v10, v4

    move-wide/from16 v0, v23

    :goto_8
    if-eqz v5, :cond_13

    invoke-static/range {v16 .. v16}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v6

    const-string v13, "CapturePipeline#torchApplyCapture: Locking 3A for capture"

    invoke-static {v6, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    invoke-static {v4}, Landroidx/camera/camera2/impl/CapturePipelineImpl;->access$getUseCaseGraphContext$p(Landroidx/camera/camera2/impl/CapturePipelineImpl;)Landroidx/camera/camera2/config/UseCaseGraphContext;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/camera/camera2/config/UseCaseGraphContext;->getGraph()Landroidx/camera/camera2/pipe/CameraGraph;

    move-result-object v6

    iput-object v10, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->L$0:Ljava/lang/Object;

    iput-object v12, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->L$1:Ljava/lang/Object;

    iput-object v8, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->L$2:Ljava/lang/Object;

    iput v9, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->I$0:I

    iput-wide v0, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->J$0:J

    iput-boolean v5, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->Z$0:Z

    iput v7, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->I$1:I

    iput v2, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->I$2:I

    const/4 v13, 0x2

    iput v13, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->label:I

    invoke-interface {v6, v11}, Landroidx/camera/camera2/pipe/CameraGraphBase;->acquireSession(Le02;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v3, :cond_d

    goto/16 :goto_11

    :cond_d
    move-wide/from16 v23, v0

    move v0, v2

    move-object v2, v6

    move v1, v7

    move v7, v9

    move-object v6, v10

    move-wide/from16 v9, v23

    :goto_9
    check-cast v2, Ljava/lang/AutoCloseable;

    :try_start_2
    move-object v13, v2

    check-cast v13, Landroidx/camera/camera2/pipe/CameraGraph$Session;

    if-nez v7, :cond_e

    const/16 v18, 0x1

    goto :goto_a

    :cond_e
    const/16 v18, 0x0

    :goto_a
    if-nez v7, :cond_f

    const/16 v19, 0x1

    goto :goto_b

    :cond_f
    const/16 v19, 0x0

    :goto_b
    iput-object v6, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->L$0:Ljava/lang/Object;

    iput-object v12, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->L$1:Ljava/lang/Object;

    iput-object v8, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->L$2:Ljava/lang/Object;

    iput-object v2, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->L$3:Ljava/lang/Object;

    iput v7, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->I$0:I

    iput-boolean v5, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->Z$0:Z

    iput v1, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->I$1:I

    iput v0, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->I$2:I

    iput v14, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->label:I

    move-object/from16 v20, v8

    const/4 v8, 0x0

    move-object/from16 v21, v12

    const/4 v12, 0x4

    move/from16 v22, v5

    move-object v5, v13

    const/4 v13, 0x0

    move/from16 v14, v18

    move-object/from16 v18, v6

    move v6, v14

    move/from16 v17, v7

    move/from16 v7, v19

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-static/range {v5 .. v13}, Landroidx/camera/camera2/pipe/CameraGraph$Session;->lock3AForCapture$default(Landroidx/camera/camera2/pipe/CameraGraph$Session;ZZIJLe02;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-ne v5, v3, :cond_10

    goto/16 :goto_11

    :cond_10
    move-object v9, v2

    move-object v2, v5

    move/from16 v8, v17

    move-object/from16 v13, v18

    move-object/from16 v10, v20

    move-object/from16 v12, v21

    move/from16 v5, v22

    :goto_c
    :try_start_3
    check-cast v2, Lmk2;

    iput-object v13, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->L$0:Ljava/lang/Object;

    iput-object v12, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->L$1:Ljava/lang/Object;

    iput-object v10, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->L$2:Ljava/lang/Object;

    iput-object v9, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->L$3:Ljava/lang/Object;

    iput v8, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->I$0:I

    iput-boolean v5, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->Z$0:Z

    iput v1, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->I$1:I

    iput v0, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->I$2:I

    const/4 v6, 0x4

    iput v6, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->label:I

    invoke-interface {v2, v11}, Lmk2;->Z(Le02;)Ljava/lang/Object;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-ne v2, v3, :cond_11

    goto/16 :goto_11

    :cond_11
    move v3, v5

    move v5, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v12

    move-object v11, v13

    :goto_d
    :try_start_4
    check-cast v2, Landroidx/camera/camera2/pipe/Result3A;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {v8, v14}, Laq5;->c(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    sget-object v6, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    invoke-static/range {v16 .. v16}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "CapturePipeline#torchApplyCapture: Locking 3A for capture done, result3A = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    move v2, v1

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    goto/16 :goto_13

    :catchall_2
    move-exception v0

    move-object v1, v0

    move-object v8, v2

    :goto_e
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v0

    invoke-static {v8, v1}, Laq5;->c(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0

    :cond_13
    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eqz v2, :cond_1a

    if-nez v9, :cond_17

    invoke-static/range {v16 .. v16}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v6

    const-string v13, "CapturePipeline#torchApplyCapture: Locking 3A"

    invoke-static {v6, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    iput-object v10, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->L$0:Ljava/lang/Object;

    iput-object v12, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->L$1:Ljava/lang/Object;

    iput-object v8, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->L$2:Ljava/lang/Object;

    iput v9, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->I$0:I

    iput-boolean v5, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->Z$0:Z

    iput v7, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->I$1:I

    iput v2, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->I$2:I

    const/4 v6, 0x5

    iput v6, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->label:I

    invoke-static {v4, v0, v1, v15, v11}, Landroidx/camera/camera2/impl/CapturePipelineImpl;->access$lockAf(Landroidx/camera/camera2/impl/CapturePipelineImpl;JZLe02;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_15

    goto :goto_11

    :cond_15
    move v0, v2

    move v3, v5

    move v1, v7

    move v5, v9

    move-object v9, v12

    :goto_f
    sget-object v2, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    invoke-static/range {v16 .. v16}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v2

    const-string v6, "CapturePipeline#torchApplyCapture: Locking 3A done"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    :goto_10
    move v2, v1

    goto :goto_13

    :cond_17
    invoke-static/range {v16 .. v16}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_18

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v6

    const-string v13, "CapturePipeline#torchApplyCapture: Awaiting 3A convergence"

    invoke-static {v6, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    new-instance v6, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$3$8;

    invoke-direct {v6, v4}, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$3$8;-><init>(Landroidx/camera/camera2/impl/CapturePipelineImpl;)V

    iput-object v10, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->L$0:Ljava/lang/Object;

    iput-object v12, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->L$1:Ljava/lang/Object;

    iput-object v8, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->L$2:Ljava/lang/Object;

    iput v9, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->I$0:I

    iput-boolean v5, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->Z$0:Z

    iput v7, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->I$1:I

    iput v2, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->I$2:I

    const/4 v13, 0x6

    iput v13, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$1;->label:I

    invoke-static {v4, v0, v1, v6, v11}, Landroidx/camera/camera2/impl/CapturePipelineImpl;->access$waitForResult(Landroidx/camera/camera2/impl/CapturePipelineImpl;JLnl3;Le02;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_19

    :goto_11
    return-object v3

    :cond_19
    move v0, v2

    move v3, v5

    move v1, v7

    move v5, v9

    move-object v9, v12

    :goto_12
    sget-object v2, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    invoke-static/range {v16 .. v16}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v2

    const-string v6, "CapturePipeline#torchApplyCapture: 3A convergence waiting done"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    :cond_1a
    move v0, v2

    move v3, v5

    move v2, v7

    move v5, v9

    move-object v9, v12

    :goto_13
    invoke-static/range {v16 .. v16}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v1

    const-string v6, "CapturePipeline#List<PipelineTask>.invoke: PRE_CAPTURE completed"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    move v7, v5

    move v5, v3

    goto :goto_14

    :cond_1c
    move-object/from16 v8, p1

    move/from16 v12, p6

    move v15, v6

    const/4 v14, 0x0

    move v7, v0

    move-object v9, v1

    move-object v10, v4

    move v0, v5

    move v5, v12

    :goto_14
    sget-object v1, Landroidx/camera/camera2/impl/CapturePipelineImpl$PipelineTask;->MAIN_CAPTURE:Landroidx/camera/camera2/impl/CapturePipelineImpl$PipelineTask;

    invoke-interface {v9, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-static/range {v16 .. v16}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v1

    const-string v3, "CapturePipeline#List<PipelineTask>.invoke: starting MAIN_CAPTURE"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    if-eqz v8, :cond_1e

    invoke-direct {v10, v8}, Landroidx/camera/camera2/impl/CapturePipelineImpl;->submitRequestInternal(Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;)Ljava/util/List;

    move-result-object v1

    invoke-static/range {v16 .. v16}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v3

    const-string v6, "CapturePipeline#List<PipelineTask>.invoke: MAIN_CAPTURE completed"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    :cond_1e
    const-string v0, "Required value was null."

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-object v14

    :cond_1f
    invoke-static {v14}, Lga1;->a(Ljava/lang/Object;)Lyp1;

    move-result-object v1

    invoke-static {v1}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :cond_20
    :goto_15
    sget-object v3, Landroidx/camera/camera2/impl/CapturePipelineImpl$PipelineTask;->POST_CAPTURE:Landroidx/camera/camera2/impl/CapturePipelineImpl$PipelineTask;

    invoke-interface {v9, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    iget-object v3, v10, Landroidx/camera/camera2/impl/CapturePipelineImpl;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    invoke-virtual {v3}, Landroidx/camera/camera2/impl/UseCaseThreads;->getSequentialScope()Ly22;

    move-result-object v8

    move v3, v0

    new-instance v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1;

    if-eqz v2, :cond_21

    move v6, v15

    goto :goto_16

    :cond_21
    const/4 v6, 0x0

    :goto_16
    if-eqz v3, :cond_22

    goto :goto_17

    :cond_22
    const/4 v15, 0x0

    :goto_17
    const/4 v2, 0x0

    move v3, v6

    move v6, v15

    invoke-direct/range {v0 .. v7}, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1;-><init>(Ljava/util/List;Le02;ZLandroidx/camera/camera2/impl/CapturePipelineImpl;ZZI)V

    const/4 v2, 0x3

    invoke-static {v8, v14, v14, v0, v2}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    :cond_23
    return-object v1

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

.method private final torchAsFlashCapture(Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;IILjava/util/List;Le02;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;",
            "II",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/camera2/impl/CapturePipelineImpl$PipelineTask;",
            ">;",
            "Le02<",
            "-",
            "Ljava/util/List<",
            "+",
            "Lmk2<",
            "Ljava/lang/Void;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p5, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchAsFlashCapture$1;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchAsFlashCapture$1;

    iget v1, v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchAsFlashCapture$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchAsFlashCapture$1;->label:I

    :goto_0
    move-object v8, v0

    goto :goto_1

    :cond_0
    new-instance v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchAsFlashCapture$1;

    invoke-direct {v0, p0, p5}, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchAsFlashCapture$1;-><init>(Landroidx/camera/camera2/impl/CapturePipelineImpl;Le02;)V

    goto :goto_0

    :goto_1
    iget-object p5, v8, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchAsFlashCapture$1;->result:Ljava/lang/Object;

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, v8, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchAsFlashCapture$1;->label:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_5

    if-eq v1, v4, :cond_3

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    invoke-static {p5}, Lr57;->b(Ljava/lang/Object;)V

    return-object p5

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v5

    :cond_2
    invoke-static {p5}, Lr57;->b(Ljava/lang/Object;)V

    return-object p5

    :cond_3
    iget p2, v8, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchAsFlashCapture$1;->I$0:I

    iget-object p1, v8, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchAsFlashCapture$1;->L$1:Ljava/lang/Object;

    move-object p4, p1

    check-cast p4, Ljava/util/List;

    iget-object p1, v8, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchAsFlashCapture$1;->L$0:Ljava/lang/Object;

    check-cast p1, Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;

    invoke-static {p5}, Lr57;->b(Ljava/lang/Object;)V

    :cond_4
    move-object v6, p4

    goto :goto_2

    :cond_5
    invoke-static {p5}, Lr57;->b(Ljava/lang/Object;)V

    sget-object p5, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    const-string p5, "CXCP"

    invoke-static {p5}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_6

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p5

    const-string v1, "CapturePipeline#torchAsFlashCapture"

    invoke-static {p5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-direct {p0}, Landroidx/camera/camera2/impl/CapturePipelineImpl;->getHasFlashUnit()Z

    move-result p5

    if-eqz p5, :cond_a

    iput-object p1, v8, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchAsFlashCapture$1;->L$0:Ljava/lang/Object;

    iput-object p4, v8, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchAsFlashCapture$1;->L$1:Ljava/lang/Object;

    iput p2, v8, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchAsFlashCapture$1;->I$0:I

    iput v4, v8, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchAsFlashCapture$1;->label:I

    invoke-direct {p0, p3, v8}, Landroidx/camera/camera2/impl/CapturePipelineImpl;->isPhysicalFlashRequired(ILe02;)Ljava/lang/Object;

    move-result-object p5

    if-ne p5, v0, :cond_4

    goto :goto_5

    :goto_2
    check-cast p5, Ljava/lang/Boolean;

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_9

    move p3, v4

    move-object p5, v5

    invoke-static {}, Landroidx/camera/camera2/impl/CapturePipelineKt;->access$getCHECK_3A_WITH_FLASH_TIMEOUT_IN_NS$p()J

    move-result-wide v4

    iget-object p4, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl;->useTorchAsFlash:Landroidx/camera/camera2/compat/workaround/UseTorchAsFlash;

    invoke-interface {p4}, Landroidx/camera/camera2/compat/workaround/UseTorchAsFlash;->shouldDisableAePrecapture()Z

    move-result p4

    if-nez p4, :cond_7

    iget-object p4, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl;->videoUsageControl:Landroidx/camera/camera2/impl/VideoUsageControl;

    invoke-virtual {p4}, Landroidx/camera/camera2/impl/VideoUsageControl;->isInVideoUsage()Z

    move-result p4

    if-nez p4, :cond_7

    :goto_3
    move v7, p3

    goto :goto_4

    :cond_7
    const/4 p3, 0x0

    goto :goto_3

    :goto_4
    iput-object p5, v8, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchAsFlashCapture$1;->L$0:Ljava/lang/Object;

    iput-object p5, v8, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchAsFlashCapture$1;->L$1:Ljava/lang/Object;

    iput v3, v8, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchAsFlashCapture$1;->label:I

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v8}, Landroidx/camera/camera2/impl/CapturePipelineImpl;->torchApplyCapture(Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;IJLjava/util/List;ZLe02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_8

    goto :goto_5

    :cond_8
    return-object p0

    :cond_9
    move v3, p2

    move-object p4, v6

    :cond_a
    move-object v1, p0

    move-object p5, v5

    iput-object p5, v8, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchAsFlashCapture$1;->L$0:Ljava/lang/Object;

    iput-object p5, v8, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchAsFlashCapture$1;->L$1:Ljava/lang/Object;

    iput v2, v8, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchAsFlashCapture$1;->label:I

    invoke-direct {v1, p1, p2, p4, v8}, Landroidx/camera/camera2/impl/CapturePipelineImpl;->defaultNoFlashCapture(Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;ILjava/util/List;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_b

    :goto_5
    return-object v0

    :cond_b
    return-object p0
.end method

.method private final unlockAf(JLe02;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Le02<",
            "-",
            "Landroidx/camera/camera2/pipe/Result3A;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    instance-of v2, v1, Landroidx/camera/camera2/impl/CapturePipelineImpl$unlockAf$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Landroidx/camera/camera2/impl/CapturePipelineImpl$unlockAf$1;

    iget v3, v2, Landroidx/camera/camera2/impl/CapturePipelineImpl$unlockAf$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Landroidx/camera/camera2/impl/CapturePipelineImpl$unlockAf$1;->label:I

    :goto_0
    move-object v11, v2

    goto :goto_1

    :cond_0
    new-instance v2, Landroidx/camera/camera2/impl/CapturePipelineImpl$unlockAf$1;

    invoke-direct {v2, v0, v1}, Landroidx/camera/camera2/impl/CapturePipelineImpl$unlockAf$1;-><init>(Landroidx/camera/camera2/impl/CapturePipelineImpl;Le02;)V

    goto :goto_0

    :goto_1
    iget-object v1, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$unlockAf$1;->result:Ljava/lang/Object;

    sget-object v2, La32;->COROUTINE_SUSPENDED:La32;

    iget v3, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$unlockAf$1;->label:I

    const/4 v14, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v15, 0x0

    if-eqz v3, :cond_4

    if-eq v3, v5, :cond_3

    if-eq v3, v4, :cond_2

    if-ne v3, v14, :cond_1

    invoke-static {v1}, Lr57;->b(Ljava/lang/Object;)V

    return-object v1

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-object v15

    :cond_2
    iget-object v0, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$unlockAf$1;->L$0:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljava/lang/AutoCloseable;

    :try_start_0
    invoke-static {v1}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    :goto_2
    move-object v1, v0

    goto :goto_6

    :cond_3
    iget-wide v5, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$unlockAf$1;->J$0:J

    invoke-static {v1}, Lr57;->b(Ljava/lang/Object;)V

    move-wide v9, v5

    goto :goto_3

    :cond_4
    invoke-static {v1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object v0, v0, Landroidx/camera/camera2/impl/CapturePipelineImpl;->useCaseGraphContext:Landroidx/camera/camera2/config/UseCaseGraphContext;

    invoke-virtual {v0}, Landroidx/camera/camera2/config/UseCaseGraphContext;->getGraph()Landroidx/camera/camera2/pipe/CameraGraph;

    move-result-object v0

    move-wide/from16 v6, p1

    iput-wide v6, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$unlockAf$1;->J$0:J

    iput v5, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$unlockAf$1;->label:I

    invoke-interface {v0, v11}, Landroidx/camera/camera2/pipe/CameraGraphBase;->acquireSession(Le02;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_5

    goto :goto_5

    :cond_5
    move-wide v9, v6

    :goto_3
    check-cast v1, Ljava/lang/AutoCloseable;

    :try_start_1
    move-object v3, v1

    check-cast v3, Landroidx/camera/camera2/pipe/CameraGraph$Session;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$unlockAf$1;->L$0:Ljava/lang/Object;

    iput v4, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$unlockAf$1;->label:I

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v12, 0x1d

    const/4 v13, 0x0

    invoke-static/range {v3 .. v13}, Landroidx/camera/camera2/pipe/CameraGraph$Session;->unlock3A$default(Landroidx/camera/camera2/pipe/CameraGraph$Session;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lnl3;IJLe02;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v0, v2, :cond_6

    goto :goto_5

    :cond_6
    move-object v3, v1

    move-object v1, v0

    :goto_4
    :try_start_2
    check-cast v1, Lmk2;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v3, v15}, Laq5;->c(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    iput-object v15, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$unlockAf$1;->L$0:Ljava/lang/Object;

    iput v14, v11, Landroidx/camera/camera2/impl/CapturePipelineImpl$unlockAf$1;->label:I

    invoke-interface {v1, v11}, Lmk2;->Z(Le02;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_7

    :goto_5
    return-object v2

    :cond_7
    return-object v0

    :catchall_1
    move-exception v0

    move-object v3, v1

    goto :goto_2

    :goto_6
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v0

    invoke-static {v3, v1}, Laq5;->c(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static final useCaseCameraState_delegate$lambda$0(Landroidx/camera/camera2/impl/CapturePipelineImpl;)Landroidx/camera/camera2/impl/UseCaseCameraState;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl;->useCaseCameraStateProvider:Lws6;

    invoke-interface {p0}, Lws6;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/impl/UseCaseCameraState;

    return-object p0
.end method

.method private final waitForResult(JLnl3;Le02;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lnl3<",
            "-",
            "Landroidx/camera/camera2/pipe/FrameInfo;",
            "Ljava/lang/Boolean;",
            ">;",
            "Le02<",
            "-",
            "Landroidx/camera/camera2/pipe/FrameInfo;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Landroidx/camera/camera2/impl/CapturePipelineImpl$waitForResult$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$waitForResult$1;

    iget v1, v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$waitForResult$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$waitForResult$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$waitForResult$1;

    invoke-direct {v0, p0, p4}, Landroidx/camera/camera2/impl/CapturePipelineImpl$waitForResult$1;-><init>(Landroidx/camera/camera2/impl/CapturePipelineImpl;Le02;)V

    :goto_0
    iget-object p4, v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$waitForResult$1;->result:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$waitForResult$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$waitForResult$1;->L$0:Ljava/lang/Object;

    check-cast p1, Landroidx/camera/camera2/impl/ResultListener;

    invoke-static {p4}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p4}, Lr57;->b(Ljava/lang/Object;)V

    new-instance p4, Landroidx/camera/camera2/impl/ResultListener;

    invoke-direct {p4, p1, p2, p3}, Landroidx/camera/camera2/impl/ResultListener;-><init>(JLnl3;)V

    iget-object p3, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl;->requestListener:Landroidx/camera/camera2/impl/ComboRequestListener;

    iget-object v2, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    invoke-virtual {v2}, Landroidx/camera/camera2/impl/UseCaseThreads;->getSequentialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {p3, p4, v2}, Landroidx/camera/camera2/impl/ComboRequestListener;->addListener(Landroidx/camera/camera2/pipe/Request$Listener;Ljava/util/concurrent/Executor;)V

    iget-object p3, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    invoke-virtual {p3}, Landroidx/camera/camera2/impl/UseCaseThreads;->getSequentialScope()Ly22;

    move-result-object p3

    new-instance v2, Landroidx/camera/camera2/impl/CapturePipelineImpl$waitForResult$resultListener$1$1;

    invoke-direct {v2, p4, p0, v3}, Landroidx/camera/camera2/impl/CapturePipelineImpl$waitForResult$resultListener$1$1;-><init>(Landroidx/camera/camera2/impl/ResultListener;Landroidx/camera/camera2/impl/CapturePipelineImpl;Le02;)V

    const/4 v5, 0x3

    invoke-static {p3, v3, v3, v2, v5}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    const-wide/32 v5, 0xf4240

    div-long/2addr p1, v5

    new-instance p3, Landroidx/camera/camera2/impl/CapturePipelineImpl$waitForResult$3;

    invoke-direct {p3, p4, v3}, Landroidx/camera/camera2/impl/CapturePipelineImpl$waitForResult$3;-><init>(Landroidx/camera/camera2/impl/ResultListener;Le02;)V

    iput-object p4, v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$waitForResult$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$waitForResult$1;->label:I

    invoke-static {p1, p2, p3, v0}, Lyv8;->c(JLbm3;Le02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v7, p4

    move-object p4, p1

    move-object p1, v7

    :goto_1
    move-object p2, p4

    check-cast p2, Landroidx/camera/camera2/pipe/FrameInfo;

    if-nez p2, :cond_4

    iget-object p0, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl;->requestListener:Landroidx/camera/camera2/impl/ComboRequestListener;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/impl/ComboRequestListener;->removeListener(Landroidx/camera/camera2/pipe/Request$Listener;)V

    :cond_4
    return-object p4
.end method

.method public static synthetic waitForResult$default(Landroidx/camera/camera2/impl/CapturePipelineImpl;JLnl3;Le02;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    new-instance p3, Lk31;

    const/4 p5, 0x0

    invoke-direct {p3, p5}, Lk31;-><init>(I)V

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/impl/CapturePipelineImpl;->waitForResult(JLnl3;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final waitForResult$lambda$0(Landroidx/camera/camera2/pipe/FrameInfo;)Z
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getCameraCapturePipeline(IIILe02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Le02<",
            "-",
            "Landroidx/camera/core/imagecapture/CameraCapturePipeline;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance p4, Landroidx/camera/camera2/impl/CapturePipelineImpl$getCameraCapturePipeline$2;

    invoke-direct {p4, p0, p1, p2, p3}, Landroidx/camera/camera2/impl/CapturePipelineImpl$getCameraCapturePipeline$2;-><init>(Landroidx/camera/camera2/impl/CapturePipelineImpl;III)V

    return-object p4
.end method

.method public getTemplate()I
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl;->template:I

    return p0
.end method

.method public final invokeScreenFlashPostCaptureTasks(ILe02;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Landroidx/camera/camera2/impl/CapturePipelineImpl$invokeScreenFlashPostCaptureTasks$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$invokeScreenFlashPostCaptureTasks$1;

    iget v1, v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$invokeScreenFlashPostCaptureTasks$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$invokeScreenFlashPostCaptureTasks$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$invokeScreenFlashPostCaptureTasks$1;

    invoke-direct {v0, p0, p2}, Landroidx/camera/camera2/impl/CapturePipelineImpl$invokeScreenFlashPostCaptureTasks$1;-><init>(Landroidx/camera/camera2/impl/CapturePipelineImpl;Le02;)V

    :goto_0
    iget-object p2, v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$invokeScreenFlashPostCaptureTasks$1;->result:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$invokeScreenFlashPostCaptureTasks$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const-string v5, "CXCP"

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$invokeScreenFlashPostCaptureTasks$1;->L$0:Ljava/lang/Object;

    check-cast p0, Ljava/lang/AutoCloseable;

    :try_start_0
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_6

    :catchall_0
    move-exception p1

    goto/16 :goto_7

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v7

    :cond_2
    iget p0, v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$invokeScreenFlashPostCaptureTasks$1;->I$0:I

    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget p1, v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$invokeScreenFlashPostCaptureTasks$1;->I$0:I

    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl;->flashControl:Landroidx/camera/camera2/impl/FlashControl;

    iput p1, v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$invokeScreenFlashPostCaptureTasks$1;->I$0:I

    iput v6, v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$invokeScreenFlashPostCaptureTasks$1;->label:I

    invoke-virtual {p2, v0}, Landroidx/camera/camera2/impl/FlashControl;->stopScreenFlashCaptureTasks(Le02;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    goto :goto_5

    :cond_5
    :goto_1
    sget-object p2, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    invoke-static {v5}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p2

    const-string v2, "screenFlashPostCapture: Acquiring session for unlocking 3A"

    invoke-static {p2, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object p0, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl;->useCaseGraphContext:Landroidx/camera/camera2/config/UseCaseGraphContext;

    invoke-virtual {p0}, Landroidx/camera/camera2/config/UseCaseGraphContext;->getGraph()Landroidx/camera/camera2/pipe/CameraGraph;

    move-result-object p0

    iput p1, v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$invokeScreenFlashPostCaptureTasks$1;->I$0:I

    iput v4, v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$invokeScreenFlashPostCaptureTasks$1;->label:I

    invoke-interface {p0, v0}, Landroidx/camera/camera2/pipe/CameraGraphBase;->acquireSession(Le02;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_7

    goto :goto_5

    :cond_7
    move p0, p1

    :goto_2
    move-object p1, p2

    check-cast p1, Ljava/lang/AutoCloseable;

    :try_start_1
    move-object p2, p1

    check-cast p2, Landroidx/camera/camera2/pipe/CameraGraph$Session;

    sget-object v2, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    invoke-static {v5}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v2

    const-string v4, "screenFlashPostCapture: Unlocking 3A"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catchall_1
    move-exception p0

    move-object v8, p1

    move-object p1, p0

    move-object p0, v8

    goto :goto_7

    :cond_8
    :goto_3
    if-nez p0, :cond_9

    goto :goto_4

    :cond_9
    const/4 v6, 0x0

    :goto_4
    iput-object p1, v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$invokeScreenFlashPostCaptureTasks$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$invokeScreenFlashPostCaptureTasks$1;->label:I

    invoke-interface {p2, v6, v0}, Landroidx/camera/camera2/pipe/CameraGraph$Session;->unlock3APostCapture(ZLe02;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p0, v1, :cond_a

    :goto_5
    return-object v1

    :cond_a
    move-object p0, p1

    :goto_6
    :try_start_2
    sget-object p1, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    invoke-static {v5}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p1

    const-string p2, "screenFlashPostCapture: Unlocking 3A done"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    sget-object p1, Lj59;->a:Lj59;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {p0, v7}, Laq5;->c(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :goto_7
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception p2

    invoke-static {p0, p1}, Laq5;->c(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final invokeScreenFlashPreCaptureTasks(ILe02;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "screenFlashPreCapture: Locking 3A for capture done, result3A = "

    instance-of v3, v1, Landroidx/camera/camera2/impl/CapturePipelineImpl$invokeScreenFlashPreCaptureTasks$1;

    if-eqz v3, :cond_0

    move-object v3, v1

    check-cast v3, Landroidx/camera/camera2/impl/CapturePipelineImpl$invokeScreenFlashPreCaptureTasks$1;

    iget v4, v3, Landroidx/camera/camera2/impl/CapturePipelineImpl$invokeScreenFlashPreCaptureTasks$1;->label:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Landroidx/camera/camera2/impl/CapturePipelineImpl$invokeScreenFlashPreCaptureTasks$1;->label:I

    :goto_0
    move-object v10, v3

    goto :goto_1

    :cond_0
    new-instance v3, Landroidx/camera/camera2/impl/CapturePipelineImpl$invokeScreenFlashPreCaptureTasks$1;

    invoke-direct {v3, v0, v1}, Landroidx/camera/camera2/impl/CapturePipelineImpl$invokeScreenFlashPreCaptureTasks$1;-><init>(Landroidx/camera/camera2/impl/CapturePipelineImpl;Le02;)V

    goto :goto_0

    :goto_1
    iget-object v1, v10, Landroidx/camera/camera2/impl/CapturePipelineImpl$invokeScreenFlashPreCaptureTasks$1;->result:Ljava/lang/Object;

    sget-object v3, La32;->COROUTINE_SUSPENDED:La32;

    iget v4, v10, Landroidx/camera/camera2/impl/CapturePipelineImpl$invokeScreenFlashPreCaptureTasks$1;->label:I

    const-string v13, "CXCP"

    const/4 v14, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v15, 0x0

    if-eqz v4, :cond_5

    if-eq v4, v7, :cond_4

    if-eq v4, v6, :cond_3

    if-eq v4, v5, :cond_2

    if-ne v4, v14, :cond_1

    iget-object v0, v10, Landroidx/camera/camera2/impl/CapturePipelineImpl$invokeScreenFlashPreCaptureTasks$1;->L$0:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljava/lang/AutoCloseable;

    :try_start_0
    invoke-static {v1}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_9

    :catchall_0
    move-exception v0

    :goto_2
    move-object v1, v0

    goto/16 :goto_a

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-object v15

    :cond_2
    iget-object v0, v10, Landroidx/camera/camera2/impl/CapturePipelineImpl$invokeScreenFlashPreCaptureTasks$1;->L$0:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljava/lang/AutoCloseable;

    :try_start_1
    invoke-static {v1}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_7

    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object v3, v4

    goto/16 :goto_a

    :cond_3
    iget v0, v10, Landroidx/camera/camera2/impl/CapturePipelineImpl$invokeScreenFlashPreCaptureTasks$1;->I$0:I

    invoke-static {v1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_4

    :cond_4
    iget v4, v10, Landroidx/camera/camera2/impl/CapturePipelineImpl$invokeScreenFlashPreCaptureTasks$1;->I$0:I

    invoke-static {v1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    invoke-static {v1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object v1, v0, Landroidx/camera/camera2/impl/CapturePipelineImpl;->flashControl:Landroidx/camera/camera2/impl/FlashControl;

    move/from16 v4, p1

    iput v4, v10, Landroidx/camera/camera2/impl/CapturePipelineImpl$invokeScreenFlashPreCaptureTasks$1;->I$0:I

    iput v7, v10, Landroidx/camera/camera2/impl/CapturePipelineImpl$invokeScreenFlashPreCaptureTasks$1;->label:I

    invoke-virtual {v1, v10}, Landroidx/camera/camera2/impl/FlashControl;->startScreenFlashCaptureTasks(Le02;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_6

    goto :goto_8

    :cond_6
    :goto_3
    iget-object v0, v0, Landroidx/camera/camera2/impl/CapturePipelineImpl;->useCaseGraphContext:Landroidx/camera/camera2/config/UseCaseGraphContext;

    invoke-virtual {v0}, Landroidx/camera/camera2/config/UseCaseGraphContext;->getGraph()Landroidx/camera/camera2/pipe/CameraGraph;

    move-result-object v0

    iput v4, v10, Landroidx/camera/camera2/impl/CapturePipelineImpl$invokeScreenFlashPreCaptureTasks$1;->I$0:I

    iput v6, v10, Landroidx/camera/camera2/impl/CapturePipelineImpl$invokeScreenFlashPreCaptureTasks$1;->label:I

    invoke-interface {v0, v10}, Landroidx/camera/camera2/pipe/CameraGraphBase;->acquireSession(Le02;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_7

    goto :goto_8

    :cond_7
    move v0, v4

    :goto_4
    check-cast v1, Ljava/lang/AutoCloseable;

    :try_start_2
    move-object v4, v1

    check-cast v4, Landroidx/camera/camera2/pipe/CameraGraph$Session;

    sget-object v6, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    invoke-static {v13}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v6

    const-string v8, "screenFlashPreCapture: Locking 3A for capture"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v3, v1

    goto :goto_2

    :cond_8
    :goto_5
    invoke-static {}, Landroidx/camera/camera2/impl/CapturePipelineKt;->access$getCHECK_3A_WITH_SCREEN_FLASH_TIMEOUT_IN_NS$p()J

    move-result-wide v8

    if-nez v0, :cond_9

    goto :goto_6

    :cond_9
    const/4 v7, 0x0

    :goto_6
    iput-object v1, v10, Landroidx/camera/camera2/impl/CapturePipelineImpl$invokeScreenFlashPreCaptureTasks$1;->L$0:Ljava/lang/Object;

    iput v5, v10, Landroidx/camera/camera2/impl/CapturePipelineImpl$invokeScreenFlashPreCaptureTasks$1;->label:I

    const/4 v6, 0x1

    move v5, v7

    const/4 v7, 0x0

    const/4 v11, 0x4

    const/4 v12, 0x0

    invoke-static/range {v4 .. v12}, Landroidx/camera/camera2/pipe/CameraGraph$Session;->lock3AForCapture$default(Landroidx/camera/camera2/pipe/CameraGraph$Session;ZZIJLe02;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-ne v0, v3, :cond_a

    goto :goto_8

    :cond_a
    move-object v4, v1

    move-object v1, v0

    :goto_7
    :try_start_3
    check-cast v1, Lmk2;

    iput-object v4, v10, Landroidx/camera/camera2/impl/CapturePipelineImpl$invokeScreenFlashPreCaptureTasks$1;->L$0:Ljava/lang/Object;

    iput v14, v10, Landroidx/camera/camera2/impl/CapturePipelineImpl$invokeScreenFlashPreCaptureTasks$1;->label:I

    invoke-interface {v1, v10}, Lmk2;->Z(Le02;)Ljava/lang/Object;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-ne v1, v3, :cond_b

    :goto_8
    return-object v3

    :cond_b
    move-object v3, v4

    :goto_9
    :try_start_4
    check-cast v1, Landroidx/camera/camera2/pipe/Result3A;

    sget-object v0, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    invoke-static {v13}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    sget-object v0, Lj59;->a:Lj59;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {v3, v15}, Laq5;->c(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    sget-object v0, Lj59;->a:Lj59;

    return-object v0

    :goto_a
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v0

    invoke-static {v3, v1}, Laq5;->c(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setTemplate(I)V
    .locals 0

    iput p1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl;->template:I

    return-void
.end method

.method public submitStillCaptures-BvXKQx0(Ljava/util/List;ILandroidx/camera/core/impl/Config;IIILe02;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/CaptureConfig;",
            ">;I",
            "Landroidx/camera/core/impl/Config;",
            "III",
            "Le02<",
            "-",
            "Ljava/util/List<",
            "+",
            "Lmk2<",
            "Ljava/lang/Void;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$PipelineTask;->PRE_CAPTURE:Landroidx/camera/camera2/impl/CapturePipelineImpl$PipelineTask;

    sget-object v1, Landroidx/camera/camera2/impl/CapturePipelineImpl$PipelineTask;->MAIN_CAPTURE:Landroidx/camera/camera2/impl/CapturePipelineImpl$PipelineTask;

    sget-object v2, Landroidx/camera/camera2/impl/CapturePipelineImpl$PipelineTask;->POST_CAPTURE:Landroidx/camera/camera2/impl/CapturePipelineImpl$PipelineTask;

    filled-new-array {v0, v1, v2}, [Landroidx/camera/camera2/impl/CapturePipelineImpl$PipelineTask;

    move-result-object v0

    invoke-static {v0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move v1, p2

    move p2, p4

    move p4, p5

    new-instance p5, Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;

    const/4 v2, 0x0

    invoke-direct {p5, p1, v1, p3, v2}, Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;-><init>(Ljava/util/List;ILandroidx/camera/core/impl/Config;Ljh2;)V

    move p3, p6

    move-object p6, p7

    move-object p1, v0

    invoke-direct/range {p0 .. p6}, Landroidx/camera/camera2/impl/CapturePipelineImpl;->invokeCaptureTasks(Ljava/util/List;IIILandroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
