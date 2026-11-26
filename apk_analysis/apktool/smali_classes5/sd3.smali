.class public final synthetic Lsd3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lqz6;)Lz81;
    .locals 2

    new-instance v0, Lz81;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lz81;-><init>(Lqz6;Z)V

    return-object v0
.end method

.method public static final b(Lid3;Lqz6;ZLe02;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lid3<",
            "-TT;>;",
            "Lqz6<",
            "+TT;>;Z",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lsd3$a;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lsd3$a;

    iget v1, v0, Lsd3$a;->q:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lsd3$a;->q:I

    goto :goto_0

    :cond_0
    new-instance v0, Lsd3$a;

    invoke-direct {v0, p3}, Lf02;-><init>(Le02;)V

    :goto_0
    iget-object p3, v0, Lsd3$a;->p:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lsd3$a;->q:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v4, :cond_3

    if-ne v2, v3, :cond_2

    iget-boolean p2, v0, Lsd3$a;->o:Z

    iget-object p0, v0, Lsd3$a;->n:Lk91;

    iget-object p1, v0, Lsd3$a;->m:Lqz6;

    iget-object v2, v0, Lsd3$a;->l:Lid3;

    :try_start_0
    invoke-static {p3}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    move-object p3, p0

    move-object p0, v2

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_2
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v5

    :cond_3
    iget-boolean p2, v0, Lsd3$a;->o:Z

    iget-object p0, v0, Lsd3$a;->n:Lk91;

    iget-object p1, v0, Lsd3$a;->m:Lqz6;

    iget-object v2, v0, Lsd3$a;->l:Lid3;

    :try_start_1
    invoke-static {p3}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_4
    invoke-static {p3}, Lr57;->b(Ljava/lang/Object;)V

    instance-of p3, p0, Lyt8;

    if-nez p3, :cond_b

    :try_start_2
    invoke-interface {p1}, Lqz6;->iterator()Lk91;

    move-result-object p3

    :goto_1
    iput-object p0, v0, Lsd3$a;->l:Lid3;

    iput-object p1, v0, Lsd3$a;->m:Lqz6;

    iput-object p3, v0, Lsd3$a;->n:Lk91;

    iput-boolean p2, v0, Lsd3$a;->o:Z

    iput v4, v0, Lsd3$a;->q:I

    invoke-interface {p3, v0}, Lk91;->b(Lf02;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_5

    goto :goto_3

    :cond_5
    move-object v6, v2

    move-object v2, p0

    move-object p0, p3

    move-object p3, v6

    :goto_2
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p0}, Lk91;->next()Ljava/lang/Object;

    move-result-object p3

    iput-object v2, v0, Lsd3$a;->l:Lid3;

    iput-object p1, v0, Lsd3$a;->m:Lqz6;

    iput-object p0, v0, Lsd3$a;->n:Lk91;

    iput-boolean p2, v0, Lsd3$a;->o:Z

    iput v3, v0, Lsd3$a;->q:I

    invoke-interface {v2, p3, v0}, Lid3;->emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne p3, v1, :cond_1

    :goto_3
    return-object v1

    :cond_6
    if-eqz p2, :cond_7

    invoke-interface {p1, v5}, Lqz6;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_7
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :goto_4
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p3

    if-eqz p2, :cond_a

    instance-of p2, p0, Ljava/util/concurrent/CancellationException;

    if-eqz p2, :cond_8

    move-object v5, p0

    check-cast v5, Ljava/util/concurrent/CancellationException;

    :cond_8
    if-nez v5, :cond_9

    const-string p2, "Channel was consumed, consumer had failed"

    invoke-static {p2, p0}, Lpib;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    move-result-object v5

    :cond_9
    invoke-interface {p1, v5}, Lqz6;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_a
    throw p3

    :cond_b
    check-cast p0, Lyt8;

    iget-object p0, p0, Lyt8;->b:Ljava/lang/Throwable;

    throw p0
.end method
