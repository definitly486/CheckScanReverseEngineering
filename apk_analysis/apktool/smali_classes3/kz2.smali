.class public final Lkz2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvz2;
.implements Lyz2$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkz2$b;,
        Lkz2$a;,
        Lkz2$c;,
        Lkz2$d;
    }
.end annotation


# static fields
.field public static final h:Z


# instance fields
.field public final a:Lvb4;

.field public final b:Lxz2;

.field public final c:Liy4;

.field public final d:Lkz2$b;

.field public final e:Lu47;

.field public final f:Lkz2$a;

.field public final g:Lz6;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "Engine"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lkz2;->h:Z

    return-void
.end method

.method public constructor <init>(Liy4;Lrn2$a;Lxq3;Lxq3;Lxq3;Lxq3;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkz2;->c:Liy4;

    new-instance v0, Lkz2$c;

    invoke-direct {v0, p2}, Lkz2$c;-><init>(Lrn2$a;)V

    new-instance p2, Lz6;

    invoke-direct {p2}, Lz6;-><init>()V

    iput-object p2, p0, Lkz2;->g:Lz6;

    monitor-enter p0

    :try_start_0
    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iput-object p0, p2, Lz6;->d:Lkz2;

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    new-instance p2, Lxz2;

    const/4 v1, 0x0

    invoke-direct {p2, v1}, Lxz2;-><init>(I)V

    iput-object p2, p0, Lkz2;->b:Lxz2;

    new-instance p2, Lvb4;

    invoke-direct {p2}, Lvb4;-><init>()V

    iput-object p2, p0, Lkz2;->a:Lvb4;

    new-instance v1, Lkz2$b;

    move-object v7, p0

    move-object v6, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v1 .. v7}, Lkz2$b;-><init>(Lxq3;Lxq3;Lxq3;Lxq3;Lkz2;Lkz2;)V

    iput-object v1, v6, Lkz2;->d:Lkz2$b;

    new-instance p0, Lkz2$a;

    invoke-direct {p0, v0}, Lkz2$a;-><init>(Lkz2$c;)V

    iput-object p0, v6, Lkz2;->f:Lkz2$a;

    new-instance p0, Lu47;

    invoke-direct {p0}, Lu47;-><init>()V

    iput-object p0, v6, Lkz2;->e:Lu47;

    iput-object v6, p1, Liy4;->d:Lkz2;

    return-void

    :catchall_0
    move-exception v0

    move-object v6, p0

    :goto_0
    move-object p0, v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v6, p0

    :goto_1
    move-object p0, v0

    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    throw p0

    :catchall_2
    move-exception v0

    goto :goto_0

    :catchall_3
    move-exception v0

    goto :goto_1

    :goto_2
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0
.end method

