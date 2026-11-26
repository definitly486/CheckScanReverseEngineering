.class public final Lw80;
.super Lp54;
.source "SourceFile"


# virtual methods
.method public final b()Lzn5;
    .locals 8

    iget v0, p0, Lp54;->d:I

    const/4 v1, 0x1

    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lp54;->d:I

    invoke-virtual {p0}, Lp54;->c()C

    move-result v0

    const/16 v2, 0x5b

    if-ne v0, v2, :cond_1

    iget v0, p0, Lp54;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Lp54;->d:I

    const-string v0, "!["

    invoke-virtual {p0, v0}, Lp54;->f(Ljava/lang/String;)Ldq8;

    move-result-object v3

    iget-object p0, p0, Lp54;->a:Lz05;

    iget-object v5, p0, Lz05;->j:Lpt0;

    iget-object v6, p0, Lz05;->i:Lnl2;

    new-instance v2, Lpt0;

    const/4 v7, 0x1

    invoke-direct/range {v2 .. v7}, Lpt0;-><init>(Ldq8;ILpt0;Lnl2;Z)V

    if-eqz v5, :cond_0

    iput-boolean v1, v5, Lpt0;->g:Z

    :cond_0
    iput-object v2, p0, Lz05;->j:Lpt0;

    return-object v3

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final d()C
    .locals 0

    const/16 p0, 0x21

    return p0
.end method
