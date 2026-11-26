.class final Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenInAsync$1;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "androidx.camera.camera2.pipe.internal.GraphSessionLock$withTokenInAsync$1"
    f = "GraphSessionLock.kt"
    l = {
        0x69,
        0x40,
        0x43
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/pipe/internal/GraphSessionLock;->withTokenInAsync$camera_camera2_pipe(Ly22;Lbm3;)Lmk2;
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
            "-",
            "Lmk2<",
            "+TT;>;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

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
            "-",
            "Lmk2<",
            "+TT;>;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Le02<",
            "-",
            "Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenInAsync$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenInAsync$1;->this$0:Landroidx/camera/camera2/pipe/internal/GraphSessionLock;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenInAsync$1;->$action:Lbm3;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 2
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

    new-instance v0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenInAsync$1;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenInAsync$1;->this$0:Landroidx/camera/camera2/pipe/internal/GraphSessionLock;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenInAsync$1;->$action:Lbm3;

    invoke-direct {v0, v1, p0, p2}, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenInAsync$1;-><init>(Landroidx/camera/camera2/pipe/internal/GraphSessionLock;Lbm3;Le02;)V

    iput-object p1, v0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenInAsync$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenInAsync$1;->invoke(Ly22;Le02;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenInAsync$1;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenInAsync$1;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenInAsync$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenInAsync$1;->label:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

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
    iget-object v1, p0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenInAsync$1;->L$0:Ljava/lang/Object;

    check-cast v1, Ly22;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenInAsync$1;->L$2:Ljava/lang/Object;

    check-cast v1, Landroidx/camera/camera2/pipe/internal/GraphSessionLock;

    iget-object v4, p0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenInAsync$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lyg5;

    iget-object v6, p0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenInAsync$1;->L$0:Ljava/lang/Object;

    check-cast v6, Ly22;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    move-object p1, v6

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenInAsync$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ly22;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenInAsync$1;->this$0:Landroidx/camera/camera2/pipe/internal/GraphSessionLock;

    invoke-static {v1}, Landroidx/camera/camera2/pipe/internal/GraphSessionLock;->access$getMutex$p(Landroidx/camera/camera2/pipe/internal/GraphSessionLock;)Lyg5;

    move-result-object v6

    iput-object p1, p0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenInAsync$1;->L$0:Ljava/lang/Object;

    iput-object v6, p0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenInAsync$1;->L$1:Ljava/lang/Object;

    iput-object v1, p0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenInAsync$1;->L$2:Ljava/lang/Object;

    iput v4, p0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenInAsync$1;->label:I

    invoke-static {v6, p0}, Landroidx/camera/camera2/pipe/core/MutexesKt;->access$lockAndSuspend(Lyg5;Le02;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_4

    goto :goto_2

    :cond_4
    move-object v4, v6

    :goto_0
    new-instance v6, Landroidx/camera/camera2/pipe/core/MutexToken;

    invoke-direct {v6, v4}, Landroidx/camera/camera2/pipe/core/MutexToken;-><init>(Lyg5;)V

    new-instance v4, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenInAsync$1$deferred$1;

    iget-object v7, p0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenInAsync$1;->$action:Lbm3;

    invoke-direct {v4, v7, v5}, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenInAsync$1$deferred$1;-><init>(Lbm3;Le02;)V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenInAsync$1;->L$0:Ljava/lang/Object;

    iput-object v5, p0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenInAsync$1;->L$1:Ljava/lang/Object;

    iput-object v5, p0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenInAsync$1;->L$2:Ljava/lang/Object;

    iput v3, p0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenInAsync$1;->label:I

    invoke-static {v1, v6, v4, p0}, Landroidx/camera/camera2/pipe/internal/GraphSessionLock;->access$use(Landroidx/camera/camera2/pipe/internal/GraphSessionLock;Landroidx/camera/camera2/pipe/core/Token;Lbm3;Le02;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_5

    goto :goto_2

    :cond_5
    move-object v8, v1

    move-object v1, p1

    move-object p1, v8

    :goto_1
    check-cast p1, Lmk2;

    invoke-static {v1}, Lz22;->d(Ly22;)V

    iput-object v5, p0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenInAsync$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenInAsync$1;->label:I

    invoke-interface {p1, p0}, Lmk2;->Z(Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_6

    :goto_2
    return-object v0

    :cond_6
    return-object p0
.end method
