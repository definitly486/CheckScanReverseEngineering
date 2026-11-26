.class final Landroidx/camera/camera2/pipe/core/WakeLock$startTimeout$1;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "androidx.camera.camera2.pipe.core.WakeLock$startTimeout$1"
    f = "WakeLock.kt"
    l = {
        0x74
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/pipe/core/WakeLock;->startTimeout()V
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
        "-",
        "Lj59;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Landroidx/camera/camera2/pipe/core/WakeLock;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/core/WakeLock;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/core/WakeLock;",
            "Le02<",
            "-",
            "Landroidx/camera/camera2/pipe/core/WakeLock$startTimeout$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/camera/camera2/pipe/core/WakeLock$startTimeout$1;->this$0:Landroidx/camera/camera2/pipe/core/WakeLock;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 0
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

    new-instance p1, Landroidx/camera/camera2/pipe/core/WakeLock$startTimeout$1;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/core/WakeLock$startTimeout$1;->this$0:Landroidx/camera/camera2/pipe/core/WakeLock;

    invoke-direct {p1, p0, p2}, Landroidx/camera/camera2/pipe/core/WakeLock$startTimeout$1;-><init>(Landroidx/camera/camera2/pipe/core/WakeLock;Le02;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/core/WakeLock$startTimeout$1;->invoke(Ly22;Le02;)Ljava/lang/Object;

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
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/core/WakeLock$startTimeout$1;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/pipe/core/WakeLock$startTimeout$1;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/core/WakeLock$startTimeout$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Landroidx/camera/camera2/pipe/core/WakeLock$startTimeout$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/camera/camera2/pipe/core/WakeLock$startTimeout$1;->this$0:Landroidx/camera/camera2/pipe/core/WakeLock;

    invoke-static {p1}, Landroidx/camera/camera2/pipe/core/WakeLock;->access$getTimeout$p(Landroidx/camera/camera2/pipe/core/WakeLock;)J

    move-result-wide v4

    iput v3, p0, Landroidx/camera/camera2/pipe/core/WakeLock$startTimeout$1;->label:I

    invoke-static {v4, v5, p0}, Lyk2;->b(JLe02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    iget-object p1, p0, Landroidx/camera/camera2/pipe/core/WakeLock$startTimeout$1;->this$0:Landroidx/camera/camera2/pipe/core/WakeLock;

    invoke-static {p1}, Landroidx/camera/camera2/pipe/core/WakeLock;->access$getLock$p(Landroidx/camera/camera2/pipe/core/WakeLock;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Landroidx/camera/camera2/pipe/core/WakeLock$startTimeout$1;->this$0:Landroidx/camera/camera2/pipe/core/WakeLock;

    monitor-enter p1

    :try_start_0
    invoke-static {v0}, Landroidx/camera/camera2/pipe/core/WakeLock;->access$getClosed$p(Landroidx/camera/camera2/pipe/core/WakeLock;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v0}, Landroidx/camera/camera2/pipe/core/WakeLock;->access$getCount$p(Landroidx/camera/camera2/pipe/core/WakeLock;)I

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {v0, v2}, Landroidx/camera/camera2/pipe/core/WakeLock;->access$setTimeoutJob$p(Landroidx/camera/camera2/pipe/core/WakeLock;Lmb4;)V

    invoke-static {v0, v3}, Landroidx/camera/camera2/pipe/core/WakeLock;->access$setClosed$p(Landroidx/camera/camera2/pipe/core/WakeLock;Z)V

    sget-object v0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    iget-object p0, p0, Landroidx/camera/camera2/pipe/core/WakeLock$startTimeout$1;->this$0:Landroidx/camera/camera2/pipe/core/WakeLock;

    invoke-static {p0}, Landroidx/camera/camera2/pipe/core/WakeLock;->access$getCallback$p(Landroidx/camera/camera2/pipe/core/WakeLock;)Lll3;

    move-result-object p0

    invoke-interface {p0}, Lll3;->invoke()Ljava/lang/Object;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_4
    :goto_1
    :try_start_1
    sget-object p0, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p1

    return-object p0

    :goto_2
    monitor-exit p1

    throw p0
.end method
