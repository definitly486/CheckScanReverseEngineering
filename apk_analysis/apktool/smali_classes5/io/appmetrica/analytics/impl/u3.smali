.class public final Lio/appmetrica/analytics/impl/u3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/ug;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/ug;

.field public final b:Lio/appmetrica/analytics/impl/kg;

.field public c:Z

.field public final d:Ljava/util/ArrayList;

.field public final e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/ug;Lio/appmetrica/analytics/impl/kg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/u3;->a:Lio/appmetrica/analytics/impl/ug;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/u3;->b:Lio/appmetrica/analytics/impl/kg;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/u3;->d:Ljava/util/ArrayList;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/u3;->e:Ljava/lang/Object;

    return-void
.end method

.method public static final a(Lio/appmetrica/analytics/impl/u3;Lio/appmetrica/analytics/impl/yg;)V
    .locals 2

    .line 54
    iget-object v0, p0, Lio/appmetrica/analytics/impl/u3;->e:Ljava/lang/Object;

    .line 55
    monitor-enter v0

    .line 56
    :try_start_0
    iget-object v1, p0, Lio/appmetrica/analytics/impl/u3;->b:Lio/appmetrica/analytics/impl/kg;

    check-cast v1, Lio/appmetrica/analytics/impl/Lo;

    invoke-virtual {v1, p1}, Lio/appmetrica/analytics/impl/Lo;->a(Lio/appmetrica/analytics/impl/yg;)V

    .line 57
    sget-object v1, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    monitor-exit v0

    .line 59
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/u3;->a(Lio/appmetrica/analytics/impl/yg;)V

    return-void

    :catchall_0
    move-exception p0

    .line 60
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    .line 53
    iget-object p0, p0, Lio/appmetrica/analytics/impl/u3;->a:Lio/appmetrica/analytics/impl/ug;

    invoke-interface {p0}, Lio/appmetrica/analytics/impl/ug;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lio/appmetrica/analytics/impl/qg;)V
    .locals 5

    iget-object v0, p0, Lio/appmetrica/analytics/impl/u3;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lio/appmetrica/analytics/impl/u3;->b:Lio/appmetrica/analytics/impl/kg;

    check-cast v1, Lio/appmetrica/analytics/impl/Lo;

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/Lo;->c()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/appmetrica/analytics/impl/u3;->b:Lio/appmetrica/analytics/impl/kg;

    check-cast v1, Lio/appmetrica/analytics/impl/Lo;

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/Lo;->b()Lio/appmetrica/analytics/impl/yg;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lio/appmetrica/analytics/impl/wg;

    const-string v3, "Referrer is null"

    const/4 v4, 0x2

    invoke-direct {v1, v3, v2, v4, v2}, Lio/appmetrica/analytics/impl/wg;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILjh2;)V

    :cond_0
    move-object v2, v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lio/appmetrica/analytics/impl/u3;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    if-eqz v2, :cond_2

    invoke-interface {p1, v2}, Lio/appmetrica/analytics/impl/qg;->a(Lio/appmetrica/analytics/impl/yg;)V

    :cond_2
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/u3;->b()V

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public final a(Lio/appmetrica/analytics/impl/yg;)V
    .locals 2

    .line 61
    iget-object v0, p0, Lio/appmetrica/analytics/impl/u3;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 62
    :try_start_0
    iget-object v1, p0, Lio/appmetrica/analytics/impl/u3;->d:Ljava/util/ArrayList;

    invoke-static {v1}, Lqn1;->t0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    iget-object p0, p0, Lio/appmetrica/analytics/impl/u3;->d:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    monitor-exit v0

    .line 64
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/impl/qg;

    .line 65
    invoke-interface {v0, p1}, Lio/appmetrica/analytics/impl/qg;->a(Lio/appmetrica/analytics/impl/yg;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 66
    monitor-exit v0

    throw p0
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lio/appmetrica/analytics/impl/u3;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lio/appmetrica/analytics/impl/u3;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lio/appmetrica/analytics/impl/u3;->c:Z

    iget-object v1, p0, Lio/appmetrica/analytics/impl/u3;->b:Lio/appmetrica/analytics/impl/kg;

    check-cast v1, Lio/appmetrica/analytics/impl/Lo;

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/Lo;->c()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    :try_start_2
    sget-object v1, Lj59;->a:Lj59;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    :try_start_3
    iget-object v0, p0, Lio/appmetrica/analytics/impl/u3;->a:Lio/appmetrica/analytics/impl/ug;

    new-instance v1, Lrda;

    invoke-direct {v1, p0}, Lrda;-><init>(Lio/appmetrica/analytics/impl/u3;)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/impl/ug;->a(Lio/appmetrica/analytics/impl/qg;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    new-instance v1, Lio/appmetrica/analytics/impl/wg;

    const-string v2, "Failed to request referrer"

    invoke-direct {v1, v2, v0}, Lio/appmetrica/analytics/impl/wg;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lio/appmetrica/analytics/impl/u3;->a(Lio/appmetrica/analytics/impl/yg;)V

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method
