.class public final Lm0$c;
.super Lm0$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# virtual methods
.method public final a(Ll0;Ll0$d;Ll0$d;)Z
    .locals 0

    monitor-enter p1

    :try_start_0
    iget-object p0, p1, Lm0;->c:Ll0$d;

    if-ne p0, p2, :cond_0

    iput-object p3, p1, Lm0;->c:Ll0$d;

    const/4 p0, 0x1

    monitor-exit p1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    monitor-exit p1

    return p0

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final b(Lm0;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm0<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    monitor-enter p1

    :try_start_0
    iget-object p0, p1, Lm0;->b:Ljava/lang/Object;

    if-ne p0, p2, :cond_0

    iput-object p3, p1, Lm0;->b:Ljava/lang/Object;

    const/4 p0, 0x1

    monitor-exit p1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    monitor-exit p1

    return p0

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final c(Lm0;Lm0$e;Lm0$e;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm0<",
            "*>;",
            "Lm0$e;",
            "Lm0$e;",
            ")Z"
        }
    .end annotation

    monitor-enter p1

    :try_start_0
    iget-object p0, p1, Lm0;->d:Lm0$e;

    if-ne p0, p2, :cond_0

    iput-object p3, p1, Lm0;->d:Lm0$e;

    const/4 p0, 0x1

    monitor-exit p1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    monitor-exit p1

    return p0

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final d(Ll0;Ll0$d;)Ll0$d;
    .locals 0

    monitor-enter p1

    :try_start_0
    iget-object p0, p1, Lm0;->c:Ll0$d;

    if-eq p0, p2, :cond_0

    iput-object p2, p1, Lm0;->c:Ll0$d;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p1

    return-object p0

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final e(Ll0;)Lm0$e;
    .locals 1

    sget-object p0, Lm0$e;->c:Lm0$e;

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lm0;->d:Lm0$e;

    if-eq v0, p0, :cond_0

    iput-object p0, p1, Lm0;->d:Lm0$e;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p1

    return-object v0

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final f(Lm0$e;Lm0$e;)V
    .locals 0

    iput-object p2, p1, Lm0$e;->b:Lm0$e;

    return-void
.end method

.method public final g(Lm0$e;Ljava/lang/Thread;)V
    .locals 0

    iput-object p2, p1, Lm0$e;->a:Ljava/lang/Thread;

    return-void
.end method
