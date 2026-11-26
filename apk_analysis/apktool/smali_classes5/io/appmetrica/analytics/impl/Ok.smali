.class public final Lio/appmetrica/analytics/impl/Ok;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/n7;

.field public b:Lio/appmetrica/analytics/impl/l7;

.field public c:Lio/appmetrica/analytics/impl/f3;

.field public d:Lio/appmetrica/analytics/impl/g3;

.field public e:Lio/appmetrica/analytics/impl/Gb;

.field public f:Lio/appmetrica/analytics/impl/Hb;

.field public g:Lio/appmetrica/analytics/impl/Fn;

.field public h:Lio/appmetrica/analytics/impl/Gn;

.field public final i:Ljava/util/LinkedHashMap;

.field public final j:Ljava/util/LinkedHashMap;

.field public final k:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/impl/n7;

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/n7;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Ok;->a:Lio/appmetrica/analytics/impl/n7;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Ok;->i:Ljava/util/LinkedHashMap;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Ok;->j:Ljava/util/LinkedHashMap;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Ok;->k:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;
    .locals 2

    .line 44
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ok;->c:Lio/appmetrica/analytics/impl/f3;

    if-nez v0, :cond_0

    new-instance v0, Lio/appmetrica/analytics/impl/f3;

    .line 45
    new-instance v1, Lio/appmetrica/analytics/impl/Jl;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Ok;->f(Landroid/content/Context;)Lio/appmetrica/analytics/impl/l7;

    move-result-object p1

    invoke-direct {v1, p1}, Lio/appmetrica/analytics/impl/Jl;-><init>(Lio/appmetrica/analytics/impl/l7;)V

    .line 46
    const-string p1, "binary_data"

    invoke-direct {v0, v1, p1}, Lio/appmetrica/analytics/impl/f3;-><init>(Lio/appmetrica/analytics/impl/M6;Ljava/lang/String;)V

    .line 47
    iput-object v0, p0, Lio/appmetrica/analytics/impl/Ok;->c:Lio/appmetrica/analytics/impl/f3;

    :cond_0
    return-object v0
.end method

