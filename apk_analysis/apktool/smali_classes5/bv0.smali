.class public final synthetic Lbv0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lo22;Lbm3;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo22;",
            "Lbm3<",
            "-",
            "Ly22;",
            "-",
            "Le02<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)TT;"
        }
    .end annotation

    sget-object v0, Lg02$a;->b:Lg02$a;

    invoke-interface {p0, v0}, Lo22;->get(Lo22$b;)Lo22$a;

    move-result-object v1

    check-cast v1, Lg02;

    sget-object v2, Lgx2;->b:Lgx2;

    const/4 v3, 0x1

    if-nez v1, :cond_0

    invoke-static {}, Lpt8;->a()Lb13;

    move-result-object v1

    invoke-interface {p0, v1}, Lo22;->plus(Lo22;)Lo22;

    move-result-object p0

    invoke-static {v2, p0, v3}, Lq22;->a(Lo22;Lo22;Z)Lo22;

    move-result-object p0

    sget-object v2, Lqo2;->a:Loi2;

    if-eq p0, v2, :cond_1

    invoke-interface {p0, v0}, Lo22;->get(Lo22$b;)Lo22$a;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-interface {p0, v2}, Lo22;->plus(Lo22;)Lo22;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object v1, Lpt8;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb13;

    invoke-static {v2, p0, v3}, Lq22;->a(Lo22;Lo22;Z)Lo22;

    move-result-object p0

    sget-object v2, Lqo2;->a:Loi2;

    if-eq p0, v2, :cond_1

    invoke-interface {p0, v0}, Lo22;->get(Lo22$b;)Lo22$a;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-interface {p0, v2}, Lo22;->plus(Lo22;)Lo22;

    move-result-object p0

    :cond_1
    :goto_0
    new-instance v0, Lek0;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-direct {v0, p0, v2, v1}, Lek0;-><init>(Lo22;Ljava/lang/Thread;Lb13;)V

    sget-object p0, Lc32;->DEFAULT:Lc32;

    invoke-virtual {v0, p0, v0, p1}, La0;->m0(Lc32;La0;Lbm3;)V

    const/4 p0, 0x0

    iget-object p1, v0, Lek0;->g:Lb13;

    if-eqz p1, :cond_2

    sget v1, Lb13;->f:I

    invoke-virtual {p1, p0}, Lb13;->q0(Z)V

    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    :try_start_0
    invoke-virtual {p1}, Lb13;->r0()J

    move-result-wide v1

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_3
    const-wide v1, 0x7fffffffffffffffL

    :goto_2
    invoke-virtual {v0}, Lsb4;->P()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    invoke-virtual {v0, v1}, Lsb4;->w(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_5

    sget v1, Lb13;->f:I

    invoke-virtual {p1, p0}, Lb13;->k0(Z)V

    :cond_5
    invoke-virtual {v0}, Lsb4;->L()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lvp2;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lyq1;

    if-eqz p1, :cond_6

    move-object p1, p0

    check-cast p1, Lyq1;

    goto :goto_3

    :cond_6
    const/4 p1, 0x0

    :goto_3
    if-nez p1, :cond_7

    return-object p0

    :cond_7
    iget-object p0, p1, Lyq1;->a:Ljava/lang/Throwable;

    throw p0

    :goto_4
    if-eqz p1, :cond_8

    sget v1, Lb13;->f:I

    invoke-virtual {p1, p0}, Lb13;->k0(Z)V

    :cond_8
    throw v0
.end method
