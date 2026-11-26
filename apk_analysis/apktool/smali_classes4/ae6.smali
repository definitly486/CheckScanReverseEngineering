.class public Lae6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpb6;


# instance fields
.field public final a:Ljava/util/concurrent/ExecutorService;

.field public final b:Ljava/util/concurrent/ExecutorService;

.field public volatile c:Z

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;

.field public f:Lta6;

.field public g:Lxc6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxc6<",
            "Lcom/posthog/PostHogEvent;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Lkc6;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lae6;

    invoke-direct {v0}, Lae6;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    new-instance v0, Lce6;

    const-string v1, "PostHogQueueThread"

    invoke-direct {v0, v1}, Lce6;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lce6;

    const-string v2, "PostHogFeatureFlagsThread"

    invoke-direct {v1, v2}, Lce6;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lae6;->a:Ljava/util/concurrent/ExecutorService;

    iput-object v1, p0, Lae6;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lae6;->d:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lae6;->e:Ljava/lang/Object;

    new-instance v0, Lkc6;

    invoke-direct {v0}, Lkc6;-><init>()V

    iput-object v0, p0, Lae6;->h:Lkc6;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Lcom/posthog/PostHogEvent;
    .locals 14

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lae6;->f:Lta6;

    new-instance v1, Lcom/posthog/PostHogEvent;

    const/4 v13, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lnb6;->I:Lqb6;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lqb6;->b()Ljava/util/Date;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v13

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    :cond_1
    move-object v5, v0

    const/16 v11, 0x1f0

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct/range {v1 .. v12}, Lcom/posthog/PostHogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Date;Ljava/util/UUID;Ljava/lang/String;Ljava/util/UUID;Ljava/util/Map;Ljava/lang/String;ILjh2;)V

    iget-object v0, p0, Lae6;->f:Lta6;

    if-eqz v0, :cond_2

    iget-object v2, v0, Lnb6;->M:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, v0, Lnb6;->L:Ljava/util/ArrayList;

    invoke-static {v0}, Lqn1;->t0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    sget-object v3, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v2

    throw p0

    :cond_2
    sget-object v0, Lkx2;->b:Lkx2;

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljb6;

    :try_start_1
    invoke-interface {v1}, Ljb6;->run()Lcom/posthog/PostHogEvent;

    move-result-object v1

    if-nez v1, :cond_3

    iget-object v0, p0, Lae6;->f:Lta6;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lnb6;->v:Lic6;

    if-eqz v0, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was rejected in beforeSend function"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lic6;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v13

    :catchall_1
    move-exception v0

    iget-object p0, p0, Lae6;->f:Lta6;

    if-eqz p0, :cond_4

    iget-object p0, p0, Lnb6;->v:Lic6;

    if-eqz p0, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error in beforeSend function: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lic6;->a(Ljava/lang/String;)V

    :cond_4
    return-object v13

    :cond_5
    return-object v1
.end method

.method public final e(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Z)Ljava/util/LinkedHashMap;
    .locals 3

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p0}, Lae6;->g()Loc6;

    move-result-object v1

    invoke-interface {v1}, Loc6;->getAll()Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    iget-object v1, p0, Lae6;->f:Lta6;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lnb6;->x:Lob6;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lob6;->c()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1
    iget-object v1, p0, Lae6;->f:Lta6;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lnb6;->x:Lob6;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lob6;->a()Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_2
    if-eqz p2, :cond_3

    const-string v1, "$set"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz p3, :cond_4

    const-string p2, "$set_once"

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-eqz p4, :cond_5

    invoke-virtual {p0}, Lae6;->j()Ljava/util/LinkedHashMap;

    move-result-object p2

    if-eqz p2, :cond_5

    const-string p3, "$groups"

    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object p0, p0, Lae6;->f:Lta6;

    if-eqz p0, :cond_6

    iget-object p0, p0, Lnb6;->x:Lob6;

    if-eqz p0, :cond_6

    invoke-interface {p0}, Lob6;->b()Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_6
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object v0
.end method

