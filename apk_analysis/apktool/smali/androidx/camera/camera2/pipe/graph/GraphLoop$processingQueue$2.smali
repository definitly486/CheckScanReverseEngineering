.class final synthetic Landroidx/camera/camera2/pipe/graph/GraphLoop$processingQueue$2;
.super Lqm3;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/pipe/graph/GraphLoop;-><init>(Landroidx/camera/camera2/pipe/CameraGraphId;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ly22;Lr22;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lqm3;",
        "Lbm3<",
        "Ljava/util/List<",
        "Landroidx/camera/camera2/pipe/graph/GraphCommand;",
        ">;",
        "Le02<",
        "-",
        "Lj59;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-string v5, "process(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"

    const/4 v6, 0x0

    const/4 v1, 0x2

    const-class v3, Landroidx/camera/camera2/pipe/graph/GraphLoop;

    const-string v4, "process"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lqm3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/graph/GraphLoop$processingQueue$2;->invoke(Ljava/util/List;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Ljava/util/List;Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/graph/GraphCommand;",
            ">;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 9
    iget-object p0, p0, Lqy0;->receiver:Ljava/lang/Object;

    check-cast p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;

    invoke-static {p0, p1, p2}, Landroidx/camera/camera2/pipe/graph/GraphLoop;->access$process(Landroidx/camera/camera2/pipe/graph/GraphLoop;Ljava/util/List;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
