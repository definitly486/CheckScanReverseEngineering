.class public abstract Lyads/ha4;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroid/content/Context;Lyads/bf5;Lyads/t70;)Lj59;
    .locals 4

    new-instance v0, Lyads/bn;

    invoke-direct {v0}, Lyads/bn;-><init>()V

    invoke-virtual {v0}, Lyads/bn;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lyads/i90;

    invoke-direct {v0}, Lyads/i90;-><init>()V

    invoke-static {}, Lrm9;->b()Ljd8;

    move-result-object v1

    sget-object v2, Lqo2;->a:Loi2;

    sget-object v2, Lsh2;->c:Lsh2;

    invoke-static {v1, v2}, Lo22$a$a;->d(Lo22$a;Lo22;)Lo22;

    move-result-object v1

    invoke-interface {v1, v0}, Lo22;->plus(Lo22;)Lo22;

    move-result-object v0

    invoke-static {v0}, Lz22;->a(Lo22;)Lkz1;

    move-result-object v0

    new-instance v1, Lyads/ga4;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lyads/ga4;-><init>(Lyads/bf5;Landroid/content/Context;Le02;)V

    const/4 v3, 0x3

    invoke-static {v0, v2, v2, v1, v3}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    new-instance v0, Lyads/ck6;

    invoke-direct {v0}, Lyads/ck6;-><init>()V

    invoke-virtual {v0}, Lyads/ck6;->a()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    invoke-static {v0}, Lyads/za;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lyads/rw5;->a()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SDK API usage from a background thread detected. Please, use SDK API only from the main thread."

    invoke-static {v1, v0}, Lyads/jn3;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-static {p1}, Lyads/k94;->a(Lyads/bf5;)Lyads/m94;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lyads/m94;->a(Landroid/content/Context;Lyads/t70;)V

    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Landroid/content/Context;Lyads/do6;Lyads/t70;)V
    .locals 3

    .line 101
    new-instance v0, Lyads/ut2;

    invoke-direct {v0}, Lyads/ut2;-><init>()V

    .line 102
    new-instance v1, Lww9;

    invoke-direct {v1, p0, p1, p2}, Lww9;-><init>(Landroid/content/Context;Lyads/do6;Lyads/t70;)V

    new-instance v2, Lxw9;

    invoke-direct {v2, p0, p1, p2}, Lxw9;-><init>(Landroid/content/Context;Lyads/do6;Lyads/t70;)V

    invoke-virtual {v0, v1, v2}, Lyads/ut2;->a(Lll3;Lll3;)V

    return-void
.end method

.method public static final a(Z)V
    .locals 1

    .line 103
    sput-boolean p0, Lyads/cp3;->a:Z

    .line 104
    sput-boolean p0, Lyads/jn3;->c:Z

    if-nez p0, :cond_2

    .line 105
    sget-object p0, Lyads/oa4;->b:Lyads/oa4;

    if-nez p0, :cond_1

    .line 106
    sget-object p0, Lyads/oa4;->c:Ljava/lang/Object;

    monitor-enter p0

    .line 107
    :try_start_0
    sget-object v0, Lyads/oa4;->b:Lyads/oa4;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Lyads/oa4;

    invoke-direct {v0}, Lyads/oa4;-><init>()V

    .line 109
    sput-object v0, Lyads/oa4;->b:Lyads/oa4;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 110
    :cond_0
    :goto_0
    monitor-exit p0

    move-object p0, v0

    goto :goto_2

    :goto_1
    monitor-exit p0

    throw v0

    .line 111
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lyads/oa4;->a()V

    .line 112
    invoke-static {}, Lyads/y94;->a()Lyads/z94;

    move-result-object p0

    invoke-virtual {p0}, Lyads/z94;->a()V

    :cond_2
    return-void
.end method

.method public static final b(Landroid/content/Context;Lyads/bf5;Lyads/t70;)Lj59;
    .locals 3

    new-instance v0, Lyads/i90;

    invoke-direct {v0}, Lyads/i90;-><init>()V

    invoke-static {}, Lrm9;->b()Ljd8;

    move-result-object v1

    sget-object v2, Lqo2;->a:Loi2;

    sget-object v2, Lsh2;->c:Lsh2;

    invoke-static {v1, v2}, Lo22$a$a;->d(Lo22$a;Lo22;)Lo22;

    move-result-object v1

    invoke-interface {v1, v0}, Lo22;->plus(Lo22;)Lo22;

    move-result-object v0

    invoke-static {v0}, Lz22;->a(Lo22;)Lkz1;

    move-result-object v0

    new-instance v1, Lyads/ga4;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lyads/ga4;-><init>(Lyads/bf5;Landroid/content/Context;Le02;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    invoke-interface {p2}, Lyads/t70;->onInitializationCompleted()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final b(Z)V
    .locals 2

    .line 41
    invoke-static {}, Lyads/yg5;->a()Lyads/zg5;

    move-result-object v0

    .line 42
    sget-object v1, Lyads/zg5;->k:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    iput-object p0, v0, Lyads/zg5;->c:Ljava/lang/Boolean;

    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0
.end method
