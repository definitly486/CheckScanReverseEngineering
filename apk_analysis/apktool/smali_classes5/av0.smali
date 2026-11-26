.class public final synthetic Lav0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ly22;Lo22;Lc32;Lbm3;I)Lnk2;
    .locals 1

    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    sget-object p1, Lgx2;->b:Lgx2;

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    sget-object p2, Lc32;->DEFAULT:Lc32;

    :cond_1
    invoke-static {p0, p1}, Lq22;->b(Ly22;Lo22;)Lo22;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lc32;->LAZY:Lc32;

    if-ne p2, p1, :cond_2

    new-instance p1, Lel4;

    invoke-direct {p1, p0, p3}, Lel4;-><init>(Lo22;Lbm3;)V

    goto :goto_0

    :cond_2
    new-instance p1, Lnk2;

    const/4 p4, 0x1

    invoke-direct {p1, p0, p4, p4}, La0;-><init>(Lo22;ZZ)V

    :goto_0
    invoke-virtual {p1, p2, p1, p3}, La0;->m0(Lc32;La0;Lbm3;)V

    return-object p1
.end method

.method public static final b(Ly22;Lo22;Lc32;Lbm3;)Ls68;
    .locals 1

    invoke-static {p0, p1}, Lq22;->b(Ly22;Lo22;)Lo22;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lc32;->LAZY:Lc32;

    if-ne p2, p1, :cond_0

    new-instance p1, Lno4;

    invoke-direct {p1, p0, p3}, Lno4;-><init>(Lo22;Lbm3;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ls68;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0, v0}, La0;-><init>(Lo22;ZZ)V

    :goto_0
    invoke-virtual {p1, p2, p1, p3}, La0;->m0(Lc32;La0;Lbm3;)V

    return-object p1
.end method

.method public static c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;
    .locals 1

    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    sget-object p1, Lgx2;->b:Lgx2;

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    sget-object p2, Lc32;->DEFAULT:Lc32;

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lav0;->b(Ly22;Lo22;Lc32;Lbm3;)Ls68;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Lo22;Lbm3;Le02;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo22;",
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

    invoke-interface {p2}, Le02;->getContext()Lo22;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance v2, Lit1;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lit1;-><init>(I)V

    invoke-interface {p0, v1, v2}, Lo22;->fold(Ljava/lang/Object;Lbm3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0, p0}, Lo22;->plus(Lo22;)Lo22;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lq22;->a(Lo22;Lo22;Z)Lo22;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lqb4;->e(Lo22;)V

    if-ne p0, v0, :cond_1

    new-instance v0, Laf7;

    invoke-direct {v0, p2, p0}, Laf7;-><init>(Le02;Lo22;)V

    invoke-static {v0, v3, v0, p1}, Lcn1;->d(Laf7;ZLjava/lang/Object;Lbm3;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_1
    sget-object v1, Lg02$a;->b:Lg02$a;

    invoke-interface {p0, v1}, Lo22;->get(Lo22$b;)Lo22$a;

    move-result-object v2

    invoke-interface {v0, v1}, Lo22;->get(Lo22$b;)Lo22$a;

    move-result-object v0

    invoke-static {v2, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    new-instance v0, Lh59;

    invoke-direct {v0, p2, p0}, Lh59;-><init>(Le02;Lo22;)V

    iget-object p0, v0, La0;->e:Lo22;

    invoke-static {p0, v1}, Llt8;->c(Lo22;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :try_start_0
    invoke-static {v0, v3, v0, p1}, Lcn1;->d(Laf7;ZLjava/lang/Object;Lbm3;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0, p2}, Llt8;->a(Lo22;Ljava/lang/Object;)V

    move-object p0, p1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v0

    invoke-static {p0, p2}, Llt8;->a(Lo22;Ljava/lang/Object;)V

    throw p1

    :cond_2
    new-instance v3, Lho2;

    invoke-direct {v3, p2, p0}, Laf7;-><init>(Le02;Lo22;)V

    :try_start_1
    invoke-static {v3, v3, p1}, Lzya;->a(Le02;Le02;Lbm3;)Le02;

    move-result-object p0

    invoke-static {p0}, Lzya;->b(Le02;)Le02;

    move-result-object p0

    sget-object p1, Lj59;->a:Lj59;

    invoke-static {p0, p1}, Lgo2;->f(Le02;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_3
    sget-object v2, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v4, Lho2;->g:J

    invoke-virtual {v2, v3, v4, v5}, Lsun/misc/Unsafe;->getIntVolatile(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_6

    const/4 p1, 0x2

    if-ne p0, p1, :cond_5

    invoke-virtual {v3}, Lsb4;->L()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lvp2;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lyq1;

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    check-cast p0, Lyq1;

    iget-object p0, p0, Lyq1;->a:Ljava/lang/Throwable;

    throw p0

    :cond_5
    const-string p0, "Already suspended"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v1

    :cond_6
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, La32;->COROUTINE_SUSPENDED:La32;

    :goto_1
    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    return-object p0

    :catchall_1
    move-exception v0

    move-object p0, v0

    instance-of p1, p0, Lkotlinx/coroutines/DispatchException;

    if-eqz p1, :cond_7

    check-cast p0, Lkotlinx/coroutines/DispatchException;

    iget-object p0, p0, Lkotlinx/coroutines/DispatchException;->b:Ljava/lang/Throwable;

    :cond_7
    new-instance p1, Lk57$a;

    invoke-direct {p1, p0}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v3, p1}, La0;->resumeWith(Ljava/lang/Object;)V

    throw p0
.end method