.method public final f(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 4

    const-string v0, ". This can cause unexpected behavior."

    const-string v1, "PostHog event "

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-virtual {p0}, Lae6;->h()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v2, p0, Lae6;->f:Lta6;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-boolean v2, v2, Lnb6;->a:Z

    if-ne v2, v3, :cond_1

    iget-object p1, p0, Lae6;->f:Lta6;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lnb6;->v:Lic6;

    if-eqz p1, :cond_4

    const-string p2, "PostHog is in OptOut state."

    invoke-interface {p1, p2}, Lic6;->a(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    const-string v2, "$groupidentify"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v3

    invoke-virtual {p0, p3, p4, p5, v2}, Lae6;->e(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Z)Ljava/util/LinkedHashMap;

    move-result-object p3

    new-instance p4, Ljava/util/LinkedHashMap;

    invoke-direct {p4, p3}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, p1, p2, p4}, Lae6;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Lcom/posthog/PostHogEvent;

    move-result-object p2

    if-nez p2, :cond_3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " was dropped"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lvb6;->Companion:Lvb6$a;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lvb6$a;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_2
    iget-object p1, p0, Lae6;->f:Lta6;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lnb6;->v:Lic6;

    if-eqz p1, :cond_4

    invoke-interface {p1, p2}, Lic6;->a(Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object p1, p0, Lae6;->g:Lxc6;

    if-eqz p1, :cond_4

    invoke-interface {p1, p2}, Lxc6;->add(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_0
    iget-object p0, p0, Lae6;->f:Lta6;

    if-eqz p0, :cond_4

    iget-object p0, p0, Lnb6;->v:Lic6;

    if-eqz p0, :cond_4

    const-string p2, "Capture failed: "

    const/16 p3, 0x2e

    invoke-static {p2, p1, p3, p0}, Lsg;->f(Ljava/lang/String;Ljava/lang/Throwable;CLic6;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public flush()V
    .locals 1

    invoke-virtual {p0}, Lae6;->h()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lae6;->g:Lxc6;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lxc6;->flush()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final g()Loc6;
    .locals 1

    iget-object v0, p0, Lae6;->f:Lta6;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lnb6;->E:Loc6;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    iget-object p0, p0, Lae6;->h:Lkc6;

    return-object p0
.end method

.method public final h()Z
    .locals 2

    iget-boolean v0, p0, Lae6;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lae6;->f:Lta6;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lnb6;->v:Lic6;

    if-eqz v0, :cond_0

    const-string v1, "Setup isn\'t called."

    invoke-interface {v0, v1}, Lic6;->a(Ljava/lang/String;)V

    :cond_0
    iget-boolean p0, p0, Lae6;->c:Z

    return p0
.end method

.method public final i(Lde6;)Z
    .locals 6

    iget-object v0, p0, Lae6;->f:Lta6;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lnb6;->q:Lub6;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lub6;->c:Ljava/util/List;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    if-eqz v2, :cond_8

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_4

    :cond_1
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    :goto_1
    if-eqz p1, :cond_5

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/lang/Class;

    invoke-virtual {v5, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_3
    move-object v4, v1

    :goto_2
    check-cast v4, Ljava/lang/Class;

    if-eqz v4, :cond_4

    move-object v1, v4

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_1

    :cond_5
    :goto_3
    if-nez v1, :cond_6

    goto :goto_4

    :cond_6
    iget-object p0, p0, Lae6;->f:Lta6;

    if-eqz p0, :cond_7

    iget-object p0, p0, Lnb6;->v:Lic6;

    if-eqz p0, :cond_7

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Skipping $exception: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (or a cause in its chain) matches ignoredExceptionTypes"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lic6;->a(Ljava/lang/String;)V

    :cond_7
    const/4 p0, 0x1

    return p0

    :cond_8
    :goto_4
    const/4 p0, 0x0

    return p0
.end method

.method public final j()Ljava/util/LinkedHashMap;
    .locals 2

    invoke-virtual {p0}, Lae6;->g()Loc6;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "groups"

    invoke-interface {p0, v0, v1}, Loc6;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of v1, p0, Ljava/util/Map;

    if-eqz v1, :cond_0

    check-cast p0, Ljava/util/Map;

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    if-eqz p0, :cond_1

    invoke-interface {v1, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    return-object v0

    :cond_2
    return-object v1
.end method
