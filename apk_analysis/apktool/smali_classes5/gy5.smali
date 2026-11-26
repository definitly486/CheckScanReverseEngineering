.class public final Lgy5;
.super Lp54;
.source "SourceFile"


# virtual methods
.method public final b()Lzn5;
    .locals 6

    iget v2, p0, Lp54;->d:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lp54;->d:I

    const-string v0, "["

    invoke-virtual {p0, v0}, Lp54;->f(Ljava/lang/String;)Ldq8;

    move-result-object v1

    iget-object p0, p0, Lp54;->a:Lz05;

    iget-object v3, p0, Lz05;->j:Lpt0;

    iget-object v4, p0, Lz05;->i:Lnl2;

    new-instance v0, Lpt0;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lpt0;-><init>(Ldq8;ILpt0;Lnl2;Z)V

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, v3, Lpt0;->g:Z

    :cond_0
    iput-object v0, p0, Lz05;->j:Lpt0;

    return-object v1
.end method

.method public final d()C
    .locals 0

    const/16 p0, 0x5b

    return p0
.end method
