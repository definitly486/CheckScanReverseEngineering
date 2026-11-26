.class public final Lcom/my/target/g0;
.super Lcom/my/target/g3;
.source "SourceFile"


# virtual methods
.method public final a(ZFLandroid/content/Context;)V
    .locals 0

    const/4 p1, 0x0

    invoke-static {p2, p1}, Ly14;->a(FF)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    iget-object p2, p0, Lcom/my/target/g3;->a:Ls5a;

    invoke-static {p2, p1}, Lcom/my/target/m1;->f(Ls5a;Lcom/my/target/m1$b;)V

    const-string p1, "ViewabilityTracker: ShowStatTracker"

    const-string p3, "ViewIn tracked, kill self"

    invoke-static {p1, p3}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p2, Ls5a;->b:Ljava/util/List;

    invoke-static {p1}, Ln4a;->i(Ljava/util/List;)Z

    invoke-virtual {p0}, Lcom/my/target/g3;->b()V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final d()V
    .locals 0

    return-void
.end method