.method public static d(Ljava/lang/String;JLwz2;)V
    .locals 1

    const-string v0, " in "

    invoke-static {p0, v0}, Lfh;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p1, p2}, Lcv4;->a(J)D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, "ms, key: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Engine"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static f(Le47;)V
    .locals 1

    instance-of v0, p0, Lyz2;

    if-eqz v0, :cond_0

    check-cast p0, Lyz2;

    invoke-virtual {p0}, Lyz2;->c()V

    return-void

    :cond_0
    const-string p0, "Cannot release anything but an EngineResource"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lkf4;Lyz2;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkf4;",
            "Lyz2<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lkz2;->g:Lz6;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lz6;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz6$a;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    iput-object v2, v1, Lz6$a;->c:Le47;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    iget-boolean v0, p2, Lyz2;->b:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lkz2;->c:Liy4;

    invoke-virtual {p0, p1, p2}, Lgy4;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le47;

    return-void

    :cond_1
    iget-object p0, p0, Lkz2;->e:Lu47;

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lu47;->a(Le47;Z)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final b(Lwq3;Ljava/lang/Object;Lkf4;IILjava/lang/Class;Ljava/lang/Class;Ljg6;Lsn2;Lzx0;ZZLxz5;ZZLy08;Ly13$a;)Lkz2$d;
    .locals 23

    move-object/from16 v2, p0

    sget-boolean v0, Lkz2;->h:Z

    if-eqz v0, :cond_0

    sget v0, Lcv4;->b:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    iget-object v3, v2, Lkz2;->b:Lxz2;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lwz2;

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v9, p10

    move-object/from16 v12, p13

    invoke-direct/range {v4 .. v12}, Lwz2;-><init>(Ljava/lang/Object;Lkf4;IILjava/util/Map;Ljava/lang/Class;Ljava/lang/Class;Lxz5;)V

    monitor-enter p0

    move/from16 v3, p14

    :try_start_0
    invoke-virtual {v2, v4, v3, v0, v1}, Lkz2;->c(Lwz2;ZJ)Lyz2;

    move-result-object v5

    if-nez v5, :cond_1

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    move-object/from16 v15, p13

    move/from16 v17, p15

    move-object/from16 v18, p16

    move-object/from16 v19, p17

    move-wide/from16 v21, v0

    move/from16 v16, v3

    move-object/from16 v20, v4

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-virtual/range {v2 .. v22}, Lkz2;->g(Lwq3;Ljava/lang/Object;Lkf4;IILjava/lang/Class;Ljava/lang/Class;Ljg6;Lsn2;Ljava/util/Map;ZZLxz5;ZZLy08;Ljava/util/concurrent/Executor;Lwz2;J)Lkz2$d;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    move-object v0, v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v1, Ly82;->MEMORY_CACHE:Ly82;

    const/4 v2, 0x0

    move-object/from16 v3, p16

    invoke-virtual {v3, v0, v1, v2}, Ly08;->j(Le47;Ly82;Z)V

    const/4 v0, 0x0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final c(Lwz2;ZJ)Lyz2;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwz2;",
            "ZJ)",
            "Lyz2<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object p2, p0, Lkz2;->g:Lz6;

    monitor-enter p2

    :try_start_0
    iget-object v1, p2, Lz6;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz6$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    monitor-exit p2

    move-object v2, v0

    goto :goto_1

    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyz2;

    if-nez v2, :cond_2

    invoke-virtual {p2, v1}, Lz6;->b(Lz6$a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_5

    :cond_2
    :goto_0
    monitor-exit p2

    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lyz2;->b()V

    :cond_3
    if-eqz v2, :cond_5

    sget-boolean p0, Lkz2;->h:Z

    if-eqz p0, :cond_4

    const-string p0, "Loaded resource from active resources"

    invoke-static {p0, p3, p4, p1}, Lkz2;->d(Ljava/lang/String;JLwz2;)V

    :cond_4
    return-object v2

    :cond_5
    iget-object v1, p0, Lkz2;->c:Liy4;

    monitor-enter v1

    :try_start_2
    iget-object p2, v1, Lgy4;->a:Ljava/util/LinkedHashMap;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lgy4$a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez p2, :cond_6

    monitor-exit v1

    move-object p2, v0

    goto :goto_2

    :cond_6
    :try_start_3
    iget-wide v2, v1, Lgy4;->c:J

    iget v4, p2, Lgy4$a;->b:I

    int-to-long v4, v4

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lgy4;->c:J

    iget-object p2, p2, Lgy4$a;->a:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v1

    :goto_2
    move-object v2, p2

    check-cast v2, Le47;

    if-nez v2, :cond_7

    move-object v6, p0

    move-object v5, p1

    move-object v2, v0

    goto :goto_3

    :cond_7
    instance-of p2, v2, Lyz2;

    if-eqz p2, :cond_8

    check-cast v2, Lyz2;

    move-object v6, p0

    move-object v5, p1

    goto :goto_3

    :cond_8
    new-instance v1, Lyz2;

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v6, p0

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lyz2;-><init>(Le47;ZZLkf4;Lyz2$a;)V

    move-object v2, v1

    :goto_3
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lyz2;->b()V

    iget-object p0, v6, Lkz2;->g:Lz6;

    invoke-virtual {p0, v5, v2}, Lz6;->a(Lkf4;Lyz2;)V

    :cond_9
    if-eqz v2, :cond_b

    sget-boolean p0, Lkz2;->h:Z

    if-eqz p0, :cond_a

    const-string p0, "Loaded resource from cache"

    invoke-static {p0, p3, p4, v5}, Lkz2;->d(Ljava/lang/String;JLwz2;)V

    :cond_a
    return-object v2

    :cond_b
    :goto_4
    return-object v0

    :catchall_1
    move-exception v0

    move-object p0, v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :goto_5
    :try_start_5
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0
.end method

.method public final declared-synchronized e(Luz2;Lkf4;Lyz2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Luz2<",
            "*>;",
            "Lkf4;",
            "Lyz2<",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p3, :cond_0

    :try_start_0
    iget-boolean v0, p3, Lyz2;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkz2;->g:Lz6;

    invoke-virtual {v0, p2, p3}, Lz6;->a(Lkf4;Lyz2;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    iget-object p3, p0, Lkz2;->a:Lvb4;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p3, p3, Lvb4;->a:Ljava/util/HashMap;

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq p1, v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p3, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final g(Lwq3;Ljava/lang/Object;Lkf4;IILjava/lang/Class;Ljava/lang/Class;Ljg6;Lsn2;Ljava/util/Map;ZZLxz5;ZZLy08;Ljava/util/concurrent/Executor;Lwz2;J)Lkz2$d;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p13

    move-object/from16 v9, p16

    move-object/from16 v10, p17

    move-object/from16 v11, p18

    move-wide/from16 v12, p19

    iget-object v14, v0, Lkz2;->a:Lvb4;

    iget-object v14, v14, Lvb4;->a:Ljava/util/HashMap;

    invoke-virtual {v14, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Luz2;

    if-eqz v14, :cond_1

    invoke-virtual {v14, v9, v10}, Luz2;->a(Ly08;Ljava/util/concurrent/Executor;)V

    sget-boolean v1, Lkz2;->h:Z

    if-eqz v1, :cond_0

    const-string v1, "Added to existing load"

    invoke-static {v1, v12, v13, v11}, Lkz2;->d(Ljava/lang/String;JLwz2;)V

    :cond_0
    new-instance v1, Lkz2$d;

    invoke-direct {v1, v0, v9, v14}, Lkz2$d;-><init>(Lkz2;Ly08;Luz2;)V

    return-object v1

    :cond_1
    iget-object v14, v0, Lkz2;->d:Lkz2$b;

    iget-object v14, v14, Lkz2$b;->g:Lf53$c;

    invoke-virtual {v14}, Lf53$c;->acquire()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Luz2;

    monitor-enter v14

    :try_start_0
    iput-object v11, v14, Luz2;->l:Lwz2;

    move/from16 v15, p14

    iput-boolean v15, v14, Luz2;->m:Z

    move/from16 v15, p15

    iput-boolean v15, v14, Luz2;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v14

    iget-object v15, v0, Lkz2;->f:Lkz2$a;

    iget-object v12, v15, Lkz2$a;->b:Lf53$c;

    invoke-virtual {v12}, Lf53$c;->acquire()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lod2;

    iget v13, v15, Lkz2$a;->c:I

    add-int/lit8 v9, v13, 0x1

    iput v9, v15, Lkz2$a;->c:I

    iget-object v9, v12, Lod2;->b:Lmd2;

    iget-object v15, v12, Lod2;->e:Lod2$d;

    iput-object v1, v9, Lmd2;->c:Lwq3;

    iput-object v2, v9, Lmd2;->d:Ljava/lang/Object;

    iput-object v3, v9, Lmd2;->n:Lkf4;

    iput v4, v9, Lmd2;->e:I

    iput v5, v9, Lmd2;->f:I

    iput-object v7, v9, Lmd2;->p:Lsn2;

    move-object/from16 v10, p6

    iput-object v10, v9, Lmd2;->g:Ljava/lang/Class;

    iput-object v15, v9, Lmd2;->h:Lod2$d;

    move-object/from16 v10, p7

    iput-object v10, v9, Lmd2;->k:Ljava/lang/Class;

    iput-object v6, v9, Lmd2;->o:Ljg6;

    iput-object v8, v9, Lmd2;->i:Lxz5;

    move-object/from16 v10, p10

    iput-object v10, v9, Lmd2;->j:Ljava/util/Map;

    move/from16 v10, p11

    iput-boolean v10, v9, Lmd2;->q:Z

    move/from16 v10, p12

    iput-boolean v10, v9, Lmd2;->r:Z

    iput-object v1, v12, Lod2;->i:Lwq3;

    iput-object v3, v12, Lod2;->j:Lkf4;

    iput-object v6, v12, Lod2;->k:Ljg6;

    iput-object v11, v12, Lod2;->l:Lwz2;

    iput v4, v12, Lod2;->m:I

    iput v5, v12, Lod2;->n:I

    iput-object v7, v12, Lod2;->o:Lsn2;

    iput-object v8, v12, Lod2;->p:Lxz5;

    iput-object v14, v12, Lod2;->q:Luz2;

    iput v13, v12, Lod2;->r:I

    sget-object v3, Lod2$f;->INITIALIZE:Lod2$f;

    iput-object v3, v12, Lod2;->t:Lod2$f;

    iput-object v2, v12, Lod2;->v:Ljava/lang/Object;

    iget-object v1, v1, Lwq3;->g:Lyq3;

    iput-object v1, v12, Lod2;->w:Lyq3;

    sget-object v1, Lod2;->I:Lqz5;

    invoke-virtual {v8, v1}, Lxz5;->c(Lqz5;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/function/Supplier;

    iput-object v1, v12, Lod2;->x:Ljava/util/function/Supplier;

    iget-object v1, v0, Lkz2;->a:Lvb4;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Lvb4;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v11, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v9, p16

    move-object/from16 v10, p17

    invoke-virtual {v14, v9, v10}, Luz2;->a(Ly08;Ljava/util/concurrent/Executor;)V

    monitor-enter v14

    :try_start_1
    iput-object v12, v14, Luz2;->u:Lod2;

    sget-object v1, Lod2$g;->INITIALIZE:Lod2$g;

    invoke-virtual {v12, v1}, Lod2;->i(Lod2$g;)Lod2$g;

    move-result-object v1

    sget-object v2, Lod2$g;->RESOURCE_CACHE:Lod2$g;

    if-eq v1, v2, :cond_4

    sget-object v2, Lod2$g;->DATA_CACHE:Lod2$g;

    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean v1, v14, Luz2;->n:Z

    if-eqz v1, :cond_3

    iget-object v1, v14, Luz2;->j:Lxq3;

    goto :goto_1

    :cond_3
    iget-object v1, v14, Luz2;->i:Lxq3;

    goto :goto_1

    :cond_4
    :goto_0
    iget-object v1, v14, Luz2;->h:Lxq3;

    :goto_1
    invoke-virtual {v1, v12}, Lxq3;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v14

    sget-boolean v1, Lkz2;->h:Z

    if-eqz v1, :cond_5

    const-string v1, "Started new load"

    move-wide/from16 v12, p19

    invoke-static {v1, v12, v13, v11}, Lkz2;->d(Ljava/lang/String;JLwz2;)V

    :cond_5
    new-instance v1, Lkz2$d;

    invoke-direct {v1, v0, v9, v14}, Lkz2$d;-><init>(Lkz2;Ly08;Luz2;)V

    return-object v1

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method
