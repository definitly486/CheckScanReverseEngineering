.class public Lio/appmetrica/analytics/impl/i5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Za;
.implements Lio/appmetrica/analytics/impl/Sa;
.implements Lio/appmetrica/analytics/impl/qh;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lio/appmetrica/analytics/impl/b5;

.field public final c:Lio/appmetrica/analytics/impl/jf;

.field public final d:Lio/appmetrica/analytics/impl/mf;

.field public final e:Lio/appmetrica/analytics/impl/Y6;

.field public final f:Lio/appmetrica/analytics/impl/Bi;

.field public final g:Lio/appmetrica/analytics/impl/j9;

.field public final h:Lio/appmetrica/analytics/impl/m0;

.field public final i:Lio/appmetrica/analytics/impl/n0;

.field public final j:Lio/appmetrica/analytics/impl/jl;

.field public final k:Lio/appmetrica/analytics/impl/Tg;

.field public final l:Lio/appmetrica/analytics/impl/Y8;

.field public final m:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

.field public final n:Lio/appmetrica/analytics/impl/w9;

.field public final o:Lio/appmetrica/analytics/impl/d5;

.field public final p:Lio/appmetrica/analytics/impl/C9;

.field public final q:Lio/appmetrica/analytics/impl/A3;

.field public final r:Lio/appmetrica/analytics/coreutils/internal/time/TimePassedChecker;

.field public final s:Lio/appmetrica/analytics/impl/Gf;

.field public final t:Lio/appmetrica/analytics/impl/Go;

.field public final u:Lio/appmetrica/analytics/impl/al;

