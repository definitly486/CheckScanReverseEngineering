.class public final Lio/appmetrica/analytics/impl/Ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/networktasks/internal/UnderlyingNetworkTask;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/i5;

.field public final b:Ljava/util/LinkedHashMap;

.field public c:Lio/appmetrica/analytics/impl/y7;

.field public final d:Lio/appmetrica/analytics/impl/Bh;

.field public e:Lio/appmetrica/analytics/impl/If;

.field public final f:Lio/appmetrica/analytics/impl/fh;

.field public final g:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

.field public final h:Lio/appmetrica/analytics/impl/gh;

.field public final i:Lio/appmetrica/analytics/networktasks/internal/FullUrlFormer;

.field public final j:Lio/appmetrica/analytics/impl/Nb;

.field public final k:Lio/appmetrica/analytics/networktasks/internal/RequestDataHolder;

.field public final l:Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;

.field public final m:Lio/appmetrica/analytics/networktasks/internal/SendingDataTaskHelper;

.field public n:I

.field public o:Z


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/i5;Lio/appmetrica/analytics/impl/gh;Lio/appmetrica/analytics/impl/Nb;Lio/appmetrica/analytics/networktasks/internal/FullUrlFormer;Lio/appmetrica/analytics/networktasks/internal/RequestDataHolder;Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;Lio/appmetrica/analytics/networktasks/internal/RequestBodyEncrypter;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/i5;",
            "Lio/appmetrica/analytics/impl/gh;",
            "Lio/appmetrica/analytics/impl/Nb;",
            "Lio/appmetrica/analytics/networktasks/internal/FullUrlFormer<",
            "Lio/appmetrica/analytics/impl/rh;",
            ">;",
            "Lio/appmetrica/analytics/networktasks/internal/RequestDataHolder;",
            "Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;",
            "Lio/appmetrica/analytics/networktasks/internal/RequestBodyEncrypter;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Ah;->b:Ljava/util/LinkedHashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/appmetrica/analytics/impl/Ah;->o:Z

    new-instance v1, Lio/appmetrica/analytics/networktasks/internal/SendingDataTaskHelper;

    new-instance v3, Lio/appmetrica/analytics/coreutils/internal/io/GZIPCompressor;

    invoke-direct {v3}, Lio/appmetrica/analytics/coreutils/internal/io/GZIPCompressor;-><init>()V

    new-instance v6, Lio/appmetrica/analytics/networktasks/internal/DefaultNetworkResponseHandler;

    invoke-direct {v6}, Lio/appmetrica/analytics/networktasks/internal/DefaultNetworkResponseHandler;-><init>()V

    move-object v4, p5

    move-object v5, p6

    move-object v2, p7

    invoke-direct/range {v1 .. v6}, Lio/appmetrica/analytics/networktasks/internal/SendingDataTaskHelper;-><init>(Lio/appmetrica/analytics/networktasks/internal/RequestBodyEncrypter;Lio/appmetrica/analytics/coreapi/internal/io/Compressor;Lio/appmetrica/analytics/networktasks/internal/RequestDataHolder;Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;Lio/appmetrica/analytics/networktasks/internal/NetworkResponseHandler;)V

    iput-object v1, p0, Lio/appmetrica/analytics/impl/Ah;->m:Lio/appmetrica/analytics/networktasks/internal/SendingDataTaskHelper;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/Ah;->h:Lio/appmetrica/analytics/impl/gh;

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Ah;->a:Lio/appmetrica/analytics/impl/i5;

    new-instance p2, Lio/appmetrica/analytics/impl/Bh;

    invoke-direct {p2, p1}, Lio/appmetrica/analytics/impl/Bh;-><init>(Lio/appmetrica/analytics/impl/i5;)V

    iput-object p2, p0, Lio/appmetrica/analytics/impl/Ah;->d:Lio/appmetrica/analytics/impl/Bh;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/i5;->p()Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Ah;->g:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    iput-object p3, p0, Lio/appmetrica/analytics/impl/Ah;->j:Lio/appmetrica/analytics/impl/Nb;

    iput-object v4, p0, Lio/appmetrica/analytics/impl/Ah;->k:Lio/appmetrica/analytics/networktasks/internal/RequestDataHolder;

    iput-object v5, p0, Lio/appmetrica/analytics/impl/Ah;->l:Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;

    iput-object p4, p0, Lio/appmetrica/analytics/impl/Ah;->i:Lio/appmetrica/analytics/networktasks/internal/FullUrlFormer;

    new-instance p3, Lio/appmetrica/analytics/impl/fh;

    new-instance p4, Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTrimmer;

    const p5, 0xfa000

    const-string p6, "event value in ReportTask"

    invoke-direct {p4, p5, p6, p1}, Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTrimmer;-><init>(ILjava/lang/String;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    invoke-static {}, Lio/appmetrica/analytics/impl/B1;->a()Lio/appmetrica/analytics/impl/ek;

    move-result-object p1

    invoke-static {}, Lio/appmetrica/analytics/impl/Fa;->k()Lio/appmetrica/analytics/impl/Fa;

    move-result-object p5

    invoke-virtual {p5}, Lio/appmetrica/analytics/impl/Fa;->C()Lio/appmetrica/analytics/impl/An;

    move-result-object p5

    invoke-direct {p3, p2, p4, p1, p5}, Lio/appmetrica/analytics/impl/fh;-><init>(Lio/appmetrica/analytics/impl/Bh;Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTrimmer;Lio/appmetrica/analytics/impl/ek;Lio/appmetrica/analytics/impl/An;)V

    iput-object p3, p0, Lio/appmetrica/analytics/impl/Ah;->f:Lio/appmetrica/analytics/impl/fh;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lio/appmetrica/analytics/impl/Ah;->d:Lio/appmetrica/analytics/impl/Bh;

    iget-object v2, v0, Lio/appmetrica/analytics/impl/Ah;->e:Lio/appmetrica/analytics/impl/If;

    iget-object v3, v2, Lio/appmetrica/analytics/impl/If;->a:Lio/appmetrica/analytics/impl/v9;

    iget-object v3, v3, Lio/appmetrica/analytics/impl/v9;->a:[Lio/appmetrica/analytics/impl/s9;

    iget-object v2, v2, Lio/appmetrica/analytics/impl/If;->b:Ljava/util/List;

    iget v0, v0, Lio/appmetrica/analytics/impl/Ah;->n:I

    iget-object v4, v1, Lio/appmetrica/analytics/impl/Bh;->c:Lio/appmetrica/analytics/impl/Go;

    monitor-enter v4

    :try_start_0
    const-string v5, "report_request_id"

    iget-object v6, v4, Lio/appmetrica/analytics/impl/Go;->a:Lio/appmetrica/analytics/impl/Ho;

    invoke-virtual {v6}, Lio/appmetrica/analytics/impl/Ho;->a()Lorg/json/JSONObject;

    move-result-object v6

    const/4 v7, -0x1

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v8, v4, Lio/appmetrica/analytics/impl/Go;->a:Lio/appmetrica/analytics/impl/Ho;

    invoke-virtual {v6, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v8, v0}, Lio/appmetrica/analytics/impl/Ho;->a(Lorg/json/JSONObject;)V

    :goto_0
    iget-object v0, v4, Lio/appmetrica/analytics/impl/Go;->a:Lio/appmetrica/analytics/impl/Ho;

    iget-object v5, v0, Lio/appmetrica/analytics/impl/Ho;->a:Lio/appmetrica/analytics/impl/Ko;

    invoke-static {v5}, Lio/appmetrica/analytics/impl/Ho;->a(Lio/appmetrica/analytics/impl/Ko;)V

    iget-object v0, v0, Lio/appmetrica/analytics/impl/Ho;->b:Lio/appmetrica/analytics/impl/Ko;

    invoke-static {v0}, Lio/appmetrica/analytics/impl/Ho;->a(Lio/appmetrica/analytics/impl/Ko;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-exit v4

    new-instance v0, Ljava/util/ArrayList;

    array-length v4, v3

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    move v8, v6

    :goto_1
    const/4 v9, 0x0

    const/4 v10, 0x1

    if-ge v6, v4, :cond_7

    aget-object v11, v3, v6

    add-int/lit8 v12, v8, 0x1

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->longValue()J

    move-result-wide v14

    iget-object v8, v11, Lio/appmetrica/analytics/impl/s9;->b:Lio/appmetrica/analytics/impl/r9;

    iget v8, v8, Lio/appmetrica/analytics/impl/r9;->c:I

    sget-object v13, Lio/appmetrica/analytics/impl/dg;->b:Landroid/util/SparseArray;

    invoke-virtual {v13, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/appmetrica/analytics/impl/ol;

    if-nez v8, :cond_1

    sget-object v8, Lio/appmetrica/analytics/impl/ol;->b:Lio/appmetrica/analytics/impl/ol;

    :cond_1
    iget-object v13, v11, Lio/appmetrica/analytics/impl/s9;->c:[Lio/appmetrica/analytics/impl/q9;

    array-length v7, v13

    if-nez v7, :cond_3

    move/from16 v20, v6

    :cond_2
    move-object/from16 v21, v2

    move-object v7, v3

    goto :goto_3

    :cond_3
    aget-object v7, v13, v5

    move/from16 v20, v6

    iget-wide v5, v7, Lio/appmetrica/analytics/impl/q9;->a:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    new-instance v6, Ly74;

    array-length v7, v13

    sub-int/2addr v7, v10

    invoke-direct {v6, v10, v7, v10}, Lw74;-><init>(III)V

    invoke-virtual {v6}, Lw74;->b()Lx74;

    move-result-object v6

    move-object v9, v5

    :goto_2
    iget-boolean v5, v6, Lx74;->d:Z

    if-eqz v5, :cond_2

    invoke-virtual {v6}, Lx74;->nextInt()I

    move-result v5

    aget-object v5, v13, v5

    move-object/from16 v21, v2

    move-object v7, v3

    iget-wide v2, v5, Lio/appmetrica/analytics/impl/q9;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/Long;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_4

    move-object v9, v2

    :cond_4
    move-object v3, v7

    move-object/from16 v2, v21

    goto :goto_2

    :goto_3
    if-eqz v9, :cond_5

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_4
    move-wide/from16 v17, v2

    goto :goto_5

    :cond_5
    const-wide/16 v2, 0x0

    goto :goto_4

    :goto_5
    iget-object v2, v11, Lio/appmetrica/analytics/impl/s9;->c:[Lio/appmetrica/analytics/impl/q9;

    if-eqz v2, :cond_6

    array-length v3, v2

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v3, :cond_6

    aget-object v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_6
    new-instance v13, Lio/appmetrica/analytics/impl/Yk;

    iget v2, v8, Lio/appmetrica/analytics/impl/ol;->a:I

    move/from16 v19, p1

    move/from16 v16, v2

    invoke-direct/range {v13 .. v19}, Lio/appmetrica/analytics/impl/Yk;-><init>(JIJZ)V

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v20, 0x1

    move-object v3, v7

    move v8, v12

    move-object/from16 v2, v21

    const/4 v5, 0x0

    const/4 v7, -0x1

    goto/16 :goto_1

    :cond_7
    iget-object v2, v1, Lio/appmetrica/analytics/impl/Bh;->a:Lio/appmetrica/analytics/impl/Y6;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/Bh;->b:Lio/appmetrica/analytics/impl/jl;

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/jl;->a()J

    move-result-wide v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "session_id"

    const-string v7, "session_type"

    const-string v8, "number_in_session"

    filled-new-array {v6, v7, v8}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "%1$s = ? AND %2$s = ? AND %3$s <= ?"

    invoke-static {v5, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v2, Lio/appmetrica/analytics/impl/Y6;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_1
    iget-object v6, v2, Lio/appmetrica/analytics/impl/Y6;->c:Lio/appmetrica/analytics/impl/l7;

    invoke-virtual {v6}, Lio/appmetrica/analytics/impl/l7;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    if-eqz v6, :cond_a

    sget-object v7, Lio/appmetrica/analytics/impl/H5;->a:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v2}, Lio/appmetrica/analytics/impl/Y6;->c()V

    :cond_8
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/appmetrica/analytics/impl/Yk;

    invoke-virtual {v2, v6, v5, v7}, Lio/appmetrica/analytics/impl/Y6;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lio/appmetrica/analytics/impl/Yk;)Lio/appmetrica/analytics/impl/T6;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :catchall_0
    move-exception v0

    goto :goto_8

    :cond_9
    const-string v0, "sessions"

    sget-object v5, Lio/appmetrica/analytics/impl/F5;->c:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_9

    :goto_8
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    :cond_a
    :goto_9
    iget-object v0, v2, Lio/appmetrica/analytics/impl/Y6;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/appmetrica/analytics/impl/T6;

    iget-object v4, v3, Lio/appmetrica/analytics/impl/T6;->a:Ljava/util/List;

    if-eqz v4, :cond_f

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, v3, Lio/appmetrica/analytics/impl/T6;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    const-string v7, "type"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_b
    iget-object v5, v2, Lio/appmetrica/analytics/impl/Y6;->g:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/appmetrica/analytics/impl/e9;

    invoke-interface {v6, v4}, Lio/appmetrica/analytics/impl/e9;->b(Ljava/util/List;)V

    goto :goto_c

    :cond_c
    iget-object v4, v3, Lio/appmetrica/analytics/impl/T6;->a:Ljava/util/List;

    const-string v5, "Event removed from db"

    const/4 v6, 0x0

    :goto_d
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_f

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentValues;

    const-string v8, "type"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    if-eqz v8, :cond_d

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto :goto_e

    :cond_d
    const/4 v8, -0x1

    :goto_e
    sget-object v11, Lio/appmetrica/analytics/impl/I9;->d:Ljava/util/EnumSet;

    invoke-static {v8}, Lio/appmetrica/analytics/impl/pb;->a(I)Lio/appmetrica/analytics/impl/pb;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    new-instance v8, Lio/appmetrica/analytics/impl/s7;

    invoke-direct {v8, v9, v10, v9}, Lio/appmetrica/analytics/impl/s7;-><init>(Lio/appmetrica/analytics/impl/p7;ILjh2;)V

    invoke-virtual {v8, v7}, Lio/appmetrica/analytics/impl/s7;->a(Landroid/content/ContentValues;)Lio/appmetrica/analytics/impl/r7;

    move-result-object v7

    iget-object v8, v2, Lio/appmetrica/analytics/impl/Y6;->e:Lio/appmetrica/analytics/impl/i5;

    iget-object v8, v8, Lio/appmetrica/analytics/impl/i5;->m:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    iget-object v11, v7, Lio/appmetrica/analytics/impl/r7;->d:Lio/appmetrica/analytics/impl/pb;

    iget-object v7, v7, Lio/appmetrica/analytics/impl/r7;->g:Lio/appmetrica/analytics/impl/q7;

    iget-object v12, v7, Lio/appmetrica/analytics/impl/q7;->b:Ljava/lang/String;

    iget-object v7, v7, Lio/appmetrica/analytics/impl/q7;->c:Ljava/lang/String;

    invoke-static {v5, v11, v12, v7}, Lio/appmetrica/analytics/impl/eg;->a(Ljava/lang/String;Lio/appmetrica/analytics/impl/pb;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x0

    new-array v12, v11, [Ljava/lang/Object;

    invoke-virtual {v8, v7, v12}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_f

    :cond_e
    const/4 v11, 0x0

    :goto_f
    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_f
    const/4 v11, 0x0

    iget v3, v3, Lio/appmetrica/analytics/impl/T6;->b:I

    add-int/2addr v1, v3

    goto/16 :goto_a

    :cond_10
    iget-object v0, v2, Lio/appmetrica/analytics/impl/Y6;->f:Ljava/util/concurrent/atomic/AtomicLong;

    neg-int v1, v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    return-void

    :catchall_2
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method public final description()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ReportTask_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Ah;->a:Lio/appmetrica/analytics/impl/i5;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/i5;->b:Lio/appmetrica/analytics/impl/b5;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/b5;->b:Ljava/lang/String;

    invoke-static {p0}, Lio/appmetrica/analytics/coreutils/internal/ApiKeyUtils;->createPartialApiKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getFullUrlFormer()Lio/appmetrica/analytics/networktasks/internal/FullUrlFormer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/appmetrica/analytics/networktasks/internal/FullUrlFormer<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Ah;->i:Lio/appmetrica/analytics/networktasks/internal/FullUrlFormer;

    return-object p0
.end method

.method public final getRequestDataHolder()Lio/appmetrica/analytics/networktasks/internal/RequestDataHolder;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Ah;->k:Lio/appmetrica/analytics/networktasks/internal/RequestDataHolder;

    return-object p0
.end method

.method public final getResponseDataHolder()Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Ah;->l:Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;

    return-object p0
.end method

.method public final getRetryPolicyConfig()Lio/appmetrica/analytics/networktasks/internal/RetryPolicyConfig;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Ah;->a:Lio/appmetrica/analytics/impl/i5;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/i5;->k:Lio/appmetrica/analytics/impl/Tg;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/z5;->a()Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/rh;

    invoke-virtual {p0}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getRetryPolicyConfig()Lio/appmetrica/analytics/networktasks/internal/RetryPolicyConfig;

    move-result-object p0

    return-object p0
.end method

.method public final getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 0

    sget-object p0, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Fa;->z()Lio/appmetrica/analytics/impl/Y2;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/Ql;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method public final onCreateTask()Z
    .locals 30

    move-object/from16 v1, p0

    iget-object v0, v1, Lio/appmetrica/analytics/impl/Ah;->d:Lio/appmetrica/analytics/impl/Bh;

    iget-object v2, v0, Lio/appmetrica/analytics/impl/Bh;->a:Lio/appmetrica/analytics/impl/Y6;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v2, Lio/appmetrica/analytics/impl/Y6;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, v2, Lio/appmetrica/analytics/impl/Y6;->c:Lio/appmetrica/analytics/impl/l7;

    invoke-virtual {v4}, Lio/appmetrica/analytics/impl/l7;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    if-eqz v4, :cond_0

    sget-object v5, Lio/appmetrica/analytics/impl/F5;->b:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v4, v5}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :cond_0
    move-object v4, v3

    :cond_1
    invoke-static {v4}, Lio/appmetrica/analytics/impl/xo;->a(Landroid/database/Cursor;)V

    iget-object v2, v2, Lio/appmetrica/analytics/impl/Y6;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :catchall_0
    move-object v4, v3

    :catchall_1
    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_f

    invoke-static {v4}, Lio/appmetrica/analytics/impl/xo;->a(Landroid/database/Cursor;)V

    iget-object v2, v2, Lio/appmetrica/analytics/impl/Y6;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_1
    invoke-static {v0}, Lqn1;->V(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const/4 v2, 0x0

    if-nez v0, :cond_2

    return v2

    :cond_2
    iget-object v4, v1, Lio/appmetrica/analytics/impl/Ah;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->clear()V

    invoke-virtual {v0}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    iget-object v6, v1, Lio/appmetrica/analytics/impl/Ah;->b:Ljava/util/LinkedHashMap;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    const-string v4, "report_request_parameters"

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    :try_start_3
    new-instance v4, Lio/appmetrica/analytics/impl/tb;

    invoke-direct {v4, v0}, Lio/appmetrica/analytics/impl/tb;-><init>(Ljava/lang/String;)V

    new-instance v0, Lio/appmetrica/analytics/impl/y7;

    invoke-direct {v0, v4}, Lio/appmetrica/analytics/impl/y7;-><init>(Lio/appmetrica/analytics/impl/tb;)V

    iput-object v0, v1, Lio/appmetrica/analytics/impl/Ah;->c:Lio/appmetrica/analytics/impl/y7;

    iget-object v4, v1, Lio/appmetrica/analytics/impl/Ah;->h:Lio/appmetrica/analytics/impl/gh;

    iput-object v0, v4, Lio/appmetrica/analytics/impl/gh;->c:Lio/appmetrica/analytics/impl/y7;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_2
    new-instance v0, Lio/appmetrica/analytics/impl/y7;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/y7;-><init>()V

    iput-object v0, v1, Lio/appmetrica/analytics/impl/Ah;->c:Lio/appmetrica/analytics/impl/y7;

    iget-object v4, v1, Lio/appmetrica/analytics/impl/Ah;->h:Lio/appmetrica/analytics/impl/gh;

    iput-object v0, v4, Lio/appmetrica/analytics/impl/gh;->c:Lio/appmetrica/analytics/impl/y7;

    goto :goto_3

    :cond_4
    new-instance v0, Lio/appmetrica/analytics/impl/y7;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/y7;-><init>()V

    iput-object v0, v1, Lio/appmetrica/analytics/impl/Ah;->c:Lio/appmetrica/analytics/impl/y7;

    iget-object v4, v1, Lio/appmetrica/analytics/impl/Ah;->h:Lio/appmetrica/analytics/impl/gh;

    iput-object v0, v4, Lio/appmetrica/analytics/impl/gh;->c:Lio/appmetrica/analytics/impl/y7;

    :goto_3
    iget-object v0, v1, Lio/appmetrica/analytics/impl/Ah;->j:Lio/appmetrica/analytics/impl/Nb;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Nb;->a()Lio/appmetrica/analytics/impl/rh;

    move-result-object v9

    iget-object v12, v9, Lio/appmetrica/analytics/impl/rh;->w:Ljava/util/List;

    invoke-static {v12}, Lio/appmetrica/analytics/impl/xo;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v2

    :cond_5
    iget-object v0, v1, Lio/appmetrica/analytics/impl/Ah;->i:Lio/appmetrica/analytics/networktasks/internal/FullUrlFormer;

    iget-object v4, v9, Lio/appmetrica/analytics/impl/rh;->q:Ljava/util/List;

    invoke-virtual {v0, v4}, Lio/appmetrica/analytics/networktasks/internal/FullUrlFormer;->setHosts(Ljava/util/List;)V

    invoke-virtual {v9}, Lio/appmetrica/analytics/impl/rh;->v()Z

    move-result v0

    const/4 v13, 0x1

    if-eqz v0, :cond_6

    iget-object v0, v1, Lio/appmetrica/analytics/impl/Ah;->i:Lio/appmetrica/analytics/networktasks/internal/FullUrlFormer;

    invoke-virtual {v0}, Lio/appmetrica/analytics/networktasks/internal/FullUrlFormer;->getAllHosts()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lio/appmetrica/analytics/impl/xo;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    move v2, v13

    goto/16 :goto_20

    :cond_7
    iget-object v0, v1, Lio/appmetrica/analytics/impl/Ah;->c:Lio/appmetrica/analytics/impl/y7;

    if-eqz v0, :cond_8

    :goto_4
    move-object v14, v0

    goto :goto_5

    :cond_8
    new-instance v0, Lio/appmetrica/analytics/impl/y7;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/y7;-><init>()V

    goto :goto_4

    :goto_5
    iget-object v15, v1, Lio/appmetrica/analytics/impl/Ah;->f:Lio/appmetrica/analytics/impl/fh;

    iget-object v0, v1, Lio/appmetrica/analytics/impl/Ah;->b:Ljava/util/LinkedHashMap;

    iget-object v4, v15, Lio/appmetrica/analytics/impl/fh;->b:Lio/appmetrica/analytics/impl/zh;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x2

    const/16 v7, 0x64

    :try_start_4
    iget-object v8, v4, Lio/appmetrica/analytics/impl/zh;->a:Lio/appmetrica/analytics/impl/Bh;

    invoke-virtual {v8, v0}, Lio/appmetrica/analytics/impl/Bh;->a(Ljava/util/LinkedHashMap;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    move v8, v2

    :goto_6
    :try_start_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lio/appmetrica/analytics/impl/F7;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v11, v7, :cond_e

    iget-object v11, v10, Lio/appmetrica/analytics/impl/F7;->a:Ljava/lang/Long;

    if-nez v11, :cond_9

    goto :goto_6

    :cond_9
    iget-object v3, v10, Lio/appmetrica/analytics/impl/F7;->d:Lio/appmetrica/analytics/impl/E7;

    iget-object v2, v3, Lio/appmetrica/analytics/impl/E7;->a:Ljava/lang/Long;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    move/from16 v17, v7

    :try_start_6
    iget-object v7, v3, Lio/appmetrica/analytics/impl/E7;->b:Ljava/lang/Long;

    iget-object v3, v3, Lio/appmetrica/analytics/impl/E7;->c:Ljava/lang/Boolean;

    invoke-static {v2, v7, v3}, Lio/appmetrica/analytics/impl/dg;->a(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lio/appmetrica/analytics/impl/u9;

    move-result-object v2

    invoke-virtual {v9}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getLocale()Ljava/lang/String;

    move-result-object v3

    iget-object v7, v10, Lio/appmetrica/analytics/impl/F7;->b:Lio/appmetrica/analytics/impl/ol;

    new-instance v10, Lio/appmetrica/analytics/impl/r9;

    invoke-direct {v10}, Lio/appmetrica/analytics/impl/r9;-><init>()V

    iput-object v2, v10, Lio/appmetrica/analytics/impl/r9;->a:Lio/appmetrica/analytics/impl/u9;

    iput-object v3, v10, Lio/appmetrica/analytics/impl/r9;->b:Ljava/lang/String;

    if-eqz v7, :cond_b

    sget-object v2, Lio/appmetrica/analytics/impl/dg;->a:Ljava/util/Map;

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_7

    :catchall_3
    move-exception v0

    move/from16 v18, v6

    goto :goto_8

    :cond_a
    const/4 v2, 0x0

    :goto_7
    iput v2, v10, Lio/appmetrica/analytics/impl/r9;->c:I

    :cond_b
    const-wide v2, 0x7fffffffffffffffL

    invoke-static {v13, v2, v3}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v2

    add-int/2addr v8, v2

    invoke-static {v6, v10}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v8, v2

    const v2, 0x3d400

    if-ge v8, v2, :cond_d

    iget v2, v10, Lio/appmetrica/analytics/impl/r9;->c:I

    sget-object v3, Lio/appmetrica/analytics/impl/dg;->b:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/appmetrica/analytics/impl/ol;

    if-nez v2, :cond_c

    sget-object v2, Lio/appmetrica/analytics/impl/ol;->b:Lio/appmetrica/analytics/impl/ol;

    :cond_c
    new-instance v3, Lio/appmetrica/analytics/impl/yh;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move/from16 v18, v6

    :try_start_7
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget v2, v2, Lio/appmetrica/analytics/impl/ol;->a:I

    invoke-direct {v3, v6, v7, v10, v2}, Lio/appmetrica/analytics/impl/yh;-><init>(JLio/appmetrica/analytics/impl/r9;I)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    move/from16 v7, v17

    move/from16 v6, v18

    const/4 v2, 0x0

    const/4 v3, 0x0

    goto/16 :goto_6

    :catchall_4
    move-exception v0

    goto :goto_8

    :cond_d
    move/from16 v18, v6

    goto :goto_9

    :catchall_5
    move-exception v0

    move/from16 v18, v6

    move/from16 v17, v7

    goto :goto_8

    :cond_e
    move/from16 v18, v6

    move/from16 v17, v7

    goto :goto_9

    :catchall_6
    move-exception v0

    move/from16 v18, v6

    move/from16 v17, v7

    const/4 v8, 0x0

    :goto_8
    iget-object v2, v4, Lio/appmetrica/analytics/impl/zh;->b:Lio/appmetrica/analytics/impl/bb;

    const-string v3, "protobuf_serialization_error"

    invoke-interface {v2, v3, v0}, Lio/appmetrica/analytics/IReporter;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_9
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast v5, Ljava/util/List;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v2

    const/16 v0, 0xa

    invoke-static {v5, v0}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-static {v0}, Lm05;->b(I)I

    move-result v0

    const/16 v3, 0x10

    if-ge v0, v3, :cond_f

    move v0, v3

    :cond_f
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/appmetrica/analytics/impl/yh;

    iget-wide v7, v6, Lio/appmetrica/analytics/impl/yh;->a:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget v6, v6, Lio/appmetrica/analytics/impl/yh;->c:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_10
    iget-object v0, v4, Lio/appmetrica/analytics/impl/zh;->a:Lio/appmetrica/analytics/impl/Bh;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/Bh;->a:Lio/appmetrica/analytics/impl/Y6;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_11

    const/4 v3, 0x0

    goto/16 :goto_d

    :cond_11
    iget-object v6, v0, Lio/appmetrica/analytics/impl/Y6;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_8
    iget-object v6, v0, Lio/appmetrica/analytics/impl/Y6;->c:Lio/appmetrica/analytics/impl/l7;

    invoke-virtual {v6}, Lio/appmetrica/analytics/impl/l7;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v19

    if-eqz v19, :cond_14

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v8, 0x0

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_13

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    if-lez v8, :cond_12

    const-string v11, " OR "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    const-string v11, "("

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "session_id"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " = ? AND "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "session_type"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " = ?)"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit8 v11, v8, 0x2

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Long;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v7, v11

    add-int/lit8 v11, v11, 0x1

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v11

    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    :cond_13
    const-string v20, "events"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const-string v26, "session_id ASC, number_in_session ASC"

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v27

    const/16 v21, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v23, v7

    invoke-virtual/range {v19 .. v27}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    goto :goto_c

    :catchall_7
    :cond_14
    const/4 v3, 0x0

    :goto_c
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Y6;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_d
    if-nez v3, :cond_15

    sget-object v0, Lmx2;->b:Lmx2;

    move-object v3, v0

    goto :goto_12

    :cond_15
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    :goto_e
    :try_start_9
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_17

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v3, v0}, Lio/appmetrica/analytics/coreutils/internal/db/DBUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    const-string v7, "session_id"

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_16

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    :catchall_8
    move-exception v0

    move-object v7, v0

    goto :goto_10

    :cond_16
    :goto_f
    check-cast v8, Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_17
    sget-object v0, Lj59;->a:Lj59;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    :try_start_a
    invoke-interface {v3}, Ljava/io/Closeable;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    goto :goto_11

    :goto_10
    :try_start_b
    throw v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    :catchall_9
    move-exception v0

    :try_start_c
    invoke-static {v3, v7}, Lm96;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_a

    :catchall_a
    :goto_11
    move-object v3, v6

    :goto_12
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    move v5, v2

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v2, v0

    :goto_13
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move/from16 v19, v13

    move-object v13, v0

    check-cast v13, Lio/appmetrica/analytics/impl/yh;

    move-object/from16 v20, v2

    move/from16 v2, v17

    if-ge v8, v2, :cond_1f

    move-object v2, v4

    iget-object v4, v2, Lio/appmetrica/analytics/impl/zh;->c:Lio/appmetrica/analytics/impl/ll;

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    iget-wide v6, v13, Lio/appmetrica/analytics/impl/yh;->a:J

    move-wide/from16 v23, v6

    iget-object v7, v13, Lio/appmetrica/analytics/impl/yh;->b:Lio/appmetrica/analytics/impl/r9;

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_18

    sget-object v0, Lkx2;->b:Lkx2;

    :cond_18
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v6

    move-object/from16 v25, v11

    new-instance v11, Lio/appmetrica/analytics/impl/Yg;

    invoke-direct {v11, v5, v8, v10}, Lio/appmetrica/analytics/impl/Yg;-><init>(IILjava/lang/Integer;)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v17, v8

    move-object/from16 v1, v22

    move-object v8, v0

    move/from16 v22, v5

    move-wide/from16 v28, v23

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v3, v21

    move-object/from16 v2, v25

    const/16 v25, 0x64

    move-object/from16 v21, v10

    move v10, v6

    move-wide/from16 v5, v28

    :try_start_d
    invoke-virtual/range {v4 .. v11}, Lio/appmetrica/analytics/impl/ll;->a(JLio/appmetrica/analytics/impl/r9;Ljava/util/List;Lio/appmetrica/analytics/impl/rh;ILio/appmetrica/analytics/impl/Yg;)Lio/appmetrica/analytics/impl/Ni;

    move-result-object v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_b

    goto :goto_14

    :catchall_b
    move-exception v0

    iget-object v4, v4, Lio/appmetrica/analytics/impl/ll;->b:Lio/appmetrica/analytics/impl/bb;

    const-string v5, "protobuf_serialization_error"

    invoke-interface {v4, v5, v0}, Lio/appmetrica/analytics/IReporter;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_14
    if-nez v0, :cond_19

    move-object v7, v1

    move-object v11, v2

    move-object v6, v3

    move/from16 v8, v17

    move/from16 v13, v19

    move-object/from16 v2, v20

    move-object/from16 v10, v21

    move/from16 v5, v22

    :goto_15
    move-object/from16 v4, v23

    move-object/from16 v3, v24

    move/from16 v17, v25

    move-object/from16 v1, p0

    goto :goto_13

    :cond_19
    iget v5, v0, Lio/appmetrica/analytics/impl/Ni;->d:I

    iget v8, v0, Lio/appmetrica/analytics/impl/Ni;->e:I

    iget-object v10, v0, Lio/appmetrica/analytics/impl/Ni;->f:Ljava/lang/Integer;

    if-eqz v2, :cond_1a

    iget-object v4, v0, Lio/appmetrica/analytics/impl/Ni;->b:Lio/appmetrica/analytics/impl/l0;

    invoke-virtual {v2, v4}, Lio/appmetrica/analytics/impl/l0;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    :cond_1a
    iget-object v11, v0, Lio/appmetrica/analytics/impl/Ni;->b:Lio/appmetrica/analytics/impl/l0;

    iget-wide v6, v13, Lio/appmetrica/analytics/impl/yh;->a:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lio/appmetrica/analytics/impl/Ni;->a:Lio/appmetrica/analytics/impl/s9;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lio/appmetrica/analytics/impl/Ni;->b:Lio/appmetrica/analytics/impl/l0;

    if-eqz v2, :cond_1b

    iget-object v2, v2, Lio/appmetrica/analytics/impl/l0;->a:Ljava/lang/String;

    goto :goto_16

    :cond_1b
    const/4 v2, 0x0

    :goto_16
    if-eqz v2, :cond_1d

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1c

    goto :goto_17

    :cond_1c
    :try_start_e
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_c

    move-object v2, v4

    goto :goto_18

    :catchall_c
    :cond_1d
    :goto_17
    move-object/from16 v2, v20

    :goto_18
    iget-boolean v0, v0, Lio/appmetrica/analytics/impl/Ni;->c:Z

    if-eqz v0, :cond_1e

    goto :goto_1a

    :cond_1e
    move-object v7, v1

    move-object v6, v3

    move/from16 v13, v19

    goto :goto_15

    :cond_1f
    move-object v3, v6

    move-object v1, v7

    goto :goto_19

    :cond_20
    move-object/from16 v20, v2

    move-object v3, v6

    move-object v1, v7

    move/from16 v19, v13

    :cond_21
    :goto_19
    move-object/from16 v2, v20

    :goto_1a
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v3, 0x0

    :goto_1b
    move-object/from16 v1, p0

    goto/16 :goto_1f

    :cond_22
    iget-object v0, v15, Lio/appmetrica/analytics/impl/fh;->c:Lio/appmetrica/analytics/impl/eh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lio/appmetrica/analytics/impl/v9;

    invoke-direct {v4}, Lio/appmetrica/analytics/impl/v9;-><init>()V

    new-instance v5, Lio/appmetrica/analytics/impl/n9;

    invoke-direct {v5}, Lio/appmetrica/analytics/impl/n9;-><init>()V

    iget-object v6, v14, Lio/appmetrica/analytics/impl/y7;->b:Ljava/lang/String;

    invoke-virtual {v9}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getUuid()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->getOrDefaultIfEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lio/appmetrica/analytics/impl/n9;->a:Ljava/lang/String;

    iget-object v6, v14, Lio/appmetrica/analytics/impl/y7;->a:Ljava/lang/String;

    invoke-virtual {v9}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->getOrDefaultIfEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lio/appmetrica/analytics/impl/n9;->b:Ljava/lang/String;

    iput-object v5, v4, Lio/appmetrica/analytics/impl/v9;->b:Lio/appmetrica/analytics/impl/n9;

    iget-object v5, v0, Lio/appmetrica/analytics/impl/eh;->a:Lio/appmetrica/analytics/impl/An;

    new-instance v0, Lio/appmetrica/analytics/impl/dh;

    invoke-direct {v0, v4}, Lio/appmetrica/analytics/impl/dh;-><init>(Lio/appmetrica/analytics/impl/v9;)V

    monitor-enter v5

    :try_start_f
    iget-object v6, v5, Lio/appmetrica/analytics/impl/An;->a:Lio/appmetrica/analytics/impl/Cn;

    invoke-interface {v6, v0}, Lio/appmetrica/analytics/impl/Cn;->a(Lio/appmetrica/analytics/impl/Bn;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_e

    monitor-exit v5

    const/4 v5, 0x0

    new-array v0, v5, [Lio/appmetrica/analytics/impl/s9;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/appmetrica/analytics/impl/s9;

    iput-object v0, v4, Lio/appmetrica/analytics/impl/v9;->a:[Lio/appmetrica/analytics/impl/s9;

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-gtz v0, :cond_23

    const/4 v3, 0x0

    const/4 v5, 0x0

    goto :goto_1d

    :cond_23
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    :catchall_d
    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    :try_start_10
    new-instance v6, Lio/appmetrica/analytics/impl/k9;

    invoke-direct {v6}, Lio/appmetrica/analytics/impl/k9;-><init>()V

    iput-object v5, v6, Lio/appmetrica/analytics/impl/k9;->a:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Lio/appmetrica/analytics/impl/k9;->b:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_d

    goto :goto_1c

    :cond_24
    const/4 v5, 0x0

    new-array v0, v5, [Lio/appmetrica/analytics/impl/k9;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [Lio/appmetrica/analytics/impl/k9;

    :goto_1d
    iput-object v3, v4, Lio/appmetrica/analytics/impl/v9;->c:[Lio/appmetrica/analytics/impl/k9;

    new-array v0, v5, [Ljava/lang/String;

    invoke-interface {v12, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, v4, Lio/appmetrica/analytics/impl/v9;->e:[Ljava/lang/String;

    iget-object v0, v9, Lio/appmetrica/analytics/impl/rh;->x:Ljava/util/Set;

    new-array v2, v5, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    array-length v2, v0

    new-array v3, v2, [[B

    const/4 v5, 0x0

    :goto_1e
    if-ge v5, v2, :cond_25

    aget-object v6, v0, v5

    invoke-static {v6}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->getUTF8Bytes(Ljava/lang/String;)[B

    move-result-object v6

    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    :cond_25
    iput-object v3, v4, Lio/appmetrica/analytics/impl/v9;->f:[[B

    iget-object v0, v15, Lio/appmetrica/analytics/impl/fh;->a:Lio/appmetrica/analytics/impl/Bh;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Bh;->a()I

    move-result v0

    new-instance v3, Lio/appmetrica/analytics/impl/If;

    invoke-direct {v3, v4, v1, v0}, Lio/appmetrica/analytics/impl/If;-><init>(Lio/appmetrica/analytics/impl/v9;Ljava/util/ArrayList;I)V

    goto/16 :goto_1b

    :goto_1f
    iput-object v3, v1, Lio/appmetrica/analytics/impl/Ah;->e:Lio/appmetrica/analytics/impl/If;

    if-nez v3, :cond_26

    const/16 v16, 0x0

    return v16

    :cond_26
    iget v0, v3, Lio/appmetrica/analytics/impl/If;->c:I

    iput v0, v1, Lio/appmetrica/analytics/impl/Ah;->n:I

    iget-object v2, v1, Lio/appmetrica/analytics/impl/Ah;->h:Lio/appmetrica/analytics/impl/gh;

    int-to-long v4, v0

    iput-wide v4, v2, Lio/appmetrica/analytics/impl/gh;->e:J

    iget-object v0, v1, Lio/appmetrica/analytics/impl/Ah;->m:Lio/appmetrica/analytics/networktasks/internal/SendingDataTaskHelper;

    iget-object v1, v3, Lio/appmetrica/analytics/impl/If;->a:Lio/appmetrica/analytics/impl/v9;

    invoke-static {v1}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->toByteArray(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/networktasks/internal/SendingDataTaskHelper;->prepareAndSetPostData([B)Z

    return v19

    :catchall_e
    move-exception v0

    monitor-exit v5

    throw v0

    :goto_20
    iput-boolean v2, v1, Lio/appmetrica/analytics/impl/Ah;->o:Z

    const/16 v16, 0x0

    return v16

    :catchall_f
    move-exception v0

    invoke-static {v4}, Lio/appmetrica/analytics/impl/xo;->a(Landroid/database/Cursor;)V

    iget-object v1, v2, Lio/appmetrica/analytics/impl/Y6;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final onPerformRequest()V
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Ah;->m:Lio/appmetrica/analytics/networktasks/internal/SendingDataTaskHelper;

    invoke-virtual {p0}, Lio/appmetrica/analytics/networktasks/internal/SendingDataTaskHelper;->onPerformRequest()V

    return-void
.end method

.method public final onPostRequestComplete(Z)V
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/Ah;->a(Z)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Ah;->l:Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;

    invoke-virtual {v1}, Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;->getResponseCode()I

    move-result v1

    const/16 v2, 0x190

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lio/appmetrica/analytics/impl/Ah;->a(Z)V

    :cond_1
    :goto_0
    if-eqz p1, :cond_4

    iget-object p1, p0, Lio/appmetrica/analytics/impl/Ah;->e:Lio/appmetrica/analytics/impl/If;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/If;->a:Lio/appmetrica/analytics/impl/v9;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/v9;->a:[Lio/appmetrica/analytics/impl/s9;

    array-length v1, p1

    move v2, v0

    :goto_1
    if-ge v2, v1, :cond_4

    aget-object v3, p1, v2

    iget-object v3, v3, Lio/appmetrica/analytics/impl/s9;->c:[Lio/appmetrica/analytics/impl/q9;

    array-length v4, v3

    move v5, v0

    :goto_2
    if-ge v5, v4, :cond_3

    aget-object v6, v3, v5

    if-eqz v6, :cond_2

    invoke-static {v6}, Lio/appmetrica/analytics/impl/eg;->a(Lio/appmetrica/analytics/impl/q9;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v7, p0, Lio/appmetrica/analytics/impl/Ah;->g:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    new-array v8, v0, [Ljava/lang/Object;

    invoke-virtual {v7, v6, v8}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final onRequestComplete()Z
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Ah;->m:Lio/appmetrica/analytics/networktasks/internal/SendingDataTaskHelper;

    invoke-virtual {p0}, Lio/appmetrica/analytics/networktasks/internal/SendingDataTaskHelper;->isResponseValid()Z

    move-result p0

    return p0
.end method

.method public final onRequestError(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final onShouldNotExecute()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/appmetrica/analytics/impl/Ah;->o:Z

    return-void
.end method

.method public final onSuccessfulTaskFinished()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/appmetrica/analytics/impl/Ah;->o:Z

    return-void
.end method

.method public final onTaskAdded()V
    .locals 1

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Ah;->a:Lio/appmetrica/analytics/impl/i5;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/i5;->p:Lio/appmetrica/analytics/impl/C9;

    check-cast p0, Lio/appmetrica/analytics/impl/v5;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/v5;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final onTaskFinished()V
    .locals 0

    return-void
.end method

.method public final onTaskRemoved()V
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ah;->a:Lio/appmetrica/analytics/impl/i5;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/i5;->p:Lio/appmetrica/analytics/impl/C9;

    check-cast v0, Lio/appmetrica/analytics/impl/v5;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/v5;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-boolean v0, p0, Lio/appmetrica/analytics/impl/Ah;->o:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Ah;->a:Lio/appmetrica/analytics/impl/i5;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/i5;->p:Lio/appmetrica/analytics/impl/C9;

    check-cast p0, Lio/appmetrica/analytics/impl/v5;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/v5;->f()V

    :cond_0
    return-void
.end method

.method public final onUnsuccessfulTaskFinished()V
    .locals 0

    return-void
.end method
