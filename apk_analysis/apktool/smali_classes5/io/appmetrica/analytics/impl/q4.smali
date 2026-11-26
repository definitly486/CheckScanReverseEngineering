.class public final Lio/appmetrica/analytics/impl/q4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/n7;

.field public b:Lio/appmetrica/analytics/impl/Gb;

.field public c:Lio/appmetrica/analytics/impl/Hb;

.field public d:Lio/appmetrica/analytics/impl/oc;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/impl/n7;

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/n7;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/q4;->a:Lio/appmetrica/analytics/impl/n7;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;)Lio/appmetrica/analytics/impl/Va;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/q4;->c:Lio/appmetrica/analytics/impl/Hb;

    if-nez v0, :cond_0

    new-instance v0, Lio/appmetrica/analytics/impl/Hb;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/q4;->c(Landroid/content/Context;)Lio/appmetrica/analytics/impl/Va;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/Hb;-><init>(Lio/appmetrica/analytics/impl/Va;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/q4;->c:Lio/appmetrica/analytics/impl/Hb;
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

.method public final declared-synchronized b(Landroid/content/Context;)Lio/appmetrica/analytics/impl/Va;
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/q4;->c(Landroid/content/Context;)Lio/appmetrica/analytics/impl/Va;

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

.method public final c(Landroid/content/Context;)Lio/appmetrica/analytics/impl/Va;
    .locals 11

    iget-object v0, p0, Lio/appmetrica/analytics/impl/q4;->b:Lio/appmetrica/analytics/impl/Gb;

    if-nez v0, :cond_1

    new-instance v0, Lio/appmetrica/analytics/impl/Gb;

    const-string v1, "preferences"

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lio/appmetrica/analytics/impl/q4;->d:Lio/appmetrica/analytics/impl/oc;

    if-nez v2, :cond_0

    new-instance v2, Lio/appmetrica/analytics/impl/oc;

    iget-object v3, p0, Lio/appmetrica/analytics/impl/q4;->a:Lio/appmetrica/analytics/impl/n7;

    new-instance v4, Lio/appmetrica/analytics/impl/m7;

    iget-object v5, v3, Lio/appmetrica/analytics/impl/n7;->a:Lio/appmetrica/analytics/impl/W6;

    iget-object v3, v3, Lio/appmetrica/analytics/impl/n7;->b:Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-direct {v4, v5, v3, v6}, Lio/appmetrica/analytics/impl/m7;-><init>(Lio/appmetrica/analytics/impl/W6;Ljava/util/ArrayList;Z)V

    new-instance v3, Lio/appmetrica/analytics/impl/b4;

    invoke-direct {v3}, Lio/appmetrica/analytics/impl/b4;-><init>()V

    invoke-virtual {v4, p1, v3}, Lio/appmetrica/analytics/impl/m7;->a(Landroid/content/Context;Lio/appmetrica/analytics/impl/k7;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lio/appmetrica/analytics/impl/H5;->c:Lio/appmetrica/analytics/impl/Z6;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v6, "preferences"

    sget-object v7, Lio/appmetrica/analytics/impl/E5;->a:Ljava/util/List;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v4, Lio/appmetrica/analytics/impl/Z6;->c:Lio/appmetrica/analytics/impl/tn;

    iget-object v4, v4, Lio/appmetrica/analytics/impl/Z6;->a:Lio/appmetrica/analytics/impl/j7;

    iget-object v7, v4, Lio/appmetrica/analytics/impl/j7;->c:Lio/appmetrica/analytics/impl/f7;

    iget-object v4, v4, Lio/appmetrica/analytics/impl/j7;->d:Lio/appmetrica/analytics/impl/g7;

    new-instance v8, Lio/appmetrica/analytics/impl/Ka;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lio/appmetrica/analytics/impl/Ka;-><init>(Z)V

    const/16 v9, 0x70

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-instance v10, Lio/appmetrica/analytics/impl/c4;

    invoke-direct {v10}, Lio/appmetrica/analytics/impl/c4;-><init>()V

    invoke-virtual {v8, v9, v10}, Lio/appmetrica/analytics/impl/Ka;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v9, Lio/appmetrica/analytics/impl/wn;

    const-string v10, "service database"

    invoke-direct {v9, v10, v5}, Lio/appmetrica/analytics/impl/wn;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lio/appmetrica/analytics/impl/un;

    invoke-direct {v5, v7, v4, v8, v9}, Lio/appmetrica/analytics/impl/un;-><init>(Lio/appmetrica/analytics/coreapi/internal/db/DatabaseScript;Lio/appmetrica/analytics/coreapi/internal/db/DatabaseScript;Lio/appmetrica/analytics/impl/Ka;Lio/appmetrica/analytics/impl/vn;)V

    new-instance v4, Lio/appmetrica/analytics/impl/ma;

    invoke-direct {v4, v3}, Lio/appmetrica/analytics/impl/ma;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, p1, v3, v4, v5}, Lio/appmetrica/analytics/impl/oc;-><init>(Landroid/content/Context;Ljava/lang/String;Lio/appmetrica/analytics/impl/ma;Lio/appmetrica/analytics/impl/un;)V

    iput-object v2, p0, Lio/appmetrica/analytics/impl/q4;->d:Lio/appmetrica/analytics/impl/oc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    invoke-static {}, Lio/appmetrica/analytics/impl/p4;->l()Lio/appmetrica/analytics/impl/p4;

    move-result-object p1

    iget-object p1, p1, Lio/appmetrica/analytics/impl/p4;->c:Lio/appmetrica/analytics/impl/f4;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/f4;->b()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lio/appmetrica/analytics/impl/Gb;-><init>(Ljava/lang/String;Lio/appmetrica/analytics/impl/M6;Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/q4;->b:Lio/appmetrica/analytics/impl/Gb;

    return-object v0

    :goto_1
    monitor-exit p0

    throw p1

    :cond_1
    return-object v0
.end method
