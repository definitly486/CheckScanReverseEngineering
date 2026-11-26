.class public final Lgz6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo95;


# instance fields
.field public final a:Lab8;

.field public final b:Lrf9;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lab8;Lrf9;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgz6;->a:Lab8;

    iput-object p2, p0, Lgz6;->b:Lrf9;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgz6;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lo95$b;)Lo95$c;
    .locals 4

    iget-object v0, p0, Lgz6;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lgz6;->a:Lab8;

    invoke-interface {v1, p1}, Lab8;->a(Lo95$b;)Lo95$c;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lgz6;->b:Lrf9;

    invoke-interface {v1, p1}, Lrf9;->a(Lo95$b;)Lo95$c;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    iget-object v2, v1, Lo95$c;->a:Lx04;

    invoke-interface {v2}, Lx04;->a()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lgz6;->c:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Lgz6;->a:Lab8;

    invoke-interface {v3, p1}, Lab8;->f(Lo95$b;)Z

    move-result v3

    iget-object p0, p0, Lgz6;->b:Lrf9;

    invoke-interface {p0, p1}, Lrf9;->f(Lo95$b;)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v2

    goto :goto_1

    :catchall_1
    move-exception p0

    monitor-exit v2

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_1
    monitor-exit v0

    return-object v1

    :goto_2
    monitor-exit v0

    throw p0
.end method

.method public final b(J)V
    .locals 1

    iget-object v0, p0, Lgz6;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lgz6;->a:Lab8;

    invoke-interface {p0, p1, p2}, Lab8;->b(J)V

    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final c()J
    .locals 3

    iget-object v0, p0, Lgz6;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lgz6;->a:Lab8;

    invoke-interface {p0}, Lab8;->c()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final clear()V
    .locals 2

    iget-object v0, p0, Lgz6;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lgz6;->a:Lab8;

    invoke-interface {v1}, Lab8;->clear()V

    iget-object p0, p0, Lgz6;->b:Lrf9;

    invoke-interface {p0}, Lrf9;->clear()V

    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final e(J)V
    .locals 1

    iget-object v0, p0, Lgz6;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lgz6;->a:Lab8;

    invoke-interface {p0, p1, p2}, Lab8;->e(J)V

    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final f(Lo95$b;Lo95$c;)V
    .locals 9

    const-string v0, "Image size must be non-negative: "

    iget-object v1, p0, Lgz6;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p2, Lo95$c;->a:Lx04;

    invoke-interface {v2}, Lx04;->getSize()J

    move-result-wide v7

    const-wide/16 v2, 0x0

    cmp-long v2, v7, v2

    if-ltz v2, :cond_0

    iget-object v3, p0, Lgz6;->a:Lab8;

    iget-object v5, p2, Lo95$c;->a:Lx04;

    iget-object v6, p2, Lo95$c;->b:Ljava/util/Map;

    move-object v4, p1

    invoke-interface/range {v3 .. v8}, Lab8;->d(Lo95$b;Lx04;Ljava/util/Map;J)V

    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v1

    throw p0
.end method

.method public final getSize()J
    .locals 3

    iget-object v0, p0, Lgz6;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lgz6;->a:Lab8;

    invoke-interface {p0}, Lab8;->getSize()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