.method public final declared-synchronized a(Landroid/content/Context;Lio/appmetrica/analytics/impl/b5;)Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v0, Lio/appmetrica/analytics/impl/S4;

    invoke-direct {v0, p2}, Lio/appmetrica/analytics/impl/S4;-><init>(Lio/appmetrica/analytics/impl/b5;)V

    iget-object v0, v0, Lio/appmetrica/analytics/impl/S4;->a:Ljava/lang/String;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Ok;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Lio/appmetrica/analytics/impl/f3;

    new-instance v3, Lio/appmetrica/analytics/impl/Jl;

    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/impl/Ok;->c(Landroid/content/Context;Lio/appmetrica/analytics/impl/b5;)Lio/appmetrica/analytics/impl/l7;

    move-result-object p1

    invoke-direct {v3, p1}, Lio/appmetrica/analytics/impl/Jl;-><init>(Lio/appmetrica/analytics/impl/l7;)V

    const-string p1, "binary_data"

    invoke-direct {v2, v3, p1}, Lio/appmetrica/analytics/impl/f3;-><init>(Lio/appmetrica/analytics/impl/M6;Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    check-cast v2, Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized b(Landroid/content/Context;)Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;
    .locals 1

    monitor-enter p0

    .line 52
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ok;->d:Lio/appmetrica/analytics/impl/g3;

    if-nez v0, :cond_0

    new-instance v0, Lio/appmetrica/analytics/impl/g3;

    .line 53
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Ok;->a(Landroid/content/Context;)Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;

    move-result-object p1

    .line 54
    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/g3;-><init>(Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;)V

    .line 55
    iput-object v0, p0, Lio/appmetrica/analytics/impl/Ok;->d:Lio/appmetrica/analytics/impl/g3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized b(Landroid/content/Context;Lio/appmetrica/analytics/impl/b5;)Lio/appmetrica/analytics/impl/Va;
    .locals 5

    monitor-enter p0

    :try_start_0
    new-instance v0, Lio/appmetrica/analytics/impl/S4;

    invoke-direct {v0, p2}, Lio/appmetrica/analytics/impl/S4;-><init>(Lio/appmetrica/analytics/impl/b5;)V

    iget-object v0, v0, Lio/appmetrica/analytics/impl/S4;->a:Ljava/lang/String;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Ok;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Lio/appmetrica/analytics/impl/Gb;

    const-string v3, "preferences"

    new-instance v4, Lio/appmetrica/analytics/impl/Jl;

    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/impl/Ok;->c(Landroid/content/Context;Lio/appmetrica/analytics/impl/b5;)Lio/appmetrica/analytics/impl/l7;

    move-result-object p1

    invoke-direct {v4, p1}, Lio/appmetrica/analytics/impl/Jl;-><init>(Lio/appmetrica/analytics/impl/l7;)V

    sget-object p1, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/Fa;->d:Lio/appmetrica/analytics/impl/Ak;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/Ak;->e()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object p1

    invoke-direct {v2, v3, v4, p1}, Lio/appmetrica/analytics/impl/Gb;-><init>(Ljava/lang/String;Lio/appmetrica/analytics/impl/M6;Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    check-cast v2, Lio/appmetrica/analytics/impl/Va;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized c(Landroid/content/Context;)Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;
    .locals 0

    monitor-enter p0

    .line 119
    :try_start_0
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Ok;->a(Landroid/content/Context;)Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized c(Landroid/content/Context;Lio/appmetrica/analytics/impl/b5;)Lio/appmetrica/analytics/impl/l7;
    .locals 11

    const-string v0, "component-"

    monitor-enter p0

    :try_start_0
    new-instance v1, Lio/appmetrica/analytics/impl/S4;

    invoke-direct {v1, p2}, Lio/appmetrica/analytics/impl/S4;-><init>(Lio/appmetrica/analytics/impl/b5;)V

    iget-object v1, v1, Lio/appmetrica/analytics/impl/S4;->a:Ljava/lang/String;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/Ok;->i:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    new-instance v3, Lio/appmetrica/analytics/impl/l7;

    iget-object v4, p0, Lio/appmetrica/analytics/impl/Ok;->a:Lio/appmetrica/analytics/impl/n7;

    new-instance v5, Lio/appmetrica/analytics/impl/m7;

    iget-object v6, v4, Lio/appmetrica/analytics/impl/n7;->a:Lio/appmetrica/analytics/impl/W6;

    iget-object v4, v4, Lio/appmetrica/analytics/impl/n7;->b:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v4, v7}, Lio/appmetrica/analytics/impl/m7;-><init>(Lio/appmetrica/analytics/impl/W6;Ljava/util/ArrayList;Z)V

    new-instance v4, Lio/appmetrica/analytics/impl/S4;

    invoke-direct {v4, p2}, Lio/appmetrica/analytics/impl/S4;-><init>(Lio/appmetrica/analytics/impl/b5;)V

    invoke-virtual {v5, p1, v4}, Lio/appmetrica/analytics/impl/m7;->a(Landroid/content/Context;Lio/appmetrica/analytics/impl/k7;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lio/appmetrica/analytics/impl/H5;->c:Lio/appmetrica/analytics/impl/Z6;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p2, Lio/appmetrica/analytics/impl/b5;->b:Ljava/lang/String;

    if-nez p2, :cond_0

    const-string p2, "main"

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, v5, Lio/appmetrica/analytics/impl/Z6;->c:Lio/appmetrica/analytics/impl/tn;

    iget-object v6, v5, Lio/appmetrica/analytics/impl/Z6;->a:Lio/appmetrica/analytics/impl/j7;

    iget-object v8, v6, Lio/appmetrica/analytics/impl/j7;->a:Lio/appmetrica/analytics/impl/b7;

    iget-object v6, v6, Lio/appmetrica/analytics/impl/j7;->b:Lio/appmetrica/analytics/impl/c7;

    new-instance v9, Lio/appmetrica/analytics/impl/Ka;

    invoke-direct {v9, v7}, Lio/appmetrica/analytics/impl/Ka;-><init>(Z)V

    const/16 v7, 0x70

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v10, Lio/appmetrica/analytics/impl/V4;

    invoke-direct {v10}, Lio/appmetrica/analytics/impl/V4;-><init>()V

    invoke-virtual {v9, v7, v10}, Lio/appmetrica/analytics/impl/Ka;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v7, Lio/appmetrica/analytics/impl/wn;

    iget-object v5, v5, Lio/appmetrica/analytics/impl/Z6;->b:Lio/appmetrica/analytics/impl/I7;

    iget-object v5, v5, Lio/appmetrica/analytics/impl/I7;->a:Ljava/util/HashMap;

    invoke-direct {v7, p2, v5}, Lio/appmetrica/analytics/impl/wn;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lio/appmetrica/analytics/impl/un;

    invoke-direct {p2, v8, v6, v9, v7}, Lio/appmetrica/analytics/impl/un;-><init>(Lio/appmetrica/analytics/coreapi/internal/db/DatabaseScript;Lio/appmetrica/analytics/coreapi/internal/db/DatabaseScript;Lio/appmetrica/analytics/impl/Ka;Lio/appmetrica/analytics/impl/vn;)V

    invoke-static {}, Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;->getAnonymousInstance()Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    move-result-object v0

    invoke-direct {v3, p1, v4, p2, v0}, Lio/appmetrica/analytics/impl/l7;-><init>(Landroid/content/Context;Ljava/lang/String;Lio/appmetrica/analytics/impl/un;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    check-cast v3, Lio/appmetrica/analytics/impl/l7;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v3

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized d(Landroid/content/Context;)Lio/appmetrica/analytics/impl/Va;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ok;->f:Lio/appmetrica/analytics/impl/Hb;

    if-nez v0, :cond_1

    new-instance v0, Lio/appmetrica/analytics/impl/Hb;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Ok;->e:Lio/appmetrica/analytics/impl/Gb;

    if-nez v1, :cond_0

    new-instance v1, Lio/appmetrica/analytics/impl/Gb;

    const-string v2, "preferences"

    new-instance v3, Lio/appmetrica/analytics/impl/Jl;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Ok;->f(Landroid/content/Context;)Lio/appmetrica/analytics/impl/l7;

    move-result-object p1

    invoke-direct {v3, p1}, Lio/appmetrica/analytics/impl/Jl;-><init>(Lio/appmetrica/analytics/impl/l7;)V

    sget-object p1, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/Fa;->d:Lio/appmetrica/analytics/impl/Ak;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/Ak;->e()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object p1

    invoke-direct {v1, v2, v3, p1}, Lio/appmetrica/analytics/impl/Gb;-><init>(Ljava/lang/String;Lio/appmetrica/analytics/impl/M6;Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;)V

    iput-object v1, p0, Lio/appmetrica/analytics/impl/Ok;->e:Lio/appmetrica/analytics/impl/Gb;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/Hb;-><init>(Lio/appmetrica/analytics/impl/Va;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Ok;->f:Lio/appmetrica/analytics/impl/Hb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized e(Landroid/content/Context;)Lio/appmetrica/analytics/impl/Va;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ok;->e:Lio/appmetrica/analytics/impl/Gb;

    if-nez v0, :cond_0

    new-instance v0, Lio/appmetrica/analytics/impl/Gb;

    const-string v1, "preferences"

    new-instance v2, Lio/appmetrica/analytics/impl/Jl;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Ok;->f(Landroid/content/Context;)Lio/appmetrica/analytics/impl/l7;

    move-result-object p1

    invoke-direct {v2, p1}, Lio/appmetrica/analytics/impl/Jl;-><init>(Lio/appmetrica/analytics/impl/l7;)V

    sget-object p1, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/Fa;->d:Lio/appmetrica/analytics/impl/Ak;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/Ak;->e()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lio/appmetrica/analytics/impl/Gb;-><init>(Ljava/lang/String;Lio/appmetrica/analytics/impl/M6;Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Ok;->e:Lio/appmetrica/analytics/impl/Gb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized f(Landroid/content/Context;)Lio/appmetrica/analytics/impl/l7;
    .locals 12

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ok;->b:Lio/appmetrica/analytics/impl/l7;

    if-nez v0, :cond_5

    new-instance v0, Lio/appmetrica/analytics/impl/l7;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Ok;->a:Lio/appmetrica/analytics/impl/n7;

    new-instance v2, Lio/appmetrica/analytics/impl/m7;

    iget-object v3, v1, Lio/appmetrica/analytics/impl/n7;->a:Lio/appmetrica/analytics/impl/W6;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/n7;->b:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v1, v4}, Lio/appmetrica/analytics/impl/m7;-><init>(Lio/appmetrica/analytics/impl/W6;Ljava/util/ArrayList;Z)V

    new-instance v1, Lio/appmetrica/analytics/impl/vk;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/vk;-><init>()V

    invoke-virtual {v2, p1, v1}, Lio/appmetrica/analytics/impl/m7;->a(Landroid/content/Context;Lio/appmetrica/analytics/impl/k7;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lio/appmetrica/analytics/impl/H5;->c:Lio/appmetrica/analytics/impl/Z6;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sget-object v4, Lio/appmetrica/analytics/impl/E5;->a:Ljava/util/List;

    const-string v5, "preferences"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lio/appmetrica/analytics/impl/C5;->a:Ljava/util/List;

    const-string v5, "binary_data"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lio/appmetrica/analytics/impl/Jn;->a:Ljava/util/List;

    const-string v5, "temp_cache"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    invoke-virtual {v4}, Lio/appmetrica/analytics/impl/Fa;->p()Lio/appmetrica/analytics/impl/Nk;

    move-result-object v4

    invoke-virtual {v4}, Lio/appmetrica/analytics/impl/Nk;->a()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServicesDatabase;

    invoke-virtual {v5}, Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServicesDatabase;->getTables()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/appmetrica/analytics/modulesapi/internal/common/TableDescription;

    invoke-interface {v6}, Lio/appmetrica/analytics/modulesapi/internal/common/TableDescription;->getTableName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6}, Lio/appmetrica/analytics/modulesapi/internal/common/TableDescription;->getColumnNames()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v3, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_1
    iget-object v4, v2, Lio/appmetrica/analytics/impl/Z6;->c:Lio/appmetrica/analytics/impl/tn;

    iget-object v2, v2, Lio/appmetrica/analytics/impl/Z6;->a:Lio/appmetrica/analytics/impl/j7;

    iget-object v5, v2, Lio/appmetrica/analytics/impl/j7;->e:Lio/appmetrica/analytics/impl/h7;

    iget-object v2, v2, Lio/appmetrica/analytics/impl/j7;->f:Lio/appmetrica/analytics/impl/i7;

    new-instance v6, Lio/appmetrica/analytics/impl/Ka;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lio/appmetrica/analytics/impl/Ka;-><init>(Z)V

    const/16 v7, 0x72

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Lio/appmetrica/analytics/impl/wk;

    invoke-direct {v8}, Lio/appmetrica/analytics/impl/wk;-><init>()V

    invoke-virtual {v6, v7, v8}, Lio/appmetrica/analytics/impl/Ka;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v7, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    invoke-virtual {v7}, Lio/appmetrica/analytics/impl/Fa;->p()Lio/appmetrica/analytics/impl/Nk;

    move-result-object v7

    invoke-virtual {v7}, Lio/appmetrica/analytics/impl/Nk;->a()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServicesDatabase;

    invoke-virtual {v8}, Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServicesDatabase;->getTables()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lio/appmetrica/analytics/modulesapi/internal/common/TableDescription;

    invoke-interface {v9}, Lio/appmetrica/analytics/modulesapi/internal/common/TableDescription;->getDatabaseProviderUpgradeScript()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lio/appmetrica/analytics/coreapi/internal/db/DatabaseScript;

    invoke-virtual {v6, v11, v10}, Lio/appmetrica/analytics/impl/Ka;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    new-instance v7, Lio/appmetrica/analytics/impl/wn;

    const-string v8, "service database"

    invoke-direct {v7, v8, v3}, Lio/appmetrica/analytics/impl/wn;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lio/appmetrica/analytics/impl/un;

    invoke-direct {v3, v5, v2, v6, v7}, Lio/appmetrica/analytics/impl/un;-><init>(Lio/appmetrica/analytics/coreapi/internal/db/DatabaseScript;Lio/appmetrica/analytics/coreapi/internal/db/DatabaseScript;Lio/appmetrica/analytics/impl/Ka;Lio/appmetrica/analytics/impl/vn;)V

    invoke-static {}, Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;->getAnonymousInstance()Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    move-result-object v2

    invoke-direct {v0, p1, v1, v3, v2}, Lio/appmetrica/analytics/impl/l7;-><init>(Landroid/content/Context;Ljava/lang/String;Lio/appmetrica/analytics/impl/un;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Ok;->b:Lio/appmetrica/analytics/impl/l7;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    monitor-exit p0

    return-object v0

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
