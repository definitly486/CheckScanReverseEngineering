.class public final synthetic Lue3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lhd3;Lf02;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Laq5;->b:Lbh8;

    instance-of v1, p1, Lve3;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lve3;

    iget v2, v1, Lve3;->o:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lve3;->o:I

    goto :goto_0

    :cond_0
    new-instance v1, Lve3;

    invoke-direct {v1, p1}, Lf02;-><init>(Le02;)V

    :goto_0
    iget-object p1, v1, Lve3;->n:Ljava/lang/Object;

    sget-object v2, La32;->COROUTINE_SUSPENDED:La32;

    iget v3, v1, Lve3;->o:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v5, :cond_1

    iget-object p0, v1, Lve3;->m:Lte3;

    iget-object v2, v1, Lve3;->l:Lr07;

    :try_start_0
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Lkotlinx/coroutines/flow/internal/AbortFlowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    new-instance p1, Lr07;

    invoke-direct {p1}, Lr07;-><init>()V

    iput-object v0, p1, Lr07;->b:Ljava/lang/Object;

    new-instance v3, Lte3;

    invoke-direct {v3, p1}, Lte3;-><init>(Lr07;)V

    :try_start_1
    iput-object p1, v1, Lve3;->l:Lr07;

    iput-object v3, v1, Lve3;->m:Lte3;

    iput v5, v1, Lve3;->o:I

    invoke-interface {p0, v3, v1}, Lhd3;->collect(Lid3;Le02;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Lkotlinx/coroutines/flow/internal/AbortFlowException; {:try_start_1 .. :try_end_1} :catch_1

    if-ne p0, v2, :cond_3

    return-object v2

    :cond_3
    move-object v2, p1

    goto :goto_2

    :catch_1
    move-exception p0

    move-object v2, p1

    move-object p1, p0

    move-object p0, v3

    :goto_1
    iget-object v3, p1, Lkotlinx/coroutines/flow/internal/AbortFlowException;->b:Ljava/lang/Object;

    if-ne v3, p0, :cond_5

    invoke-interface {v1}, Le02;->getContext()Lo22;

    move-result-object p0

    invoke-static {p0}, Lqb4;->e(Lo22;)V

    :goto_2
    iget-object p0, v2, Lr07;->b:Ljava/lang/Object;

    if-eq p0, v0, :cond_4

    return-object p0

    :cond_4
    const-string p0, "Expected at least one element"

    invoke-static {p0}, Lag;->g(Ljava/lang/String;)V

    return-object v4

    :cond_5
    throw p1
.end method

.method public static final b(Lhd3;Lbm3;Le02;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lhd3<",
            "+TT;>;",
            "Lbm3<",
            "-TT;-",
            "Le02<",
            "-",
            "Ljava/lang/Boolean;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Le02<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Laq5;->b:Lbh8;

    instance-of v1, p2, Lue3$b;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Lue3$b;

    iget v2, v1, Lue3$b;->o:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lue3$b;->o:I

    goto :goto_0

    :cond_0
    new-instance v1, Lue3$b;

    invoke-direct {v1, p2}, Lf02;-><init>(Le02;)V

    :goto_0
    iget-object p2, v1, Lue3$b;->n:Ljava/lang/Object;

    sget-object v2, La32;->COROUTINE_SUSPENDED:La32;

    iget v3, v1, Lue3$b;->o:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v5, :cond_1

    iget-object p0, v1, Lue3$b;->m:Lue3$a;

    iget-object p1, v1, Lue3$b;->l:Lr07;

    :try_start_0
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Lkotlinx/coroutines/flow/internal/AbortFlowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    new-instance p2, Lr07;

    invoke-direct {p2}, Lr07;-><init>()V

    iput-object v0, p2, Lr07;->b:Ljava/lang/Object;

    new-instance v3, Lue3$a;

    invoke-direct {v3, p2, p1}, Lue3$a;-><init>(Lr07;Lbm3;)V

    :try_start_1
    iput-object p2, v1, Lue3$b;->l:Lr07;

    iput-object v3, v1, Lue3$b;->m:Lue3$a;

    iput v5, v1, Lue3$b;->o:I

    invoke-interface {p0, v3, v1}, Lhd3;->collect(Lid3;Le02;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Lkotlinx/coroutines/flow/internal/AbortFlowException; {:try_start_1 .. :try_end_1} :catch_1

    if-ne p0, v2, :cond_3

    return-object v2

    :cond_3
    move-object p1, p2

    goto :goto_2

    :catch_1
    move-exception p0

    move-object p1, p2

    move-object p2, p0

    move-object p0, v3

    :goto_1
    iget-object v2, p2, Lkotlinx/coroutines/flow/internal/AbortFlowException;->b:Ljava/lang/Object;

    if-ne v2, p0, :cond_5

    invoke-interface {v1}, Le02;->getContext()Lo22;

    move-result-object p0

    invoke-static {p0}, Lqb4;->e(Lo22;)V

    :goto_2
    iget-object p0, p1, Lr07;->b:Ljava/lang/Object;

    if-eq p0, v0, :cond_4

    return-object p0

    :cond_4
    const-string p0, "Expected at least one element matching the predicate"

    invoke-static {p0}, Lag;->g(Ljava/lang/String;)V

    return-object v4

    :cond_5
    throw p2
.end method

.method public static final c(Lhd3;Le02;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lhd3<",
            "+TT;>;",
            "Le02<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lue3$d;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lue3$d;

    iget v1, v0, Lue3$d;->o:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lue3$d;->o:I

    goto :goto_0

    :cond_0
    new-instance v0, Lue3$d;

    invoke-direct {v0, p1}, Lf02;-><init>(Le02;)V

    :goto_0
    iget-object p1, v0, Lue3$d;->n:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lue3$d;->o:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lue3$d;->m:Lue3$c;

    iget-object v1, v0, Lue3$d;->l:Lr07;

    :try_start_0
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Lkotlinx/coroutines/flow/internal/AbortFlowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    new-instance p1, Lr07;

    invoke-direct {p1}, Lr07;-><init>()V

    new-instance v2, Lue3$c;

    invoke-direct {v2, p1}, Lue3$c;-><init>(Lr07;)V

    :try_start_1
    iput-object p1, v0, Lue3$d;->l:Lr07;

    iput-object v2, v0, Lue3$d;->m:Lue3$c;

    iput v3, v0, Lue3$d;->o:I

    invoke-interface {p0, v2, v0}, Lhd3;->collect(Lid3;Le02;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Lkotlinx/coroutines/flow/internal/AbortFlowException; {:try_start_1 .. :try_end_1} :catch_1

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v1, p1

    goto :goto_2

    :catch_1
    move-exception p0

    move-object v1, p1

    move-object p1, p0

    move-object p0, v2

    :goto_1
    iget-object v2, p1, Lkotlinx/coroutines/flow/internal/AbortFlowException;->b:Ljava/lang/Object;

    if-ne v2, p0, :cond_4

    invoke-interface {v0}, Le02;->getContext()Lo22;

    move-result-object p0

    invoke-static {p0}, Lqb4;->e(Lo22;)V

    :goto_2
    iget-object p0, v1, Lr07;->b:Ljava/lang/Object;

    return-object p0

    :cond_4
    throw p1
.end method

.method public static final d(Lhd3;Lbm3;Lf02;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lxe3;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lxe3;

    iget v1, v0, Lxe3;->o:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lxe3;->o:I

    goto :goto_0

    :cond_0
    new-instance v0, Lxe3;

    invoke-direct {v0, p2}, Lf02;-><init>(Le02;)V

    :goto_0
    iget-object p2, v0, Lxe3;->n:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lxe3;->o:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lxe3;->m:Lwe3;

    iget-object p1, v0, Lxe3;->l:Lr07;

    :try_start_0
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Lkotlinx/coroutines/flow/internal/AbortFlowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    new-instance p2, Lr07;

    invoke-direct {p2}, Lr07;-><init>()V

    new-instance v2, Lwe3;

    invoke-direct {v2, p2, p1}, Lwe3;-><init>(Lr07;Lbm3;)V

    :try_start_1
    iput-object p2, v0, Lxe3;->l:Lr07;

    iput-object v2, v0, Lxe3;->m:Lwe3;

    iput v3, v0, Lxe3;->o:I

    invoke-interface {p0, v2, v0}, Lhd3;->collect(Lid3;Le02;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Lkotlinx/coroutines/flow/internal/AbortFlowException; {:try_start_1 .. :try_end_1} :catch_1

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p2

    goto :goto_2

    :catch_1
    move-exception p0

    move-object p1, p2

    move-object p2, p0

    move-object p0, v2

    :goto_1
    iget-object v1, p2, Lkotlinx/coroutines/flow/internal/AbortFlowException;->b:Ljava/lang/Object;

    if-ne v1, p0, :cond_4

    invoke-interface {v0}, Le02;->getContext()Lo22;

    move-result-object p0

    invoke-static {p0}, Lqb4;->e(Lo22;)V

    :goto_2
    iget-object p0, p1, Lr07;->b:Ljava/lang/Object;

    return-object p0

    :cond_4
    throw p2
.end method

.method public static final e(Lde3;Lf02;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Laq5;->b:Lbh8;

    instance-of v1, p1, Lye3;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lye3;

    iget v2, v1, Lye3;->n:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lye3;->n:I

    goto :goto_0

    :cond_0
    new-instance v1, Lye3;

    invoke-direct {v1, p1}, Lf02;-><init>(Le02;)V

    :goto_0
    iget-object p1, v1, Lye3;->m:Ljava/lang/Object;

    sget-object v2, La32;->COROUTINE_SUSPENDED:La32;

    iget v3, v1, Lye3;->n:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v5, :cond_1

    iget-object p0, v1, Lye3;->l:Lr07;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    new-instance p1, Lr07;

    invoke-direct {p1}, Lr07;-><init>()V

    iput-object v0, p1, Lr07;->b:Ljava/lang/Object;

    new-instance v3, Lze3;

    invoke-direct {v3, p1}, Lze3;-><init>(Lr07;)V

    iput-object p1, v1, Lye3;->l:Lr07;

    iput v5, v1, Lye3;->n:I

    invoke-virtual {p0, v3, v1}, Lde3;->collect(Lid3;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v2, :cond_3

    return-object v2

    :cond_3
    move-object p0, p1

    :goto_1
    iget-object p0, p0, Lr07;->b:Ljava/lang/Object;

    if-eq p0, v0, :cond_4

    return-object p0

    :cond_4
    const-string p0, "Expected at least one element"

    invoke-static {p0}, Lag;->g(Ljava/lang/String;)V

    return-object v4
.end method
