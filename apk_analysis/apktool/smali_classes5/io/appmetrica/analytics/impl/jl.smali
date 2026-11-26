.class public final Lio/appmetrica/analytics/impl/jl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/i5;

.field public final b:Lio/appmetrica/analytics/impl/h5;

.field public final c:Lio/appmetrica/analytics/impl/eb;

.field public final d:Lio/appmetrica/analytics/impl/eb;

.field public final e:Lio/appmetrica/analytics/impl/eb;

.field public f:Lio/appmetrica/analytics/impl/Tk;

.field public g:I

.field public h:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/i5;Lio/appmetrica/analytics/impl/h5;Lio/appmetrica/analytics/impl/wa;Lio/appmetrica/analytics/impl/O2;Lio/appmetrica/analytics/impl/hl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lio/appmetrica/analytics/impl/jl;->g:I

    const/4 v0, 0x0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/jl;->h:Ljava/lang/Long;

    iput-object p1, p0, Lio/appmetrica/analytics/impl/jl;->a:Lio/appmetrica/analytics/impl/i5;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/jl;->b:Lio/appmetrica/analytics/impl/h5;

    iput-object p3, p0, Lio/appmetrica/analytics/impl/jl;->c:Lio/appmetrica/analytics/impl/eb;

    iput-object p4, p0, Lio/appmetrica/analytics/impl/jl;->d:Lio/appmetrica/analytics/impl/eb;

    iput-object p5, p0, Lio/appmetrica/analytics/impl/jl;->e:Lio/appmetrica/analytics/impl/eb;

    return-void
.end method

