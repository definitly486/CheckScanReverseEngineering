.class public final Lrb9;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lb24;Ljava/lang/Throwable;)Lu03;
    .locals 3

    new-instance v0, Lu03;

    instance-of v1, p1, Lcoil3/request/NullRequestDataException;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lb24;->n:Lnl3;

    iget-object v2, p0, Lb24;->t:Lb24$b;

    invoke-interface {v1, p0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx04;

    if-nez v1, :cond_0

    iget-object v1, v2, Lb24$b;->j:Lnl3;

    invoke-interface {v1, p0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx04;

    :cond_0
    if-nez v1, :cond_2

    iget-object v1, p0, Lb24;->m:Lnl3;

    invoke-interface {v1, p0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx04;

    if-nez v1, :cond_2

    iget-object v1, v2, Lb24$b;->i:Lnl3;

    invoke-interface {v1, p0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx04;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lb24;->m:Lnl3;

    invoke-interface {v1, p0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx04;

    if-nez v1, :cond_2

    iget-object v1, p0, Lb24;->t:Lb24$b;

    iget-object v1, v1, Lb24$b;->i:Lnl3;

    invoke-interface {v1, p0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx04;

    :cond_2
    :goto_0
    invoke-direct {v0, v1, p0, p1}, Lu03;-><init>(Lx04;Lb24;Ljava/lang/Throwable;)V

    return-object v0
.end method
