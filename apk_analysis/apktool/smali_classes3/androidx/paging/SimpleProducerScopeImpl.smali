.class public final Landroidx/paging/SimpleProducerScopeImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/paging/SimpleProducerScope;
.implements Ly22;
.implements Lno7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/paging/SimpleProducerScope<",
        "TT;>;",
        "Ly22;",
        "Lno7<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final synthetic $$delegate_0:Ly22;

.field private final channel:Lno7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lno7<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ly22;Lno7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly22;",
            "Lno7<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/paging/SimpleProducerScopeImpl;->$$delegate_0:Ly22;

    iput-object p2, p0, Landroidx/paging/SimpleProducerScopeImpl;->channel:Lno7;

    return-void
.end method


# virtual methods
.method public awaitClose(Lll3;Le02;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lll3<",
            "Lj59;",
            ">;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Landroidx/paging/SimpleProducerScopeImpl$awaitClose$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/paging/SimpleProducerScopeImpl$awaitClose$1;

    iget v1, v0, Landroidx/paging/SimpleProducerScopeImpl$awaitClose$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/paging/SimpleProducerScopeImpl$awaitClose$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/paging/SimpleProducerScopeImpl$awaitClose$1;

    invoke-direct {v0, p0, p2}, Landroidx/paging/SimpleProducerScopeImpl$awaitClose$1;-><init>(Landroidx/paging/SimpleProducerScopeImpl;Le02;)V

    :goto_0
    iget-object p2, v0, Landroidx/paging/SimpleProducerScopeImpl$awaitClose$1;->result:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Landroidx/paging/SimpleProducerScopeImpl$awaitClose$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Landroidx/paging/SimpleProducerScopeImpl$awaitClose$1;->L$1:Ljava/lang/Object;

    check-cast p0, Lmb4;

    iget-object p0, v0, Landroidx/paging/SimpleProducerScopeImpl$awaitClose$1;->L$0:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Lll3;

    :try_start_0
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    :try_start_1
    invoke-virtual {p0}, Landroidx/paging/SimpleProducerScopeImpl;->getCoroutineContext()Lo22;

    move-result-object p0

    sget-object p2, Lmb4$a;->b:Lmb4$a;

    invoke-interface {p0, p2}, Lo22;->get(Lo22$b;)Lo22$a;

    move-result-object p0

    if-eqz p0, :cond_4

    check-cast p0, Lmb4;

    iput-object p1, v0, Landroidx/paging/SimpleProducerScopeImpl$awaitClose$1;->L$0:Ljava/lang/Object;

    iput-object p0, v0, Landroidx/paging/SimpleProducerScopeImpl$awaitClose$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Landroidx/paging/SimpleProducerScopeImpl$awaitClose$1;->label:I

    new-instance p2, Lc31;

    invoke-static {v0}, Lzya;->b(Le02;)Le02;

    move-result-object v0

    invoke-direct {p2, v3, v0}, Lc31;-><init>(ILe02;)V

    invoke-virtual {p2}, Lc31;->u()V

    new-instance v0, Landroidx/paging/SimpleProducerScopeImpl$awaitClose$2$1;

    invoke-direct {v0, p2}, Landroidx/paging/SimpleProducerScopeImpl$awaitClose$2$1;-><init>(La31;)V

    invoke-interface {p0, v0}, Lmb4;->g(Lnl3;)Lhp2;

    invoke-virtual {p2}, Lc31;->s()Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    invoke-interface {p1}, Lll3;->invoke()Ljava/lang/Object;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_4
    :try_start_2
    const-string p0, "Internal error, context should have a job."

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    invoke-interface {p1}, Lll3;->invoke()Ljava/lang/Object;

    throw p0
.end method

.method public close(Ljava/lang/Throwable;)Z
    .locals 0

    iget-object p0, p0, Landroidx/paging/SimpleProducerScopeImpl;->channel:Lno7;

    invoke-interface {p0, p1}, Lno7;->close(Ljava/lang/Throwable;)Z

    move-result p0

    return p0
.end method

.method public getChannel()Lno7;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lno7<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/paging/SimpleProducerScopeImpl;->channel:Lno7;

    return-object p0
.end method

.method public getCoroutineContext()Lo22;
    .locals 0

    iget-object p0, p0, Landroidx/paging/SimpleProducerScopeImpl;->$$delegate_0:Ly22;

    invoke-interface {p0}, Ly22;->getCoroutineContext()Lo22;

    move-result-object p0

    return-object p0
.end method

.method public getOnSend()Lxl7;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lxl7<",
            "TT;",
            "Lno7<",
            "TT;>;>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/paging/SimpleProducerScopeImpl;->channel:Lno7;

    invoke-interface {p0}, Lno7;->getOnSend()Lxl7;

    move-result-object p0

    return-object p0
.end method

.method public invokeOnClose(Lnl3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Ljava/lang/Throwable;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/paging/SimpleProducerScopeImpl;->channel:Lno7;

    invoke-interface {p0, p1}, Lno7;->invokeOnClose(Lnl3;)V

    return-void
.end method

.method public isClosedForSend()Z
    .locals 0

    iget-object p0, p0, Landroidx/paging/SimpleProducerScopeImpl;->channel:Lno7;

    invoke-interface {p0}, Lno7;->isClosedForSend()Z

    move-result p0

    return p0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .annotation runtime Lul2;
    .end annotation

    iget-object p0, p0, Landroidx/paging/SimpleProducerScopeImpl;->channel:Lno7;

    invoke-interface {p0, p1}, Lno7;->offer(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public send(Ljava/lang/Object;Le02;)Ljava/lang/Object;
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

    iget-object p0, p0, Landroidx/paging/SimpleProducerScopeImpl;->channel:Lno7;

    invoke-interface {p0, p1, p2}, Lno7;->send(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/paging/SimpleProducerScopeImpl;->channel:Lno7;

    invoke-interface {p0, p1}, Lno7;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