.method public static a(Lio/appmetrica/analytics/impl/Tk;J)Lio/appmetrica/analytics/impl/ml;
    .locals 6

    .line 302
    new-instance v0, Lio/appmetrica/analytics/impl/ml;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/ml;-><init>()V

    .line 303
    iget-wide v1, p0, Lio/appmetrica/analytics/impl/Tk;->d:J

    .line 304
    iput-wide v1, v0, Lio/appmetrica/analytics/impl/ml;->a:J

    .line 305
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Tk;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v1

    .line 306
    iget-object v3, p0, Lio/appmetrica/analytics/impl/Tk;->b:Lio/appmetrica/analytics/impl/nl;

    iget-object v4, p0, Lio/appmetrica/analytics/impl/Tk;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    .line 307
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 308
    const-string v5, "SESSION_COUNTER_ID"

    invoke-virtual {v3, v5, v4}, Lio/appmetrica/analytics/impl/nl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 309
    invoke-virtual {v3}, Lio/appmetrica/analytics/impl/nl;->a()V

    .line 310
    iput-wide v1, v0, Lio/appmetrica/analytics/impl/ml;->b:J

    .line 311
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Tk;->b:Lio/appmetrica/analytics/impl/nl;

    .line 312
    iget-wide v2, p0, Lio/appmetrica/analytics/impl/Tk;->e:J

    sub-long/2addr p1, v2

    .line 313
    iput-wide p1, p0, Lio/appmetrica/analytics/impl/Tk;->j:J

    .line 314
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 315
    const-string p2, "SESSION_LAST_EVENT_OFFSET"

    invoke-virtual {v1, p2, p1}, Lio/appmetrica/analytics/impl/nl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 316
    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/nl;->a()V

    .line 317
    iget-wide p1, p0, Lio/appmetrica/analytics/impl/Tk;->j:J

    const-wide/16 v1, 0x3e8

    div-long/2addr p1, v1

    .line 318
    iput-wide p1, v0, Lio/appmetrica/analytics/impl/ml;->c:J

    .line 319
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Tk;->c:Lio/appmetrica/analytics/impl/Wk;

    .line 320
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Wk;->a:Lio/appmetrica/analytics/impl/ol;

    .line 321
    iput-object p0, v0, Lio/appmetrica/analytics/impl/ml;->d:Lio/appmetrica/analytics/impl/ol;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a()J
    .locals 6

    monitor-enter p0

    .line 297
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/jl;->h:Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    const-wide v0, 0x2540be400L

    return-wide v0

    .line 298
    :cond_0
    :try_start_1
    iget-object v1, p0, Lio/appmetrica/analytics/impl/jl;->f:Lio/appmetrica/analytics/impl/Tk;

    if-eqz v1, :cond_1

    .line 299
    iget-wide v0, v1, Lio/appmetrica/analytics/impl/Tk;->d:J

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 300
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 301
    :goto_0
    iget-object v2, p0, Lio/appmetrica/analytics/impl/jl;->h:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0xa

    sub-long/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v0

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final a(Lio/appmetrica/analytics/impl/a6;)Lio/appmetrica/analytics/impl/Tk;
    .locals 9

    .line 275
    iget-object v0, p0, Lio/appmetrica/analytics/impl/jl;->a:Lio/appmetrica/analytics/impl/i5;

    .line 276
    iget-object v0, v0, Lio/appmetrica/analytics/impl/i5;->m:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    const/4 v1, 0x0

    .line 277
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Start foreground session"

    invoke-virtual {v0, v2, v1}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    iget-wide v4, p1, Lio/appmetrica/analytics/impl/a6;->i:J

    .line 279
    iget-object v0, p0, Lio/appmetrica/analytics/impl/jl;->c:Lio/appmetrica/analytics/impl/eb;

    new-instance v3, Lio/appmetrica/analytics/impl/Uk;

    .line 280
    iget-wide v6, p1, Lio/appmetrica/analytics/impl/a6;->j:J

    const/4 v8, 0x0

    .line 281
    invoke-direct/range {v3 .. v8}, Lio/appmetrica/analytics/impl/Uk;-><init>(JJLio/appmetrica/analytics/impl/kl;)V

    .line 282
    invoke-interface {v0, v3}, Lio/appmetrica/analytics/impl/eb;->a(Ljava/lang/Object;)Lio/appmetrica/analytics/impl/Tk;

    move-result-object v0

    .line 283
    iget-wide v1, v0, Lio/appmetrica/analytics/impl/Tk;->d:J

    .line 284
    invoke-virtual {p0, v1, v2}, Lio/appmetrica/analytics/impl/jl;->a(J)V

    const/4 v1, 0x3

    .line 285
    iput v1, p0, Lio/appmetrica/analytics/impl/jl;->g:I

    .line 286
    iget-object v1, p0, Lio/appmetrica/analytics/impl/jl;->a:Lio/appmetrica/analytics/impl/i5;

    .line 287
    iget-object v1, v1, Lio/appmetrica/analytics/impl/i5;->p:Lio/appmetrica/analytics/impl/C9;

    .line 288
    check-cast v1, Lio/appmetrica/analytics/impl/v5;

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/v5;->e()V

    .line 289
    iget-object p0, p0, Lio/appmetrica/analytics/impl/jl;->b:Lio/appmetrica/analytics/impl/h5;

    .line 290
    sget-object v1, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    .line 291
    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/Fa;->i()Lio/appmetrica/analytics/impl/Z9;

    move-result-object v1

    .line 292
    invoke-static {p1, v1}, Lio/appmetrica/analytics/impl/a6;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/Z9;)Lio/appmetrica/analytics/impl/a6;

    move-result-object p1

    .line 293
    invoke-static {v0, v4, v5}, Lio/appmetrica/analytics/impl/jl;->a(Lio/appmetrica/analytics/impl/Tk;J)Lio/appmetrica/analytics/impl/ml;

    move-result-object v1

    .line 294
    iget-object p0, p0, Lio/appmetrica/analytics/impl/h5;->a:Lio/appmetrica/analytics/impl/i5;

    .line 295
    iget-object p0, p0, Lio/appmetrica/analytics/impl/i5;->n:Lio/appmetrica/analytics/impl/w9;

    .line 296
    invoke-virtual {p0, p1, v1}, Lio/appmetrica/analytics/impl/w9;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/ml;)V

    return-object v0