.field public final v:Lio/appmetrica/analytics/impl/E2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/b5;Lio/appmetrica/analytics/impl/n0;Lio/appmetrica/analytics/coreutils/internal/time/TimePassedChecker;Lio/appmetrica/analytics/impl/n5;Lio/appmetrica/analytics/impl/A4;)V
    .locals 14

    move-object/from16 v5, p2

    move-object/from16 v0, p3

    move-object/from16 v6, p5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/i5;->a:Landroid/content/Context;

    iput-object v5, p0, Lio/appmetrica/analytics/impl/i5;->b:Lio/appmetrica/analytics/impl/b5;

    iput-object v0, p0, Lio/appmetrica/analytics/impl/i5;->i:Lio/appmetrica/analytics/impl/n0;

    move-object/from16 p1, p4

    iput-object p1, p0, Lio/appmetrica/analytics/impl/i5;->r:Lio/appmetrica/analytics/coreutils/internal/time/TimePassedChecker;

    invoke-virtual {v6}, Lio/appmetrica/analytics/impl/n5;->f()Lio/appmetrica/analytics/impl/Go;

    move-result-object v8

    iput-object v8, p0, Lio/appmetrica/analytics/impl/i5;->t:Lio/appmetrica/analytics/impl/Go;

    invoke-static {}, Lio/appmetrica/analytics/impl/Fa;->k()Lio/appmetrica/analytics/impl/Fa;

    move-result-object p1

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/Fa;->t()Lio/appmetrica/analytics/impl/Gf;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/i5;->s:Lio/appmetrica/analytics/impl/Gf;

    invoke-virtual {v6}, Lio/appmetrica/analytics/impl/n5;->e()Lio/appmetrica/analytics/impl/m5;

    move-result-object p1

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/m5;->a()Lio/appmetrica/analytics/impl/jf;

    move-result-object v7

    iput-object v7, p0, Lio/appmetrica/analytics/impl/i5;->c:Lio/appmetrica/analytics/impl/jf;

    invoke-virtual {v6, v7}, Lio/appmetrica/analytics/impl/n5;->a(Lio/appmetrica/analytics/impl/jf;)Lio/appmetrica/analytics/impl/E2;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/i5;->v:Lio/appmetrica/analytics/impl/E2;

    invoke-virtual {v6, p0}, Lio/appmetrica/analytics/impl/n5;->a(Lio/appmetrica/analytics/impl/i5;)Lio/appmetrica/analytics/impl/Tg;

    move-result-object v3

    iput-object v3, p0, Lio/appmetrica/analytics/impl/i5;->k:Lio/appmetrica/analytics/impl/Tg;

    invoke-virtual {v6}, Lio/appmetrica/analytics/impl/n5;->d()Lio/appmetrica/analytics/impl/l5;

    move-result-object p1

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/l5;->a()Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/i5;->m:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    invoke-static {}, Lio/appmetrica/analytics/impl/Fa;->k()Lio/appmetrica/analytics/impl/Fa;

    move-result-object v1

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/Fa;->y()Lio/appmetrica/analytics/impl/mf;

    move-result-object v1

    iput-object v1, p0, Lio/appmetrica/analytics/impl/i5;->d:Lio/appmetrica/analytics/impl/mf;

    invoke-virtual {v0, v5, p1, v7}, Lio/appmetrica/analytics/impl/n0;->a(Lio/appmetrica/analytics/impl/b5;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;Lio/appmetrica/analytics/impl/jf;)Lio/appmetrica/analytics/impl/m0;

    move-result-object v11

    iput-object v11, p0, Lio/appmetrica/analytics/impl/i5;->h:Lio/appmetrica/analytics/impl/m0;

    invoke-virtual {v6}, Lio/appmetrica/analytics/impl/n5;->a()Lio/appmetrica/analytics/impl/Y8;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/i5;->l:Lio/appmetrica/analytics/impl/Y8;

    invoke-virtual {v6, p0}, Lio/appmetrica/analytics/impl/n5;->b(Lio/appmetrica/analytics/impl/i5;)Lio/appmetrica/analytics/impl/Y6;

    move-result-object v10

    iput-object v10, p0, Lio/appmetrica/analytics/impl/i5;->e:Lio/appmetrica/analytics/impl/Y6;

    invoke-virtual {v6, p0}, Lio/appmetrica/analytics/impl/n5;->d(Lio/appmetrica/analytics/impl/i5;)Lio/appmetrica/analytics/impl/Di;

    move-result-object v13

    invoke-static {}, Lio/appmetrica/analytics/impl/n5;->b()Lio/appmetrica/analytics/impl/d5;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/i5;->o:Lio/appmetrica/analytics/impl/d5;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/i5;->w()V

    new-instance v0, Lio/appmetrica/analytics/impl/h5;

    invoke-direct {v0, p0}, Lio/appmetrica/analytics/impl/h5;-><init>(Lio/appmetrica/analytics/impl/i5;)V

    invoke-static {p0, v8, v0}, Lio/appmetrica/analytics/impl/n5;->a(Lio/appmetrica/analytics/impl/i5;Lio/appmetrica/analytics/impl/Go;Lio/appmetrica/analytics/impl/h5;)Lio/appmetrica/analytics/impl/jl;

    move-result-object v9

    iput-object v9, p0, Lio/appmetrica/analytics/impl/i5;->j:Lio/appmetrica/analytics/impl/jl;

    invoke-virtual {v5}, Lio/appmetrica/analytics/impl/b5;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11}, Lio/appmetrica/analytics/impl/m0;->a()Lio/appmetrica/analytics/impl/l0;

    move-result-object v1

    iget-object v1, v1, Lio/appmetrica/analytics/impl/l0;->a:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Read app environment for component %s. Value: %s"

    invoke-virtual {p1, v1, v0}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6}, Lio/appmetrica/analytics/impl/n5;->c()Lio/appmetrica/analytics/impl/al;

    move-result-object v12

    iput-object v12, p0, Lio/appmetrica/analytics/impl/i5;->u:Lio/appmetrica/analytics/impl/al;

    invoke-virtual/range {v6 .. v13}, Lio/appmetrica/analytics/impl/n5;->a(Lio/appmetrica/analytics/impl/jf;Lio/appmetrica/analytics/impl/Go;Lio/appmetrica/analytics/impl/jl;Lio/appmetrica/analytics/impl/Y6;Lio/appmetrica/analytics/impl/m0;Lio/appmetrica/analytics/impl/al;Lio/appmetrica/analytics/impl/Di;)Lio/appmetrica/analytics/impl/w9;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/i5;->n:Lio/appmetrica/analytics/impl/w9;

    invoke-static {p0}, Lio/appmetrica/analytics/impl/n5;->c(Lio/appmetrica/analytics/impl/i5;)Lio/appmetrica/analytics/impl/j9;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/i5;->g:Lio/appmetrica/analytics/impl/j9;

    invoke-static {p0, p1}, Lio/appmetrica/analytics/impl/n5;->a(Lio/appmetrica/analytics/impl/i5;Lio/appmetrica/analytics/impl/j9;)Lio/appmetrica/analytics/impl/Bi;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/i5;->f:Lio/appmetrica/analytics/impl/Bi;

    invoke-virtual {v6, v7}, Lio/appmetrica/analytics/impl/n5;->b(Lio/appmetrica/analytics/impl/jf;)Lio/appmetrica/analytics/impl/A3;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/i5;->q:Lio/appmetrica/analytics/impl/A3;

    move-object/from16 v4, p6

    move-object v0, v6

    move-object v6, v7

    move-object v2, v10

    move-object v1, v13

    invoke-virtual/range {v0 .. v6}, Lio/appmetrica/analytics/impl/n5;->a(Lio/appmetrica/analytics/impl/H9;Lio/appmetrica/analytics/impl/Y6;Lio/appmetrica/analytics/impl/Tg;Lio/appmetrica/analytics/impl/A4;Lio/appmetrica/analytics/impl/b5;Lio/appmetrica/analytics/impl/jf;)Lio/appmetrica/analytics/impl/C9;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/i5;->p:Lio/appmetrica/analytics/impl/C9;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/vm;Lio/appmetrica/analytics/impl/b5;Lio/appmetrica/analytics/impl/A4;Lio/appmetrica/analytics/impl/oh;Lio/appmetrica/analytics/impl/g5;)V
    .locals 16

    .line 185
    new-instance v3, Lio/appmetrica/analytics/impl/n0;

    invoke-direct {v3}, Lio/appmetrica/analytics/impl/n0;-><init>()V

    new-instance v4, Lio/appmetrica/analytics/coreutils/internal/time/TimePassedChecker;

    invoke-direct {v4}, Lio/appmetrica/analytics/coreutils/internal/time/TimePassedChecker;-><init>()V

    new-instance v5, Lio/appmetrica/analytics/impl/n5;

    .line 186
    invoke-static {}, Lio/appmetrica/analytics/impl/Fa;->k()Lio/appmetrica/analytics/impl/Fa;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Fa;->w()Lio/appmetrica/analytics/impl/Ak;

    move-result-object v0

    .line 187
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Ak;->d()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object v12

    .line 188
    invoke-static/range {p1 .. p1}, Lio/appmetrica/analytics/coreutils/internal/services/PackageManagerUtils;->getAppVersionCodeInt(Landroid/content/Context;)I

    move-result v13

    .line 189
    invoke-static {}, Lio/appmetrica/analytics/impl/Fa;->k()Lio/appmetrica/analytics/impl/Fa;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Fa;->l()Lio/appmetrica/analytics/impl/Ub;

    move-result-object v14

    new-instance v15, Lio/appmetrica/analytics/impl/a5;

    invoke-direct {v15}, Lio/appmetrica/analytics/impl/a5;-><init>()V

    move-object/from16 v6, p1

    move-object/from16 v10, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v11, p5

    move-object/from16 v9, p6

    invoke-direct/range {v5 .. v15}, Lio/appmetrica/analytics/impl/n5;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/b5;Lio/appmetrica/analytics/impl/A4;Lio/appmetrica/analytics/impl/g5;Lio/appmetrica/analytics/impl/vm;Lio/appmetrica/analytics/impl/oh;Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;ILio/appmetrica/analytics/impl/Ub;Lio/appmetrica/analytics/impl/E9;)V

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v6, v8

    .line 190
    invoke-direct/range {v0 .. v6}, Lio/appmetrica/analytics/impl/i5;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/b5;Lio/appmetrica/analytics/impl/n0;Lio/appmetrica/analytics/coreutils/internal/time/TimePassedChecker;Lio/appmetrica/analytics/impl/n5;Lio/appmetrica/analytics/impl/A4;)V

    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 8

    iget-object v0, p0, Lio/appmetrica/analytics/impl/i5;->k:Lio/appmetrica/analytics/impl/Tg;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/z5;->a()Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/impl/rh;

    iget-boolean v1, v0, Lio/appmetrica/analytics/impl/rh;->n:Z

    if-eqz v1, :cond_0

    iget-object v2, p0, Lio/appmetrica/analytics/impl/i5;->r:Lio/appmetrica/analytics/coreutils/internal/time/TimePassedChecker;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/i5;->n:Lio/appmetrica/analytics/impl/w9;

    iget-wide v3, p0, Lio/appmetrica/analytics/impl/w9;->k:J

    iget-wide v5, v0, Lio/appmetrica/analytics/impl/rh;->t:J

    const-string v7, "should force send permissions"

    invoke-virtual/range {v2 .. v7}, Lio/appmetrica/analytics/coreutils/internal/time/TimePassedChecker;->didTimePassSeconds(JJLjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final B()Z
    .locals 3

    iget-object v0, p0, Lio/appmetrica/analytics/impl/i5;->s:Lio/appmetrica/analytics/impl/Gf;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/b8;->h:Lio/appmetrica/analytics/impl/N6;

    iget-object v2, v0, Lio/appmetrica/analytics/impl/b8;->a:Landroid/content/Context;

    invoke-interface {v1, v2}, Lio/appmetrica/analytics/impl/N6;->a(Landroid/content/Context;)V

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/b8;->c()Lio/appmetrica/analytics/impl/g8;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/impl/Df;

    iget-boolean v0, v0, Lio/appmetrica/analytics/impl/Df;->d:Z

    iget-object p0, p0, Lio/appmetrica/analytics/impl/i5;->k:Lio/appmetrica/analytics/impl/Tg;

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lio/appmetrica/analytics/impl/z5;->c:Lio/appmetrica/analytics/impl/W5;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/W5;->a:Lio/appmetrica/analytics/impl/vm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    iget-boolean p0, v1, Lio/appmetrica/analytics/impl/vm;->q:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    xor-int/2addr p0, v1

    return p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a()Lio/appmetrica/analytics/impl/b5;
    .locals 0

    .line 144
    iget-object p0, p0, Lio/appmetrica/analytics/impl/i5;->b:Lio/appmetrica/analytics/impl/b5;

    return-object p0
.end method

.method public declared-synchronized a(Lio/appmetrica/analytics/impl/A4;)V
    .locals 11

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/i5;->k:Lio/appmetrica/analytics/impl/Tg;

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/R4;->a(Lio/appmetrica/analytics/impl/A4;)V

    iget-object v0, p1, Lio/appmetrica/analytics/impl/A4;->h:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/appmetrica/analytics/impl/i5;->m:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    invoke-virtual {v0, v2}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->setEnabled(Z)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    iget-object v0, p1, Lio/appmetrica/analytics/impl/A4;->h:Ljava/lang/Boolean;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/appmetrica/analytics/impl/i5;->m:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->setEnabled(Z)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/i5;->v:Lio/appmetrica/analytics/impl/E2;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/A4;->o:Ljava/util/Set;

    iget-object v3, v0, Lio/appmetrica/analytics/impl/E2;->d:Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;

    invoke-virtual {v3}, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v5, v1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, v0, Lio/appmetrica/analytics/impl/E2;->e:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    goto :goto_2

    :cond_3
    const-wide/16 v7, -0x1

    move v5, v2

    :goto_2
    sub-long v7, v3, v7

    iget-wide v9, v0, Lio/appmetrica/analytics/impl/E2;->b:J

    cmp-long v7, v7, v9

    if-lez v7, :cond_2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v7, v0, Lio/appmetrica/analytics/impl/E2;->e:Ljava/util/Map;

    invoke-interface {v7, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v2

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    iget-object p1, v0, Lio/appmetrica/analytics/impl/E2;->e:Ljava/util/Map;

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/E2;->a(Ljava/util/Map;)V

    iget-object p1, v0, Lio/appmetrica/analytics/impl/E2;->a:Lio/appmetrica/analytics/impl/jf;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/E2;->e:Ljava/util/Map;

    invoke-virtual {p1, v0}, Lio/appmetrica/analytics/impl/jf;->a(Ljava/util/Map;)V

    :cond_5
    if-eqz v5, :cond_6

    iget-object p1, p0, Lio/appmetrica/analytics/impl/i5;->k:Lio/appmetrica/analytics/impl/Tg;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/z5;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    monitor-exit p0

    return-void

    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(Lio/appmetrica/analytics/impl/Zl;Lio/appmetrica/analytics/impl/vm;)V
    .locals 0

    .line 143
    return-void
.end method

.method public final a(Lio/appmetrica/analytics/impl/a6;)V
    .locals 4

    .line 130
    iget v0, p1, Lio/appmetrica/analytics/impl/a6;->d:I

    .line 131
    invoke-static {v0}, Lio/appmetrica/analytics/impl/pb;->a(I)Lio/appmetrica/analytics/impl/pb;

    move-result-object v0

    .line 132
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/a6;->getName()Ljava/lang/String;

    move-result-object v1

    .line 133
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/a6;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 134
    const-string v3, "Event received on service"

    invoke-static {v3, v0, v1, v2}, Lio/appmetrica/analytics/impl/eg;->a(Ljava/lang/String;Lio/appmetrica/analytics/impl/pb;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v1, p0, Lio/appmetrica/analytics/impl/i5;->m:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    :cond_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/i5;->b:Lio/appmetrica/analytics/impl/b5;

    .line 137
    iget-object v0, v0, Lio/appmetrica/analytics/impl/b5;->b:Ljava/lang/String;

    .line 138
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 139
    const-string v1, "-1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 140
    iget-object p0, p0, Lio/appmetrica/analytics/impl/i5;->f:Lio/appmetrica/analytics/impl/Bi;

    .line 141
    new-instance v0, Lio/appmetrica/analytics/impl/Ai;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Ai;-><init>()V

    .line 142
    invoke-virtual {p0, p1, v0}, Lio/appmetrica/analytics/impl/T2;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/S2;)Z

    :cond_1
    return-void
.end method

.method public final declared-synchronized a(Lio/appmetrica/analytics/impl/vm;)V
    .locals 1

    monitor-enter p0

    .line 145
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/i5;->k:Lio/appmetrica/analytics/impl/Tg;

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/z5;->a(Lio/appmetrica/analytics/impl/vm;)V

    .line 146
    iget-object p1, p0, Lio/appmetrica/analytics/impl/i5;->p:Lio/appmetrica/analytics/impl/C9;

    check-cast p1, Lio/appmetrica/analytics/impl/v5;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/v5;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 147
    iget-object p0, p0, Lio/appmetrica/analytics/impl/i5;->c:Lio/appmetrica/analytics/impl/jf;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/jf;->j(Ljava/lang/String;)Lio/appmetrica/analytics/impl/jf;

    move-result-object p0

    .line 148
    iget-object p0, p0, Lio/appmetrica/analytics/impl/kf;->a:Lio/appmetrica/analytics/impl/Va;

    .line 149
    invoke-interface {p0}, Lio/appmetrica/analytics/impl/Va;->flushAsync()V

    return-void
.end method

.method public b()Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;
    .locals 0

    .line 56
    sget-object p0, Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;->MANUAL:Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;

    return-object p0
.end method

.method public final b(Lio/appmetrica/analytics/impl/a6;)V
    .locals 6

    iget-object v0, p0, Lio/appmetrica/analytics/impl/i5;->h:Lio/appmetrica/analytics/impl/m0;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/a6;->f:Landroid/util/Pair;

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/m0;->a(Landroid/util/Pair;)V

    iget-object p1, p0, Lio/appmetrica/analytics/impl/i5;->h:Lio/appmetrica/analytics/impl/m0;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/m0;->a()Lio/appmetrica/analytics/impl/l0;

    move-result-object p1

    iget-object v0, p0, Lio/appmetrica/analytics/impl/i5;->i:Lio/appmetrica/analytics/impl/n0;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/i5;->c:Lio/appmetrica/analytics/impl/jf;

    monitor-enter v0

    :try_start_0
    iget-wide v2, p1, Lio/appmetrica/analytics/impl/l0;->b:J

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/jf;->d()Lio/appmetrica/analytics/impl/l0;

    move-result-object v4

    iget-wide v4, v4, Lio/appmetrica/analytics/impl/l0;->b:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    invoke-virtual {v1, p1}, Lio/appmetrica/analytics/impl/jf;->a(Lio/appmetrica/analytics/impl/l0;)Lio/appmetrica/analytics/impl/jf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    iget-object v0, p0, Lio/appmetrica/analytics/impl/i5;->m:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    const-string v1, "Save new app environment for %s. Value: %s"

    iget-object p0, p0, Lio/appmetrica/analytics/impl/i5;->b:Lio/appmetrica/analytics/impl/b5;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/l0;->a:Ljava/lang/String;

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0

    throw p0
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/impl/i5;->t:Lio/appmetrica/analytics/impl/Go;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/Go;->a:Lio/appmetrica/analytics/impl/Ho;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/Ho;->a:Lio/appmetrica/analytics/impl/Ko;

    invoke-static {v1}, Lio/appmetrica/analytics/impl/Ho;->a(Lio/appmetrica/analytics/impl/Ko;)V

    iget-object v0, v0, Lio/appmetrica/analytics/impl/Ho;->b:Lio/appmetrica/analytics/impl/Ko;

    invoke-static {v0}, Lio/appmetrica/analytics/impl/Ho;->a(Lio/appmetrica/analytics/impl/Ko;)V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/i5;->e:Lio/appmetrica/analytics/impl/Y6;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Y6;->j:Lio/appmetrica/analytics/impl/m3;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/m3;->b:Lio/appmetrica/analytics/coreutils/internal/buffering/DeferredBatchExecutor;

    invoke-virtual {p0}, Lio/appmetrica/analytics/coreutils/internal/buffering/DeferredBatchExecutor;->flushAsync()V

    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/impl/i5;->h:Lio/appmetrica/analytics/impl/m0;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lio/appmetrica/analytics/impl/Sc;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/Sc;-><init>()V

    iput-object v1, v0, Lio/appmetrica/analytics/impl/m0;->a:Lio/appmetrica/analytics/impl/Sc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    iget-object v0, p0, Lio/appmetrica/analytics/impl/i5;->i:Lio/appmetrica/analytics/impl/n0;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/i5;->h:Lio/appmetrica/analytics/impl/m0;

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/m0;->a()Lio/appmetrica/analytics/impl/l0;

    move-result-object v1

    iget-object p0, p0, Lio/appmetrica/analytics/impl/i5;->c:Lio/appmetrica/analytics/impl/jf;

    invoke-virtual {v0, v1, p0}, Lio/appmetrica/analytics/impl/n0;->a(Lio/appmetrica/analytics/impl/l0;Lio/appmetrica/analytics/impl/jf;)V

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final declared-synchronized e()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/i5;->p:Lio/appmetrica/analytics/impl/C9;

    check-cast v0, Lio/appmetrica/analytics/impl/v5;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/v5;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final f()Lio/appmetrica/analytics/impl/E2;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/i5;->v:Lio/appmetrica/analytics/impl/E2;

    return-object p0
.end method

.method public final g()Lio/appmetrica/analytics/impl/A3;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/i5;->q:Lio/appmetrica/analytics/impl/A3;

    return-object p0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/i5;->a:Landroid/content/Context;

    return-object p0
.end method

.method public final h()Lio/appmetrica/analytics/impl/jf;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/i5;->c:Lio/appmetrica/analytics/impl/jf;

    return-object p0
.end method

.method public final i()Lio/appmetrica/analytics/impl/Y6;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/i5;->e:Lio/appmetrica/analytics/impl/Y6;

    return-object p0
.end method

.method public final j()Lio/appmetrica/analytics/impl/Y8;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/i5;->l:Lio/appmetrica/analytics/impl/Y8;

    return-object p0
.end method

.method public final k()Lio/appmetrica/analytics/impl/j9;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/i5;->g:Lio/appmetrica/analytics/impl/j9;

    return-object p0
.end method

.method public final l()Lio/appmetrica/analytics/impl/w9;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/i5;->n:Lio/appmetrica/analytics/impl/w9;

    return-object p0
.end method

.method public final m()Lio/appmetrica/analytics/impl/C9;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/i5;->p:Lio/appmetrica/analytics/impl/C9;

    return-object p0
.end method

.method public final n()Lio/appmetrica/analytics/impl/rh;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/i5;->k:Lio/appmetrica/analytics/impl/Tg;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/z5;->a()Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/rh;

    return-object p0
.end method

.method public final o()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/i5;->c:Lio/appmetrica/analytics/impl/jf;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/jf;->j()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final p()Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/i5;->m:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    return-object p0
.end method

.method public final q()Lio/appmetrica/analytics/impl/mf;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/i5;->d:Lio/appmetrica/analytics/impl/mf;

    return-object p0
.end method

.method public final r()Lio/appmetrica/analytics/impl/al;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/i5;->u:Lio/appmetrica/analytics/impl/al;

    return-object p0
.end method

.method public final s()Lio/appmetrica/analytics/impl/jl;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/i5;->j:Lio/appmetrica/analytics/impl/jl;

    return-object p0
.end method

.method public final t()Lio/appmetrica/analytics/impl/vm;
    .locals 1

    iget-object p0, p0, Lio/appmetrica/analytics/impl/i5;->k:Lio/appmetrica/analytics/impl/Tg;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/z5;->c:Lio/appmetrica/analytics/impl/W5;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/W5;->a:Lio/appmetrica/analytics/impl/vm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final u()Lio/appmetrica/analytics/impl/Go;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/i5;->t:Lio/appmetrica/analytics/impl/Go;

    return-object p0
.end method

.method public final v()V
    .locals 1

    iget-object p0, p0, Lio/appmetrica/analytics/impl/i5;->n:Lio/appmetrica/analytics/impl/w9;

    iget v0, p0, Lio/appmetrica/analytics/impl/w9;->j:I

    iput v0, p0, Lio/appmetrica/analytics/impl/w9;->l:I

    iget-object p0, p0, Lio/appmetrica/analytics/impl/w9;->a:Lio/appmetrica/analytics/impl/jf;

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/jf;->a(I)Lio/appmetrica/analytics/impl/jf;

    return-void
.end method

.method public final w()V
    .locals 5

    invoke-static {}, Lio/appmetrica/analytics/AppMetrica;->getLibraryApiLevel()I

    move-result v0

    iget-object v1, p0, Lio/appmetrica/analytics/impl/i5;->t:Lio/appmetrica/analytics/impl/Go;

    monitor-enter v1

    :try_start_0
    iget-object v2, v1, Lio/appmetrica/analytics/impl/Go;->a:Lio/appmetrica/analytics/impl/Ho;

    invoke-virtual {v2}, Lio/appmetrica/analytics/impl/Ho;->a()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "last_migration_api_level"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    if-ge v2, v0, :cond_1

    iget-object v1, p0, Lio/appmetrica/analytics/impl/i5;->o:Lio/appmetrica/analytics/impl/d5;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lio/appmetrica/analytics/impl/f5;

    invoke-direct {v1, p0}, Lio/appmetrica/analytics/impl/f5;-><init>(Lio/appmetrica/analytics/impl/i5;)V

    invoke-static {v1}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/appmetrica/analytics/impl/e5;

    invoke-virtual {v3, v2}, Lio/appmetrica/analytics/impl/e5;->a(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/i5;->t:Lio/appmetrica/analytics/impl/Go;

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/Go;->b(I)V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0
.end method

.method public final x()Z
    .locals 8

    iget-object v0, p0, Lio/appmetrica/analytics/impl/i5;->k:Lio/appmetrica/analytics/impl/Tg;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/z5;->a()Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/impl/rh;

    iget-boolean v1, v0, Lio/appmetrica/analytics/impl/rh;->n:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->isIdentifiersValid()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lio/appmetrica/analytics/impl/i5;->r:Lio/appmetrica/analytics/coreutils/internal/time/TimePassedChecker;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/i5;->n:Lio/appmetrica/analytics/impl/w9;

    iget-wide v3, p0, Lio/appmetrica/analytics/impl/w9;->k:J

    iget-wide v5, v0, Lio/appmetrica/analytics/impl/rh;->s:J

    const-string v7, "need to check permissions"

    invoke-virtual/range {v2 .. v7}, Lio/appmetrica/analytics/coreutils/internal/time/TimePassedChecker;->didTimePassSeconds(JJLjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final y()Z
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/impl/i5;->n:Lio/appmetrica/analytics/impl/w9;

    iget v1, v0, Lio/appmetrica/analytics/impl/w9;->l:I

    iget v0, v0, Lio/appmetrica/analytics/impl/w9;->j:I

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lio/appmetrica/analytics/impl/i5;->k:Lio/appmetrica/analytics/impl/Tg;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/z5;->a()Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/impl/rh;

    iget-boolean v0, v0, Lio/appmetrica/analytics/impl/rh;->o:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/i5;->k:Lio/appmetrica/analytics/impl/Tg;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/z5;->a()Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/rh;

    invoke-virtual {p0}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->isIdentifiersValid()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final z()V
    .locals 1

    iget-object p0, p0, Lio/appmetrica/analytics/impl/i5;->k:Lio/appmetrica/analytics/impl/Tg;

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lio/appmetrica/analytics/impl/z5;->a:Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
