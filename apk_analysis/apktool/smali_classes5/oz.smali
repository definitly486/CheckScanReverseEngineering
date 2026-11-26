.class public final Loz;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/util/Collection;Lf02;)Ljava/lang/Object;
    .locals 7

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lkx2;->b:Lkx2;

    return-object p0

    :cond_0
    new-instance v0, Lmz;

    const/4 v1, 0x0

    new-array v2, v1, [Lmk2;

    invoke-interface {p0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lmk2;

    invoke-direct {v0, p0}, Lmz;-><init>([Lmk2;)V

    new-instance v2, Lc31;

    invoke-static {p1}, Lzya;->b(Le02;)Le02;

    move-result-object p1

    const/4 v3, 0x1

    invoke-direct {v2, v3, p1}, Lc31;-><init>(ILe02;)V

    invoke-virtual {v2}, Lc31;->u()V

    array-length p1, p0

    new-array v3, p1, [Lmz$a;

    move v4, v1

    :goto_0
    if-ge v4, p1, :cond_1

    aget-object v5, p0, v4

    invoke-interface {v5}, Lmb4;->start()Z

    new-instance v6, Lmz$a;

    invoke-direct {v6, v0, v2}, Lmz$a;-><init>(Lmz;Lc31;)V

    invoke-static {v5, v6}, Lqb4;->g(Lmb4;Lrb4;)Lhp2;

    move-result-object v5

    iput-object v5, v6, Lmz$a;->g:Lhp2;

    sget-object v5, Lj59;->a:Lj59;

    aput-object v6, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Lmz$b;

    invoke-direct {p0, v3}, Lmz$b;-><init>([Lmz$a;)V

    :goto_1
    if-ge v1, p1, :cond_2

    aget-object v0, v3, v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v5, Lmz$a;->i:J

    invoke-virtual {v4, v0, v5, v6, p0}, Lsun/misc/Unsafe;->putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lc31;->t()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lno5;

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lmz$b;->a()V

    goto :goto_2

    :cond_3
    invoke-virtual {v2, p0}, Lc31;->w(Lno5;)V

    :goto_2
    invoke-virtual {v2}, Lc31;->s()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    return-object p0
.end method

.method public static final b(Ljava/util/Collection;Le02;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lmb4;",
            ">;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Loz$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Loz$a;

    iget v1, v0, Loz$a;->o:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Loz$a;->o:I

    goto :goto_0

    :cond_0
    new-instance v0, Loz$a;

    invoke-direct {v0, p1}, Lf02;-><init>(Le02;)V

    :goto_0
    iget-object p1, v0, Loz$a;->n:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Loz$a;->o:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget p0, v0, Loz$a;->m:I

    iget-object v2, v0, Loz$a;->l:Ljava/util/Iterator;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    move-object v2, p0

    move p0, p1

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmb4;

    iput-object v2, v0, Loz$a;->l:Ljava/util/Iterator;

    iput p0, v0, Loz$a;->m:I

    iput v3, v0, Loz$a;->o:I

    invoke-interface {p1, v0}, Lmb4;->e0(Le02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_4
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
