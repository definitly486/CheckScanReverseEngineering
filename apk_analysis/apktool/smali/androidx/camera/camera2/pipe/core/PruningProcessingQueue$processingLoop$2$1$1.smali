.class final Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2$1$1;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "androidx.camera.camera2.pipe.core.PruningProcessingQueue$processingLoop$2$1$1"
    f = "PruningProcessingQueue.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "TT;",
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
            "Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2$1$1;->this$0:Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;

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

    new-instance v0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2$1$1;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2$1$1;->this$0:Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;

    invoke-direct {v0, p0, p2}, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2$1$1;-><init>(Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;Le02;)V

    iput-object p1, v0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2$1$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2$1$1;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2$1$1;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2$1$1;->invoke(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v0, p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2$1$1;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2$1$1;->L$0:Ljava/lang/Object;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2$1$1;->this$0:Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;

    invoke-static {v0}, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->access$getQueue$p(Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;)Lfr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfr;->addLast(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2$1$1;->this$0:Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;

    invoke-static {p1}, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->access$getChannel$p(Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;)Lx81;

    move-result-object p1

    invoke-interface {p1}, Lqz6;->i()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    instance-of v0, p1, Lp91$b;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2$1$1;->this$0:Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;

    invoke-static {v0}, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->access$getQueue$p(Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;)Lfr;

    move-result-object v0

    invoke-static {p1}, Lp91;->c(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lfr;->addLast(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2$1$1;->this$0:Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;

    invoke-static {p1}, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->access$getChannel$p(Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;)Lx81;

    move-result-object p1

    invoke-interface {p1}, Lqz6;->i()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2$1$1;->this$0:Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "PruningProcessingQueue: Pruning "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->access$getQueue$p(Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;)Lfr;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CXCP"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p1, p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2$1$1;->this$0:Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;

    invoke-static {p1}, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->access$getPrune$p(Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;)Lnl3;

    move-result-object p1

    iget-object p0, p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2$1$1;->this$0:Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;

    invoke-static {p0}, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->access$getQueue$p(Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;)Lfr;

    move-result-object p0

    invoke-interface {p1, p0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_2
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
