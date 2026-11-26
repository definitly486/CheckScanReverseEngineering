.class public final Loa6$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbc6;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Loa6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Loa6;->J:Loa6;

    invoke-virtual/range {p0 .. p5}, Loa6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public final b(Lde6;)V
    .locals 0

    sget-object p0, Loa6;->J:Loa6;

    invoke-virtual {p0, p1}, Loa6;->b(Lde6;)V

    return-void
.end method

.method public final c()Z
    .locals 0

    sget-object p0, Loa6;->J:Loa6;

    invoke-virtual {p0}, Loa6;->c()Z

    move-result p0

    return p0
.end method

.method public final d(Lnb6;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lnb6;",
            ">(TT;)V"
        }
    .end annotation

    sget-object p0, Loa6;->J:Loa6;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "API Key: "

    iget-object v1, p0, Lae6;->d:Ljava/lang/Object;

    monitor-enter v1

    const/16 v2, 0x2e

    :try_start_0
    iget-boolean v3, p0, Lae6;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    iget-object v4, p1, Lnb6;->v:Lic6;

    if-eqz v3, :cond_0

    :try_start_1
    const-string p0, "Setup called despite already being setup!"

    invoke-interface {v4, p0}, Lic6;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    move-object v4, p1

    goto/16 :goto_5

    :cond_0
    :try_start_2
    instance-of v3, v4, Lmc6;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    if-eqz v3, :cond_1

    :try_start_3
    new-instance v4, Lpc6;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v4, p1, Lnb6;->v:Lic6;

    iget-object v3, p1, Lnb6;->t:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    if-nez v3, :cond_2

    :try_start_5
    iget-object p0, p1, Lnb6;->v:Lic6;

    const-string v0, "PostHog SDK is disabled because the API key is required and was empty after trimming whitespace."

    invoke-interface {p0, v0}, Lic6;->a(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v1

    return-void

    :cond_2
    :try_start_6
    sget-object v3, Loa6;->K:Ljava/util/LinkedHashSet;

    iget-object v4, p1, Lnb6;->t:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    if-nez v3, :cond_3

    :try_start_7
    iget-object v3, p1, Lnb6;->v:Lic6;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Lnb6;->t:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " already has a PostHog instance."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lic6;->a(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_3
    :try_start_8
    iget-object v0, p1, Lnb6;->E:Loc6;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    if-nez v0, :cond_4

    :try_start_9
    iget-object v0, p0, Lae6;->h:Lkc6;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_4
    :try_start_a
    iput-object v0, p1, Lnb6;->E:Loc6;

    new-instance v5, Ldb6;

    move-object v0, p1

    check-cast v0, Lta6;

    invoke-direct {v5, v0}, Ldb6;-><init>(Lta6;)V

    iget-object v3, p1, Lnb6;->p:Lgm3;

    sget-object v6, Lib6;->BATCH:Lib6;

    iget-object v7, p1, Lnb6;->B:Ljava/lang/String;

    iget-object v8, p0, Loa6;->i:Ljava/util/concurrent/ScheduledExecutorService;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    move-object v4, p1

    :try_start_b
    invoke-interface/range {v3 .. v8}, Lgm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lxc6;

    iget-object v3, v4, Lnb6;->p:Lgm3;

    sget-object v6, Lib6;->SNAPSHOT:Lib6;

    iget-object v7, v4, Lnb6;->C:Ljava/lang/String;

    iget-object v8, p0, Loa6;->j:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface/range {v3 .. v8}, Lgm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxc6;

    new-instance v10, Lwc6;

    iget-object v3, v4, Lnb6;->D:Ljava/lang/String;

    move-object v6, v4

    check-cast v6, Lta6;

    invoke-static {v6, v5, v3}, Liz2$a;->a(Lta6;Ldb6;Ljava/lang/String;)Liz2;

    move-result-object v3

    iget-object v6, p0, Loa6;->k:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v10, v4, v3, v6}, Lwc6;-><init>(Lnb6;Liz2;Ljava/util/concurrent/ExecutorService;)V

    new-instance v8, Lka6;

    move-object v3, v4

    check-cast v3, Lta6;

    invoke-direct {v8, p0, v3}, Lka6;-><init>(Loa6;Lta6;)V

    iget-object v3, v4, Lnb6;->o:Lhm3;

    iget-object v6, p0, Loa6;->l:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v7, Lla6;

    invoke-direct {v7, p0}, Lla6;-><init>(Loa6;)V

    new-instance v9, Lma6;

    invoke-direct {v9, p0}, Lma6;-><init>(Loa6;)V

    invoke-interface/range {v3 .. v9}, Lhm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyb6;

    const/4 v6, 0x0

    iput-boolean v6, p0, Loa6;->G:Z

    new-instance v7, Ltd6;

    iget-object v8, p0, Loa6;->m:Ljava/util/concurrent/ScheduledExecutorService;

    move-object v9, v4

    check-cast v9, Lta6;

    invoke-direct {v7, v9, v5, v8}, Ltd6;-><init>(Lta6;Ldb6;Ljava/util/concurrent/ExecutorService;)V

    move-object v5, v4

    check-cast v5, Lta6;

    iput-object v5, p0, Lae6;->f:Lta6;

    iput-object p1, p0, Lae6;->g:Lxc6;

    iput-object v0, p0, Loa6;->t:Lxc6;

    iput-object v10, p0, Loa6;->u:Lwc6;

    iget-object v0, v4, Lnb6;->q:Lub6;

    iget-object v0, v0, Lub6;->b:Lcd2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lwb6;

    invoke-virtual {v4}, Lnb6;->b()Lwd6;

    move-result-object v5

    iget-object v8, v4, Lnb6;->v:Lic6;

    invoke-direct {v0, v5, v8}, Lwb6;-><init>(Lwd6;Lic6;)V

    iput-object v0, p0, Loa6;->A:Lwb6;

    instance-of v0, v3, Lad6;

    if-eqz v0, :cond_5

    check-cast v3, Lad6;

    iput-object v3, v4, Lnb6;->H:Lad6;

    goto :goto_1

    :catchall_1
    move-exception v0

    :goto_0
    move-object p0, v0

    goto/16 :goto_5

    :cond_5
    :goto_1
    invoke-virtual {v4, v7}, Lnb6;->a(Lac6;)V

    new-instance v0, Ltb6;

    move-object v3, v4

    check-cast v3, Lta6;

    invoke-direct {v0, v3}, Ltb6;-><init>(Lta6;)V

    invoke-virtual {v4, v0}, Lnb6;->a(Lac6;)V

    invoke-virtual {v4}, Lnb6;->b()Lwd6;

    move-result-object v0

    move-object v3, v4

    check-cast v3, Lta6;

    invoke-virtual {p0, v3, v0}, Loa6;->v(Lta6;Lwd6;)V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lae6;->c:Z

    invoke-virtual {p0}, Loa6;->n()V

    invoke-interface {p1}, Lxc6;->start()V

    invoke-virtual {v10}, Lwc6;->start()V

    sget-object p1, Lyd6;->a:Ljava/lang/Object;

    new-instance p1, Lna6;

    move-object v0, v4

    check-cast v0, Lta6;

    invoke-direct {p1, v6, p0, v0}, Lna6;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    sput-object p1, Lyd6;->i:Lna6;

    invoke-virtual {p0}, Loa6;->C()V

    iget-object p1, v4, Lnb6;->K:Ljava/lang/Object;

    monitor-enter p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    iget-object v0, v4, Lnb6;->J:Ljava/util/ArrayList;

    invoke-static {v0}, Lqn1;->t0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    sget-object v5, Lj59;->a:Lj59;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :try_start_d
    monitor-exit p1

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lac6;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :try_start_e
    invoke-interface {v5, p0}, Lac6;->b(Lbc6;)V

    instance-of v0, v5, Lcom/posthog/internal/replay/PostHogSessionReplayHandler;

    if-eqz v0, :cond_7

    move-object v0, v5

    check-cast v0, Lcom/posthog/internal/replay/PostHogSessionReplayHandler;

    iput-object v0, p0, Loa6;->y:Lcom/posthog/internal/replay/PostHogSessionReplayHandler;

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_4

    :cond_7
    instance-of v0, v5, Lbe6;

    if-eqz v0, :cond_6

    move-object v0, v5

    check-cast v0, Lbe6;

    iput-object v0, p0, Loa6;->z:Lbe6;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :try_start_f
    invoke-virtual {p0}, Loa6;->p()Lad6;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v6, v0, Lad6;->n:Ljava/lang/Object;

    monitor-enter v6
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    :try_start_10
    iget-object v0, v0, Lad6;->B:Ljava/util/List;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    :try_start_11
    monitor-exit v6

    if-nez v0, :cond_9

    goto :goto_3

    :catchall_3
    move-exception v0

    monitor-exit v6

    throw v0

    :cond_8
    :goto_3
    sget-object v0, Lkx2;->b:Lkx2;

    :cond_9
    move-object v6, v5

    check-cast v6, Lbe6;

    invoke-interface {v6, v0}, Lbe6;->a(Ljava/util/List;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    goto :goto_2

    :catchall_4
    move-exception v0

    :try_start_12
    iget-object v6, v4, Lnb6;->v:Lic6;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Pushing cached surveys to integration failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Lic6;->a(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    goto :goto_2

    :goto_4
    :try_start_13
    iget-object v6, v4, Lnb6;->v:Lic6;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Integration "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " failed to install: "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Lic6;->a(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_a
    invoke-virtual {p0}, Loa6;->p()Lad6;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object p1, p1, Lad6;->u:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v3

    :cond_b
    iget-boolean p1, v4, Lnb6;->e:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_d

    iget-object v7, p0, Loa6;->D:Lng;

    invoke-virtual {p0}, Lae6;->g()Loc6;

    move-result-object p1

    const-string v3, "groups"

    invoke-interface {p1, v0, v3}, Loc6;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v3, p1, Ljava/util/Map;

    if-eqz v3, :cond_c

    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    :cond_c
    move-object v10, v0

    invoke-virtual {p0}, Loa6;->o()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Loa6;->m()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Loa6;->p()Lad6;

    move-result-object v6

    if-eqz v6, :cond_e

    iget-object p0, v6, Lad6;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Lyc6;

    invoke-direct/range {v5 .. v10}, Lyc6;-><init>(Lad6;Lng;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    :try_start_14
    invoke-interface {p0, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    goto :goto_6

    :cond_d
    :try_start_15
    iget-boolean p1, v4, Lnb6;->c:Z

    if-eqz p1, :cond_e

    invoke-virtual {p0, v0}, Loa6;->x(Lng;)V

    goto :goto_6

    :catchall_5
    move-exception v0

    move-object p0, v0

    monitor-exit p1

    throw p0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    :catchall_6
    move-exception v0

    move-object v4, p1

    goto/16 :goto_0

    :goto_5
    :try_start_16
    iget-object p1, v4, Lnb6;->v:Lic6;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setup failed: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lic6;->a(Ljava/lang/String;)V

    :catchall_7
    :cond_e
    :goto_6
    sget-object p0, Lj59;->a:Lj59;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    monitor-exit v1

    return-void

    :catchall_8
    move-exception v0

    move-object p0, v0

    monitor-exit v1

    throw p0
.end method

.method public final flush()V
    .locals 0

    sget-object p0, Loa6;->J:Loa6;

    invoke-virtual {p0}, Loa6;->flush()V

    return-void
.end method
