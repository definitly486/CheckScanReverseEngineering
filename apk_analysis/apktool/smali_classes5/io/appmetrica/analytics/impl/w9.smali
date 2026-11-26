.class public final Lio/appmetrica/analytics/impl/w9;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/jf;

.field public final b:Lio/appmetrica/analytics/impl/Go;

.field public final c:Lio/appmetrica/analytics/impl/jl;

.field public final d:Lio/appmetrica/analytics/impl/Y6;

.field public final e:Lio/appmetrica/analytics/impl/T8;

.field public final f:Lio/appmetrica/analytics/impl/al;

.field public final g:Lio/appmetrica/analytics/impl/m0;

.field public final h:Lio/appmetrica/analytics/impl/k5;

.field public final i:Lio/appmetrica/analytics/coreutils/internal/time/TimeProvider;

.field public final j:I

.field public k:J

.field public l:I


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/jf;Lio/appmetrica/analytics/impl/Go;Lio/appmetrica/analytics/impl/jl;Lio/appmetrica/analytics/impl/Y6;Lio/appmetrica/analytics/impl/m0;Lio/appmetrica/analytics/impl/T8;Lio/appmetrica/analytics/impl/al;ILio/appmetrica/analytics/impl/k5;Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/w9;->a:Lio/appmetrica/analytics/impl/jf;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/w9;->b:Lio/appmetrica/analytics/impl/Go;

    iput-object p3, p0, Lio/appmetrica/analytics/impl/w9;->c:Lio/appmetrica/analytics/impl/jl;

    iput-object p4, p0, Lio/appmetrica/analytics/impl/w9;->d:Lio/appmetrica/analytics/impl/Y6;

    iput-object p5, p0, Lio/appmetrica/analytics/impl/w9;->g:Lio/appmetrica/analytics/impl/m0;

    iput-object p6, p0, Lio/appmetrica/analytics/impl/w9;->e:Lio/appmetrica/analytics/impl/T8;

    iput-object p7, p0, Lio/appmetrica/analytics/impl/w9;->f:Lio/appmetrica/analytics/impl/al;

    iput p8, p0, Lio/appmetrica/analytics/impl/w9;->j:I

    iput-object p10, p0, Lio/appmetrica/analytics/impl/w9;->i:Lio/appmetrica/analytics/coreutils/internal/time/TimeProvider;

    iput-object p9, p0, Lio/appmetrica/analytics/impl/w9;->h:Lio/appmetrica/analytics/impl/k5;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/jf;->i()J

    move-result-wide p2

    iput-wide p2, p0, Lio/appmetrica/analytics/impl/w9;->k:J

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/jf;->h()I

    move-result p1

    iput p1, p0, Lio/appmetrica/analytics/impl/w9;->l:I

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/ml;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lio/appmetrica/analytics/impl/a6;->p:Ljava/util/Map;

    iget-object v3, v0, Lio/appmetrica/analytics/impl/w9;->f:Lio/appmetrica/analytics/impl/al;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Ljava/util/HashMap;

    iget-object v3, v3, Lio/appmetrica/analytics/impl/al;->b:Ljava/util/Map;

    invoke-direct {v4, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-interface {v2, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object v2, v0, Lio/appmetrica/analytics/impl/w9;->a:Lio/appmetrica/analytics/impl/jf;

    invoke-virtual {v2}, Lio/appmetrica/analytics/impl/jf;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/impl/a6;->c(Ljava/lang/String;)V

    iget-object v2, v0, Lio/appmetrica/analytics/impl/w9;->b:Lio/appmetrica/analytics/impl/Go;

    invoke-virtual {v2}, Lio/appmetrica/analytics/impl/Go;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lio/appmetrica/analytics/impl/a6;->o:Ljava/lang/Integer;

    iget-object v2, v0, Lio/appmetrica/analytics/impl/w9;->g:Lio/appmetrica/analytics/impl/m0;

    invoke-virtual {v2}, Lio/appmetrica/analytics/impl/m0;->a()Lio/appmetrica/analytics/impl/l0;

    move-result-object v8

    iget-object v2, v0, Lio/appmetrica/analytics/impl/w9;->e:Lio/appmetrica/analytics/impl/T8;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v1, Lio/appmetrica/analytics/impl/a6;->d:I

    invoke-static {v3}, Lio/appmetrica/analytics/impl/pb;->a(I)Lio/appmetrica/analytics/impl/pb;

    move-result-object v3

    iget-object v2, v2, Lio/appmetrica/analytics/impl/T8;->b:Lio/appmetrica/analytics/impl/Qc;

    invoke-virtual {v2, v3}, Lio/appmetrica/analytics/impl/Qc;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/appmetrica/analytics/impl/S8;

    iget-object v9, v0, Lio/appmetrica/analytics/impl/w9;->d:Lio/appmetrica/analytics/impl/Y6;

    invoke-interface {v2, v1}, Lio/appmetrica/analytics/impl/S8;->a(Lio/appmetrica/analytics/impl/a6;)Lio/appmetrica/analytics/impl/K8;

    move-result-object v6

    iget v4, v1, Lio/appmetrica/analytics/impl/a6;->d:I

    iget-object v5, v0, Lio/appmetrica/analytics/impl/w9;->b:Lio/appmetrica/analytics/impl/Go;

    new-instance v1, Lio/appmetrica/analytics/impl/u7;

    iget-object v2, v9, Lio/appmetrica/analytics/impl/Y6;->d:Landroid/content/Context;

    iget-object v3, v9, Lio/appmetrica/analytics/impl/Y6;->e:Lio/appmetrica/analytics/impl/i5;

    iget-object v3, v3, Lio/appmetrica/analytics/impl/i5;->k:Lio/appmetrica/analytics/impl/Tg;

    invoke-virtual {v3}, Lio/appmetrica/analytics/impl/z5;->a()Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Lio/appmetrica/analytics/impl/rh;

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v8}, Lio/appmetrica/analytics/impl/u7;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/ml;ILio/appmetrica/analytics/impl/Go;Lio/appmetrica/analytics/impl/K8;Lio/appmetrica/analytics/impl/rh;Lio/appmetrica/analytics/impl/l0;)V

    new-instance v10, Lio/appmetrica/analytics/impl/r7;

    iget-wide v6, v3, Lio/appmetrica/analytics/impl/ml;->a:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    iget-object v12, v3, Lio/appmetrica/analytics/impl/ml;->d:Lio/appmetrica/analytics/impl/ol;

    iget-wide v6, v3, Lio/appmetrica/analytics/impl/ml;->b:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    iget-object v2, v1, Lio/appmetrica/analytics/impl/u7;->h:Lio/appmetrica/analytics/impl/a6;

    iget v2, v2, Lio/appmetrica/analytics/impl/a6;->d:I

    invoke-static {v2}, Lio/appmetrica/analytics/impl/pb;->a(I)Lio/appmetrica/analytics/impl/pb;

    move-result-object v14

    sget-object v2, Lio/appmetrica/analytics/impl/I9;->g:Ljava/util/EnumSet;

    invoke-static {v4}, Lio/appmetrica/analytics/impl/pb;->a(I)Lio/appmetrica/analytics/impl/pb;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v2

    const-wide/16 v6, 0x0

    if-nez v2, :cond_0

    monitor-enter v5

    :try_start_0
    iget-object v2, v5, Lio/appmetrica/analytics/impl/Go;->a:Lio/appmetrica/analytics/impl/Ho;

    invoke-virtual {v2}, Lio/appmetrica/analytics/impl/Ho;->a()Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "global_number"

    invoke-virtual {v2, v4, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    iget-object v4, v5, Lio/appmetrica/analytics/impl/Go;->a:Lio/appmetrica/analytics/impl/Ho;

    const-string v8, "global_number"

    const-wide/16 v15, 0x1

    move-wide/from16 v17, v6

    add-long v6, v17, v15

    invoke-virtual {v2, v8, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v4, v2}, Lio/appmetrica/analytics/impl/Ho;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    move-wide/from16 v6, v17

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0

    :cond_0
    :goto_0
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    iget-wide v2, v3, Lio/appmetrica/analytics/impl/ml;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/u7;->a()Lio/appmetrica/analytics/impl/q7;

    move-result-object v17

    invoke-direct/range {v10 .. v17}, Lio/appmetrica/analytics/impl/r7;-><init>(Ljava/lang/Long;Lio/appmetrica/analytics/impl/ol;Ljava/lang/Long;Lio/appmetrica/analytics/impl/pb;Ljava/lang/Long;Ljava/lang/Long;Lio/appmetrica/analytics/impl/q7;)V

    iget-object v1, v9, Lio/appmetrica/analytics/impl/Y6;->i:Lio/appmetrica/analytics/impl/s7;

    invoke-virtual {v1, v10}, Lio/appmetrica/analytics/impl/s7;->a(Lio/appmetrica/analytics/impl/r7;)Landroid/content/ContentValues;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    sget-object v3, Lio/appmetrica/analytics/impl/no;->a:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, v9, Lio/appmetrica/analytics/impl/Y6;->j:Lio/appmetrica/analytics/impl/m3;

    iget-object v3, v3, Lio/appmetrica/analytics/impl/m3;->b:Lio/appmetrica/analytics/coreutils/internal/buffering/DeferredBatchExecutor;

    invoke-virtual {v3, v1, v2}, Lio/appmetrica/analytics/coreutils/internal/buffering/DeferredBatchExecutor;->submit(Ljava/lang/Object;Z)V

    iget-object v0, v0, Lio/appmetrica/analytics/impl/w9;->h:Lio/appmetrica/analytics/impl/k5;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/k5;->a:Lio/appmetrica/analytics/impl/Di;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Di;->h()V

    return-void
.end method
