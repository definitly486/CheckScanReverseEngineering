.class public final synthetic Lt91;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lno7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lno7<",
            "-TE;>;TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-interface {p0, p1}, Lno7;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lp91$b;

    if-nez v1, :cond_0

    check-cast v0, Lj59;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_0
    new-instance v0, Lt91$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lt91$a;-><init>(Lno7;Ljava/lang/Object;Le02;)V

    sget-object p0, Lgx2;->b:Lgx2;

    invoke-static {p0, v0}, Lbv0;->a(Lo22;Lbm3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lp91;

    iget-object p0, p0, Lp91;->a:Ljava/lang/Object;

    return-object p0
.end method
