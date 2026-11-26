.class public final Lio/appmetrica/analytics/impl/Gb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Va;
.implements Ljava/io/Closeable;


# static fields
.field public static final g:Lio/appmetrica/analytics/impl/Fb;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lio/appmetrica/analytics/impl/M6;

.field public final c:Ljava/util/LinkedHashMap;

.field public final d:Ljava/lang/Object;

.field public volatile e:Z

.field public final f:Lio/appmetrica/analytics/coreutils/internal/buffering/DeferredBatchExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/impl/Fb;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Fb;-><init>()V

    sput-object v0, Lio/appmetrica/analytics/impl/Gb;->g:Lio/appmetrica/analytics/impl/Fb;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/appmetrica/analytics/impl/M6;Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Gb;->a:Ljava/lang/String;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/Gb;->b:Lio/appmetrica/analytics/impl/M6;

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Lio/appmetrica/analytics/impl/Gb;->c:Ljava/util/LinkedHashMap;

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/appmetrica/analytics/impl/Gb;->d:Ljava/lang/Object;

    const-string p2, "[KeyValueTableDbHelper-("

    const-string v0, ")]"

    invoke-static {p2, p1, v0}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v1, Lio/appmetrica/analytics/coreutils/internal/buffering/DeferredBatchExecutor;

    new-instance v3, Lio/appmetrica/analytics/coreutils/internal/buffering/MapMergingBuffer;

    invoke-direct {v3}, Lio/appmetrica/analytics/coreutils/internal/buffering/MapMergingBuffer;-><init>()V

    new-instance v4, Lbp3;

    invoke-direct {v4, p0}, Lbp3;-><init>(Lio/appmetrica/analytics/impl/Gb;)V

    const-wide/16 v5, 0x3e8

    move-object v2, p3

    invoke-direct/range {v1 .. v7}, Lio/appmetrica/analytics/coreutils/internal/buffering/DeferredBatchExecutor;-><init>(Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;Lio/appmetrica/analytics/coreutils/internal/buffering/TaskBuffer;Lio/appmetrica/analytics/coreutils/internal/buffering/BatchProcessor;JLjava/lang/String;)V

    iput-object v1, p0, Lio/appmetrica/analytics/impl/Gb;->f:Lio/appmetrica/analytics/coreutils/internal/buffering/DeferredBatchExecutor;

    new-instance p1, Lrh;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, Lrh;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v2, p1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final a(Lio/appmetrica/analytics/impl/Gb;)V
    .locals 2

    .line 260
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Gb;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 261
    :try_start_0
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Gb;->c()V

    const/4 v1, 0x1

    .line 262
    iput-boolean v1, p0, Lio/appmetrica/analytics/impl/Gb;->e:Z

    .line 263
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Gb;->d:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 264
    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 266
    monitor-exit v0

    throw p0
.end method

