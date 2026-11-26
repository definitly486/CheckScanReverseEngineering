.class public final synthetic Lhe3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lhd3;Lid3;Lf02;)Ljava/io/Serializable;
    .locals 5

    instance-of v0, p2, Lee3;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lee3;

    iget v1, v0, Lee3;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lee3;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Lee3;

    invoke-direct {v0, p2}, Lf02;-><init>(Le02;)V

    :goto_0
    iget-object p2, v0, Lee3;->m:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lee3;->n:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lee3;->l:Lr07;

    :try_start_0
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v4

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    new-instance p2, Lr07;

    invoke-direct {p2}, Lr07;-><init>()V

    :try_start_1
    new-instance v2, Lfe3;

    invoke-direct {v2, p1, p2}, Lfe3;-><init>(Lid3;Lr07;)V

    iput-object p2, v0, Lee3;->l:Lr07;

    iput v3, v0, Lee3;->n:I

    invoke-interface {p0, v2, v0}, Lhd3;->collect(Lid3;Le02;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    return-object v4

    :catchall_1
    move-exception p1

    move-object p0, p2

    :goto_1
    iget-object p0, p0, Lr07;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Throwable;

    if-eqz p0, :cond_4

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    :cond_4
    invoke-interface {v0}, Le02;->getContext()Lo22;

    move-result-object p2

    sget-object v0, Lmb4$a;->b:Lmb4$a;

    invoke-interface {p2, v0}, Lo22;->get(Lo22$b;)Lo22$a;

    move-result-object p2

    check-cast p2, Lmb4;

    if-eqz p2, :cond_7

    invoke-interface {p2}, Lmb4;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    invoke-interface {p2}, Lmb4;->y()Ljava/util/concurrent/CancellationException;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_2

    :cond_6
    throw p1

    :cond_7
    :goto_2
    if-nez p0, :cond_8

    return-object p1

    :cond_8
    instance-of p2, p1, Ljava/util/concurrent/CancellationException;

    if-eqz p2, :cond_9

    invoke-static {p0, p1}, Lsj0;->c(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw p0

    :cond_9
    invoke-static {p1, p0}, Lsj0;->c(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw p1
.end method
