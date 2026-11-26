.class public final Lt03;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj37;
.implements Lc37;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lj37;

.field public volatile c:Lc37;

.field public volatile d:Lc37;

.field public e:Lj37$a;

.field public f:Lj37$a;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lj37;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lj37$a;->CLEARED:Lj37$a;

    iput-object v0, p0, Lt03;->e:Lj37$a;

    iput-object v0, p0, Lt03;->f:Lj37$a;

    iput-object p1, p0, Lt03;->a:Ljava/lang/Object;

    iput-object p2, p0, Lt03;->b:Lj37;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    iget-object v0, p0, Lt03;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lt03;->c:Lc37;

    invoke-interface {v1}, Lc37;->a()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p0, p0, Lt03;->d:Lc37;

    invoke-interface {p0}, Lc37;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    monitor-exit v0

    return p0

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final b(Lc37;)V
    .locals 2

    iget-object v0, p0, Lt03;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lt03;->c:Lc37;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p1, Lj37$a;->SUCCESS:Lj37$a;

    iput-object p1, p0, Lt03;->e:Lj37$a;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lt03;->d:Lc37;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lj37$a;->SUCCESS:Lj37$a;

    iput-object p1, p0, Lt03;->f:Lj37$a;

    :cond_1
    :goto_0
    iget-object p1, p0, Lt03;->b:Lj37;

    if-eqz p1, :cond_2

    invoke-interface {p1, p0}, Lj37;->b(Lc37;)V

    :cond_2
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final c()Z
    .locals 3

    iget-object v0, p0, Lt03;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lt03;->e:Lj37$a;

    sget-object v2, Lj37$a;->CLEARED:Lj37$a;

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Lt03;->f:Lj37$a;

    if-ne p0, v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final clear()V
    .locals 3

    iget-object v0, p0, Lt03;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lj37$a;->CLEARED:Lj37$a;

    iput-object v1, p0, Lt03;->e:Lj37$a;

    iget-object v2, p0, Lt03;->c:Lc37;

    invoke-interface {v2}, Lc37;->clear()V

    iget-object v2, p0, Lt03;->f:Lj37$a;

    if-eq v2, v1, :cond_0

    iput-object v1, p0, Lt03;->f:Lj37$a;

    iget-object p0, p0, Lt03;->d:Lc37;

    invoke-interface {p0}, Lc37;->clear()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final d(Lc37;)Z
    .locals 3

    instance-of v0, p1, Lt03;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lt03;

    iget-object v0, p0, Lt03;->c:Lc37;

    iget-object v2, p1, Lt03;->c:Lc37;

    invoke-interface {v0, v2}, Lc37;->d(Lc37;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lt03;->d:Lc37;

    iget-object p1, p1, Lt03;->d:Lc37;

    invoke-interface {p0, p1}, Lc37;->d(Lc37;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public final e(Lc37;)Z
    .locals 5

    iget-object v0, p0, Lt03;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lt03;->b:Lj37;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1, p0}, Lj37;->e(Lc37;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    iget-object v1, p0, Lt03;->e:Lj37$a;

    sget-object v3, Lj37$a;->FAILED:Lj37$a;

    const/4 v4, 0x1

    if-eq v1, v3, :cond_1

    iget-object p0, p0, Lt03;->c:Lc37;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lt03;->d:Lc37;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lt03;->f:Lj37$a;

    sget-object p1, Lj37$a;->SUCCESS:Lj37$a;

    if-eq p0, p1, :cond_2

    if-ne p0, v3, :cond_3

    :cond_2
    move p0, v4

    goto :goto_0

    :cond_3
    move p0, v2

    :goto_0
    if-eqz p0, :cond_4

    move v2, v4

    :cond_4
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final f(Lc37;)Z
    .locals 1

    iget-object p1, p0, Lt03;->a:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lt03;->b:Lj37;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lj37;->f(Lc37;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    monitor-exit p1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final g(Lc37;)Z
    .locals 2

    iget-object v0, p0, Lt03;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lt03;->b:Lj37;

    if-eqz v1, :cond_0

    invoke-interface {v1, p0}, Lj37;->g(Lc37;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object p0, p0, Lt03;->c:Lc37;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getRoot()Lj37;
    .locals 2

    iget-object v0, p0, Lt03;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lt03;->b:Lj37;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lj37;->getRoot()Lj37;

    move-result-object p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final h(Lc37;)V
    .locals 2

    iget-object v0, p0, Lt03;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lt03;->d:Lc37;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lj37$a;->FAILED:Lj37$a;

    iput-object p1, p0, Lt03;->e:Lj37$a;

    iget-object p1, p0, Lt03;->f:Lj37$a;

    sget-object v1, Lj37$a;->RUNNING:Lj37$a;

    if-eq p1, v1, :cond_0

    iput-object v1, p0, Lt03;->f:Lj37$a;

    iget-object p0, p0, Lt03;->d:Lc37;

    invoke-interface {p0}, Lc37;->i()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :cond_1
    sget-object p1, Lj37$a;->FAILED:Lj37$a;

    iput-object p1, p0, Lt03;->f:Lj37$a;

    iget-object p1, p0, Lt03;->b:Lj37;

    if-eqz p1, :cond_2

    invoke-interface {p1, p0}, Lj37;->h(Lc37;)V

    :cond_2
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final i()V
    .locals 3

    iget-object v0, p0, Lt03;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lt03;->e:Lj37$a;

    sget-object v2, Lj37$a;->RUNNING:Lj37$a;

    if-eq v1, v2, :cond_0

    iput-object v2, p0, Lt03;->e:Lj37$a;

    iget-object p0, p0, Lt03;->c:Lc37;

    invoke-interface {p0}, Lc37;->i()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isComplete()Z
    .locals 3

    iget-object v0, p0, Lt03;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lt03;->e:Lj37$a;

    sget-object v2, Lj37$a;->SUCCESS:Lj37$a;

    if-eq v1, v2, :cond_1

    iget-object p0, p0, Lt03;->f:Lj37$a;

    if-ne p0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    monitor-exit v0

    return p0

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isRunning()Z
    .locals 3

    iget-object v0, p0, Lt03;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lt03;->e:Lj37$a;

    sget-object v2, Lj37$a;->RUNNING:Lj37$a;

    if-eq v1, v2, :cond_1

    iget-object p0, p0, Lt03;->f:Lj37$a;

    if-ne p0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    monitor-exit v0

    return p0

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final pause()V
    .locals 3

    iget-object v0, p0, Lt03;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lt03;->e:Lj37$a;

    sget-object v2, Lj37$a;->RUNNING:Lj37$a;

    if-ne v1, v2, :cond_0

    sget-object v1, Lj37$a;->PAUSED:Lj37$a;

    iput-object v1, p0, Lt03;->e:Lj37$a;

    iget-object v1, p0, Lt03;->c:Lc37;

    invoke-interface {v1}, Lc37;->pause()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lt03;->f:Lj37$a;

    if-ne v1, v2, :cond_1

    sget-object v1, Lj37$a;->PAUSED:Lj37$a;

    iput-object v1, p0, Lt03;->f:Lj37$a;

    iget-object p0, p0, Lt03;->d:Lc37;

    invoke-interface {p0}, Lc37;->pause()V

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
