.class public final synthetic Lqb4;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Lnb4;
    .locals 2

    new-instance v0, Lnb4;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnb4;-><init>(Lmb4;)V

    return-object v0
.end method

.method public static final b(Lo22;Ljava/util/concurrent/CancellationException;)V
    .locals 1

    sget-object v0, Lmb4$a;->b:Lmb4$a;

    invoke-interface {p0, v0}, Lo22;->get(Lo22$b;)Lo22$a;

    move-result-object p0

    check-cast p0, Lmb4;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    return-void
.end method

.method public static final c(Lmb4;Lpg8;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    invoke-interface {p0, p1}, Lmb4;->e0(Le02;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static d(Lo22;)V
    .locals 2

    sget-object v0, Lmb4$a;->b:Lmb4$a;

    invoke-interface {p0, v0}, Lo22;->get(Lo22$b;)Lo22$a;

    move-result-object p0

    check-cast p0, Lmb4;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lmb4;->v()Lzo7;

    move-result-object p0

    invoke-interface {p0}, Lzo7;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmb4;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final e(Lo22;)V
    .locals 1

    sget-object v0, Lmb4$a;->b:Lmb4$a;

    invoke-interface {p0, v0}, Lo22;->get(Lo22$b;)Lo22$a;

    move-result-object p0

    check-cast p0, Lmb4;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lmb4;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lmb4;->y()Ljava/util/concurrent/CancellationException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static final f(Lo22;)Lmb4;
    .locals 1

    sget-object v0, Lmb4$a;->b:Lmb4$a;

    invoke-interface {p0, v0}, Lo22;->get(Lo22$b;)Lo22$a;

    move-result-object v0

    check-cast v0, Lmb4;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "Current context doesn\'t contain Job in it: "

    invoke-static {p0, v0}, Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static g(Lmb4;Lrb4;)Lhp2;
    .locals 3

    instance-of v0, p0, Lsb4;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    check-cast p0, Lsb4;

    invoke-virtual {p0, v1, p1}, Lsb4;->R(ZLrb4;)Lhp2;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lrb4;->k()Z

    move-result v0

    new-instance v2, Lpb4;

    invoke-direct {v2, p1}, Lpb4;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, v0, v1, v2}, Lmb4;->a(ZZLpb4;)Lhp2;

    move-result-object p0

    return-object p0
.end method

.method public static final h(Lo22;)Z
    .locals 1

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
