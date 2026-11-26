.class public final Lyk2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lf02;)La32;
    .locals 5

    instance-of v0, p0, Lxk2;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lxk2;

    iget v1, v0, Lxk2;->m:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lxk2;->m:I

    goto :goto_0

    :cond_0
    new-instance v0, Lxk2;

    invoke-direct {v0, p0}, Lf02;-><init>(Le02;)V

    :goto_0
    iget-object p0, v0, Lxk2;->l:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lxk2;->m:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_1

    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_1
    invoke-static {p0}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p0}, Lr57;->b(Ljava/lang/Object;)V

    iput v4, v0, Lxk2;->m:I

    new-instance p0, Lc31;

    invoke-static {v0}, Lzya;->b(Le02;)Le02;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lc31;-><init>(ILe02;)V

    invoke-virtual {p0}, Lc31;->u()V

    invoke-virtual {p0}, Lc31;->s()Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    invoke-static {}, Lh8;->d()V

    return-object v3
.end method

.method public static final b(JLe02;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_0
    new-instance v0, Lc31;

    invoke-static {p2}, Lzya;->b(Le02;)Le02;

    move-result-object p2

    const/4 v1, 0x1

    invoke-direct {v0, v1, p2}, Lc31;-><init>(ILe02;)V

    invoke-virtual {v0}, Lc31;->u()V

    const-wide v1, 0x7fffffffffffffffL

    cmp-long p2, p0, v1

    if-gez p2, :cond_1

    iget-object p2, v0, Lc31;->f:Lo22;

    invoke-static {p2}, Lyk2;->c(Lo22;)Lwk2;

    move-result-object p2

    invoke-interface {p2, p0, p1, v0}, Lwk2;->b(JLc31;)V

    :cond_1
    invoke-virtual {v0}, Lc31;->s()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_2

    return-object p0

    :cond_2
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final c(Lo22;)Lwk2;
    .locals 1

    sget-object v0, Lg02$a;->b:Lg02$a;

    invoke-interface {p0, v0}, Lo22;->get(Lo22$b;)Lo22$a;

    move-result-object p0

    instance-of v0, p0, Lwk2;

    if-eqz v0, :cond_0

    check-cast p0, Lwk2;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    sget-object p0, Llh2;->a:Lwk2;

    :cond_1
    return-object p0
.end method

.method public static final d(J)J
    .locals 4

    sget-object v0, Lwt2;->c:Lwt2$a;

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    const/4 v3, 0x1

    if-lez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ne v2, v3, :cond_1

    const-wide/32 v0, 0xf423f

    sget-object v2, Lau2;->NANOSECONDS:Lau2;

    invoke-static {v0, v1, v2}, Lyt2;->f(JLau2;)J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lwt2;->j(JJ)J

    move-result-wide p0

    invoke-static {p0, p1}, Lwt2;->e(J)J

    move-result-wide p0

    return-wide p0

    :cond_1
    if-nez v2, :cond_2

    return-wide v0

    :cond_2
    invoke-static {}, Lme0;->e()V

    return-wide v0
.end method