.end method

.method public final a(J)V
    .locals 2

    .line 273
    iget-object v0, p0, Lio/appmetrica/analytics/impl/jl;->h:Ljava/lang/Long;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 274
    :cond_1
    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/jl;->h:Ljava/lang/Long;

    return-void
.end method

.method public final a(Lio/appmetrica/analytics/impl/Tk;Lio/appmetrica/analytics/impl/a6;)Z
    .locals 17

    move-object/from16 v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object/from16 v2, p2

    iget-wide v3, v2, Lio/appmetrica/analytics/impl/a6;->i:J

    iget-wide v5, v0, Lio/appmetrica/analytics/impl/Tk;->d:J

    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    const/4 v8, 0x1

    if-ltz v7, :cond_1

    move v7, v8

    goto :goto_0

    :cond_1
    move v7, v1

    :goto_0
    iget-object v9, v0, Lio/appmetrica/analytics/impl/Tk;->a:Lio/appmetrica/analytics/impl/i5;

    iget-object v9, v9, Lio/appmetrica/analytics/impl/i5;->e:Lio/appmetrica/analytics/impl/Y6;

    iget-object v10, v0, Lio/appmetrica/analytics/impl/Tk;->c:Lio/appmetrica/analytics/impl/Wk;

    iget-object v10, v10, Lio/appmetrica/analytics/impl/Wk;->a:Lio/appmetrica/analytics/impl/ol;

    invoke-virtual {v9, v5, v6, v10}, Lio/appmetrica/analytics/impl/Y6;->a(JLio/appmetrica/analytics/impl/ol;)Lio/appmetrica/analytics/impl/kl;

    move-result-object v5

    if-eqz v5, :cond_6

    iget-object v6, v0, Lio/appmetrica/analytics/impl/Tk;->a:Lio/appmetrica/analytics/impl/i5;

    iget-object v6, v6, Lio/appmetrica/analytics/impl/i5;->k:Lio/appmetrica/analytics/impl/Tg;

    invoke-virtual {v6}, Lio/appmetrica/analytics/impl/z5;->a()Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;

    move-result-object v6

    check-cast v6, Lio/appmetrica/analytics/impl/rh;

    invoke-virtual {v6}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getAnalyticsSdkVersionName()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v5, Lio/appmetrica/analytics/impl/kl;->n:Ljava/lang/String;

    invoke-static {v9, v10}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v6}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getAnalyticsSdkBuildNumber()Ljava/lang/String;

    move-result-object v9

    iget-object v11, v5, Lio/appmetrica/analytics/impl/kl;->o:Ljava/lang/String;

    invoke-static {v9, v11}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v6}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getAppVersion()Ljava/lang/String;

    move-result-object v9

    iget-object v12, v5, Lio/appmetrica/analytics/impl/kl;->d:Ljava/lang/String;

    invoke-static {v9, v12}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v6}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getAppBuildNumber()Ljava/lang/String;

    move-result-object v9

    iget-object v13, v5, Lio/appmetrica/analytics/impl/kl;->e:Ljava/lang/String;

    invoke-static {v9, v13}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v6}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getOsVersion()Ljava/lang/String;

    move-result-object v9

    iget-object v14, v5, Lio/appmetrica/analytics/impl/kl;->g:Ljava/lang/String;

    invoke-static {v9, v14}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    iget v9, v5, Lio/appmetrica/analytics/impl/kl;->h:I

    invoke-virtual {v6}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getOsApiLevel()I

    move-result v15

    if-ne v9, v15, :cond_2

    move v9, v8

    goto :goto_1

    :cond_2
    move v9, v1

    :goto_1
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    iget v5, v5, Lio/appmetrica/analytics/impl/kl;->m:I

    iget v6, v6, Lio/appmetrica/analytics/impl/rh;->r:I

    if-ne v5, v6, :cond_3

    move v5, v8

    goto :goto_2

    :cond_3
    move v5, v1

    :goto_2
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    filled-new-array/range {v10 .. v16}, [Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v5}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    instance-of v6, v5, Ljava/util/Collection;

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_3

    :cond_4
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_5

    :cond_6
    move v5, v1

    goto :goto_4

    :cond_7
    :goto_3
    move v5, v8

    :goto_4
    iget-object v6, v0, Lio/appmetrica/analytics/impl/Tk;->l:Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;

    invoke-virtual {v6}, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;->elapsedRealtime()J

    move-result-wide v9

    iget-wide v11, v0, Lio/appmetrica/analytics/impl/Tk;->i:J

    cmp-long v6, v9, v11

    if-gez v6, :cond_8

    move v6, v8

    goto :goto_5

    :cond_8
    move v6, v1

    :goto_5
    sub-long v9, v3, v11

    iget-wide v11, v0, Lio/appmetrica/analytics/impl/Tk;->e:J

    sub-long/2addr v3, v11

    if-nez v6, :cond_b

    iget-object v6, v0, Lio/appmetrica/analytics/impl/Tk;->c:Lio/appmetrica/analytics/impl/Wk;

    iget-object v11, v0, Lio/appmetrica/analytics/impl/Tk;->a:Lio/appmetrica/analytics/impl/i5;

    iget-object v11, v11, Lio/appmetrica/analytics/impl/i5;->k:Lio/appmetrica/analytics/impl/Tg;

    invoke-virtual {v11}, Lio/appmetrica/analytics/impl/z5;->a()Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;

    move-result-object v11

    check-cast v11, Lio/appmetrica/analytics/impl/rh;

    iget v11, v11, Lio/appmetrica/analytics/impl/rh;->f:I

    iget-object v6, v6, Lio/appmetrica/analytics/impl/Wk;->e:Ljava/lang/Integer;

    if-nez v6, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v11

    :goto_6
    int-to-long v11, v11

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v11, v12}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-gez v9, :cond_b

    sget-wide v9, Lio/appmetrica/analytics/impl/Xk;->a:J

    invoke-virtual {v6, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9

    cmp-long v3, v3, v9

    if-ltz v3, :cond_a

    goto :goto_7

    :cond_a
    move v3, v1

    goto :goto_8

    :cond_b
    :goto_7
    move v3, v8

    :goto_8
    if-eqz v7, :cond_c

    if-eqz v5, :cond_c

    if-nez v3, :cond_c

    iget-boolean v3, v0, Lio/appmetrica/analytics/impl/Tk;->k:Z

    if-nez v3, :cond_c

    return v8

    :cond_c
    invoke-virtual/range {p0 .. p2}, Lio/appmetrica/analytics/impl/jl;->b(Lio/appmetrica/analytics/impl/Tk;Lio/appmetrica/analytics/impl/a6;)V

    return v1
.end method

.method public final declared-synchronized b(Lio/appmetrica/analytics/impl/a6;)Lio/appmetrica/analytics/impl/Tk;
    .locals 10

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/jl;->d(Lio/appmetrica/analytics/impl/a6;)V

    iget v0, p0, Lio/appmetrica/analytics/impl/jl;->g:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lio/appmetrica/analytics/impl/jl;->f:Lio/appmetrica/analytics/impl/Tk;

    invoke-virtual {p0, v0, p1}, Lio/appmetrica/analytics/impl/jl;->a(Lio/appmetrica/analytics/impl/Tk;Lio/appmetrica/analytics/impl/a6;)Z

    move-result v0

    if-nez v0, :cond_0

    iput v1, p0, Lio/appmetrica/analytics/impl/jl;->g:I

    const/4 v0, 0x0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/jl;->f:Lio/appmetrica/analytics/impl/Tk;

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_2

    :cond_0
    :goto_0
    iget v0, p0, Lio/appmetrica/analytics/impl/jl;->g:I

    invoke-static {v0}, Lio/appmetrica/analytics/impl/W7;->a(I)I

    move-result v0

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lio/appmetrica/analytics/impl/jl;->a:Lio/appmetrica/analytics/impl/i5;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/i5;->m:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Start background session"

    invoke-virtual {v0, v3, v2}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    iput v1, p0, Lio/appmetrica/analytics/impl/jl;->g:I

    iget-wide v5, p1, Lio/appmetrica/analytics/impl/a6;->i:J

    iget-object v0, p0, Lio/appmetrica/analytics/impl/jl;->d:Lio/appmetrica/analytics/impl/eb;

    new-instance v4, Lio/appmetrica/analytics/impl/Uk;

    iget-wide v7, p1, Lio/appmetrica/analytics/impl/a6;->j:J

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v9}, Lio/appmetrica/analytics/impl/Uk;-><init>(JJLio/appmetrica/analytics/impl/kl;)V

    invoke-interface {v0, v4}, Lio/appmetrica/analytics/impl/eb;->a(Ljava/lang/Object;)Lio/appmetrica/analytics/impl/Tk;

    move-result-object v0

    iget-wide v1, v0, Lio/appmetrica/analytics/impl/Tk;->d:J

    invoke-virtual {p0, v1, v2}, Lio/appmetrica/analytics/impl/jl;->a(J)V

    iget-object v1, p0, Lio/appmetrica/analytics/impl/jl;->a:Lio/appmetrica/analytics/impl/i5;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/i5;->t:Lio/appmetrica/analytics/impl/Go;

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/Go;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/appmetrica/analytics/impl/jl;->b:Lio/appmetrica/analytics/impl/h5;

    sget-object v2, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    invoke-virtual {v2}, Lio/appmetrica/analytics/impl/Fa;->i()Lio/appmetrica/analytics/impl/Z9;

    move-result-object v2

    invoke-static {p1, v2}, Lio/appmetrica/analytics/impl/a6;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/Z9;)Lio/appmetrica/analytics/impl/a6;

    move-result-object v2

    iget-wide v3, p1, Lio/appmetrica/analytics/impl/a6;->i:J

    invoke-static {v0, v3, v4}, Lio/appmetrica/analytics/impl/jl;->a(Lio/appmetrica/analytics/impl/Tk;J)Lio/appmetrica/analytics/impl/ml;

    move-result-object p1

    iget-object v1, v1, Lio/appmetrica/analytics/impl/h5;->a:Lio/appmetrica/analytics/impl/i5;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/i5;->n:Lio/appmetrica/analytics/impl/w9;

    invoke-virtual {v1, v2, p1}, Lio/appmetrica/analytics/impl/w9;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/ml;)V

    goto :goto_1

    :cond_1
    iget v1, p1, Lio/appmetrica/analytics/impl/a6;->d:I

    sget-object v2, Lio/appmetrica/analytics/impl/pb;->c:Lio/appmetrica/analytics/impl/pb;

    const/16 v2, 0x1801

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lio/appmetrica/analytics/impl/jl;->b:Lio/appmetrica/analytics/impl/h5;

    invoke-static {v0, v5, v6}, Lio/appmetrica/analytics/impl/jl;->a(Lio/appmetrica/analytics/impl/Tk;J)Lio/appmetrica/analytics/impl/ml;

    move-result-object v2

    iget-object v1, v1, Lio/appmetrica/analytics/impl/h5;->a:Lio/appmetrica/analytics/impl/i5;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/i5;->n:Lio/appmetrica/analytics/impl/w9;

    invoke-virtual {v1, p1, v2}, Lio/appmetrica/analytics/impl/w9;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/ml;)V

    iget-object v1, p0, Lio/appmetrica/analytics/impl/jl;->b:Lio/appmetrica/analytics/impl/h5;

    sget-object v2, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    invoke-virtual {v2}, Lio/appmetrica/analytics/impl/Fa;->i()Lio/appmetrica/analytics/impl/Z9;

    move-result-object v2

    invoke-static {p1, v2}, Lio/appmetrica/analytics/impl/a6;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/Z9;)Lio/appmetrica/analytics/impl/a6;

    move-result-object p1

    invoke-static {v0, v5, v6}, Lio/appmetrica/analytics/impl/jl;->a(Lio/appmetrica/analytics/impl/Tk;J)Lio/appmetrica/analytics/impl/ml;

    move-result-object v2

    iget-object v1, v1, Lio/appmetrica/analytics/impl/h5;->a:Lio/appmetrica/analytics/impl/i5;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/i5;->n:Lio/appmetrica/analytics/impl/w9;

    invoke-virtual {v1, p1, v2}, Lio/appmetrica/analytics/impl/w9;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/ml;)V

    :cond_2
    :goto_1
    iput-object v0, p0, Lio/appmetrica/analytics/impl/jl;->f:Lio/appmetrica/analytics/impl/Tk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_3
    :try_start_1
    iget-object p1, p0, Lio/appmetrica/analytics/impl/jl;->f:Lio/appmetrica/analytics/impl/Tk;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_4
    :try_start_2
    iget-object v0, p0, Lio/appmetrica/analytics/impl/jl;->f:Lio/appmetrica/analytics/impl/Tk;

    iget-wide v1, p1, Lio/appmetrica/analytics/impl/a6;->i:J

    iput-wide v1, v0, Lio/appmetrica/analytics/impl/Tk;->i:J

    iget-object p1, v0, Lio/appmetrica/analytics/impl/Tk;->b:Lio/appmetrica/analytics/impl/nl;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "SESSION_SLEEP_START"

    invoke-virtual {p1, v1, v0}, Lio/appmetrica/analytics/impl/nl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/nl;->a()V

    iget-object p1, p0, Lio/appmetrica/analytics/impl/jl;->f:Lio/appmetrica/analytics/impl/Tk;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final b(Lio/appmetrica/analytics/impl/Tk;Lio/appmetrica/analytics/impl/a6;)V
    .locals 8

    .line 187
    iget-boolean v0, p1, Lio/appmetrica/analytics/impl/Tk;->h:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 188
    iget-wide v2, p1, Lio/appmetrica/analytics/impl/Tk;->d:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 189
    iget-object v0, p0, Lio/appmetrica/analytics/impl/jl;->b:Lio/appmetrica/analytics/impl/h5;

    .line 190
    sget-object v2, Lio/appmetrica/analytics/impl/pb;->g:Lio/appmetrica/analytics/impl/pb;

    invoke-static {p2, v2}, Lio/appmetrica/analytics/impl/a6;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/pb;)Lio/appmetrica/analytics/impl/a6;

    move-result-object p2

    .line 191
    new-instance v2, Lio/appmetrica/analytics/impl/ml;

    invoke-direct {v2}, Lio/appmetrica/analytics/impl/ml;-><init>()V

    .line 192
    iget-wide v3, p1, Lio/appmetrica/analytics/impl/Tk;->d:J

    .line 193
    iput-wide v3, v2, Lio/appmetrica/analytics/impl/ml;->a:J

    .line 194
    iget-object v3, p1, Lio/appmetrica/analytics/impl/Tk;->c:Lio/appmetrica/analytics/impl/Wk;

    .line 195
    iget-object v3, v3, Lio/appmetrica/analytics/impl/Wk;->a:Lio/appmetrica/analytics/impl/ol;

    .line 196
    iput-object v3, v2, Lio/appmetrica/analytics/impl/ml;->d:Lio/appmetrica/analytics/impl/ol;

    .line 197
    iget-object v3, p1, Lio/appmetrica/analytics/impl/Tk;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v3

    .line 198
    iget-object v5, p1, Lio/appmetrica/analytics/impl/Tk;->b:Lio/appmetrica/analytics/impl/nl;

    iget-object v6, p1, Lio/appmetrica/analytics/impl/Tk;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    .line 199
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 200
    const-string v7, "SESSION_COUNTER_ID"

    invoke-virtual {v5, v7, v6}, Lio/appmetrica/analytics/impl/nl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 201
    invoke-virtual {v5}, Lio/appmetrica/analytics/impl/nl;->a()V

    .line 202
    iput-wide v3, v2, Lio/appmetrica/analytics/impl/ml;->b:J

    .line 203
    iget-wide v3, p1, Lio/appmetrica/analytics/impl/Tk;->i:J

    iget-wide v5, p1, Lio/appmetrica/analytics/impl/Tk;->e:J

    sub-long/2addr v3, v5

    iget-wide v5, p1, Lio/appmetrica/analytics/impl/Tk;->j:J

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    .line 204
    iput-wide v3, v2, Lio/appmetrica/analytics/impl/ml;->c:J

    .line 205
    iget-object v0, v0, Lio/appmetrica/analytics/impl/h5;->a:Lio/appmetrica/analytics/impl/i5;

    .line 206
    iget-object v0, v0, Lio/appmetrica/analytics/impl/i5;->n:Lio/appmetrica/analytics/impl/w9;

    .line 207
    invoke-virtual {v0, p2, v2}, Lio/appmetrica/analytics/impl/w9;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/ml;)V

    .line 208
    iget-boolean p2, p1, Lio/appmetrica/analytics/impl/Tk;->h:Z

    if-eqz p2, :cond_0

    .line 209
    iput-boolean v1, p1, Lio/appmetrica/analytics/impl/Tk;->h:Z

    .line 210
    iget-object p2, p1, Lio/appmetrica/analytics/impl/Tk;->b:Lio/appmetrica/analytics/impl/nl;

    .line 211
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 212
    const-string v2, "SESSION_IS_ALIVE_REPORT_NEEDED"

    invoke-virtual {p2, v2, v0}, Lio/appmetrica/analytics/impl/nl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 213
    invoke-virtual {p2}, Lio/appmetrica/analytics/impl/nl;->a()V

    .line 214
    :cond_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/jl;->a:Lio/appmetrica/analytics/impl/i5;

    .line 215
    iget-object p0, p0, Lio/appmetrica/analytics/impl/i5;->m:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    .line 216
    iget-object p2, p1, Lio/appmetrica/analytics/impl/Tk;->c:Lio/appmetrica/analytics/impl/Wk;

    .line 217
    iget-object p2, p2, Lio/appmetrica/analytics/impl/Wk;->a:Lio/appmetrica/analytics/impl/ol;

    .line 218
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    goto :goto_0

    .line 219
    :cond_1
    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "Finish background session"

    invoke-virtual {p0, v0, p2}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 220
    :cond_2
    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "Finish foreground session"

    invoke-virtual {p0, v0, p2}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    :goto_0
    monitor-enter p1

    .line 222
    :try_start_0
    iget-object p0, p1, Lio/appmetrica/analytics/impl/Tk;->b:Lio/appmetrica/analytics/impl/nl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 223
    new-instance p2, Lio/appmetrica/analytics/impl/tb;

    invoke-direct {p2}, Lio/appmetrica/analytics/impl/tb;-><init>()V

    iput-object p2, p0, Lio/appmetrica/analytics/impl/nl;->c:Lio/appmetrica/analytics/impl/tb;

    .line 224
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/nl;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    .line 226
    monitor-exit p1

    throw p0
