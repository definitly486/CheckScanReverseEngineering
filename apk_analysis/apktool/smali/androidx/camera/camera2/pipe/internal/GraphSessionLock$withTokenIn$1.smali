.class final Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenIn$1;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "androidx.camera.camera2.pipe.internal.GraphSessionLock$withTokenIn$1"
    f = "GraphSessionLock.kt"
    l = {
        0x69,
        0x36
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/pipe/internal/GraphSessionLock;->withTokenIn$camera_camera2_pipe(Ly22;Lbm3;)Lmk2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Ly22;",
        "Le02<",
        "-TT;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $action:Lbm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbm3<",
            "Landroidx/camera/camera2/pipe/core/Token;",
            "Le02<",
            "-TT;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/camera/camera2/pipe/internal/GraphSessionLock;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/internal/GraphSessionLock;Lbm3;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/internal/GraphSessionLock;",
            "Lbm3<",
            "-",
            "Landroidx/camera/camera2/pipe/core/Token;",
            "-",
            "Le02<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Le02<",
            "-",
            "Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenIn$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenIn$1;->this$0:Landroidx/camera/camera2/pipe/internal/GraphSessionLock;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenIn$1;->$action:Lbm3;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Le02<",
            "*>;)",
            "Le02<",
            "Lj59;",
            ">;"
        }
    .end annotation

    new-instance p1, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenIn$1;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenIn$1;->this$0:Landroidx/camera/camera2/pipe/internal/GraphSessionLock;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenIn$1;->$action:Lbm3;

    invoke-direct {p1, v0, p0, p2}, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenIn$1;-><init>(Landroidx/camera/camera2/pipe/internal/GraphSessionLock;Lbm3;Le02;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenIn$1;->invoke(Ly22;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Ly22;Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly22;",
            "Le02<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenIn$1;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenIn$1;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenIn$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenIn$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget-object v1, p0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenIn$1;->L$1:Ljava/lang/Object;

    check-cast v1, Landroidx/camera/camera2/pipe/internal/GraphSessionLock;

    iget-object v3, p0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenIn$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lyg5;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object v1, p0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenIn$1;->this$0:Landroidx/camera/camera2/pipe/internal/GraphSessionLock;

    invoke-static {v1}, Landroidx/camera/camera2/pipe/internal/GraphSessionLock;->access$getMutex$p(Landroidx/camera/camera2/pipe/internal/GraphSessionLock;)Lyg5;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenIn$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenIn$1;->L$1:Ljava/lang/Object;

    iput v3, p0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenIn$1;->label:I

    invoke-static {p1, p0}, Landroidx/camera/camera2/pipe/core/MutexesKt;->access$lockAndSuspend(Lyg5;Le02;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_3

    goto :goto_1

    :cond_3
    move-object v3, p1

    :goto_0
    new-instance p1, Landroidx/camera/camera2/pipe/core/MutexToken;

    invoke-direct {p1, v3}, Landroidx/camera/camera2/pipe/core/MutexToken;-><init>(Lyg5;)V

    new-instance v3, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenIn$1$1;

    iget-object v4, p0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenIn$1;->$action:Lbm3;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenIn$1$1;-><init>(Lbm3;Le02;)V

    iput-object v5, p0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenIn$1;->L$0:Ljava/lang/Object;

    iput-object v5, p0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenIn$1;->L$1:Ljava/lang/Object;

    iput v2, p0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenIn$1;->label:I

    invoke-static {v1, p1, v3, p0}, Landroidx/camera/camera2/pipe/internal/GraphSessionLock;->access$use(Landroidx/camera/camera2/pipe/internal/GraphSessionLock;Landroidx/camera/camera2/pipe/core/Token;Lbm3;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    :goto_1
    return-object v0

    :cond_4
    return-object p0
.end method
