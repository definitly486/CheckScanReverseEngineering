.class public final Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/impl/CapturePipeline;


# annotations
.annotation runtime Landroidx/camera/camera2/config/UseCaseCameraScope;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection$Companion;

.field private static final isEnabled:Z


# instance fields
.field private final capturePipelineImpl$delegate:Lcl4;

.field private final capturePipelineImplProvider:Lws6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lws6<",
            "Landroidx/camera/camera2/impl/CapturePipelineImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final isLegacyDevice$delegate:Lcl4;

.field private template:I

.field private final threads:Landroidx/camera/camera2/impl/UseCaseThreads;

.field private final torchControl:Landroidx/camera/camera2/impl/TorchControl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;->Companion:Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection$Companion;

    sget-object v0, Landroidx/camera/camera2/compat/quirk/DeviceQuirks;->INSTANCE:Landroidx/camera/camera2/compat/quirk/DeviceQuirks;

    const-class v1, Landroidx/camera/camera2/compat/quirk/TorchIsClosedAfterImageCapturingQuirk;

    invoke-virtual {v0, v1}, Landroidx/camera/camera2/compat/quirk/DeviceQuirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;->isEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroidx/camera/camera2/impl/CameraProperties;Lws6;Landroidx/camera/camera2/impl/UseCaseThreads;Landroidx/camera/camera2/impl/TorchControl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/impl/CameraProperties;",
            "Lws6<",
            "Landroidx/camera/camera2/impl/CapturePipelineImpl;",
            ">;",
            "Landroidx/camera/camera2/impl/UseCaseThreads;",
            "Landroidx/camera/camera2/impl/TorchControl;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;->capturePipelineImplProvider:Lws6;

    iput-object p3, p0, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    iput-object p4, p0, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;->torchControl:Landroidx/camera/camera2/impl/TorchControl;

    new-instance p2, Lo31;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Lo31;-><init>(Ljava/lang/Object;I)V

    new-instance p1, Lfh8;

    invoke-direct {p1, p2}, Lfh8;-><init>(Lll3;)V

    iput-object p1, p0, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;->isLegacyDevice$delegate:Lcl4;

    new-instance p1, Lp31;

    invoke-direct {p1, p0, p3}, Lp31;-><init>(Ljava/lang/Object;I)V

    new-instance p2, Lfh8;

    invoke-direct {p2, p1}, Lfh8;-><init>(Lll3;)V

    iput-object p2, p0, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;->capturePipelineImpl$delegate:Lcl4;

    const/4 p1, 0x1

    iput p1, p0, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;->template:I

    return-void
.end method

.method public static synthetic a(Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;)Landroidx/camera/camera2/impl/CapturePipelineImpl;
    .locals 0

    invoke-static {p0}, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;->capturePipelineImpl_delegate$lambda$0(Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;)Landroidx/camera/camera2/impl/CapturePipelineImpl;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getTorchControl$p(Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;)Landroidx/camera/camera2/impl/TorchControl;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;->torchControl:Landroidx/camera/camera2/impl/TorchControl;

    return-object p0
.end method

.method public static final synthetic access$isEnabled$cp()Z
    .locals 1

    sget-boolean v0, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;->isEnabled:Z

    return v0
.end method

.method public static synthetic b(Landroidx/camera/camera2/impl/CameraProperties;)Z
    .locals 0

    invoke-static {p0}, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;->isLegacyDevice_delegate$lambda$0(Landroidx/camera/camera2/impl/CameraProperties;)Z

    move-result p0

    return p0
.end method

.method private static final capturePipelineImpl_delegate$lambda$0(Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;)Landroidx/camera/camera2/impl/CapturePipelineImpl;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;->capturePipelineImplProvider:Lws6;

    invoke-interface {p0}, Lws6;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/impl/CapturePipelineImpl;

    return-object p0
.end method

.method private final getCapturePipelineImpl()Landroidx/camera/camera2/impl/CapturePipelineImpl;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;->capturePipelineImpl$delegate:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/impl/CapturePipelineImpl;

    return-object p0
.end method