.end method

.method public final declared-synchronized c(Lio/appmetrica/analytics/impl/a6;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/jl;->d(Lio/appmetrica/analytics/impl/a6;)V

    iget v0, p0, Lio/appmetrica/analytics/impl/jl;->g:I

    invoke-static {v0}, Lio/appmetrica/analytics/impl/W7;->a(I)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/jl;->f:Lio/appmetrica/analytics/impl/Tk;

    invoke-virtual {p0, v0, p1}, Lio/appmetrica/analytics/impl/jl;->a(Lio/appmetrica/analytics/impl/Tk;Lio/appmetrica/analytics/impl/a6;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/appmetrica/analytics/impl/jl;->f:Lio/appmetrica/analytics/impl/Tk;

    iget-wide v1, p1, Lio/appmetrica/analytics/impl/a6;->i:J

    iput-wide v1, v0, Lio/appmetrica/analytics/impl/Tk;->i:J

    iget-object p1, v0, Lio/appmetrica/analytics/impl/Tk;->b:Lio/appmetrica/analytics/impl/nl;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "SESSION_SLEEP_START"

    invoke-virtual {p1, v1, v0}, Lio/appmetrica/analytics/impl/nl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/nl;->a()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/jl;->a(Lio/appmetrica/analytics/impl/a6;)Lio/appmetrica/analytics/impl/Tk;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/jl;->f:Lio/appmetrica/analytics/impl/Tk;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lio/appmetrica/analytics/impl/jl;->f:Lio/appmetrica/analytics/impl/Tk;

    invoke-virtual {p0, v0, p1}, Lio/appmetrica/analytics/impl/jl;->b(Lio/appmetrica/analytics/impl/Tk;Lio/appmetrica/analytics/impl/a6;)V

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/jl;->a(Lio/appmetrica/analytics/impl/a6;)Lio/appmetrica/analytics/impl/Tk;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/jl;->f:Lio/appmetrica/analytics/impl/Tk;

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/jl;->a(Lio/appmetrica/analytics/impl/a6;)Lio/appmetrica/analytics/impl/Tk;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/jl;->f:Lio/appmetrica/analytics/impl/Tk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final d(Lio/appmetrica/analytics/impl/a6;)V
    .locals 3

    iget v0, p0, Lio/appmetrica/analytics/impl/jl;->g:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lio/appmetrica/analytics/impl/jl;->c:Lio/appmetrica/analytics/impl/eb;

    invoke-interface {v0}, Lio/appmetrica/analytics/impl/eb;->a()Lio/appmetrica/analytics/impl/Tk;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-wide v1, v0, Lio/appmetrica/analytics/impl/Tk;->d:J

    invoke-virtual {p0, v1, v2}, Lio/appmetrica/analytics/impl/jl;->a(J)V

    :cond_0
    invoke-virtual {p0, v0, p1}, Lio/appmetrica/analytics/impl/jl;->a(Lio/appmetrica/analytics/impl/Tk;Lio/appmetrica/analytics/impl/a6;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lio/appmetrica/analytics/impl/jl;->f:Lio/appmetrica/analytics/impl/Tk;

    const/4 p1, 0x3

    iput p1, p0, Lio/appmetrica/analytics/impl/jl;->g:I

    return-void

    :cond_1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/jl;->d:Lio/appmetrica/analytics/impl/eb;

    invoke-interface {v0}, Lio/appmetrica/analytics/impl/eb;->a()Lio/appmetrica/analytics/impl/Tk;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-wide v1, v0, Lio/appmetrica/analytics/impl/Tk;->d:J

    invoke-virtual {p0, v1, v2}, Lio/appmetrica/analytics/impl/jl;->a(J)V

    :cond_2
    invoke-virtual {p0, v0, p1}, Lio/appmetrica/analytics/impl/jl;->a(Lio/appmetrica/analytics/impl/Tk;Lio/appmetrica/analytics/impl/a6;)Z

    move-result p1

    if-eqz p1, :cond_3

    iput-object v0, p0, Lio/appmetrica/analytics/impl/jl;->f:Lio/appmetrica/analytics/impl/Tk;

    const/4 p1, 0x2

    iput p1, p0, Lio/appmetrica/analytics/impl/jl;->g:I

    return-void

    :cond_3
    const/4 p1, 0x0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/jl;->f:Lio/appmetrica/analytics/impl/Tk;

    const/4 p1, 0x1

    iput p1, p0, Lio/appmetrica/analytics/impl/jl;->g:I

    :cond_4
    return-void
.end method
