.class public final Lio/appmetrica/analytics/impl/P8;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/l7;

.field public final b:Lio/appmetrica/analytics/impl/i5;

.field public final c:Ljava/util/concurrent/atomic/AtomicLong;

.field public final d:Ljava/util/List;

.field public final e:Lio/appmetrica/analytics/impl/V6;

.field public final f:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/l7;Lio/appmetrica/analytics/impl/i5;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/ArrayList;Lio/appmetrica/analytics/impl/V6;Ljava/util/concurrent/locks/ReentrantReadWriteLock;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/P8;->a:Lio/appmetrica/analytics/impl/l7;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/P8;->b:Lio/appmetrica/analytics/impl/i5;

    iput-object p3, p0, Lio/appmetrica/analytics/impl/P8;->c:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p4, p0, Lio/appmetrica/analytics/impl/P8;->d:Ljava/util/List;

    iput-object p5, p0, Lio/appmetrica/analytics/impl/P8;->e:Lio/appmetrica/analytics/impl/V6;

    invoke-virtual {p6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/P8;->f:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    return-void
.end method


# virtual methods
.method public final a(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 9

    :try_start_0
    const-string v0, "id IN (SELECT id FROM events ORDER BY CASE WHEN type IN (%1$s) THEN 2 WHEN type IN (%2$s) THEN 1 ELSE 0 END, id LIMIT (SELECT count() FROM events) / %3$s)"

    sget-object v1, Lio/appmetrica/analytics/impl/I9;->i:Ljava/util/List;

    const-string v2, ", "

    const/4 v6, 0x0

    const/16 v7, 0x3e

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lqn1;->a0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ILnl3;I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lio/appmetrica/analytics/impl/I9;->j:Ljava/util/List;

    const-string v3, ", "

    const/4 v7, 0x0

    const/16 v8, 0x3e

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Lqn1;->a0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ILnl3;I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lio/appmetrica/analytics/impl/P8;->e:Lio/appmetrica/analytics/impl/V6;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/P8;->b:Lio/appmetrica/analytics/impl/i5;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/i5;->b:Lio/appmetrica/analytics/impl/b5;

    iget-object v7, v0, Lio/appmetrica/analytics/impl/b5;->b:Ljava/lang/String;

    const/4 v8, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    move-object v3, p1

    invoke-virtual/range {v2 .. v8}, Lio/appmetrica/analytics/impl/V6;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;Z)Lio/appmetrica/analytics/impl/T6;

    move-result-object p1

    iget p1, p1, Lio/appmetrica/analytics/impl/T6;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p0, p0, Lio/appmetrica/analytics/impl/P8;->b:Lio/appmetrica/analytics/impl/i5;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/i5;->j:Lio/appmetrica/analytics/impl/jl;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/jl;->a()J

    move-result-wide v0

    const-string p0, "sessions"

    sget-object v2, Lio/appmetrica/analytics/impl/F5;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, p0, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    sget-object p1, Lio/appmetrica/analytics/impl/Bj;->a:Lio/appmetrica/analytics/impl/ek;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lio/appmetrica/analytics/impl/Cj;

    const-string v1, "deleteExcessiveReports exception"

    invoke-direct {v0, v1, p0}, Lio/appmetrica/analytics/impl/Cj;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Lio/appmetrica/analytics/impl/ek;->a(Lio/appmetrica/analytics/impl/ab;)V

    const/4 p1, 0x0

    :catchall_1
    :goto_0
    return p1
.end method

.method public final a(Landroid/content/ContentValues;)V
    .locals 3

    .line 110
    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 111
    :goto_0
    sget-object v1, Lio/appmetrica/analytics/impl/I9;->d:Ljava/util/EnumSet;

    invoke-static {v0}, Lio/appmetrica/analytics/impl/pb;->a(I)Lio/appmetrica/analytics/impl/pb;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    new-instance v0, Lio/appmetrica/analytics/impl/s7;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lio/appmetrica/analytics/impl/s7;-><init>(Lio/appmetrica/analytics/impl/p7;ILjh2;)V

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/s7;->a(Landroid/content/ContentValues;)Lio/appmetrica/analytics/impl/r7;

    move-result-object p1

    .line 113
    iget-object p0, p0, Lio/appmetrica/analytics/impl/P8;->b:Lio/appmetrica/analytics/impl/i5;

    .line 114
    iget-object p0, p0, Lio/appmetrica/analytics/impl/i5;->m:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    .line 115
    iget-object v0, p1, Lio/appmetrica/analytics/impl/r7;->d:Lio/appmetrica/analytics/impl/pb;

    .line 116
    iget-object p1, p1, Lio/appmetrica/analytics/impl/r7;->g:Lio/appmetrica/analytics/impl/q7;

    .line 117
    iget-object v1, p1, Lio/appmetrica/analytics/impl/q7;->b:Ljava/lang/String;

    .line 118
    iget-object p1, p1, Lio/appmetrica/analytics/impl/q7;->c:Ljava/lang/String;

    .line 119
    const-string v2, "Event saved to db"

    invoke-static {v2, v0, v1, p1}, Lio/appmetrica/analytics/impl/eg;->a(Ljava/lang/String;Lio/appmetrica/analytics/impl/pb;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 120
    invoke-virtual {p0, p1, v0}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 3

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 122
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 123
    check-cast v1, Landroid/content/ContentValues;

    .line 124
    const-string v2, "type"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    :cond_0
    const/4 v1, -0x1

    .line 125
    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 126
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 127
    :cond_1
    iget-object p1, p0, Lio/appmetrica/analytics/impl/P8;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appmetrica/analytics/impl/e9;

    .line 128
    invoke-interface {v1, v0}, Lio/appmetrica/analytics/impl/e9;->a(Ljava/util/List;)V

    goto :goto_2

    .line 129
    :cond_2
    iget-object p0, p0, Lio/appmetrica/analytics/impl/P8;->b:Lio/appmetrica/analytics/impl/i5;

    .line 130
    iget-object p0, p0, Lio/appmetrica/analytics/impl/i5;->p:Lio/appmetrica/analytics/impl/C9;

    .line 131
    check-cast p0, Lio/appmetrica/analytics/impl/v5;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/v5;->e()V

    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 7

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/P8;->b:Lio/appmetrica/analytics/impl/i5;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/i5;->k:Lio/appmetrica/analytics/impl/Tg;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/z5;->a()Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/impl/rh;

    iget-wide v0, v0, Lio/appmetrica/analytics/impl/rh;->v:J

    iget-object v2, p0, Lio/appmetrica/analytics/impl/P8;->f:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lio/appmetrica/analytics/impl/P8;->a:Lio/appmetrica/analytics/impl/l7;

    invoke-virtual {v4}, Lio/appmetrica/analytics/impl/l7;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v4, :cond_4

    :try_start_1
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    const-string v6, "events"

    invoke-virtual {v4, v6, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    iget-object v6, p0, Lio/appmetrica/analytics/impl/P8;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    invoke-virtual {p0, v5}, Lio/appmetrica/analytics/impl/P8;->a(Landroid/content/ContentValues;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lio/appmetrica/analytics/impl/P8;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    cmp-long p1, v5, v0

    if-lez p1, :cond_2

    invoke-virtual {p0, v4}, Lio/appmetrica/analytics/impl/P8;->a(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result p1

    iget-object v0, p0, Lio/appmetrica/analytics/impl/P8;->c:Ljava/util/concurrent/atomic/AtomicLong;

    int-to-long v5, p1

    neg-long v5, v5

    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    if-eqz p1, :cond_3

    iget-object p0, p0, Lio/appmetrica/analytics/impl/P8;->d:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/appmetrica/analytics/impl/e9;

    invoke-interface {p1}, Lio/appmetrica/analytics/impl/e9;->a()V

    goto :goto_2

    :cond_3
    sget-object p0, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-object v3, v4

    goto :goto_4

    :cond_4
    :goto_3
    :try_start_2
    invoke-static {v4}, Lio/appmetrica/analytics/impl/xo;->a(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception p0

    goto :goto_6

    :catchall_2
    :goto_4
    :try_start_3
    sget-object p0, Lj59;->a:Lj59;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    invoke-static {v3}, Lio/appmetrica/analytics/impl/xo;->a(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_5
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_3
    move-exception p0

    :try_start_5
    invoke-static {v3}, Lio/appmetrica/analytics/impl/xo;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_6
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method
