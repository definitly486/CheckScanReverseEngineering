.class final Landroidx/camera/camera2/impl/CapturePipelineImpl$torchAsFlashCapture$1;
.super Lf02;
.source "SourceFile"


# annotations
.annotation runtime Lbd2;
    c = "androidx.camera.camera2.impl.CapturePipelineImpl"
    f = "CapturePipeline.kt"
    l = {
        0x14a,
        0x14b,
        0x155
    }
    m = "torchAsFlashCapture"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/impl/CapturePipelineImpl;->torchAsFlashCapture(Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;IILjava/util/List;Le02;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field I$0:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Landroidx/camera/camera2/impl/CapturePipelineImpl;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/impl/CapturePipelineImpl;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/impl/CapturePipelineImpl;",
            "Le02<",
            "-",
            "Landroidx/camera/camera2/impl/CapturePipelineImpl$torchAsFlashCapture$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchAsFlashCapture$1;->this$0:Landroidx/camera/camera2/impl/CapturePipelineImpl;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iput-object p1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchAsFlashCapture$1;->result:Ljava/lang/Object;

    iget p1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchAsFlashCapture$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchAsFlashCapture$1;->label:I

    iget-object v0, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchAsFlashCapture$1;->this$0:Landroidx/camera/camera2/impl/CapturePipelineImpl;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Landroidx/camera/camera2/impl/CapturePipelineImpl;->access$torchAsFlashCapture(Landroidx/camera/camera2/impl/CapturePipelineImpl;Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;IILjava/util/List;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
