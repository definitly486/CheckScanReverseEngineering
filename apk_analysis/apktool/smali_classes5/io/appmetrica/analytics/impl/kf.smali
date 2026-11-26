.class public abstract Lio/appmetrica/analytics/impl/kf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Nl;


# static fields
.field public static final c:Ljava/lang/String; = "kf"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Va;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Va;)V
    .locals 1

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, p1, v0}, Lio/appmetrica/analytics/impl/kf;-><init>(Lio/appmetrica/analytics/impl/Va;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/Va;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/kf;->a:Lio/appmetrica/analytics/impl/Va;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/kf;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract synthetic a(Ljava/lang/String;I)I
.end method

.method public abstract synthetic a(Ljava/lang/String;J)J
.end method

.method public final a(Ljava/lang/String;F)Lio/appmetrica/analytics/impl/kf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/appmetrica/analytics/impl/kf;",
            ">(",
            "Ljava/lang/String;",
            "F)TT;"
        }
    .end annotation

    .line 29
    monitor-enter p0

    .line 30
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/kf;->a:Lio/appmetrica/analytics/impl/Va;

    invoke-interface {v0, p1, p2}, Lio/appmetrica/analytics/impl/Va;->a(Ljava/lang/String;F)Lio/appmetrica/analytics/impl/Va;

    .line 31
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    .line 32
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Ljava/lang/String;Ljava/util/List;)Lio/appmetrica/analytics/impl/kf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/appmetrica/analytics/impl/kf;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)TT;"
        }
    .end annotation

    .line 33
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/impl/kf;->a(Ljava/lang/String;[Ljava/lang/String;)Lio/appmetrica/analytics/impl/kf;

    move-result-object p0

    return-object p0
.end method

.method public final a(Ljava/lang/String;[Ljava/lang/String;)Lio/appmetrica/analytics/impl/kf;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/appmetrica/analytics/impl/kf;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p2, v2

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    const/4 p2, 0x0

    :goto_1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/kf;->a:Lio/appmetrica/analytics/impl/Va;

    invoke-interface {v0, p1, p2}, Lio/appmetrica/analytics/impl/Va;->a(Ljava/lang/String;Ljava/lang/String;)Lio/appmetrica/analytics/impl/Va;

    return-object p0
.end method

.method public abstract synthetic a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public a()V
    .locals 1

    .line 34
    monitor-enter p0

    .line 35
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/kf;->a:Lio/appmetrica/analytics/impl/Va;

    invoke-interface {v0}, Lio/appmetrica/analytics/impl/Va;->a()V

    .line 36
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 37
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public abstract synthetic a(Ljava/lang/String;Z)Z
.end method

.method public abstract synthetic b(Ljava/lang/String;I)Lio/appmetrica/analytics/impl/Nl;
.end method

.method public abstract synthetic b(Ljava/lang/String;J)Lio/appmetrica/analytics/impl/Nl;
.end method

.method public abstract synthetic b(Ljava/lang/String;Ljava/lang/String;)Lio/appmetrica/analytics/impl/Nl;
.end method

.method public abstract synthetic b(Ljava/lang/String;Z)Lio/appmetrica/analytics/impl/Nl;
.end method

.method public abstract synthetic b(Ljava/lang/String;)Z
.end method

.method public final c(Ljava/lang/String;I)I
    .locals 0

    .line 7
    iget-object p0, p0, Lio/appmetrica/analytics/impl/kf;->a:Lio/appmetrica/analytics/impl/Va;

    invoke-interface {p0, p1, p2}, Lio/appmetrica/analytics/impl/Va;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final c(Ljava/lang/String;J)J
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/kf;->a:Lio/appmetrica/analytics/impl/Va;

    invoke-interface {p0, p1, p2, p3}, Lio/appmetrica/analytics/impl/Va;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 8
    iget-object p0, p0, Lio/appmetrica/analytics/impl/kf;->a:Lio/appmetrica/analytics/impl/Va;

    invoke-interface {p0, p1, p2}, Lio/appmetrica/analytics/impl/Va;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public c()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 11
    iget-object p0, p0, Lio/appmetrica/analytics/impl/kf;->a:Lio/appmetrica/analytics/impl/Va;

    invoke-interface {p0}, Lio/appmetrica/analytics/impl/Va;->b()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 0

    .line 10
    iget-object p0, p0, Lio/appmetrica/analytics/impl/kf;->a:Lio/appmetrica/analytics/impl/Va;

    invoke-interface {p0, p1}, Lio/appmetrica/analytics/impl/Va;->a(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final c(Ljava/lang/String;Z)Z
    .locals 0

    .line 9
    iget-object p0, p0, Lio/appmetrica/analytics/impl/kf;->a:Lio/appmetrica/analytics/impl/Va;

    invoke-interface {p0, p1, p2}, Lio/appmetrica/analytics/impl/Va;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final d(Ljava/lang/String;I)Lio/appmetrica/analytics/impl/kf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/appmetrica/analytics/impl/kf;",
            ">(",
            "Ljava/lang/String;",
            "I)TT;"
        }
    .end annotation

    .line 18
    monitor-enter p0

    .line 19
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/kf;->a:Lio/appmetrica/analytics/impl/Va;

    invoke-interface {v0, p1, p2}, Lio/appmetrica/analytics/impl/Va;->a(Ljava/lang/String;I)Lio/appmetrica/analytics/impl/Va;

    .line 20
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    .line 21
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final d(Ljava/lang/String;J)Lio/appmetrica/analytics/impl/kf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/appmetrica/analytics/impl/kf;",
            ">(",
            "Ljava/lang/String;",
            "J)TT;"
        }
    .end annotation

    .line 14
    monitor-enter p0

    .line 15
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/kf;->a:Lio/appmetrica/analytics/impl/Va;

    invoke-interface {v0, p1, p2, p3}, Lio/appmetrica/analytics/impl/Va;->a(Ljava/lang/String;J)Lio/appmetrica/analytics/impl/Va;

    .line 16
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    .line 17
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;)Lio/appmetrica/analytics/impl/kf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/appmetrica/analytics/impl/kf;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/kf;->a:Lio/appmetrica/analytics/impl/Va;

    invoke-interface {v0, p1, p2}, Lio/appmetrica/analytics/impl/Va;->a(Ljava/lang/String;Ljava/lang/String;)Lio/appmetrica/analytics/impl/Va;

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final d(Ljava/lang/String;Z)Lio/appmetrica/analytics/impl/kf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/appmetrica/analytics/impl/kf;",
            ">(",
            "Ljava/lang/String;",
            "Z)TT;"
        }
    .end annotation

    .line 22
    monitor-enter p0

    .line 23
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/kf;->a:Lio/appmetrica/analytics/impl/Va;

    invoke-interface {v0, p1, p2}, Lio/appmetrica/analytics/impl/Va;->a(Ljava/lang/String;Z)Lio/appmetrica/analytics/impl/Va;

    .line 24
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    .line 25
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final d(Ljava/lang/String;)Lio/appmetrica/analytics/impl/lf;
    .locals 1

    .line 11
    new-instance v0, Lio/appmetrica/analytics/impl/lf;

    .line 12
    iget-object p0, p0, Lio/appmetrica/analytics/impl/kf;->b:Ljava/lang/String;

    .line 13
    invoke-direct {v0, p1, p0}, Lio/appmetrica/analytics/impl/lf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public abstract synthetic e(Ljava/lang/String;)Lio/appmetrica/analytics/impl/Nl;
.end method

.method public final f(Ljava/lang/String;)Lio/appmetrica/analytics/impl/kf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/appmetrica/analytics/impl/kf;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/kf;->a:Lio/appmetrica/analytics/impl/Va;

    invoke-interface {v0, p1}, Lio/appmetrica/analytics/impl/Va;->remove(Ljava/lang/String;)Lio/appmetrica/analytics/impl/Va;

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public flushAsync()V
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/kf;->a:Lio/appmetrica/analytics/impl/Va;

    invoke-interface {p0}, Lio/appmetrica/analytics/impl/Va;->flushAsync()V

    return-void
.end method
