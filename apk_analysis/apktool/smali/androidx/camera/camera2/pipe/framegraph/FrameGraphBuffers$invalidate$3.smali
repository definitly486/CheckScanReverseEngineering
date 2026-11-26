.class final Landroidx/camera/camera2/pipe/framegraph/FrameGraphBuffers$invalidate$3;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Ldm3;


# annotations
.annotation runtime Lbd2;
    c = "androidx.camera.camera2.pipe.framegraph.FrameGraphBuffers$invalidate$3"
    f = "FrameGraphBuffers.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/pipe/framegraph/FrameGraphBuffers;->invalidate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Ldm3<",
        "Ly22;",
        "Landroidx/camera/camera2/pipe/CameraGraph$Session;",
        "Le02<",
        "-",
        "Lj59;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/camera/camera2/pipe/framegraph/FrameGraphBuffers;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/framegraph/FrameGraphBuffers;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/framegraph/FrameGraphBuffers;",
            "Le02<",
            "-",
            "Landroidx/camera/camera2/pipe/framegraph/FrameGraphBuffers$invalidate$3;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphBuffers$invalidate$3;->this$0:Landroidx/camera/camera2/pipe/framegraph/FrameGraphBuffers;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 16
    check-cast p1, Ly22;

    check-cast p2, Landroidx/camera/camera2/pipe/CameraGraph$Session;

    check-cast p3, Le02;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/camera/camera2/pipe/framegraph/FrameGraphBuffers$invalidate$3;->invoke(Ly22;Landroidx/camera/camera2/pipe/CameraGraph$Session;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Ly22;Landroidx/camera/camera2/pipe/CameraGraph$Session;Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly22;",
            "Landroidx/camera/camera2/pipe/CameraGraph$Session;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance p1, Landroidx/camera/camera2/pipe/framegraph/FrameGraphBuffers$invalidate$3;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphBuffers$invalidate$3;->this$0:Landroidx/camera/camera2/pipe/framegraph/FrameGraphBuffers;

    invoke-direct {p1, p0, p3}, Landroidx/camera/camera2/pipe/framegraph/FrameGraphBuffers$invalidate$3;-><init>(Landroidx/camera/camera2/pipe/framegraph/FrameGraphBuffers;Le02;)V

    iput-object p2, p1, Landroidx/camera/camera2/pipe/framegraph/FrameGraphBuffers$invalidate$3;->L$0:Ljava/lang/Object;

    sget-object p0, Lj59;->a:Lj59;

    invoke-virtual {p1, p0}, Landroidx/camera/camera2/pipe/framegraph/FrameGraphBuffers$invalidate$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v0, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphBuffers$invalidate$3;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphBuffers$invalidate$3;->L$0:Ljava/lang/Object;

    check-cast p1, Landroidx/camera/camera2/pipe/CameraGraph$Session;

    new-instance v0, Landroidx/camera/camera2/pipe/Request;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphBuffers$invalidate$3;->this$0:Landroidx/camera/camera2/pipe/framegraph/FrameGraphBuffers;

    invoke-static {v1}, Landroidx/camera/camera2/pipe/framegraph/FrameGraphBuffers;->access$getStreams$p(Landroidx/camera/camera2/pipe/framegraph/FrameGraphBuffers;)Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lqn1;->t0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphBuffers$invalidate$3;->this$0:Landroidx/camera/camera2/pipe/framegraph/FrameGraphBuffers;

    invoke-static {v2}, Landroidx/camera/camera2/pipe/framegraph/FrameGraphBuffers;->access$getParameters$p(Landroidx/camera/camera2/pipe/framegraph/FrameGraphBuffers;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Landroidx/camera/camera2/pipe/RequestsKt;->filterToCaptureRequestParameters(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iget-object p0, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphBuffers$invalidate$3;->this$0:Landroidx/camera/camera2/pipe/framegraph/FrameGraphBuffers;

    invoke-static {p0}, Landroidx/camera/camera2/pipe/framegraph/FrameGraphBuffers;->access$getParameters$p(Landroidx/camera/camera2/pipe/framegraph/FrameGraphBuffers;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Landroidx/camera/camera2/pipe/RequestsKt;->filterToMetadataParameters(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    const/16 v7, 0x38

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v8}, Landroidx/camera/camera2/pipe/Request;-><init>(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Landroidx/camera/camera2/pipe/RequestTemplate;Landroidx/camera/camera2/pipe/InputRequest;ILjh2;)V

    invoke-interface {p1, v0}, Landroidx/camera/camera2/pipe/CameraGraph$Session;->startRepeating(Landroidx/camera/camera2/pipe/Request;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
