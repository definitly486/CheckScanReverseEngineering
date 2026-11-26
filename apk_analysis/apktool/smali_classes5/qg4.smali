.class public final Lqg4;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lfy0;Le02;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lfy0<",
            "TT;>;",
            "Le02<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lc31;

    invoke-static {p1}, Lzya;->b(Le02;)Le02;

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lc31;-><init>(ILe02;)V

    invoke-virtual {v0}, Lc31;->u()V

    new-instance p1, Lqg4$a;

    invoke-direct {p1, p0}, Lqg4$a;-><init>(Lfy0;)V

    invoke-virtual {v0, p1}, Lc31;->n(Lnl3;)V

    new-instance p1, Lqg4$b;

    invoke-direct {p1, v0}, Lqg4$b;-><init>(Lc31;)V

    invoke-interface {p0, p1}, Lfy0;->o(Lsy0;)V

    invoke-virtual {v0}, Lc31;->s()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    return-object p0
.end method

.method public static final b(Lfy0;Le02;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lfy0<",
            "TT;>;",
            "Le02<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lc31;

    invoke-static {p1}, Lzya;->b(Le02;)Le02;

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lc31;-><init>(ILe02;)V

    invoke-virtual {v0}, Lc31;->u()V

    new-instance p1, Lqg4$c;

    invoke-direct {p1, p0}, Lqg4$c;-><init>(Lfy0;)V

    invoke-virtual {v0, p1}, Lc31;->n(Lnl3;)V

    new-instance p1, Lqg4$d;

    invoke-direct {p1, v0}, Lqg4$d;-><init>(Lc31;)V

    invoke-interface {p0, p1}, Lfy0;->o(Lsy0;)V

    invoke-virtual {v0}, Lc31;->s()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    return-object p0
.end method

.method public static final c(Ljava/lang/Throwable;Le02;)La32;
    .locals 5

    instance-of v0, p1, Ltg4;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ltg4;

    iget v1, v0, Ltg4;->m:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Ltg4;->m:I

    goto :goto_0

    :cond_0
    new-instance v0, Ltg4;

    invoke-direct {v0, p1}, Lf02;-><init>(Le02;)V

    :goto_0
    iget-object p1, v0, Ltg4;->l:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Ltg4;->m:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    const/4 p0, 0x0

    if-eq v2, v3, :cond_1

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p1}, Lah;->f(Ljava/lang/String;)V

    return-object p0

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    invoke-static {}, Lh8;->d()V

    return-object p0

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iput v3, v0, Ltg4;->m:I

    sget-object p1, Lqo2;->a:Loi2;

    invoke-interface {v0}, Le02;->getContext()Lo22;

    move-result-object v2

    new-instance v3, Lug4;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0, p0}, Lug4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v2, v3}, Loi2;->dispatch(Lo22;Ljava/lang/Runnable;)V

    return-object v1
.end method
