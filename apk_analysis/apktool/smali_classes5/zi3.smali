.class public abstract Lzi3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcm1;


# virtual methods
.method public final a(I)V
    .locals 0

    check-cast p0, Lp94$c$a;

    iget-object p0, p0, Lp94$c$a;->b:Lcm1;

    invoke-interface {p0, p1}, Lcm1;->a(I)V

    return-void
.end method

.method public final b(I)V
    .locals 0

    check-cast p0, Lp94$c$a;

    iget-object p0, p0, Lp94$c$a;->b:Lcm1;

    invoke-interface {p0, p1}, Lcm1;->b(I)V

    return-void
.end method

.method public final c(Lqu1;)V
    .locals 0

    check-cast p0, Lp94$c$a;

    iget-object p0, p0, Lp94$c$a;->b:Lcm1;

    invoke-interface {p0, p1}, Le98;->c(Lqu1;)V

    return-void
.end method

.method public final d(Ljava/io/InputStream;)V
    .locals 0

    check-cast p0, Lp94$c$a;

    iget-object p0, p0, Lp94$c$a;->b:Lcm1;

    invoke-interface {p0, p1}, Le98;->d(Ljava/io/InputStream;)V

    return-void
.end method

.method public final e()V
    .locals 0

    check-cast p0, Lp94$c$a;

    iget-object p0, p0, Lp94$c$a;->b:Lcm1;

    invoke-interface {p0}, Le98;->e()V

    return-void
.end method

.method public final f(Lyd2;)V
    .locals 0

    check-cast p0, Lp94$c$a;

    iget-object p0, p0, Lp94$c$a;->b:Lcm1;

    invoke-interface {p0, p1}, Lcm1;->f(Lyd2;)V

    return-void
.end method

.method public final flush()V
    .locals 0

    check-cast p0, Lp94$c$a;

    iget-object p0, p0, Lp94$c$a;->b:Lcm1;

    invoke-interface {p0}, Le98;->flush()V

    return-void
.end method

.method public final g(Lxc2;)V
    .locals 0

    check-cast p0, Lp94$c$a;

    iget-object p0, p0, Lp94$c$a;->b:Lcm1;

    invoke-interface {p0, p1}, Lcm1;->g(Lxc2;)V

    return-void
.end method

.method public final h()V
    .locals 0

    check-cast p0, Lp94$c$a;

    iget-object p0, p0, Lp94$c$a;->b:Lcm1;

    invoke-interface {p0}, Lcm1;->h()V

    return-void
.end method

.method public final isReady()Z
    .locals 0

    check-cast p0, Lp94$c$a;

    iget-object p0, p0, Lp94$c$a;->b:Lcm1;

    invoke-interface {p0}, Le98;->isReady()Z

    move-result p0

    return p0
.end method

.method public final j(Lh88;)V
    .locals 0

    check-cast p0, Lp94$c$a;

    iget-object p0, p0, Lp94$c$a;->b:Lcm1;

    invoke-interface {p0, p1}, Lcm1;->j(Lh88;)V

    return-void
.end method

.method public final l(Ly54;)V
    .locals 0

    check-cast p0, Lp94$c$a;

    iget-object p0, p0, Lp94$c$a;->b:Lcm1;

    invoke-interface {p0, p1}, Lcm1;->l(Ly54;)V

    return-void
.end method

.method public final m()V
    .locals 0

    check-cast p0, Lp94$c$a;

    iget-object p0, p0, Lp94$c$a;->b:Lcm1;

    invoke-interface {p0}, Le98;->m()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lod5;->b(Ljava/lang/Object;)Lod5$a;

    move-result-object v0

    check-cast p0, Lp94$c$a;

    iget-object p0, p0, Lp94$c$a;->b:Lcm1;

    const-string v1, "delegate"

    invoke-virtual {v0, p0, v1}, Lod5$a;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lod5$a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
