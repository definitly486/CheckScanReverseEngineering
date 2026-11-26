.class public abstract Laj3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldm1;


# virtual methods
.method public final a(Lj98$a;)V
    .locals 0

    check-cast p0, Lp94$c$a$a;

    iget-object p0, p0, Lp94$c$a$a;->a:Ldm1;

    invoke-interface {p0, p1}, Lj98;->a(Lj98$a;)V

    return-void
.end method

.method public final b(Lla5;)V
    .locals 0

    check-cast p0, Lp94$c$a$a;

    iget-object p0, p0, Lp94$c$a$a;->a:Ldm1;

    invoke-interface {p0, p1}, Ldm1;->b(Lla5;)V

    return-void
.end method

.method public final d()V
    .locals 0

    check-cast p0, Lp94$c$a$a;

    iget-object p0, p0, Lp94$c$a$a;->a:Ldm1;

    invoke-interface {p0}, Lj98;->d()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lod5;->b(Ljava/lang/Object;)Lod5$a;

    move-result-object v0

    check-cast p0, Lp94$c$a$a;

    iget-object p0, p0, Lp94$c$a$a;->a:Ldm1;

    const-string v1, "delegate"

    invoke-virtual {v0, p0, v1}, Lod5$a;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lod5$a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
