.class final Landroidx/camera/camera2/pipe/core/Threads$runBlockingCheckedOrNull$1;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "androidx.camera.camera2.pipe.core.Threads$runBlockingCheckedOrNull$1"
    f = "Threads.kt"
    l = {
        0x55
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/pipe/core/Threads;->runBlockingCheckedOrNull(JLnl3;)Ljava/lang/Object;
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
.field final synthetic $block:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Le02<",
            "-TT;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $timeoutMs:J

.field label:I

.field final synthetic this$0:Landroidx/camera/camera2/pipe/core/Threads;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/core/Threads;Lnl3;JLe02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/core/Threads;",
            "Lnl3<",
            "-",
            "Le02<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;J",
            "Le02<",
            "-",
            "Landroidx/camera/camera2/pipe/core/Threads$runBlockingCheckedOrNull$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/camera/camera2/pipe/core/Threads$runBlockingCheckedOrNull$1;->this$0:Landroidx/camera/camera2/pipe/core/Threads;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/core/Threads$runBlockingCheckedOrNull$1;->$block:Lnl3;

    iput-wide p3, p0, Landroidx/camera/camera2/pipe/core/Threads$runBlockingCheckedOrNull$1;->$timeoutMs:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 6
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

    new-instance v0, Landroidx/camera/camera2/pipe/core/Threads$runBlockingCheckedOrNull$1;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/core/Threads$runBlockingCheckedOrNull$1;->this$0:Landroidx/camera/camera2/pipe/core/Threads;

    iget-object v2, p0, Landroidx/camera/camera2/pipe/core/Threads$runBlockingCheckedOrNull$1;->$block:Lnl3;

    iget-wide v3, p0, Landroidx/camera/camera2/pipe/core/Threads$runBlockingCheckedOrNull$1;->$timeoutMs:J

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroidx/camera/camera2/pipe/core/Threads$runBlockingCheckedOrNull$1;-><init>(Landroidx/camera/camera2/pipe/core/Threads;Lnl3;JLe02;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/core/Threads$runBlockingCheckedOrNull$1;->invoke(Ly22;Le02;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/core/Threads$runBlockingCheckedOrNull$1;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/pipe/core/Threads$runBlockingCheckedOrNull$1;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/core/Threads$runBlockingCheckedOrNull$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Landroidx/camera/camera2/pipe/core/Threads$runBlockingCheckedOrNull$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/camera/camera2/pipe/core/Threads$runBlockingCheckedOrNull$1;->this$0:Landroidx/camera/camera2/pipe/core/Threads;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Threads;->getBackgroundDispatcher()Lr22;

    move-result-object v1

    iget-object v3, p0, Landroidx/camera/camera2/pipe/core/Threads$runBlockingCheckedOrNull$1;->$block:Lnl3;

    invoke-static {p1, v1, v3}, Landroidx/camera/camera2/pipe/core/Threads;->access$runAsyncSupervised(Landroidx/camera/camera2/pipe/core/Threads;Lr22;Lnl3;)Lmk2;

    move-result-object p1

    iget-wide v3, p0, Landroidx/camera/camera2/pipe/core/Threads$runBlockingCheckedOrNull$1;->$timeoutMs:J

    new-instance v1, Landroidx/camera/camera2/pipe/core/Threads$runBlockingCheckedOrNull$1$1;

    const/4 v5, 0x0

    invoke-direct {v1, p1, v5}, Landroidx/camera/camera2/pipe/core/Threads$runBlockingCheckedOrNull$1$1;-><init>(Lmk2;Le02;)V

    iput v2, p0, Landroidx/camera/camera2/pipe/core/Threads$runBlockingCheckedOrNull$1;->label:I

    invoke-static {v3, v4, v1, p0}, Lyv8;->c(JLbm3;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    return-object p0
.end method
