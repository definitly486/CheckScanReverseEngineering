.class public final Lio/appmetrica/analytics/impl/m0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lio/appmetrica/analytics/impl/Sc;

.field public b:J

.field public c:Z

.field public final d:Lio/appmetrica/analytics/impl/Kl;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLio/appmetrica/analytics/impl/Kl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lio/appmetrica/analytics/impl/m0;->b:J

    :try_start_0
    new-instance p2, Lio/appmetrica/analytics/impl/Sc;

    invoke-direct {p2, p1}, Lio/appmetrica/analytics/impl/Sc;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lio/appmetrica/analytics/impl/m0;->a:Lio/appmetrica/analytics/impl/Sc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    new-instance p1, Lio/appmetrica/analytics/impl/Sc;

    invoke-direct {p1}, Lio/appmetrica/analytics/impl/Sc;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/m0;->a:Lio/appmetrica/analytics/impl/Sc;

    :goto_0
    iput-object p4, p0, Lio/appmetrica/analytics/impl/m0;->d:Lio/appmetrica/analytics/impl/Kl;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Lio/appmetrica/analytics/impl/l0;
    .locals 4

    monitor-enter p0

    .line 82
    :try_start_0
    iget-boolean v0, p0, Lio/appmetrica/analytics/impl/m0;->c:Z

    if-eqz v0, :cond_0

    .line 83
    iget-wide v0, p0, Lio/appmetrica/analytics/impl/m0;->b:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/appmetrica/analytics/impl/m0;->b:J

    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lio/appmetrica/analytics/impl/m0;->c:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 85
    :cond_0
    :goto_0
    new-instance v0, Lio/appmetrica/analytics/impl/l0;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/m0;->a:Lio/appmetrica/analytics/impl/Sc;

    invoke-static {v1}, Lio/appmetrica/analytics/impl/ub;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lio/appmetrica/analytics/impl/m0;->b:J

    invoke-direct {v0, v1, v2, v3}, Lio/appmetrica/analytics/impl/l0;-><init>(Ljava/lang/String;J)V
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

.method public final declared-synchronized a(Landroid/util/Pair;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/m0;->d:Lio/appmetrica/analytics/impl/Kl;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/m0;->a:Lio/appmetrica/analytics/impl/Sc;

    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v3, v0, Lio/appmetrica/analytics/impl/Kl;->a:Lio/appmetrica/analytics/coreutils/internal/limitation/MapTrimmers;

    invoke-virtual {v3}, Lio/appmetrica/analytics/coreutils/internal/limitation/MapTrimmers;->getKeyTrimmer()Lio/appmetrica/analytics/coreutils/internal/limitation/StringTrimmer;

    move-result-object v3

    invoke-virtual {v3, v2}, Lio/appmetrica/analytics/coreutils/internal/limitation/StringTrimmer;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lio/appmetrica/analytics/impl/Kl;->a:Lio/appmetrica/analytics/coreutils/internal/limitation/MapTrimmers;

    invoke-virtual {v3}, Lio/appmetrica/analytics/coreutils/internal/limitation/MapTrimmers;->getValueTrimmer()Lio/appmetrica/analytics/coreutils/internal/limitation/StringTrimmer;

    move-result-object v3

    invoke-virtual {v3, p1}, Lio/appmetrica/analytics/coreutils/internal/limitation/StringTrimmer;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    :goto_0
    invoke-virtual {v0, v1, v2, p1}, Lio/appmetrica/analytics/impl/Kl;->a(Lio/appmetrica/analytics/impl/Sc;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_3

    invoke-virtual {v0, v1, v2, p1}, Lio/appmetrica/analytics/impl/Kl;->a(Lio/appmetrica/analytics/impl/Sc;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    :goto_1
    if-eqz p1, :cond_3

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/appmetrica/analytics/impl/m0;->c:Z

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_2
    monitor-exit p0

    return-void

    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized toString()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Map size "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/appmetrica/analytics/impl/m0;->a:Lio/appmetrica/analytics/impl/Sc;

    invoke-virtual {v1}, Ljava/util/AbstractMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ". Is changed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/appmetrica/analytics/impl/m0;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ". Current revision "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/appmetrica/analytics/impl/m0;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
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
