.class public final Lyads/nf;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Lyads/q84;)V
    .locals 12

    sget-object v0, Lqo2;->a:Loi2;

    sget-object v0, Lsh2;->c:Lsh2;

    new-instance v1, Lyads/j90;

    invoke-direct {v1, p1}, Lyads/j90;-><init>(Lyads/k75;)V

    invoke-static {}, Lrm9;->b()Ljd8;

    move-result-object v2

    invoke-static {v2, v0}, Lo22$a$a;->d(Lo22$a;Lo22;)Lo22;

    move-result-object v2

    invoke-interface {v2, v1}, Lo22;->plus(Lo22;)Lo22;

    move-result-object v1

    invoke-static {v1}, Lz22;->a(Lo22;)Lkz1;

    move-result-object v8

    new-instance v9, Lyads/df;

    invoke-direct {v9, v0}, Lyads/df;-><init>(Lr22;)V

    new-instance v10, Lyads/if;

    invoke-direct {v10, p1}, Lyads/if;-><init>(Lyads/q84;)V

    new-instance v11, Lyads/rw5;

    invoke-direct {v11}, Lyads/rw5;-><init>()V

    invoke-static {}, Lyads/yg5;->a()Lyads/zg5;

    move-result-object p1

    invoke-virtual {p1, p0}, Lyads/zg5;->a(Landroid/content/Context;)Lyads/fe5;

    move-result-object p0

    if-eqz p0, :cond_5

    iget-boolean p1, p0, Lyads/fe5;->j0:Z

    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lyads/fe5;->k0:Ljava/lang/Long;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    move-wide v3, v0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x3e8

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lyads/fe5;->l0:Ljava/lang/Long;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_2
    move-wide v5, v0

    goto :goto_3

    :cond_1
    const-wide/16 v0, 0x1770

    goto :goto_2

    :goto_3
    iget-object p0, p0, Lyads/fe5;->r0:Ljava/util/Set;

    if-nez p0, :cond_2

    sget-object p0, Lox2;->b:Lox2;

    :cond_2
    move-object v7, p0

    sget-object p0, Lyads/lf;->k:Lyads/lf;

    if-nez p0, :cond_4

    sget-object p0, Lyads/lf;->j:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    sget-object p1, Lyads/lf;->k:Lyads/lf;

    if-nez p1, :cond_3

    new-instance v2, Lyads/lf;

    invoke-direct/range {v2 .. v11}, Lyads/lf;-><init>(JJLjava/util/Set;Ly22;Lyads/df;Lyads/if;Lyads/rw5;)V

    sput-object v2, Lyads/lf;->k:Lyads/lf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p1, v2

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_5

    :cond_3
    :goto_4
    monitor-exit p0

    move-object p0, p1

    goto :goto_6

    :goto_5
    monitor-exit p0

    throw p1

    :cond_4
    :goto_6
    invoke-virtual {p0}, Lyads/lf;->a()V

    :cond_5
    return-void
.end method
