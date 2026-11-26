.class public final synthetic Lt97;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu97$a;


# instance fields
.field public final synthetic b:Lu97;

.field public final synthetic c:Ljava/util/HashMap;

.field public final synthetic d:Lzl1$a;


# direct methods
.method public synthetic constructor <init>(Lu97;Ljava/util/HashMap;Lzl1$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt97;->b:Lu97;

    iput-object p2, p0, Lt97;->c:Ljava/util/HashMap;

    iput-object p3, p0, Lt97;->d:Lzl1$a;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lt97;->d:Lzl1$a;

    iget-object v1, v0, Lzl1$a;->b:Ljava/util/ArrayList;

    check-cast p1, Landroid/database/Cursor;

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    const/4 v3, 0x0

    iget-object v4, p0, Lt97;->c:Ljava/util/HashMap;

    if-eqz v2, :cond_8

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    sget-object v5, Luu4$a;->REASON_UNKNOWN:Luu4$a;

    invoke-virtual {v5}, Luu4$a;->getNumber()I

    move-result v6

    if-ne v3, v6, :cond_0

    goto :goto_2

    :cond_0
    sget-object v6, Luu4$a;->MESSAGE_TOO_OLD:Luu4$a;

    invoke-virtual {v6}, Luu4$a;->getNumber()I

    move-result v7

    if-ne v3, v7, :cond_1

    :goto_1
    move-object v5, v6

    goto :goto_2

    :cond_1
    sget-object v6, Luu4$a;->CACHE_FULL:Luu4$a;

    invoke-virtual {v6}, Luu4$a;->getNumber()I

    move-result v7

    if-ne v3, v7, :cond_2

    goto :goto_1

    :cond_2
    sget-object v6, Luu4$a;->PAYLOAD_TOO_BIG:Luu4$a;

    invoke-virtual {v6}, Luu4$a;->getNumber()I

    move-result v7

    if-ne v3, v7, :cond_3

    goto :goto_1

    :cond_3
    sget-object v6, Luu4$a;->MAX_RETRIES_REACHED:Luu4$a;

    invoke-virtual {v6}, Luu4$a;->getNumber()I

    move-result v7

    if-ne v3, v7, :cond_4

    goto :goto_1

    :cond_4
    sget-object v6, Luu4$a;->INVALID_PAYLOD:Luu4$a;

    invoke-virtual {v6}, Luu4$a;->getNumber()I

    move-result v7

    if-ne v3, v7, :cond_5

    goto :goto_1

    :cond_5
    sget-object v6, Luu4$a;->SERVER_ERROR:Luu4$a;

    invoke-virtual {v6}, Luu4$a;->getNumber()I

    move-result v7

    if-ne v3, v7, :cond_6

    goto :goto_1

    :cond_6
    const-string v6, "%n is not valid. No matched LogEventDropped-Reason found. Treated it as REASON_UNKNOWN"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v7, "SQLiteEventStore"

    invoke-static {v3, v7, v6}, Lhv4;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    const/4 v3, 0x2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    new-instance v3, Luu4;

    invoke-direct {v3, v6, v7, v5}, Luu4;-><init>(JLuu4$a;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_8
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    sget v4, Lbv4;->c:I

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    new-instance v5, Lbv4;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v5, v4, v2}, Lbv4;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    iget-object p0, p0, Lt97;->b:Lu97;

    iget-object p1, p0, Lu97;->c:Lhm1;

    invoke-interface {p1}, Lhm1;->getTime()J

    move-result-wide v4

    invoke-virtual {p0}, Lu97;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string v2, "SELECT last_metrics_upload_ms FROM global_log_event_state LIMIT 1"

    new-array v6, v3, [Ljava/lang/String;

    invoke-virtual {p1, v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    new-instance v3, Lrv8;

    invoke-direct {v3, v6, v7, v4, v5}, Lrv8;-><init>(JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    iput-object v3, v0, Lzl1$a;->a:Lrv8;

    invoke-virtual {p0}, Lu97;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string v2, "PRAGMA page_count"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v2

    invoke-virtual {p0}, Lu97;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string v4, "PRAGMA page_size"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v4

    mul-long/2addr v4, v2

    sget-object p1, Lty;->f:Lty;

    iget-wide v2, p1, Lty;->a:J

    new-instance p1, Lb98;

    invoke-direct {p1, v4, v5, v2, v3}, Lb98;-><init>(JJ)V

    new-instance v2, Ldr3;

    invoke-direct {v2, p1}, Ldr3;-><init>(Lb98;)V

    iput-object v2, v0, Lzl1$a;->c:Ldr3;

    iget-object p0, p0, Lu97;->f:Lws6;

    invoke-interface {p0}, Lws6;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    iput-object p0, v0, Lzl1$a;->d:Ljava/lang/String;

    new-instance p0, Lzl1;

    iget-object p1, v0, Lzl1$a;->a:Lrv8;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iget-object v2, v0, Lzl1$a;->c:Ldr3;

    iget-object v0, v0, Lzl1$a;->d:Ljava/lang/String;

    invoke-direct {p0, p1, v1, v2, v0}, Lzl1;-><init>(Lrv8;Ljava/util/List;Ldr3;Ljava/lang/String;)V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_4

    :catchall_1
    move-exception p0

    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_4
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p0
.end method
