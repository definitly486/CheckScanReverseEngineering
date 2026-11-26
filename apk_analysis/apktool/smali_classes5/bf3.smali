.class public final synthetic Lbf3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lvg5;)Lfy6;
    .locals 2

    new-instance v0, Lfy6;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lfy6;-><init>(Lvg5;Ls68;)V

    return-object v0
.end method

.method public static final b(Lxg5;)Lgy6;
    .locals 2

    new-instance v0, Lgy6;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lgy6;-><init>(Lxg5;Ls68;)V

    return-object v0
.end method

.method public static final c(Lhd3;)Ldu7;
    .locals 7

    sget-object v0, Lx81;->s1:Lx81$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Lx81$a;->b:I

    const/4 v1, 0x1

    if-ge v1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sub-int/2addr v0, v1

    instance-of v1, p0, Ld91;

    if-eqz v1, :cond_4

    move-object v1, p0

    check-cast v1, Ld91;

    iget-object v2, v1, Ld91;->d:Lcu0;

    invoke-virtual {v1}, Ld91;->j()Lhd3;

    move-result-object v3

    if-eqz v3, :cond_4

    new-instance p0, Ldu7;

    iget v4, v1, Ld91;->c:I

    const/4 v5, -0x3

    if-eq v4, v5, :cond_1

    const/4 v5, -0x2

    if-eq v4, v5, :cond_1

    if-eqz v4, :cond_1

    move v0, v4

    goto :goto_1

    :cond_1
    sget-object v5, Lcu0;->SUSPEND:Lcu0;

    const/4 v6, 0x0

    if-ne v2, v5, :cond_2

    if-nez v4, :cond_3

    :cond_2
    move v0, v6

    :cond_3
    :goto_1
    iget-object v1, v1, Ld91;->b:Lo22;

    invoke-direct {p0, v0, v2, v1, v3}, Ldu7;-><init>(ILcu0;Lo22;Lhd3;)V

    return-object p0

    :cond_4
    new-instance v1, Ldu7;

    sget-object v2, Lcu0;->SUSPEND:Lcu0;

    sget-object v3, Lgx2;->b:Lgx2;

    invoke-direct {v1, v0, v2, v3, p0}, Ldu7;-><init>(ILcu0;Lo22;Lhd3;)V

    return-object v1
.end method

.method public static final d(Lhd3;Ly22;Leu7;Ljava/lang/Object;)Lgy6;
    .locals 7

    invoke-static {p0}, Lbf3;->c(Lhd3;)Ldu7;

    move-result-object p0

    invoke-static {p3}, Lpx;->a(Ljava/lang/Object;)Lz68;

    move-result-object v3

    iget-object v6, p0, Ldu7;->d:Lo22;

    iget-object v2, p0, Ldu7;->a:Lhd3;

    sget-object p0, Leu7$a;->a:Lsj0;

    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lc32;->DEFAULT:Lc32;

    goto :goto_0

    :cond_0
    sget-object p0, Lc32;->UNDISPATCHED:Lc32;

    :goto_0
    new-instance v0, Laf3;

    const/4 v5, 0x0

    move-object v1, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Laf3;-><init>(Leu7;Lhd3;Lvg5;Ljava/lang/Object;Le02;)V

    invoke-static {p1, v6, p0, v0}, Lav0;->b(Ly22;Lo22;Lc32;Lbm3;)Ls68;

    move-result-object p0

    new-instance p1, Lgy6;

    invoke-direct {p1, v3, p0}, Lgy6;-><init>(Lxg5;Ls68;)V

    return-object p1
.end method
