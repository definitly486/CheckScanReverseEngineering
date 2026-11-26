.class final Landroidx/camera/camera2/adapter/PipeCameraPresenceSource$startMonitoring$2;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "androidx.camera.camera2.adapter.PipeCameraPresenceSource$startMonitoring$2"
    f = "PipeCameraPresenceSource.kt"
    l = {
        0x54
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;->startMonitoring()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Ljava/util/List<",
        "+",
        "Landroidx/camera/core/CameraIdentifier;",
        ">;",
        "Le02<",
        "-",
        "Lj59;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $isFirstEmission:Ln07;

.field synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;Ln07;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;",
            "Ln07;",
            "Le02<",
            "-",
            "Landroidx/camera/camera2/adapter/PipeCameraPresenceSource$startMonitoring$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource$startMonitoring$2;->this$0:Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;

    iput-object p2, p0, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource$startMonitoring$2;->$isFirstEmission:Ln07;

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

    new-instance v0, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource$startMonitoring$2;

    iget-object v1, p0, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource$startMonitoring$2;->this$0:Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;

    iget-object p0, p0, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource$startMonitoring$2;->$isFirstEmission:Ln07;

    invoke-direct {v0, v1, p0, p2}, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource$startMonitoring$2;-><init>(Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;Ln07;Le02;)V

    iput-object p1, v0, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource$startMonitoring$2;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Ljava/util/List;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource$startMonitoring$2;->invoke(Ljava/util/List;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Ljava/util/List;Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/camera/core/CameraIdentifier;",
            ">;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource$startMonitoring$2;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource$startMonitoring$2;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource$startMonitoring$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource$startMonitoring$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource$startMonitoring$2;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    move-object v3, p1

    check-cast v3, Ljava/lang/Iterable;

    const/4 v8, 0x0

    const/16 v9, 0x3f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v3 .. v9}, Lqn1;->a0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ILnl3;I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Flow emitted new camera set: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "PipePresenceSrc"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource$startMonitoring$2;->this$0:Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;

    invoke-static {v1}, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;->access$isMonitoring$p(Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource$startMonitoring$2;->$isFirstEmission:Ln07;

    iget-boolean v1, v1, Ln07;->b:Z

    if-eqz v1, :cond_3

    const-string p1, "Handling first camera set, triggering fresh query."

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource$startMonitoring$2;->this$0:Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;

    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;->fetchData()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    iput v2, p0, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource$startMonitoring$2;->label:I

    invoke-static {p1, p0}, Landroidx/concurrent/futures/ListenableFutureKt;->await(Lcom/google/common/util/concurrent/ListenableFuture;Le02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    iget-object p0, p0, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource$startMonitoring$2;->$isFirstEmission:Ln07;

    const/4 p1, 0x0

    iput-boolean p1, p0, Ln07;->b:Z

    goto :goto_1

    :cond_3
    iget-object p0, p0, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource$startMonitoring$2;->this$0:Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;

    invoke-static {p0, p1}, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;->access$updateData(Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;Ljava/util/List;)V

    goto :goto_1

    :cond_4
    const-string p0, "Ignoring camera update because monitoring is stopped."

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lvc3;->a(I)V

    :goto_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
