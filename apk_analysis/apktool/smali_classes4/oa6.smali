.class public final Loa6;
.super Lae6;
.source "SourceFile"

# interfaces
.implements Lbc6;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Loa6$a;
    }
.end annotation


# static fields
.field public static final I:Loa6$a;

.field public static final J:Loa6;

.field public static final K:Ljava/util/LinkedHashSet;


# instance fields
.field public volatile A:Lwb6;

.field public B:Z

.field public C:Z

.field public final D:Lng;

.field public E:Ljava/lang/String;

.field public F:Z

.field public volatile G:Z

.field public H:Z

.field public final i:Ljava/util/concurrent/ScheduledExecutorService;

.field public final j:Ljava/util/concurrent/ScheduledExecutorService;

.field public final k:Ljava/util/concurrent/ScheduledExecutorService;

.field public final l:Ljava/util/concurrent/ScheduledExecutorService;

.field public final m:Ljava/util/concurrent/ScheduledExecutorService;

.field public final n:Ljava/lang/Object;

.field public final o:Ljava/lang/Object;

.field public final p:Ljava/lang/Object;

.field public final q:Ljava/lang/Object;

.field public final r:Ljava/lang/Object;

.field public final s:Ljava/lang/Object;

.field public t:Lxc6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxc6<",
            "Lcom/posthog/PostHogEvent;",
            ">;"
        }
    .end annotation
.end field

.field public u:Lwc6;

.field public volatile v:Ljava/lang/String;

.field public final w:Ljava/lang/Object;

.field public final x:Ljava/util/LinkedHashMap;

.field public y:Lcom/posthog/internal/replay/PostHogSessionReplayHandler;

.field public z:Lbe6;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Loa6$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Loa6;->I:Loa6$a;

    new-instance v0, Loa6;

    invoke-direct {v0}, Loa6;-><init>()V

    sput-object v0, Loa6;->J:Loa6;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v0, Loa6;->K:Ljava/util/LinkedHashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    new-instance v0, Lce6;

    const-string v1, "PostHogQueueThread"

    invoke-direct {v0, v1}, Lce6;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lce6;

    const-string v2, "PostHogReplayQueueThread"

    invoke-direct {v1, v2}, Lce6;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    new-instance v2, Lce6;

    const-string v3, "PostHogLogsQueueThread"

    invoke-direct {v2, v3}, Lce6;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    new-instance v3, Lce6;

    const-string v4, "PostHogRemoteConfigThread"

    invoke-direct {v3, v4}, Lce6;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v3

    new-instance v4, Lce6;

    const-string v5, "PostHogSendCachedEventsThread"

    invoke-direct {v4, v5}, Lce6;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v4

    invoke-direct {p0}, Lae6;-><init>()V

    iput-object v0, p0, Loa6;->i:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object v1, p0, Loa6;->j:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object v2, p0, Loa6;->k:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object v3, p0, Loa6;->l:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object v4, p0, Loa6;->m:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Loa6;->n:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Loa6;->o:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Loa6;->p:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Loa6;->q:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Loa6;->r:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Loa6;->s:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Loa6;->x:Ljava/util/LinkedHashMap;

    new-instance v0, Lng;

    invoke-direct {v0, p0}, Lng;-><init>(Loa6;)V

    iput-object v0, p0, Loa6;->D:Lng;

    return-void
.end method

.method public static r(Ljava/util/List;Ljava/util/Map;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "$exception_list"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    instance-of v1, p1, Ljava/util/List;

    if-eqz v1, :cond_1

    check-cast p1, Ljava/util/List;

    goto :goto_1

    :cond_1
    move-object p1, v0

    :goto_1
    const/4 v1, 0x0

    if-nez p1, :cond_2

    goto/16 :goto_9

    :cond_2
    check-cast p0, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p0, v3}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    check-cast p1, Ljava/lang/Iterable;

    instance-of p0, p1, Ljava/util/Collection;

    if-eqz p0, :cond_4

    move-object p0, p1

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_9

    :cond_4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    instance-of v3, p1, Ljava/util/Map;

    if-eqz v3, :cond_6

    check-cast p1, Ljava/util/Map;

    goto :goto_3

    :cond_6
    move-object p1, v0

    :goto_3
    if-nez p1, :cond_7

    :goto_4
    move p1, v1

    goto :goto_8

    :cond_7
    const-string v3, "type"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_8

    check-cast v3, Ljava/lang/String;

    goto :goto_5

    :cond_8
    move-object v3, v0

    :goto_5
    if-nez v3, :cond_9

    goto :goto_4

    :cond_9
    const-string v4, "module"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v4, p1, Ljava/lang/String;

    if-eqz v4, :cond_a

    check-cast p1, Ljava/lang/String;

    goto :goto_6

    :cond_a
    move-object p1, v0

    :goto_6
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_b

    goto :goto_7

    :cond_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 p1, 0x2e

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_c
    :goto_7
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    :goto_8
    if-eqz p1, :cond_5

    const/4 p0, 0x1

    return p0

    :cond_d
    :goto_9
    return v1
