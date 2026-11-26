.class public final Lf91;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lo22;Ljava/lang/Object;Ljava/lang/Object;Lbm3;Le02;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lo22;",
            "TV;",
            "Ljava/lang/Object;",
            "Lbm3<",
            "-TV;-",
            "Le02<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Le02<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lf91$a;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lf91$a;

    iget v1, v0, Lf91$a;->q:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lf91$a;->q:I

    goto :goto_0

    :cond_0
    new-instance v0, Lf91$a;

    invoke-direct {v0, p4}, Lf02;-><init>(Le02;)V

    :goto_0
    iget-object p4, v0, Lf91$a;->p:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lf91$a;->q:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lf91$a;->o:Ljava/lang/Object;

    iget-object p1, v0, Lf91$a;->n:Lo22;

    :try_start_0
    invoke-static {p4}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p2, p0

    move-object p0, p1

    goto :goto_3

    :catchall_0
    move-exception p2

    move-object v4, p2

    move-object p2, p0

    move-object p0, p1

    move-object p1, v4

    goto :goto_4

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p4}, Lr57;->b(Ljava/lang/Object;)V

    invoke-static {p0, p2}, Llt8;->c(Lo22;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :try_start_1
    iput-object p0, v0, Lf91$a;->l:Lo22;

    iput-object p1, v0, Lf91$a;->m:Ljava/lang/Object;

    iput-object p0, v0, Lf91$a;->n:Lo22;

    iput-object p2, v0, Lf91$a;->o:Ljava/lang/Object;

    iput v3, v0, Lf91$a;->q:I

    new-instance p4, Lo68;

    invoke-direct {p4, v0, p0}, Lo68;-><init>(Lf91$a;Lo22;)V

    if-nez p3, :cond_3

    invoke-static {p3, p1, p4}, Lzya;->c(Lbm3;Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object p1

    :goto_1
    move-object p4, p1

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_4

    :cond_3
    const/4 v0, 0x2

    invoke-static {v0, p3}, Lv39;->c(ILjava/lang/Object;)V

    invoke-interface {p3, p1, p4}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :goto_2
    if-ne p4, v1, :cond_4

    return-object v1

    :cond_4
    :goto_3
    invoke-static {p0, p2}, Llt8;->a(Lo22;Ljava/lang/Object;)V

    return-object p4

    :goto_4
    invoke-static {p0, p2}, Llt8;->a(Lo22;Ljava/lang/Object;)V

    throw p1
.end method
