.class final Landroidx/camera/camera2/pipe/graph/GraphLoop$processRequestProcessor$1;
.super Lf02;
.source "SourceFile"


# annotations
.annotation runtime Lbd2;
    c = "androidx.camera.camera2.pipe.graph.GraphLoop"
    f = "GraphLoop.kt"
    l = {
        0x1df,
        0x1e0,
        0x1e8
    }
    m = "processRequestProcessor"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/pipe/graph/GraphLoop;->processRequestProcessor(Ljava/util/List;ILandroidx/camera/camera2/pipe/graph/GraphCommand$RequestProcessor;Le02;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field I$0:I

.field I$1:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Landroidx/camera/camera2/pipe/graph/GraphLoop;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/graph/GraphLoop;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/graph/GraphLoop;",
            "Le02<",
            "-",
            "Landroidx/camera/camera2/pipe/graph/GraphLoop$processRequestProcessor$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop$processRequestProcessor$1;->this$0:Landroidx/camera/camera2/pipe/graph/GraphLoop;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop$processRequestProcessor$1;->result:Ljava/lang/Object;

    iget p1, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop$processRequestProcessor$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop$processRequestProcessor$1;->label:I

    iget-object p1, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop$processRequestProcessor$1;->this$0:Landroidx/camera/camera2/pipe/graph/GraphLoop;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, v0, p0}, Landroidx/camera/camera2/pipe/graph/GraphLoop;->access$processRequestProcessor(Landroidx/camera/camera2/pipe/graph/GraphLoop;Ljava/util/List;ILandroidx/camera/camera2/pipe/graph/GraphCommand$RequestProcessor;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
