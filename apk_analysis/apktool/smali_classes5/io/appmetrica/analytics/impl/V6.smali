.class public final Lio/appmetrica/analytics/impl/V6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/V6;->a:Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;

    return-void
.end method


# virtual methods
.method public final a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;Z)Lio/appmetrica/analytics/impl/T6;
    .locals 11

    move-object/from16 v1, p5

    const-string v3, "events"

    const/4 v10, 0x0

    :try_start_0
    const-string v0, "global_number"

    const-string v2, "type"

    const-string v4, "event_description"

    filled-new-array {v0, v2, v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_0

    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v4, v7}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    move-object v0, v10

    :cond_1
    invoke-static {v4}, Lio/appmetrica/analytics/impl/xo;->a(Landroid/database/Cursor;)V

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v4, v10

    :goto_1
    :try_start_2
    sget-object v7, Lio/appmetrica/analytics/impl/Bj;->a:Lio/appmetrica/analytics/impl/ek;

    const-string v8, "select_rows_to_delete_exception"

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v9, Lio/appmetrica/analytics/impl/Cj;

    invoke-direct {v9, v8, v0}, Lio/appmetrica/analytics/impl/Cj;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v7, v9}, Lio/appmetrica/analytics/impl/ek;->a(Lio/appmetrica/analytics/impl/ab;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    invoke-static {v4}, Lio/appmetrica/analytics/impl/xo;->a(Landroid/database/Cursor;)V

    move-object v0, v10

    :goto_2
    :try_start_3
    invoke-virtual {p1, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_2
    const/4 p1, 0x0

    :goto_3
    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-eq p1, p2, :cond_2

    goto/16 :goto_9

    :cond_2
    if-eqz p6, :cond_7

    sget-object p2, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    iget-object p2, p2, Lio/appmetrica/analytics/impl/Fa;->f:Lio/appmetrica/analytics/impl/zj;

    if-eqz v1, :cond_7

    if-eqz p2, :cond_7

    iget-object p0, p0, Lio/appmetrica/analytics/impl/V6;->a:Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;

    monitor-enter p2

    :try_start_4
    iget-object p3, p2, Lio/appmetrica/analytics/impl/zj;->c:Ljava/util/HashMap;

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/appmetrica/analytics/impl/xj;

    if-nez p3, :cond_3

    new-instance p3, Lio/appmetrica/analytics/impl/xj;

    iget-object v2, p2, Lio/appmetrica/analytics/impl/zj;->b:Landroid/content/Context;

    iget-object v3, p2, Lio/appmetrica/analytics/impl/zj;->a:Lio/appmetrica/analytics/impl/Aj;

    invoke-direct {p3, v1, v2, p0, v3}, Lio/appmetrica/analytics/impl/xj;-><init>(Ljava/lang/String;Landroid/content/Context;Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;Lio/appmetrica/analytics/impl/Aj;)V

    iget-object p0, p2, Lio/appmetrica/analytics/impl/zj;->c:Ljava/util/HashMap;

    invoke-virtual {p0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object p0, v0

    goto/16 :goto_8

    :cond_3
    :goto_4
    monitor-exit p2

    :try_start_5
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    const-string v5, "global_number"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "type"

    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v5, :cond_4

    if-eqz v4, :cond_4

    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lio/appmetrica/analytics/impl/pb;->a(I)Lio/appmetrica/analytics/impl/pb;

    move-result-object v4

    if-nez v4, :cond_5

    sget-object v4, Lio/appmetrica/analytics/impl/dg;->a:Ljava/util/Map;

    move-object v4, v10

    goto :goto_6

    :cond_5
    sget-object v5, Lio/appmetrica/analytics/impl/dg;->c:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    :goto_6
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_5

    :cond_6
    const-string v3, "global_number"

    invoke-virtual {p0, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p2

    const-string v3, "event_type"

    invoke-virtual {p2, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "reason"

    invoke-static {p4}, Lio/appmetrica/analytics/impl/U6;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p2

    const-string v2, "cleared"

    invoke-virtual {p2, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    const-string p2, "actual_deleted_number"

    invoke-virtual {p0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p0

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "details"

    invoke-virtual {p2, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {v1}, Lio/appmetrica/analytics/coreutils/internal/logger/LoggerStorage;->getOrCreatePublicLogger(Ljava/lang/String;)Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    move-result-object v6

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object p0, Lio/appmetrica/analytics/impl/I9;->a:Ljava/util/Set;

    new-instance v1, Lio/appmetrica/analytics/impl/a4;

    const-string v3, ""

    sget-object p0, Lio/appmetrica/analytics/impl/pb;->c:Lio/appmetrica/analytics/impl/pb;

    const/16 v4, 0x3002

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v6}, Lio/appmetrica/analytics/impl/a4;-><init>(Ljava/lang/String;Ljava/lang/String;IILio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_7

    :catchall_4
    move-object v1, v10

    :goto_7
    if-eqz v1, :cond_7

    iget-object p0, p3, Lio/appmetrica/analytics/impl/xj;->c:Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;

    if-eqz p0, :cond_7

    :try_start_6
    new-instance p0, Lio/appmetrica/analytics/internal/CounterConfiguration;

    iget-object p2, p3, Lio/appmetrica/analytics/impl/xj;->a:Ljava/lang/String;

    invoke-direct {p0, p2}, Lio/appmetrica/analytics/internal/CounterConfiguration;-><init>(Ljava/lang/String;)V

    iget-object p2, p3, Lio/appmetrica/analytics/impl/xj;->c:Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;

    invoke-virtual {p0, p2}, Lio/appmetrica/analytics/internal/CounterConfiguration;->setReporterType(Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;)V

    iget-object p2, p3, Lio/appmetrica/analytics/impl/xj;->d:Lio/appmetrica/analytics/impl/Aj;

    new-instance v2, Lio/appmetrica/analytics/impl/Mh;

    new-instance v3, Lio/appmetrica/analytics/impl/Pf;

    iget-object v4, p3, Lio/appmetrica/analytics/impl/xj;->b:Landroid/content/Context;

    invoke-direct {v3, v4, v10}, Lio/appmetrica/analytics/impl/Pf;-><init>(Landroid/content/Context;Landroid/os/ResultReceiver;)V

    new-instance v4, Lio/appmetrica/analytics/impl/O8;

    new-instance v5, Lio/appmetrica/analytics/impl/Kl;

    iget-object p3, p3, Lio/appmetrica/analytics/impl/xj;->a:Ljava/lang/String;

    invoke-static {p3}, Lio/appmetrica/analytics/coreutils/internal/logger/LoggerStorage;->getOrCreatePublicLogger(Ljava/lang/String;)Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    move-result-object p3

    const-string v6, "Crash Environment"

    invoke-direct {v5, p3, v6}, Lio/appmetrica/analytics/impl/Kl;-><init>(Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lio/appmetrica/analytics/impl/O8;-><init>(Lio/appmetrica/analytics/impl/Kl;)V

    invoke-direct {v2, v3, p0, v4, v10}, Lio/appmetrica/analytics/impl/Mh;-><init>(Lio/appmetrica/analytics/impl/Pf;Lio/appmetrica/analytics/internal/CounterConfiguration;Lio/appmetrica/analytics/impl/O8;Ljava/lang/String;)V

    invoke-virtual {v2}, Lio/appmetrica/analytics/impl/Mh;->c()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v1, p0}, Lio/appmetrica/analytics/impl/a6;->d(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    iget-object p2, p2, Lio/appmetrica/analytics/impl/Aj;->a:Lio/appmetrica/analytics/impl/E1;

    const/4 p3, 0x1

    invoke-interface {p2, p3, p0}, Lio/appmetrica/analytics/impl/E1;->reportData(ILandroid/os/Bundle;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto :goto_9

    :goto_8
    monitor-exit p2

    throw p0

    :catchall_5
    :cond_7
    :goto_9
    new-instance p0, Lio/appmetrica/analytics/impl/T6;

    invoke-direct {p0, v0, p1}, Lio/appmetrica/analytics/impl/T6;-><init>(Ljava/util/ArrayList;I)V

    return-object p0

    :catchall_6
    move-exception v0

    move-object p0, v0

    invoke-static {v4}, Lio/appmetrica/analytics/impl/xo;->a(Landroid/database/Cursor;)V

    throw p0
.end method
