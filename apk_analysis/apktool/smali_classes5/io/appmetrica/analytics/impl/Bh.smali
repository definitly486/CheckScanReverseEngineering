.class public final Lio/appmetrica/analytics/impl/Bh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Y6;

.field public final b:Lio/appmetrica/analytics/impl/jl;

.field public final c:Lio/appmetrica/analytics/impl/Go;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/i5;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/i5;->i()Lio/appmetrica/analytics/impl/Y6;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Bh;->a:Lio/appmetrica/analytics/impl/Y6;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/i5;->s()Lio/appmetrica/analytics/impl/jl;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Bh;->b:Lio/appmetrica/analytics/impl/jl;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/i5;->u()Lio/appmetrica/analytics/impl/Go;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Bh;->c:Lio/appmetrica/analytics/impl/Go;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 3

    .line 157
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Bh;->c:Lio/appmetrica/analytics/impl/Go;

    monitor-enter p0

    .line 158
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Go;->a:Lio/appmetrica/analytics/impl/Ho;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Ho;->a()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "report_request_id"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    add-int/lit8 v0, v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    .line 159
    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/util/LinkedHashMap;)Ljava/util/List;
    .locals 11

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Bh;->a:Lio/appmetrica/analytics/impl/Y6;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Y6;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Y6;->c:Lio/appmetrica/analytics/impl/l7;

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/l7;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "sessions"

    invoke-static {p1}, Lio/appmetrica/analytics/impl/Y6;->a(Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, [Ljava/lang/String;

    const-string v9, "id ASC"

    const/16 p1, 0x64

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    :cond_1
    move-object p1, v0

    :goto_1
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Y6;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    if-nez p1, :cond_2

    sget-object p0, Lkx2;->b:Lkx2;

    return-object p0

    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p1, v1}, Lio/appmetrica/analytics/coreutils/internal/db/DBUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    new-instance v2, Lio/appmetrica/analytics/impl/G7;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3, v0}, Lio/appmetrica/analytics/impl/G7;-><init>(Lio/appmetrica/analytics/impl/D7;ILjh2;)V

    invoke-virtual {v2, v1}, Lio/appmetrica/analytics/impl/G7;->a(Landroid/content/ContentValues;)Lio/appmetrica/analytics/impl/F7;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_3

    :cond_3
    sget-object v0, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto :goto_4

    :goto_3
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v0

    :try_start_4
    invoke-static {p1, v1}, Lm96;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    :goto_4
    return-object p0
.end method
