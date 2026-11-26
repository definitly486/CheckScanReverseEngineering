.class public final Lsg6;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lug6;Lll3;Le02;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lug6<",
            "*>;",
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

    instance-of v0, p2, Lsg6$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lsg6$a;

    iget v1, v0, Lsg6$a;->o:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lsg6$a;->o:I

    goto :goto_0

    :cond_0
    new-instance v0, Lsg6$a;

    invoke-direct {v0, p2}, Lf02;-><init>(Le02;)V

    :goto_0
    iget-object p2, v0, Lsg6$a;->n:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lsg6$a;->o:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, Lsg6$a;->m:Lll3;

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

    return-object v3

    :cond_2
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    invoke-interface {v0}, Le02;->getContext()Lo22;

    move-result-object p2

    sget-object v2, Lmb4$a;->b:Lmb4$a;

    invoke-interface {p2, v2}, Lo22;->get(Lo22$b;)Lo22$a;

    move-result-object p2

    if-ne p2, p0, :cond_4

    :try_start_1
    iput-object p0, v0, Lsg6$a;->l:Lug6;

    move-object p2, p1

    check-cast p2, Lll3;

    iput-object p2, v0, Lsg6$a;->m:Lll3;

    iput v4, v0, Lsg6$a;->o:I

    new-instance p2, Lc31;

    invoke-static {v0}, Lzya;->b(Le02;)Le02;

    move-result-object v0

    invoke-direct {p2, v4, v0}, Lc31;-><init>(ILe02;)V

    invoke-virtual {p2}, Lc31;->u()V

    new-instance v0, Lsg6$b;

    invoke-direct {v0, p2}, Lsg6$b;-><init>(Lc31;)V

    invoke-interface {p0, v0}, Lno7;->invokeOnClose(Lnl3;)V

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

    :goto_2
    invoke-interface {p1}, Lll3;->invoke()Ljava/lang/Object;

    throw p0

    :cond_4
    const-string p0, "awaitClose() can only be invoked from the producer context"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3
.end method