.method private final isCorrectionRequired-0UCm73U(Ljava/util/List;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/CaptureConfig;",
            ">;I)Z"
        }
    .end annotation

    check-cast p1, Ljava/lang/Iterable;

    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/CaptureConfig;

    sget-object v1, Landroidx/camera/camera2/adapter/CaptureConfigAdapter;->Companion:Landroidx/camera/camera2/adapter/CaptureConfigAdapter$Companion;

    invoke-direct {p0}, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;->isLegacyDevice()Z

    move-result v2

    invoke-virtual {v1, v0, p2, v2}, Landroidx/camera/camera2/adapter/CaptureConfigAdapter$Companion;->getStillCaptureTemplate-CMLptTo$camera_camera2(Landroidx/camera/core/impl/CaptureConfig;IZ)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;->isTorchOn()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private final isLegacyDevice()Z
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;->isLegacyDevice$delegate:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final isLegacyDevice_delegate$lambda$0(Landroidx/camera/camera2/impl/CameraProperties;)Z
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/CameraMetadata;->Companion:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    invoke-interface {p0}, Landroidx/camera/camera2/impl/CameraProperties;->getMetadata()Landroidx/camera/camera2/pipe/CameraMetadata;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->isHardwareLevelLegacy(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result p0

    return p0
.end method

.method private final isTorchOn()Z
    .locals 1

    iget-object p0, p0, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;->torchControl:Landroidx/camera/camera2/impl/TorchControl;

    invoke-virtual {p0}, Landroidx/camera/camera2/impl/TorchControl;->getTorchStateLiveData()Landroidx/lifecycle/LiveData;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    return v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

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

    invoke-direct {p0}, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;->getCapturePipelineImpl()Landroidx/camera/camera2/impl/CapturePipelineImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/impl/CapturePipelineImpl;->getCameraCapturePipeline(IIILe02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getTemplate()I
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;->template:I

    return p0
.end method

.method public setTemplate(I)V
    .locals 1

    invoke-direct {p0}, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;->getCapturePipelineImpl()Landroidx/camera/camera2/impl/CapturePipelineImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/impl/CapturePipelineImpl;->setTemplate(I)V

    iput p1, p0, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;->template:I

    return-void
.end method

.method public submitStillCaptures-BvXKQx0(Ljava/util/List;ILandroidx/camera/core/impl/Config;IIILe02;)Ljava/lang/Object;
    .locals 12
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

    move-object/from16 v0, p7

    instance-of v1, v0, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection$submitStillCaptures$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection$submitStillCaptures$1;

    iget v2, v1, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection$submitStillCaptures$1;->label:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection$submitStillCaptures$1;->label:I

    :goto_0
    move-object v9, v1

    goto :goto_1

    :cond_0
    new-instance v1, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection$submitStillCaptures$1;

    invoke-direct {v1, p0, v0}, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection$submitStillCaptures$1;-><init>(Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;Le02;)V

    goto :goto_0

    :goto_1
    iget-object v0, v9, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection$submitStillCaptures$1;->result:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v9, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection$submitStillCaptures$1;->label:I

    const/4 v10, 0x0

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-boolean p1, v9, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection$submitStillCaptures$1;->Z$0:Z

    invoke-static {v0}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v10

    :cond_2
    invoke-static {v0}, Lr57;->b(Ljava/lang/Object;)V

    invoke-direct/range {p0 .. p2}, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;->isCorrectionRequired-0UCm73U(Ljava/util/List;I)Z

    move-result v0

    invoke-direct {p0}, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;->getCapturePipelineImpl()Landroidx/camera/camera2/impl/CapturePipelineImpl;

    move-result-object v2

    iput-boolean v0, v9, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection$submitStillCaptures$1;->Z$0:Z

    iput v3, v9, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection$submitStillCaptures$1;->label:I

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v2 .. v9}, Landroidx/camera/camera2/impl/CapturePipelineImpl;->submitStillCaptures-BvXKQx0(Ljava/util/List;ILandroidx/camera/core/impl/Config;IIILe02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move v11, v0

    move-object v0, p1

    move p1, v11

    :goto_2
    check-cast v0, Ljava/util/List;

    if-eqz p1, :cond_4

    iget-object p1, p0, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    invoke-virtual {p1}, Landroidx/camera/camera2/impl/UseCaseThreads;->getSequentialScope()Ly22;

    move-result-object p1

    new-instance p2, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection$submitStillCaptures$2;

    invoke-direct {p2, v0, p0, v10}, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection$submitStillCaptures$2;-><init>(Ljava/util/List;Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;Le02;)V

    const/4 p0, 0x3

    invoke-static {p1, v10, v10, p2, p0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    :cond_4
    return-object v0
.end method
