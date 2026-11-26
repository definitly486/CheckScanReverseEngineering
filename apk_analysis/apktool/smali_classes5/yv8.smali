.class public final Lyv8;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lxv8;Lbm3;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "T::TU;>(",
            "Lxv8<",
            "TU;-TT;>;",
            "Lbm3<",
            "-",
            "Ly22;",
            "-",
            "Le02<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Laf7;->f:Le02;

    invoke-interface {v0}, Le02;->getContext()Lo22;

    move-result-object v0

    invoke-static {v0}, Lyk2;->c(Lo22;)Lwk2;

    move-result-object v0

    iget-wide v1, p0, Lxv8;->g:J

    iget-object v3, p0, La0;->e:Lo22;

    invoke-interface {v0, v1, v2, p0, v3}, Lwk2;->X(JLjava/lang/Runnable;Lo22;)Lhp2;

    move-result-object v0

    new-instance v1, Lmp2;

    invoke-direct {v1, v0}, Lmp2;-><init>(Lhp2;)V

    invoke-static {p0, v1}, Lqb4;->g(Lmb4;Lrb4;)Lhp2;

    const/4 v0, 0x0

    invoke-static {p0, v0, p0, p1}, Lcn1;->d(Laf7;ZLjava/lang/Object;Lbm3;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final b(JLbm3;Lf02;)Ljava/lang/Object;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    new-instance v0, Lxv8;

    invoke-direct {v0, p0, p1, p3}, Lxv8;-><init>(JLf02;)V

    invoke-static {v0, p2}, Lyv8;->a(Lxv8;Lbm3;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    return-object p0

    :cond_0
    new-instance p0, Lkotlinx/coroutines/TimeoutCancellationException;

    const-string p1, "Timed out immediately"

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/TimeoutCancellationException;-><init>(Ljava/lang/String;Lxv8;)V

    throw p0
.end method

.method public static final c(JLbm3;Le02;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Lbm3<",
            "-",
            "Ly22;",
            "-",
            "Le02<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Le02<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lyv8$a;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lyv8$a;

    iget v1, v0, Lyv8$a;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lyv8$a;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Lyv8$a;

    invoke-direct {v0, p3}, Lf02;-><init>(Le02;)V

    :goto_0
    iget-object p3, v0, Lyv8$a;->m:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lyv8$a;->n:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, Lyv8$a;->l:Lr07;

    :try_start_0
    invoke-static {p3}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p3

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p3}, Lr57;->b(Ljava/lang/Object;)V

    const-wide/16 v5, 0x0

    cmp-long p3, p0, v5

    if-gtz p3, :cond_3

    goto :goto_2

    :cond_3
    new-instance p3, Lr07;

    invoke-direct {p3}, Lr07;-><init>()V

    :try_start_1
    iput-object p3, v0, Lyv8$a;->l:Lr07;

    iput v4, v0, Lyv8$a;->n:I

    new-instance v2, Lxv8;

    invoke-direct {v2, p0, p1, v0}, Lxv8;-><init>(JLf02;)V

    iput-object v2, p3, Lr07;->b:Ljava/lang/Object;

    invoke-static {v2, p2}, Lyv8;->a(Lxv8;Lbm3;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_1 .. :try_end_1} :catch_1

    if-ne p0, v1, :cond_4

    return-object v1

    :cond_4
    return-object p0

    :catch_1
    move-exception p1

    move-object p0, p3

    :goto_1
    iget-object p2, p1, Lkotlinx/coroutines/TimeoutCancellationException;->b:Lmb4;

    iget-object p0, p0, Lr07;->b:Ljava/lang/Object;

    if-ne p2, p0, :cond_5

    :goto_2
    return-object v3

    :cond_5
    throw p1
.end method
