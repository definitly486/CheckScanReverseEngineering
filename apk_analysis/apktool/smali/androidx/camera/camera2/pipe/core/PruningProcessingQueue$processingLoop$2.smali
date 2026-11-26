.class final Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "androidx.camera.camera2.pipe.core.PruningProcessingQueue$processingLoop$2"
    f = "PruningProcessingQueue.kt"
    l = {
        0xda
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->processingLoop(Le02;)Ljava/lang/Object;
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
        "Le02;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/camera2/pipe/core/PruningProcessingQueue<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/core/PruningProcessingQueue<",
            "TT;>;",
            "Le02<",
            "-",
            "Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2;->this$0:Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lpg8;-><init>(ILe02;)V

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

    new-instance v0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2;->this$0:Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;

    invoke-direct {v0, p0, p2}, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2;-><init>(Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;Le02;)V

    iput-object p1, v0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2;->invoke(Ly22;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Ly22;Le02;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2;->label:I

    const/4 v2, 0x1

    const-string v3, "CXCP"

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2;->L$1:Ljava/lang/Object;

    check-cast v1, Lr07;

    iget-object v5, p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2;->L$0:Ljava/lang/Object;

    check-cast v5, Ly22;

    :try_start_0
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v4

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2;->L$0:Ljava/lang/Object;

    check-cast p1, Ly22;

    new-instance v1, Lr07;

    invoke-direct {v1}, Lr07;-><init>()V

    move-object v5, p1

    :cond_2
    :goto_0
    invoke-static {v5}, Lz22;->e(Ly22;)Z

    move-result p1

    if-eqz p1, :cond_6

    :try_start_1
    iget-object p1, p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2;->this$0:Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;

    new-instance v6, Lzl7;

    invoke-interface {p0}, Le02;->getContext()Lo22;

    move-result-object v7

    invoke-direct {v6, v7}, Lzl7;-><init>(Lo22;)V

    invoke-static {p1}, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->access$getChannel$p(Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;)Lx81;

    move-result-object v7

    invoke-interface {v7}, Lqz6;->l()Lwl7;

    move-result-object v7

    new-instance v8, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2$1$1;

    invoke-direct {v8, p1, v4}, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2$1$1;-><init>(Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;Le02;)V

    invoke-virtual {v6, v7, v8}, Lzl7;->k(Lwl7;Lbm3;)V

    iget-object p1, v1, Lr07;->b:Ljava/lang/Object;

    check-cast p1, Lmk2;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lmk2;->U()Lwl7;

    move-result-object p1

    new-instance v7, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2$1$2;

    invoke-direct {v7, v1, v4}, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2$1$2;-><init>(Lr07;Le02;)V

    invoke-virtual {v6, p1, v7}, Lzl7;->k(Lwl7;Lbm3;)V

    :cond_3
    iput-object v5, p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2;->L$1:Ljava/lang/Object;

    iput v2, p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2;->label:I

    invoke-static {v6, p0}, Lzl7;->g(Lzl7;Lpg8;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_1
    iget-object p1, p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2;->this$0:Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;

    invoke-static {p1}, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->access$getQueue$p(Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;)Lfr;

    move-result-object p1

    invoke-virtual {p1}, Lfr;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, v1, Lr07;->b:Ljava/lang/Object;

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    iget-object p1, p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2;->this$0:Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;

    invoke-static {p1}, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->access$getQueue$p(Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;)Lfr;

    move-result-object p1

    invoke-virtual {p1}, Lfr;->first()Ljava/lang/Object;

    move-result-object p1

    new-instance v6, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2$deferred$1;

    iget-object v7, p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2;->this$0:Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;

    invoke-direct {v6, v7, p1, v4}, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2$deferred$1;-><init>(Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;Ljava/lang/Object;Le02;)V

    const/4 v7, 0x3

    invoke-static {v5, v4, v4, v6, v7}, Lav0;->a(Ly22;Lo22;Lc32;Lbm3;I)Lnk2;

    move-result-object v6

    invoke-virtual {v6}, Lsb4;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_7

    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getINFO_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to process "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " due to Job cancellation"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_2
    move-object p1, v4

    goto :goto_4

    :cond_7
    iget-object p1, p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2;->this$0:Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;

    invoke-static {p1}, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->access$getQueue$p(Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;)Lfr;

    move-result-object p1

    invoke-virtual {p1}, Lfr;->removeFirst()Ljava/lang/Object;

    iput-object v6, v1, Lr07;->b:Ljava/lang/Object;

    goto/16 :goto_0

    :goto_3
    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getERROR_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "Encountered exception during processing"

    invoke-static {v3, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :catch_0
    sget-object p1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "PruningProcessingQueue: Scope cancelled"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_8
    :goto_4
    iget-object p0, p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2;->this$0:Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;

    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->access$closeAndReleaseUnprocessedElements(Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;Ljava/lang/Throwable;)V

    if-nez p1, :cond_9

    return-object v4

    :cond_9
    throw p1
.end method