.end method

.method public static w(Lta6;Z)V
    .locals 6

    iget-object v0, p0, Lnb6;->K:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lnb6;->J:Ljava/util/ArrayList;

    invoke-static {v1}, Lqn1;->t0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v0

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lac6;

    :try_start_1
    invoke-interface {v1, p1}, Lac6;->a(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lnb6;->v:Lic6;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Integration "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onRemoteConfig failed: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Lic6;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final A(Z)V
    .locals 2

    iget-object v0, p0, Loa6;->q:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Loa6;->H:Z

    if-eq v1, p1, :cond_0

    iput-boolean p1, p0, Loa6;->H:Z

    invoke-virtual {p0}, Lae6;->g()Loc6;

    move-result-object p0

    const-string v1, "personProcessingEnabled"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, v1, p1}, Loc6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public final B(Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p2, :cond_5

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    if-eqz p2, :cond_2

    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_3
    invoke-virtual {p0}, Loa6;->p()Lad6;

    move-result-object p0

    if-eqz p0, :cond_5

    iget-object p1, p0, Lad6;->o:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lad6;->p:Ljava/util/LinkedHashMap;

    invoke-interface {p2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object p2, p0, Lad6;->a:Lnb6;

    iget-object p2, p2, Lnb6;->E:Loc6;

    if-eqz p2, :cond_4

    const-string v0, "personPropertiesForFlags"

    iget-object p0, p0, Lad6;->p:Ljava/util/LinkedHashMap;

    invoke-interface {p2, v0, p0}, Loc6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_4
    :goto_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1

    throw p0

    :cond_5
    :goto_2
    return-void
.end method

.method public final C()V
    .locals 3

    invoke-virtual {p0}, Lae6;->h()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_3

    :cond_0
    sget-object p0, Lyd6;->a:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lyd6;->g:Z

    if-nez v0, :cond_3

    sget-object v0, Lyd6;->c:Ljava/util/UUID;

    sget-object v1, Lyd6;->b:Ljava/util/UUID;

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    sget-object v0, Lyd6;->d:Lqb6;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lqb6;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    invoke-static {}, Lgu8;->a()Ljava/util/UUID;

    move-result-object v2

    sput-object v2, Lyd6;->c:Ljava/util/UUID;

    sput-wide v0, Lyd6;->e:J

    sput-wide v0, Lyd6;->f:J

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x0

    :goto_2
    sget-object v1, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-eqz v0, :cond_4

    sget-object p0, Lyd6;->i:Lna6;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lna6;->invoke()Ljava/lang/Object;

    :cond_4
    :goto_3
    return-void

    :goto_4
    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    const-string v8, ". This can cause unexpected behavior."

    const-string v9, "PostHog event "

    const-string v3, "capture call not allowed, distinctId is invalid: "

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v10, 0x2e

    :try_start_0
    invoke-virtual {v1}, Lae6;->h()Z

    move-result v6

    if-nez v6, :cond_0

    goto/16 :goto_7

    :cond_0
    invoke-virtual {v1}, Loa6;->u()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v0, v1, Lae6;->f:Lta6;

    if-eqz v0, :cond_12

    iget-object v0, v0, Lnb6;->v:Lic6;

    if-eqz v0, :cond_12

    const-string v2, "PostHog is in OptOut state."

    invoke-interface {v0, v2}, Lic6;->a(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_1
    if-nez p2, :cond_2

    invoke-virtual {v1}, Loa6;->o()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_2
    move-object/from16 v6, p2

    :goto_0
    const/4 v7, 0x1

    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_3

    goto :goto_1

    :cond_3
    if-eqz v5, :cond_4

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_4

    :goto_1
    const-string v11, "capture"

    invoke-virtual {v1, v11, v7}, Loa6;->y(Ljava/lang/String;Z)Z

    :cond_4
    invoke-virtual {v1, v4, v5}, Loa6;->B(Ljava/util/Map;Ljava/util/Map;)V

    invoke-static {v6}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    iget-object v0, v1, Lae6;->f:Lta6;

    if-eqz v0, :cond_12

    iget-object v0, v0, Lnb6;->v:Lic6;

    if-eqz v0, :cond_12

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lic6;->a(Ljava/lang/String;)V

    return-void

    :cond_5
    sget-object v11, Lvb6;->SNAPSHOT:Lvb6;

    invoke-virtual {v11}, Lvb6;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    sget-object v12, Lvb6;->GROUP_IDENTIFY:Lvb6;

    invoke-virtual {v12}, Lvb6;->a()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    iget-object v13, v1, Lae6;->f:Lta6;

    const/4 v14, 0x0

    if-eqz v13, :cond_6

    iget-object v13, v13, Lnb6;->q:Lub6;

    if-eqz v13, :cond_6

    iget-object v13, v13, Lub6;->c:Ljava/util/List;

    goto :goto_2

    :cond_6
    move-object v13, v14

    :goto_2
    move-object v15, v13

    check-cast v15, Ljava/util/Collection;

    if-eqz v15, :cond_8

    invoke-interface {v15}, Ljava/util/Collection;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_7

    goto :goto_3

    :cond_7
    sget-object v15, Lvb6;->EXCEPTION:Lvb6;

    invoke-virtual {v15}, Lvb6;->a()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-static {v13, v2}, Loa6;->r(Ljava/util/List;Ljava/util/Map;)Z

    move-result v13

    if-eqz v13, :cond_8

    iget-object v0, v1, Lae6;->f:Lta6;

    if-eqz v0, :cond_12

    iget-object v0, v0, Lnb6;->v:Lic6;

    if-eqz v0, :cond_12

    const-string v2, "Skipping $exception: an entry in $exception_list matches ignoredExceptionTypes"

    invoke-interface {v0, v2}, Lic6;->a(Ljava/lang/String;)V

    return-void

    :cond_8
    :goto_3
    iget-object v13, v1, Loa6;->A:Lwb6;

    sget-object v15, Lvb6;->EXCEPTION:Lvb6;

    invoke-virtual {v15}, Lvb6;->a()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    if-eqz v13, :cond_a

    if-eqz v2, :cond_9

    new-instance v15, Ljava/util/LinkedHashMap;

    invoke-direct {v15, v2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    goto :goto_4

    :cond_9
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v15, v2

    :goto_4
    invoke-virtual {v13, v15}, Lwb6;->a(Ljava/util/LinkedHashMap;)V

    goto :goto_5

    :cond_a
    move-object v15, v2

    :goto_5
    xor-int/lit8 v2, v3, 0x1

    xor-int/2addr v7, v12

    move-object v3, v6

    move v6, v2

    move-object v2, v3

    move-object v3, v15

    invoke-virtual/range {v1 .. v7}, Loa6;->k(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;ZZ)Ljava/util/LinkedHashMap;

    move-result-object v7

    invoke-virtual {v1, v0, v2, v7}, Lae6;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Lcom/posthog/PostHogEvent;

    move-result-object v3

    if-nez v3, :cond_c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " was dropped"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lvb6;->Companion:Lvb6$a;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lvb6$a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v2, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_b
    iget-object v0, v1, Lae6;->f:Lta6;

    if-eqz v0, :cond_12

    iget-object v0, v0, Lnb6;->v:Lic6;

    if-eqz v0, :cond_12

    invoke-interface {v0, v2}, Lic6;->a(Ljava/lang/String;)V

    return-void

    :cond_c
    invoke-virtual {v3}, Lcom/posthog/PostHogEvent;->getEvent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11}, Lvb6;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {v3}, Lcom/posthog/PostHogEvent;->getProperties()Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_d

    const-string v6, "$session_id"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    :cond_d
    if-nez v14, :cond_e

    iget-object v0, v1, Lae6;->f:Lta6;

    if-eqz v0, :cond_12

    iget-object v0, v0, Lnb6;->v:Lic6;

    if-eqz v0, :cond_12

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/posthog/PostHogEvent;->getEvent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " event dropped, because the $session_id property is missing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lic6;->a(Ljava/lang/String;)V

    return-void

    :cond_e
    if-eqz v4, :cond_f

    iget-object v0, v1, Loa6;->t:Lxc6;

    if-eqz v0, :cond_12

    invoke-interface {v0, v3}, Lxc6;->add(Ljava/lang/Object;)V

    return-void

    :cond_f
    move-object v4, v3

    move-object v3, v2

    invoke-virtual {v4}, Lcom/posthog/PostHogEvent;->getEvent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Lcom/posthog/PostHogEvent;->getProperties()Ljava/util/Map;

    move-result-object v4

    if-nez v4, :cond_10

    sget-object v4, Lmx2;->b:Lmx2;

    :cond_10
    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lae6;->f(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    iget-object v2, v1, Loa6;->z:Lbe6;

    if-eqz v2, :cond_11

    invoke-interface {v2, v0, v7}, Lbe6;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_11
    iget-object v2, v1, Loa6;->y:Lcom/posthog/internal/replay/PostHogSessionReplayHandler;

    if-eqz v2, :cond_12

    invoke-interface {v2, v0, v7}, Lcom/posthog/internal/replay/PostHogSessionReplayHandler;->onEvent(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_6
    iget-object v1, v1, Lae6;->f:Lta6;

    if-eqz v1, :cond_12

    iget-object v1, v1, Lnb6;->v:Lic6;

    if-eqz v1, :cond_12

    const-string v2, "Capture failed: "

    invoke-static {v2, v0, v10, v1}, Lsg;->f(Ljava/lang/String;Ljava/lang/Throwable;CLic6;)V

    :cond_12
    :goto_7
    return-void
.end method

.method public final b(Lde6;)V
    .locals 3

    invoke-virtual {p0}, Lae6;->h()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lae6;->i(Lde6;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_3

    :cond_1
    iget-object v0, p0, Lae6;->f:Lta6;

    if-eqz v0, :cond_2

    iget-object v1, v0, Lnb6;->q:Lub6;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lub6;->a:Ljava/util/List;

    if-nez v1, :cond_3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_0
    sget-object v1, Lkx2;->b:Lkx2;

    :cond_3
    const/4 v2, 0x0

    if-eqz v0, :cond_4

    iget-object v0, v0, Lnb6;->r:Ljava/lang/String;

    goto :goto_1

    :cond_4
    move-object v0, v2

    :goto_1
    invoke-static {p1, v1, v0}, Lx65;->h(Lde6;Ljava/util/List;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p1

    sget-object v0, Lvb6;->EXCEPTION:Lvb6;

    invoke-virtual {v0}, Lvb6;->a()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x7a

    invoke-static {p0, v0, v2, p1, v1}, Lbc6$a;->a(Lbc6;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_2
    iget-object p0, p0, Lae6;->f:Lta6;

    if-eqz p0, :cond_5

    iget-object p0, p0, Lnb6;->v:Lic6;

    if-eqz p0, :cond_5

    const-string v0, "captureException has thrown an exception: "

    const/16 v1, 0x2e

    invoke-static {v0, p1, v1, p0}, Lsg;->f(Ljava/lang/String;Ljava/lang/Throwable;CLic6;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public final c()Z
    .locals 4

    invoke-virtual {p0}, Lae6;->h()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Loa6;->y:Lcom/posthog/internal/replay/PostHogSessionReplayHandler;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/posthog/internal/replay/PostHogSessionReplayHandler;->isActive()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Lae6;->h()Z

    move-result p0

    if-nez p0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    sget-object p0, Lyd6;->a:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lyd6;->c:Ljava/util/UUID;

    sget-object v3, Lyd6;->b:Ljava/util/UUID;

    invoke-static {v0, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v2

    sget-object v3, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    :goto_0
    if-eqz v0, :cond_2

    return v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :goto_1
    return v1
.end method

.method public final flush()V
    .locals 1

    invoke-virtual {p0}, Lae6;->h()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lae6;->flush()V

    iget-object v0, p0, Loa6;->t:Lxc6;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lxc6;->flush()V

    :cond_1
    iget-object p0, p0, Loa6;->u:Lwc6;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lwc6;->flush()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final k(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;ZZ)Ljava/util/LinkedHashMap;
    .locals 8

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v1, 0x0

    if-eqz p5, :cond_15

    invoke-virtual {p0}, Lae6;->g()Loc6;

    move-result-object v2

    invoke-interface {v2}, Loc6;->getAll()Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    iget-object v2, p0, Lae6;->f:Lta6;

    if-eqz v2, :cond_1

    iget-object v2, v2, Lnb6;->x:Lob6;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lob6;->c()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1
    iget-object v2, p0, Lae6;->f:Lta6;

    if-eqz v2, :cond_2

    iget-object v2, v2, Lnb6;->x:Lob6;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lob6;->a()Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_2
    iget-object v2, p0, Lae6;->f:Lta6;

    const/4 v3, 0x1

    if-eqz v2, :cond_8

    iget-boolean v2, v2, Lnb6;->b:Z

    if-ne v2, v3, :cond_8

    invoke-virtual {p0}, Loa6;->p()Lad6;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-object v4, v2, Lad6;->m:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v2, v2, Lad6;->s:Ljava/util/Map;

    if-eqz v2, :cond_3

    invoke-static {v2}, Ln05;->l(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_3
    move-object v2, v1

    :goto_0
    sget-object v5, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    if-eqz v2, :cond_8

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "$feature/"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Ljava/lang/Boolean;

    if-eqz v7, :cond_5

    check-cast v6, Ljava/lang/Boolean;

    goto :goto_2

    :cond_5
    move-object v6, v1

    :goto_2
    if-eqz v6, :cond_6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    goto :goto_3

    :cond_6
    move v6, v3

    :goto_3
    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    const-string v2, "$active_feature_flags"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :goto_4
    monitor-exit v4

    throw p0

    :cond_8
    :goto_5
    if-eqz p3, :cond_9

    const-string v2, "$set"

    invoke-interface {v0, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    if-eqz p4, :cond_a

    const-string p3, "$set_once"

    invoke-interface {v0, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    if-eqz p6, :cond_b

    invoke-virtual {p0}, Lae6;->j()Ljava/util/LinkedHashMap;

    move-result-object p3

    if-eqz p3, :cond_b

    const-string p4, "$groups"

    invoke-interface {v0, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    const-string p3, "$is_identified"

    invoke-virtual {p0}, Loa6;->t()Z

    move-result p4

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    invoke-interface {v0, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "$process_person_profile"

    iget-object p4, p0, Lae6;->f:Lta6;

    if-eqz p4, :cond_c

    iget-object p6, p4, Lnb6;->m:Lw46;

    goto :goto_6

    :cond_c
    move-object p6, v1

    :goto_6
    sget-object v2, Lw46;->NEVER:Lw46;

    const/4 v4, 0x0

    if-eq p6, v2, :cond_12

    if-eqz p4, :cond_d

    iget-object p4, p4, Lnb6;->m:Lw46;

    goto :goto_7

    :cond_d
    move-object p4, v1

    :goto_7
    sget-object p6, Lw46;->IDENTIFIED_ONLY:Lw46;

    if-ne p4, p6, :cond_13

    invoke-virtual {p0}, Loa6;->t()Z

    move-result p4

    if-nez p4, :cond_13

    iget-object p4, p0, Loa6;->q:Ljava/lang/Object;

    monitor-enter p4

    :try_start_1
    iget-boolean p6, p0, Loa6;->C:Z

    if-nez p6, :cond_11

    invoke-virtual {p0}, Lae6;->g()Loc6;

    move-result-object p6

    invoke-interface {p6}, Loc6;->b()Z

    move-result p6

    invoke-virtual {p0}, Lae6;->g()Loc6;

    move-result-object v2

    const-string v5, "personProcessingEnabled"

    invoke-interface {v2, v1, v5}, Loc6;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    instance-of v5, v2, Ljava/lang/Boolean;

    if-eqz v5, :cond_e

    check-cast v2, Ljava/lang/Boolean;

    goto :goto_8

    :catchall_1
    move-exception p0

    goto :goto_b

    :cond_e
    move-object v2, v1

    :goto_8
    if-eqz v2, :cond_f

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_9

    :cond_f
    move v2, v4

    :goto_9
    if-eqz p6, :cond_10

    invoke-virtual {p0, v2}, Loa6;->A(Z)V

    iput-boolean v3, p0, Loa6;->C:Z

    goto :goto_a

    :cond_10
    iput-boolean v2, p0, Loa6;->H:Z

    :cond_11
    :goto_a
    sget-object p6, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p4

    iget-boolean p4, p0, Loa6;->H:Z

    if-eqz p4, :cond_12

    goto :goto_c

    :goto_b
    monitor-exit p4

    throw p0

    :cond_12
    move v3, v4

    :cond_13
    :goto_c
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    invoke-interface {v0, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p3, p0, Loa6;->v:Ljava/lang/String;

    if-eqz p3, :cond_15

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p4

    if-nez p4, :cond_14

    goto :goto_d

    :cond_14
    const-string p4, "$screen_name"

    invoke-interface {v0, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    :goto_d
    iget-object p3, p0, Lae6;->f:Lta6;

    if-eqz p3, :cond_16

    iget-object p3, p3, Lnb6;->x:Lob6;

    if-eqz p3, :cond_16

    invoke-interface {p3}, Lob6;->b()Ljava/util/Map;

    move-result-object p3

    if-eqz p3, :cond_16

    invoke-interface {v0, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_16
    invoke-virtual {p0}, Loa6;->c()Z

    move-result p0

    if-eqz p2, :cond_17

    const-string p3, "$session_id"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_e

    :cond_17
    move-object p3, v1

    :goto_e
    instance-of p4, p3, Ljava/lang/String;

    if-eqz p4, :cond_18

    check-cast p3, Ljava/lang/String;

    goto :goto_f

    :cond_18
    move-object p3, v1

    :goto_f
    if-eqz p3, :cond_1a

    invoke-static {p3}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_19

    goto :goto_10

    :cond_19
    move-object p3, v1

    :goto_10
    if-nez p3, :cond_1c

    :cond_1a
    invoke-static {}, Lyd6;->a()Ljava/util/UUID;

    move-result-object p3

    if-eqz p3, :cond_1b

    invoke-virtual {p3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_11

    :cond_1b
    move-object p3, v1

    :cond_1c
    :goto_11
    if-eqz p3, :cond_1d

    const-string p4, "$session_id"

    invoke-interface {v0, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p5, :cond_1d

    if-eqz p0, :cond_1d

    const-string p4, "$window_id"

    invoke-interface {v0, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    if-eqz p2, :cond_1e

    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1e
    const-string p2, "distinct_id"

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    instance-of p3, p2, Ljava/lang/String;

    if-eqz p3, :cond_1f

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    :cond_1f
    if-nez p5, :cond_21

    if-eqz p0, :cond_21

    if-eqz v1, :cond_20

    invoke-static {v1}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_21

    :cond_20
    const-string p0, "distinct_id"

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21
    return-object v0
.end method

.method public final l()V
    .locals 2

    invoke-virtual {p0}, Lae6;->h()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_2

    :cond_0
    sget-object p0, Lyd6;->a:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lyd6;->g:Z

    if-nez v0, :cond_2

    sget-object v0, Lyd6;->c:Ljava/util/UUID;

    sget-object v1, Lyd6;->b:Ljava/util/UUID;

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    sput-object v1, Lyd6;->c:Ljava/util/UUID;

    const-wide/16 v0, 0x0

    sput-wide v0, Lyd6;->e:J

    sput-wide v0, Lyd6;->f:J

    const/4 v0, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_2
    :goto_0
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-eqz v0, :cond_3

    sget-object p0, Lyd6;->i:Lna6;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lna6;->invoke()Ljava/lang/Object;

    :cond_3
    :goto_2
    return-void

    :goto_3
    monitor-exit p0

    throw v0
.end method

.method public final m()Ljava/lang/String;
    .locals 6

    new-instance v0, Lr07;

    invoke-direct {v0}, Lr07;-><init>()V

    iget-object v1, p0, Loa6;->n:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lae6;->g()Loc6;

    move-result-object v2

    invoke-interface {v2}, Loc6;->b()Z

    move-result v2

    invoke-virtual {p0}, Lae6;->g()Loc6;

    move-result-object v3

    const-string v4, "anonymousId"

    const/4 v5, 0x0

    invoke-interface {v3, v5, v4}, Loc6;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_0

    check-cast v3, Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    move-object v3, v5

    :goto_0
    iput-object v3, v0, Lr07;->b:Ljava/lang/Object;

    if-eqz v3, :cond_1

    invoke-static {v3}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_1
    iget-object v3, p0, Loa6;->E:Ljava/lang/String;

    if-nez v3, :cond_3

    invoke-static {}, Lgu8;->a()Ljava/util/UUID;

    move-result-object v3

    iget-object v4, p0, Lae6;->f:Lta6;

    if-eqz v4, :cond_2

    iget-object v4, v4, Lnb6;->l:Lnl3;

    if-eqz v4, :cond_2

    invoke-interface {v4, v3}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :cond_2
    check-cast v3, Ljava/util/UUID;

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_3
    iput-object v3, v0, Lr07;->b:Ljava/lang/Object;

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lae6;->g()Loc6;

    move-result-object v2

    const-string v4, "anonymousId"

    invoke-interface {v2, v4, v3}, Loc6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v5, p0, Loa6;->E:Ljava/lang/String;

    goto :goto_1

    :cond_4
    iput-object v3, p0, Loa6;->E:Ljava/lang/String;

    :cond_5
    :goto_1
    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    iget-object p0, v0, Lr07;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_6

    const-string p0, ""

    :cond_6
    return-object p0

    :goto_2
    monitor-exit v1

    throw p0
.end method

.method public final n()V
    .locals 5

    invoke-virtual {p0}, Lae6;->h()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Loa6;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lae6;->g()Loc6;

    move-result-object v1

    invoke-interface {v1}, Loc6;->b()Z

    move-result v1

    invoke-virtual {p0}, Lae6;->g()Loc6;

    move-result-object v2

    const-string v3, "deviceId"

    const/4 v4, 0x0

    invoke-interface {v2, v4, v3}, Loc6;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_1

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    if-eqz v4, :cond_3

    invoke-static {v4}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    monitor-exit v0

    return-void

    :cond_3
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Loa6;->m()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lae6;->g()Loc6;

    move-result-object p0

    const-string v1, "deviceId"

    invoke-interface {p0, v1, v2}, Loc6;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    monitor-exit v0

    return-void

    :cond_5
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0

    throw p0
.end method

.method public final o()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lae6;->g()Loc6;

    move-result-object v0

    const-string v1, "distinctId"

    invoke-virtual {p0}, Loa6;->m()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, v1}, Loc6;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    const-string p0, ""

    :cond_1
    return-object p0
.end method

.method public final p()Lad6;
    .locals 0

    iget-object p0, p0, Lae6;->f:Lta6;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lnb6;->H:Lad6;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final q()Ljava/util/UUID;
    .locals 0

    invoke-virtual {p0}, Lae6;->h()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {}, Lyd6;->a()Ljava/util/UUID;

    move-result-object p0

    return-object p0
.end method

.method public final s(Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lae6;->h()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v0, "identify"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Loa6;->y(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-static {p1}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x2e

    if-eqz v0, :cond_2

    iget-object p0, p0, Lae6;->f:Lta6;

    if-eqz p0, :cond_8

    iget-object p0, p0, Lnb6;->v:Lic6;

    if-eqz p0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "identify call not allowed, distinctId is invalid: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lic6;->a(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Loa6;->o()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p0}, Loa6;->m()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "$anon_distinct_id"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lae6;->f:Lta6;

    if-eqz v4, :cond_4

    iget-object v4, v4, Lnb6;->v:Lic6;

    if-eqz v4, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "identify called with invalid anonymousId: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lic6;->a(Ljava/lang/String;)V

    :cond_4
    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {p0}, Loa6;->t()Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Loa6;->p:Ljava/lang/Object;

    monitor-enter v3

    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p0, v4}, Loa6;->z(Z)V

    sget-object v4, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    sget-object v3, Lvb6;->IDENTIFY:Lvb6;

    invoke-virtual {v3}, Lvb6;->a()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x60

    invoke-static {p0, v3, p1, v2, v4}, Lbc6$a;->a(Lbc6;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    invoke-static {v0}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0}, Lae6;->g()Loc6;

    move-result-object v1

    const-string v2, "anonymousId"

    invoke-interface {v1, v2, v0}, Loc6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lae6;->f:Lta6;

    if-eqz v2, :cond_6

    iget-object v2, v2, Lnb6;->v:Lic6;

    if-eqz v2, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "identify called with invalid former distinctId: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lic6;->a(Ljava/lang/String;)V

    :cond_6
    :goto_1
    invoke-virtual {p0}, Lae6;->g()Loc6;

    move-result-object v0

    const-string v1, "distinctId"

    invoke-interface {v0, v1, p1}, Loc6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Loa6;->x(Lng;)V

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v3

    throw p0

    :cond_7
    iget-object p0, p0, Lae6;->f:Lta6;

    if-eqz p0, :cond_8

    iget-object p0, p0, Lnb6;->v:Lic6;

    if-eqz p0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "already identified with id: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lic6;->a(Ljava/lang/String;)V

    :cond_8
    :goto_2
    return-void
.end method

.method public final t()Z
    .locals 5

    iget-object v0, p0, Loa6;->p:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Loa6;->B:Z

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lae6;->g()Loc6;

    move-result-object v1

    invoke-interface {v1}, Loc6;->b()Z

    move-result v1

    invoke-virtual {p0}, Lae6;->g()Loc6;

    move-result-object v2

    const-string v3, "isIdentified"

    const/4 v4, 0x0

    invoke-interface {v2, v4, v3}, Loc6;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    move-object v4, v2

    check-cast v4, Ljava/lang/Boolean;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_0
    const/4 v2, 0x1

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Loa6;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Loa6;->m()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {p0, v3}, Loa6;->z(Z)V

    iput-boolean v2, p0, Loa6;->B:Z

    goto :goto_2

    :cond_3
    iput-boolean v3, p0, Loa6;->F:Z

    :cond_4
    :goto_2
    sget-object v1, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    iget-boolean p0, p0, Loa6;->F:Z

    return p0

    :goto_3
    monitor-exit v0

    throw p0
.end method

.method public final u()Z
    .locals 6

    iget-object v0, p0, Lae6;->f:Lta6;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v2, p0, Loa6;->G:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lae6;->e:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v3, p0, Loa6;->G:Z

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lae6;->g()Loc6;

    move-result-object v3

    invoke-interface {v3}, Loc6;->b()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lae6;->g()Loc6;

    move-result-object v3

    const-string v4, "opt-out"

    iget-boolean v5, v0, Lnb6;->a:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v5, v4}, Loc6;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_1

    check-cast v3, Ljava/lang/Boolean;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, v0, Lnb6;->a:Z

    :cond_2
    iput-boolean v1, p0, Loa6;->G:Z

    :cond_3
    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    goto :goto_2

    :goto_1
    monitor-exit v2

    throw p0

    :cond_4
    :goto_2
    iget-boolean p0, v0, Lnb6;->a:Z

    return p0
.end method

.method public final v(Lta6;Lwd6;)V
    .locals 7

    const-string v0, "distinctId"

    const-string v1, "anonymousId"

    invoke-virtual {p0}, Lae6;->g()Loc6;

    move-result-object v2

    iget-object v3, p1, Lnb6;->t:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v2, v4, v3}, Loc6;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    instance-of v5, v2, Ljava/lang/String;

    if-eqz v5, :cond_0

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, v4

    :goto_0
    if-eqz v2, :cond_7

    :try_start_0
    new-instance v5, Ljava/io/StringReader;

    invoke-direct {v5, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    iget-object p2, p2, Lwd6;->a:Lcom/google/gson/Gson;

    new-instance v6, Lpa6;

    invoke-direct {v6}, Lpa6;-><init>()V

    iget-object v6, v6, Lx39;->b:Ljava/lang/reflect/Type;

    invoke-virtual {p2, v5, v6}, Lcom/google/gson/Gson;->e(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    if-eqz p2, :cond_7

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_1

    check-cast v5, Ljava/lang/String;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_1
    move-object v5, v4

    :goto_1
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    instance-of v6, p2, Ljava/lang/String;

    if-eqz v6, :cond_2

    move-object v4, p2

    check-cast v4, Ljava/lang/String;

    :cond_2
    if-eqz v5, :cond_4

    invoke-static {v5}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lae6;->g()Loc6;

    move-result-object p2

    invoke-interface {p2, v1, v5}, Loc6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    :goto_2
    if-eqz v4, :cond_6

    invoke-static {v4}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lae6;->g()Loc6;

    move-result-object p2

    invoke-interface {p2, v0, v4}, Loc6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    :goto_3
    invoke-virtual {p0}, Lae6;->g()Loc6;

    move-result-object p0

    invoke-interface {p0, v3}, Loc6;->remove(Ljava/lang/String;)V

    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_4
    iget-object p1, p1, Lnb6;->v:Lic6;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Legacy cached prefs: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " failed to parse: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2e

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lic6;->a(Ljava/lang/String;)V

    sget-object p0, Lj59;->a:Lj59;

    :cond_7
    return-void
.end method

.method public final x(Lng;)V
    .locals 10

    invoke-virtual {p0}, Lae6;->h()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lae6;->g()Loc6;

    move-result-object v0

    const-string v1, "groups"

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Loc6;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_1

    move-object v2, v0

    check-cast v2, Ljava/util/Map;

    :cond_1
    move-object v7, v2

    invoke-virtual {p0}, Loa6;->o()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Loa6;->m()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lae6;->f:Lta6;

    if-eqz p0, :cond_3

    iget-object p0, p0, Lnb6;->v:Lic6;

    if-eqz p0, :cond_3

    const-string p1, "Feature flags not loaded, distinctId is invalid: "

    invoke-virtual {p1, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lic6;->a(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Loa6;->p()Lad6;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v0, v4, Lad6;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lzc6;

    iget-object v8, p0, Loa6;->D:Lng;

    move-object v9, p1

    invoke-direct/range {v3 .. v9}, Lzc6;-><init>(Lad6;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lng;Lng;)V

    :try_start_0
    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_3
    :goto_0
    return-void
.end method

.method public final y(Ljava/lang/String;Z)Z
    .locals 3

    iget-object v0, p0, Lae6;->f:Lta6;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lnb6;->m:Lw46;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lw46;->NEVER:Lw46;

    if-ne v1, v2, :cond_2

    if-nez p2, :cond_1

    if-eqz v0, :cond_1

    iget-object p0, v0, Lnb6;->v:Lic6;

    if-eqz p0, :cond_1

    const-string p2, " was called, but `personProfiles` is set to `never`. This call will be ignored."

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lic6;->a(Ljava/lang/String;)V

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Loa6;->A(Z)V

    return p1
.end method

.method public final z(Z)V
    .locals 2

    iget-object v0, p0, Loa6;->p:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Loa6;->F:Z

    invoke-virtual {p0}, Lae6;->g()Loc6;

    move-result-object p0

    const-string v1, "isIdentified"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, v1, p1}, Loc6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
