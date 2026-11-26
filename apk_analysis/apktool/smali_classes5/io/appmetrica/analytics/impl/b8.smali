.class public abstract Lio/appmetrica/analytics/impl/b8;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;

.field public final c:Lio/appmetrica/analytics/impl/d8;

.field public final d:Lio/appmetrica/analytics/impl/mo;

.field public final e:Lio/appmetrica/analytics/impl/Ym;

.field public final f:Lio/appmetrica/analytics/impl/jj;

.field public final g:Lio/appmetrica/analytics/impl/hj;

.field public final h:Lio/appmetrica/analytics/impl/N6;

.field public i:Lio/appmetrica/analytics/impl/c8;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;Lio/appmetrica/analytics/impl/d8;Lio/appmetrica/analytics/impl/mo;Lio/appmetrica/analytics/impl/Ym;Lio/appmetrica/analytics/impl/jj;Lio/appmetrica/analytics/impl/hj;Lio/appmetrica/analytics/impl/N6;Lio/appmetrica/analytics/impl/c8;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/b8;->a:Landroid/content/Context;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/b8;->b:Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;

    iput-object p3, p0, Lio/appmetrica/analytics/impl/b8;->c:Lio/appmetrica/analytics/impl/d8;

    iput-object p4, p0, Lio/appmetrica/analytics/impl/b8;->d:Lio/appmetrica/analytics/impl/mo;

    iput-object p5, p0, Lio/appmetrica/analytics/impl/b8;->e:Lio/appmetrica/analytics/impl/Ym;

    iput-object p6, p0, Lio/appmetrica/analytics/impl/b8;->f:Lio/appmetrica/analytics/impl/jj;

    iput-object p7, p0, Lio/appmetrica/analytics/impl/b8;->g:Lio/appmetrica/analytics/impl/hj;

    iput-object p8, p0, Lio/appmetrica/analytics/impl/b8;->h:Lio/appmetrica/analytics/impl/N6;

    iput-object p9, p0, Lio/appmetrica/analytics/impl/b8;->i:Lio/appmetrica/analytics/impl/c8;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Lio/appmetrica/analytics/impl/c8;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/appmetrica/analytics/impl/c8;"
        }
    .end annotation

    monitor-enter p0

    .line 20
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/b8;->i:Lio/appmetrica/analytics/impl/c8;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final a(Lio/appmetrica/analytics/impl/g8;)Lio/appmetrica/analytics/impl/g8;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/g8;",
            ")",
            "Lio/appmetrica/analytics/impl/g8;"
        }
    .end annotation

    iget-object v0, p0, Lio/appmetrica/analytics/impl/b8;->h:Lio/appmetrica/analytics/impl/N6;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/b8;->a:Landroid/content/Context;

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/impl/N6;->a(Landroid/content/Context;)V

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/b8;->b(Lio/appmetrica/analytics/impl/g8;)Z

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/b8;->c()Lio/appmetrica/analytics/impl/g8;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b()Lio/appmetrica/analytics/impl/g8;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/appmetrica/analytics/impl/g8;"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lio/appmetrica/analytics/impl/b8;->h:Lio/appmetrica/analytics/impl/N6;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/b8;->a:Landroid/content/Context;

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/impl/N6;->a(Landroid/content/Context;)V

    .line 118
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/b8;->c()Lio/appmetrica/analytics/impl/g8;

    move-result-object p0

    return-object p0
.end method

.method public final declared-synchronized b(Lio/appmetrica/analytics/impl/g8;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/g8;",
            ")Z"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Lio/appmetrica/analytics/impl/g8;->a()Lio/appmetrica/analytics/impl/f8;

    move-result-object v0

    sget-object v1, Lio/appmetrica/analytics/impl/f8;->c:Lio/appmetrica/analytics/impl/f8;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    monitor-exit p0

    return v2

    :cond_0
    :try_start_1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/b8;->i:Lio/appmetrica/analytics/impl/c8;

    invoke-interface {v0}, Lio/appmetrica/analytics/impl/c8;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    return v2

    :cond_1
    :try_start_2
    iget-object v0, p0, Lio/appmetrica/analytics/impl/b8;->d:Lio/appmetrica/analytics/impl/mo;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/b8;->i:Lio/appmetrica/analytics/impl/c8;

    invoke-interface {v1}, Lio/appmetrica/analytics/impl/c8;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    move v3, v1

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    if-nez v0, :cond_3

    iget-object v0, p0, Lio/appmetrica/analytics/impl/b8;->i:Lio/appmetrica/analytics/impl/c8;

    invoke-interface {v0}, Lio/appmetrica/analytics/impl/c8;->a()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_3
    :goto_1
    iget-object v4, p0, Lio/appmetrica/analytics/impl/b8;->c:Lio/appmetrica/analytics/impl/d8;

    iget-object v5, p0, Lio/appmetrica/analytics/impl/b8;->i:Lio/appmetrica/analytics/impl/c8;

    invoke-interface {v5}, Lio/appmetrica/analytics/impl/c8;->b()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lio/appmetrica/analytics/impl/d8;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v2, v1

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lio/appmetrica/analytics/impl/b8;->i:Lio/appmetrica/analytics/impl/c8;

    invoke-interface {p1}, Lio/appmetrica/analytics/impl/c8;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/appmetrica/analytics/impl/g8;

    :goto_2
    if-nez v2, :cond_5

    if-eqz v3, :cond_6

    :cond_5
    iget-object v1, p0, Lio/appmetrica/analytics/impl/b8;->i:Lio/appmetrica/analytics/impl/c8;

    iget-object v3, p0, Lio/appmetrica/analytics/impl/b8;->e:Lio/appmetrica/analytics/impl/Ym;

    invoke-interface {v3, p1, v0}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/appmetrica/analytics/impl/c8;

    iput-object p1, p0, Lio/appmetrica/analytics/impl/b8;->i:Lio/appmetrica/analytics/impl/c8;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/b8;->b:Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;

    invoke-interface {v0, p1}, Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;->save(Ljava/lang/Object;)V

    iget-object p1, p0, Lio/appmetrica/analytics/impl/b8;->i:Lio/appmetrica/analytics/impl/c8;

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Update distribution data: %s -> %s"

    invoke-static {v0, p1}, Lio/appmetrica/analytics/impl/tj;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_6
    monitor-exit p0

    return v2

    :goto_3
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final declared-synchronized c()Lio/appmetrica/analytics/impl/g8;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/b8;->g:Lio/appmetrica/analytics/impl/hj;

    invoke-interface {v0}, Lio/appmetrica/analytics/impl/hj;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/appmetrica/analytics/impl/b8;->f:Lio/appmetrica/analytics/impl/jj;

    invoke-interface {v0}, Lll3;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/impl/g8;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/b8;->g:Lio/appmetrica/analytics/impl/hj;

    invoke-interface {v1}, Lio/appmetrica/analytics/impl/hj;->b()V

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/b8;->b(Lio/appmetrica/analytics/impl/g8;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/b8;->i:Lio/appmetrica/analytics/impl/c8;

    invoke-interface {v0}, Lio/appmetrica/analytics/impl/c8;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/impl/g8;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
