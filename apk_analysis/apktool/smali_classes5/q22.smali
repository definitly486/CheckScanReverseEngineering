.class public final Lq22;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lo22;Lo22;Z)Lo22;
    .locals 4

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance v1, Lit1;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lit1;-><init>(I)V

    invoke-interface {p0, v0, v1}, Lo22;->fold(Ljava/lang/Object;Lbm3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    new-instance v3, Lit1;

    invoke-direct {v3, v2}, Lit1;-><init>(I)V

    invoke-interface {p1, v0, v3}, Lo22;->fold(Ljava/lang/Object;Lbm3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    invoke-interface {p0, p1}, Lo22;->plus(Lo22;)Lo22;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v1, Lr07;

    invoke-direct {v1}, Lr07;-><init>()V

    iput-object p1, v1, Lr07;->b:Ljava/lang/Object;

    new-instance p1, Lp22;

    invoke-direct {p1, v1, p2}, Lp22;-><init>(Lr07;Z)V

    sget-object p2, Lgx2;->b:Lgx2;

    invoke-interface {p0, p2, p1}, Lo22;->fold(Ljava/lang/Object;Lbm3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo22;

    if-eqz v0, :cond_1

    iget-object p1, v1, Lr07;->b:Ljava/lang/Object;

    check-cast p1, Lo22;

    new-instance v0, Leo1;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Leo1;-><init>(I)V

    invoke-interface {p1, p2, v0}, Lo22;->fold(Ljava/lang/Object;Lbm3;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v1, Lr07;->b:Ljava/lang/Object;

    :cond_1
    iget-object p1, v1, Lr07;->b:Ljava/lang/Object;

    check-cast p1, Lo22;

    invoke-interface {p0, p1}, Lo22;->plus(Lo22;)Lo22;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Ly22;Lo22;)Lo22;
    .locals 1

    invoke-interface {p0}, Ly22;->getCoroutineContext()Lo22;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lq22;->a(Lo22;Lo22;Z)Lo22;

    move-result-object p0

    sget-object p1, Lqo2;->a:Loi2;

    if-eq p0, p1, :cond_0

    sget-object v0, Lg02$a;->b:Lg02$a;

    invoke-interface {p0, v0}, Lo22;->get(Lo22$b;)Lo22$a;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p0, p1}, Lo22;->plus(Lo22;)Lo22;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static final c(Le02;Lo22;Ljava/lang/Object;)Lh59;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "*>;",
            "Lo22;",
            "Ljava/lang/Object;",
            ")",
            "Lh59<",
            "*>;"
        }
    .end annotation

    instance-of v0, p0, Lb32;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Li59;->b:Li59;

    invoke-interface {p1, v0}, Lo22;->get(Lo22$b;)Lo22$a;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast p0, Lb32;

    :cond_1
    instance-of v0, p0, Lho2;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Lb32;->getCallerFrame()Lb32;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    instance-of v0, p0, Lh59;

    if-eqz v0, :cond_1

    move-object v1, p0

    check-cast v1, Lh59;

    :goto_0
    if-eqz v1, :cond_4

    invoke-virtual {v1, p1, p2}, Lh59;->q0(Lo22;Ljava/lang/Object;)V

    :cond_4
    :goto_1
    return-object v1
.end method
