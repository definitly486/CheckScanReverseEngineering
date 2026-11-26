.class public final Lz22;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lo22;)Lkz1;
    .locals 2

    new-instance v0, Lkz1;

    sget-object v1, Lmb4$a;->b:Lmb4$a;

    invoke-interface {p0, v1}, Lo22;->get(Lo22$b;)Lo22$a;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lqb4;->a()Lnb4;

    move-result-object v1

    invoke-interface {p0, v1}, Lo22;->plus(Lo22;)Lo22;

    move-result-object p0

    :goto_0
    invoke-direct {v0, p0}, Lkz1;-><init>(Lo22;)V

    return-object v0
.end method

.method public static final b(Ly22;Ljava/util/concurrent/CancellationException;)V
    .locals 2

    invoke-interface {p0}, Ly22;->getCoroutineContext()Lo22;

    move-result-object v0

    sget-object v1, Lmb4$a;->b:Lmb4$a;

    invoke-interface {v0, v1}, Lo22;->get(Lo22$b;)Lo22$a;

    move-result-object v0

    check-cast v0, Lmb4;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    return-void

    :cond_0
    const-string p1, "Scope cannot be cancelled because it does not have a job: "

    invoke-static {p0, p1}, Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static final c(Lbm3;Le02;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lbm3<",
            "-",
            "Ly22;",
            "-",
            "Le02<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Le02<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Laf7;

    invoke-interface {p1}, Le02;->getContext()Lo22;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Laf7;-><init>(Le02;Lo22;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v0, p0}, Lcn1;->d(Laf7;ZLjava/lang/Object;Lbm3;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    return-object p0
.end method

.method public static final d(Ly22;)V
    .locals 0

    invoke-interface {p0}, Ly22;->getCoroutineContext()Lo22;

    move-result-object p0

    invoke-static {p0}, Lqb4;->e(Lo22;)V

    return-void
.end method

.method public static final e(Ly22;)Z
    .locals 1

    invoke-interface {p0}, Ly22;->getCoroutineContext()Lo22;

    move-result-object p0

    sget-object v0, Lmb4$a;->b:Lmb4$a;

    invoke-interface {p0, v0}, Lo22;->get(Lo22$b;)Lo22$a;

    move-result-object p0

    check-cast p0, Lmb4;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lmb4;->isActive()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