.method public static final a(Lio/appmetrica/analytics/impl/Gb;Ljava/util/List;)V
    .locals 8

    invoke-static {p1}, Lqn1;->T(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x5

    const-string v3, "key"

    const-string v4, "value"

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v6, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v1, p0, :cond_0

    invoke-virtual {v6, v4}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    instance-of v3, v1, Ljava/lang/String;

    const-string v5, "type"

    if-eqz v3, :cond_1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    :cond_1
    instance-of v3, v1, Ljava/lang/Long;

    if-eqz v3, :cond_2

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v6, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    :cond_2
    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_3

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v6, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    :cond_3
    instance-of v3, v1, Ljava/lang/Boolean;

    if-eqz v3, :cond_4

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    :cond_4
    instance-of v3, v1, Ljava/lang/Float;

    if-eqz v3, :cond_5

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v6, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_5
    :goto_1
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    const/4 p1, 0x0

    new-array p1, p1, [Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/content/ContentValues;

    if-nez p1, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Gb;->b:Lio/appmetrica/analytics/impl/M6;

    invoke-interface {v1}, Lio/appmetrica/analytics/impl/M6;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_a

    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v5, Ljr;

    invoke-direct {v5, p1}, Ljr;-><init>([Ljava/lang/Object;)V

    :goto_2
    invoke-virtual {v5}, Ljr;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {v5}, Ljr;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ContentValues;

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_8

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v6, p0, Lio/appmetrica/analytics/impl/Gb;->a:Ljava/lang/String;

    const-string v7, "key = ?"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v6, v7, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_8
    iget-object v6, p0, Lio/appmetrica/analytics/impl/Gb;->a:Ljava/lang/String;

    invoke-virtual {v1, v6, v0, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    goto :goto_2

    :cond_9
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v1}, Lio/appmetrica/analytics/impl/xo;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_4

    :goto_3
    invoke-static {v1}, Lio/appmetrica/analytics/impl/xo;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-object v0, v1

    :catchall_2
    move-object v1, v0

    :cond_a
    :goto_4
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Gb;->b:Lio/appmetrica/analytics/impl/M6;

    invoke-interface {p0, v1}, Lio/appmetrica/analytics/impl/M6;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;F)Lio/appmetrica/analytics/impl/Va;
    .locals 0

    .line 272
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/impl/Gb;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final a(Ljava/lang/String;I)Lio/appmetrica/analytics/impl/Va;
    .locals 0

    .line 270
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/impl/Gb;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final a(Ljava/lang/String;J)Lio/appmetrica/analytics/impl/Va;
    .locals 0

    .line 269
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/impl/Gb;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lio/appmetrica/analytics/impl/Va;
    .locals 0

    .line 268
    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/impl/Gb;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final a(Ljava/lang/String;Z)Lio/appmetrica/analytics/impl/Va;
    .locals 0

    .line 271
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/impl/Gb;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final a()V
    .locals 0

    .line 267
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Gb;->f:Lio/appmetrica/analytics/coreutils/internal/buffering/DeferredBatchExecutor;

    invoke-virtual {p0}, Lio/appmetrica/analytics/coreutils/internal/buffering/DeferredBatchExecutor;->flush()V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 276
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Gb;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 277
    :try_start_0
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Gb;->d()V

    .line 278
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Gb;->c:Ljava/util/LinkedHashMap;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    sget-object v1, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    monitor-exit v0

    .line 281
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Gb;->f:Lio/appmetrica/analytics/coreutils/internal/buffering/DeferredBatchExecutor;

    .line 282
    invoke-static {p1, p2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 283
    invoke-static {p0, p1, v1, p2, v0}, Lio/appmetrica/analytics/coreutils/internal/buffering/DeferredBatchExecutor;->submit$default(Lio/appmetrica/analytics/coreutils/internal/buffering/DeferredBatchExecutor;Ljava/lang/Object;ZILjava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p0

    .line 284
    monitor-exit v0

    throw p0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1

    .line 273
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Gb;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 274
    :try_start_0
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Gb;->d()V

    .line 275
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Gb;->c:Ljava/util/LinkedHashMap;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final b(Ljava/lang/String;F)F
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Gb;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 20
    instance-of p1, p0, Ljava/lang/Float;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0

    :cond_0
    return p2
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 21
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Gb;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 22
    :try_start_0
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Gb;->d()V

    .line 23
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Gb;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final b()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Gb;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Gb;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final c()V
    .locals 13

    const-string v0, "type"

    const-string v1, "value"

    const-string v2, "key"

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lio/appmetrica/analytics/impl/Gb;->b:Lio/appmetrica/analytics/impl/M6;

    invoke-interface {v4}, Lio/appmetrica/analytics/impl/M6;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v5, :cond_a

    :try_start_1
    iget-object v6, p0, Lio/appmetrica/analytics/impl/Gb;->a:Ljava/lang/String;

    filled-new-array {v2, v1, v0}, [Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v4, :cond_a

    :cond_0
    :goto_0
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_1

    goto :goto_0

    :cond_1
    const/4 v9, 0x1

    if-eq v8, v9, :cond_5

    const/4 v9, 0x2

    if-eq v8, v9, :cond_4

    const/4 v9, 0x3

    if-eq v8, v9, :cond_3

    const/4 v9, 0x4

    if-eq v8, v9, :cond_8

    const/4 v9, 0x5

    if-eq v8, v9, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v7}, Lio/appmetrica/analytics/coreutils/internal/parsing/ParseUtils;->parseFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v7

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_3

    :cond_3
    invoke-static {v7}, Lio/appmetrica/analytics/coreutils/internal/parsing/ParseUtils;->parseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    goto :goto_2

    :cond_4
    invoke-static {v7}, Lio/appmetrica/analytics/coreutils/internal/parsing/ParseUtils;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_2

    :cond_5
    const-string v8, "true"

    invoke-static {v7, v8}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2

    :cond_6
    const-string v8, "false"

    invoke-static {v7, v8}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2

    :cond_7
    :goto_1
    move-object v7, v3

    :cond_8
    :goto_2
    if-eqz v7, :cond_0

    iget-object v8, p0, Lio/appmetrica/analytics/impl/Gb;->c:Ljava/util/LinkedHashMap;

    invoke-interface {v8, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_9
    sget-object v0, Lj59;->a:Lj59;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-interface {v4}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_4

    :goto_3
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-static {v4, v1}, Lm96;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-object v3, v5

    :catchall_3
    move-object v5, v3

    :cond_a
    :goto_4
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Gb;->b:Lio/appmetrica/analytics/impl/M6;

    invoke-interface {p0, v5}, Lio/appmetrica/analytics/impl/M6;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public final close()V
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Gb;->f:Lio/appmetrica/analytics/coreutils/internal/buffering/DeferredBatchExecutor;

    invoke-virtual {p0}, Lio/appmetrica/analytics/coreutils/internal/buffering/DeferredBatchExecutor;->flush()V

    return-void
.end method

.method public final d()V
    .locals 1

    iget-boolean v0, p0, Lio/appmetrica/analytics/impl/Gb;->e:Z

    if-nez v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Gb;->d:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public final flushAsync()V
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Gb;->f:Lio/appmetrica/analytics/coreutils/internal/buffering/DeferredBatchExecutor;

    invoke-virtual {p0}, Lio/appmetrica/analytics/coreutils/internal/buffering/DeferredBatchExecutor;->flushAsync()V

    return-void
.end method

.method public final getBoolean(Ljava/lang/String;Z)Z
    .locals 0

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Gb;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    return p2
.end method

.method public final getInt(Ljava/lang/String;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Gb;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_0
    return p2
.end method

.method public final getLong(Ljava/lang/String;J)J
    .locals 0

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Gb;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/Long;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    return-wide p0

    :cond_0
    return-wide p2
.end method

.method public final getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Gb;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    return-object p2
.end method

.method public final remove(Ljava/lang/String;)Lio/appmetrica/analytics/impl/Va;
    .locals 4

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Gb;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Gb;->d()V

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Gb;->c:Ljava/util/LinkedHashMap;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Gb;->f:Lio/appmetrica/analytics/coreutils/internal/buffering/DeferredBatchExecutor;

    invoke-static {p1, p0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, p1, v3, v1, v2}, Lio/appmetrica/analytics/coreutils/internal/buffering/DeferredBatchExecutor;->submit$default(Lio/appmetrica/analytics/coreutils/internal/buffering/DeferredBatchExecutor;Ljava/lang/Object;ZILjava/lang/Object;)V

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
