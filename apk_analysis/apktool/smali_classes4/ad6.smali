.class public final Lad6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyb6;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lad6$a;,
        Lad6$b;
    }
.end annotation


# instance fields
.field public A:Ljava/lang/Long;

.field public B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/posthog/surveys/Survey;",
            ">;"
        }
    .end annotation
.end field

.field public volatile C:Z

.field public volatile D:Z

.field public volatile E:Z

.field public volatile F:Z

.field public volatile G:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public volatile H:Ljava/lang/Long;

.field public final a:Lnb6;

.field public final b:Ldb6;

.field public final c:Ljava/util/concurrent/ExecutorService;

.field public final d:Lrb6;

.field public final e:Lxb6;

.field public final f:Lnc6;

.field public final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final k:Ljava/lang/Object;

.field public l:Lad6$b;

.field public final m:Ljava/lang/Object;

.field public final n:Ljava/lang/Object;

.field public final o:Ljava/lang/Object;

.field public final p:Ljava/util/LinkedHashMap;

.field public final q:Ljava/lang/Object;

.field public final r:Ljava/util/LinkedHashMap;

.field public s:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public t:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public volatile u:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public volatile v:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public w:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public x:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public y:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnb6;Ldb6;Ljava/util/concurrent/ExecutorService;Lrb6;Lxb6;Lnc6;)V
    .locals 1

    sget-object v0, Lmx2;->b:Lmx2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lad6;->a:Lnb6;

    iput-object p2, p0, Lad6;->b:Ldb6;

    iput-object p3, p0, Lad6;->c:Ljava/util/concurrent/ExecutorService;

    iput-object p4, p0, Lad6;->d:Lrb6;

    iput-object p5, p0, Lad6;->e:Lxb6;

    iput-object p6, p0, Lad6;->f:Lnc6;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lad6;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lad6;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lad6;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lad6;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lad6;->k:Ljava/lang/Object;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lad6;->m:Ljava/lang/Object;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lad6;->n:Ljava/lang/Object;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lad6;->o:Ljava/lang/Object;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lad6;->p:Ljava/util/LinkedHashMap;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lad6;->q:Ljava/lang/Object;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lad6;->r:Ljava/util/LinkedHashMap;

    :try_start_0
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p3, p0, Lad6;->a:Lnb6;

    iget-object p3, p3, Lnb6;->v:Lic6;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "Filtering bootstrapped flags failed: "

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". All bootstrapped flags were dropped."

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Lic6;->a(Ljava/lang/String;)V

    sget-object p1, Lmx2;->b:Lmx2;

    :goto_0
    iput-object p1, p0, Lad6;->u:Ljava/util/Map;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    sget-object p3, Lox2;->b:Lox2;

    iput-object p1, p0, Lad6;->v:Ljava/util/Map;

    iput-object p3, p0, Lad6;->w:Ljava/util/Set;

    iput-object p3, p0, Lad6;->x:Ljava/util/Set;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lad6;->F:Z

    iget-object p1, p0, Lad6;->m:Ljava/lang/Object;

    monitor-enter p1

    :try_start_1
    iget-object p3, p0, Lad6;->a:Lnb6;

    iget-object p3, p3, Lnb6;->E:Loc6;

    const/4 p4, 0x0

    if-eqz p3, :cond_c

    const-string p5, "sessionReplay"

    invoke-interface {p3, p4, p5}, Loc6;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p5

    instance-of p6, p5, Ljava/util/Map;

    if-eqz p6, :cond_0

    check-cast p5, Ljava/util/Map;

    goto :goto_1

    :catchall_1
    move-exception p0

    goto/16 :goto_d

    :cond_0
    move-object p5, p4

    :goto_1
    const-string p6, "featureFlags"

    invoke-interface {p3, p4, p6}, Loc6;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    instance-of p6, p3, Ljava/util/Map;

    if-eqz p6, :cond_1

    check-cast p3, Ljava/util/Map;

    goto :goto_2

    :cond_1
    move-object p3, p4

    :goto_2
    if-eqz p5, :cond_b

    if-nez p3, :cond_2

    goto :goto_3

    :cond_2
    move-object v0, p3

    :goto_3
    invoke-virtual {p0, v0, p5}, Lad6;->i(Ljava/util/Map;Ljava/util/Map;)Z

    iget-object p3, p0, Lad6;->a:Lnb6;

    const-string p6, "endpoint"

    invoke-interface {p5, p6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    instance-of v0, p6, Ljava/lang/String;

    if-eqz v0, :cond_3

    check-cast p6, Ljava/lang/String;

    goto :goto_4

    :cond_3
    move-object p6, p4

    :goto_4
    if-nez p6, :cond_4

    iget-object p6, p0, Lad6;->a:Lnb6;

    iget-object p6, p6, Lnb6;->G:Ljava/lang/String;

    :cond_4
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p6, p3, Lnb6;->G:Ljava/lang/String;

    const-string p3, "consoleLogRecordingEnabled"

    invoke-interface {p5, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    instance-of p6, p3, Ljava/lang/Boolean;

    if-eqz p6, :cond_5

    check-cast p3, Ljava/lang/Boolean;

    goto :goto_5

    :cond_5
    move-object p3, p4

    :goto_5
    if-eqz p3, :cond_6

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    goto :goto_6

    :cond_6
    move p3, p2

    :goto_6
    iput-boolean p3, p0, Lad6;->F:Z

    const-string p3, "sampleRate"

    invoke-interface {p5, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p0, p3}, Lad6;->p(Ljava/lang/Object;)Ljava/lang/Double;

    const-string p3, "eventTriggers"

    invoke-interface {p5, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    instance-of p6, p3, Ljava/util/List;

    if-eqz p6, :cond_7

    check-cast p3, Ljava/util/List;

    goto :goto_7

    :cond_7
    move-object p3, p4

    :goto_7
    if-nez p3, :cond_8

    goto :goto_9

    :cond_8
    move-object p6, p3

    check-cast p6, Ljava/util/Collection;

    invoke-interface {p6}, Ljava/util/Collection;->isEmpty()Z

    move-result p6

    if-nez p6, :cond_9

    goto :goto_8

    :cond_9
    move-object p3, p4

    :goto_8
    if-eqz p3, :cond_a

    check-cast p3, Ljava/lang/Iterable;

    invoke-static {p3}, Lqn1;->y0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p3

    goto :goto_a

    :cond_a
    :goto_9
    move-object p3, p4

    :goto_a
    iput-object p3, p0, Lad6;->G:Ljava/util/Set;

    const-string p3, "minimumDurationMilliseconds"

    invoke-interface {p5, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p0, p3}, Lad6;->o(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p3

    iput-object p3, p0, Lad6;->H:Ljava/lang/Long;

    :cond_b
    sget-object p3, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_c
    monitor-exit p1

    iget-object p1, p0, Lad6;->n:Ljava/lang/Object;

    monitor-enter p1

    :try_start_2
    invoke-virtual {p0}, Lad6;->d()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    monitor-exit p1

    iget-object p1, p0, Lad6;->n:Ljava/lang/Object;

    monitor-enter p1

    :try_start_3
    iget-object p3, p0, Lad6;->a:Lnb6;

    iget-object p3, p3, Lnb6;->E:Loc6;

    if-eqz p3, :cond_11

    const-string p5, "errorTracking"

    invoke-interface {p3, p4, p5}, Loc6;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    instance-of p5, p3, Ljava/util/Map;

    if-eqz p5, :cond_d

    check-cast p3, Ljava/util/Map;

    goto :goto_b

    :catchall_2
    move-exception p0

    goto :goto_c

    :cond_d
    move-object p3, p4

    :goto_b
    if-eqz p3, :cond_10

    const-string p5, "autocaptureExceptions"

    invoke-interface {p3, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    instance-of p5, p3, Ljava/lang/Boolean;

    if-eqz p5, :cond_e

    move-object p4, p3

    check-cast p4, Ljava/lang/Boolean;

    :cond_e
    if-eqz p4, :cond_f

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    :cond_f
    iput-boolean p2, p0, Lad6;->E:Z

    :cond_10
    sget-object p2, Lj59;->a:Lj59;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_11
    monitor-exit p1

    invoke-virtual {p0}, Lad6;->q()V

    invoke-virtual {p0}, Lad6;->j()V

    iget-object p1, p0, Lad6;->m:Ljava/lang/Object;

    monitor-enter p1

    :try_start_4
    invoke-virtual {p0}, Lad6;->a()V

    sget-object p0, Lj59;->a:Lj59;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    monitor-exit p1

    return-void

    :catchall_3
    move-exception p0

    monitor-exit p1

    throw p0

    :goto_c
    monitor-exit p1

    throw p0

    :catchall_4
    move-exception p0

    monitor-exit p1

    throw p0

    :goto_d
    monitor-exit p1

    throw p0
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lad6;->u:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lad6;->u:Ljava/util/Map;

    iput-object v0, p0, Lad6;->s:Ljava/util/Map;

    iget-object v0, p0, Lad6;->v:Ljava/util/Map;

    iput-object v0, p0, Lad6;->t:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lad6;->y:Ljava/util/Map;

    iput-object v0, p0, Lad6;->z:Ljava/lang/String;

    iput-object v0, p0, Lad6;->A:Ljava/lang/Long;

    return-void
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lad6;->m:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lad6;->F:Z

    iput-boolean v1, p0, Lad6;->C:Z

    sget-object v2, Lmx2;->b:Lmx2;

    iput-object v2, p0, Lad6;->u:Ljava/util/Map;

    iput-object v2, p0, Lad6;->v:Ljava/util/Map;

    iput-boolean v1, p0, Lad6;->D:Z

    sget-object v2, Lox2;->b:Lox2;

    iput-object v2, p0, Lad6;->w:Ljava/util/Set;

    iput-object v2, p0, Lad6;->x:Ljava/util/Set;

    invoke-virtual {p0}, Lad6;->c()V

    sget-object v2, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    monitor-exit v0

    iget-object v0, p0, Lad6;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lad6;->n:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iput-boolean v1, p0, Lad6;->E:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    monitor-exit v0

    iget-object v0, p0, Lad6;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_2
    iget-object v1, p0, Lad6;->p:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v1, p0, Lad6;->a:Lnb6;

    iget-object v1, v1, Lnb6;->E:Loc6;

    if-eqz v1, :cond_0

    const-string v2, "personPropertiesForFlags"

    invoke-interface {v1, v2}, Loc6;->remove(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_0
    monitor-exit v0

    iget-object v0, p0, Lad6;->q:Ljava/lang/Object;

    monitor-enter v0

    iget-object v1, p0, Lad6;->r:Ljava/util/LinkedHashMap;

    :try_start_3
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    iget-object p0, p0, Lad6;->a:Lnb6;

    iget-object p0, p0, Lnb6;->E:Loc6;

    if-eqz p0, :cond_1

    const-string v1, "groupPropertiesForFlags"

    invoke-interface {p0, v1}, Loc6;->remove(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0

    throw p0

    :goto_3
    monitor-exit v0

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0

    :catchall_3
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lad6;->s:Ljava/util/Map;

    iput-object v0, p0, Lad6;->t:Ljava/util/Map;

    iput-object v0, p0, Lad6;->y:Ljava/util/Map;

    iput-object v0, p0, Lad6;->z:Ljava/lang/String;

    iput-object v0, p0, Lad6;->A:Ljava/lang/Long;

    iget-object p0, p0, Lad6;->a:Lnb6;

    iget-object p0, p0, Lnb6;->E:Loc6;

    if-eqz p0, :cond_0

    const-string v0, "flags"

    invoke-interface {p0, v0}, Loc6;->remove(Ljava/lang/String;)V

    const-string v0, "featureFlags"

    invoke-interface {p0, v0}, Loc6;->remove(Ljava/lang/String;)V

    const-string v0, "featureFlagsPayload"

    invoke-interface {p0, v0}, Loc6;->remove(Ljava/lang/String;)V

    const-string v0, "feature_flag_request_id"

    invoke-interface {p0, v0}, Loc6;->remove(Ljava/lang/String;)V

    const-string v0, "feature_flag_evaluated_at"

    invoke-interface {p0, v0}, Loc6;->remove(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lad6;->a:Lnb6;

    iget-object v0, v0, Lnb6;->E:Loc6;

    if-eqz v0, :cond_0

    const-string v1, "surveys"

    invoke-interface {v0, v1}, Loc6;->remove(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lad6;->B:Ljava/util/List;

    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lng;Lng;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lng;",
            "Lng;",
            "Z)V"
        }
    .end annotation

    iget-object v0, p0, Lad6;->a:Lnb6;

    iget-object v0, v0, Lnb6;->F:Llc6;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Llc6;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lad6;->a:Lnb6;

    iget-object p1, p1, Lnb6;->v:Lic6;

    const-string p2, "Network isn\'t connected."

    invoke-interface {p1, p2}, Lic6;->a(Ljava/lang/String;)V

    if-eqz p6, :cond_32

    iget-object p1, p0, Lad6;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_32

    invoke-virtual {p0}, Lad6;->n()V

    return-void

    :cond_0
    iget-object v0, p0, Lad6;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    iget-object v2, p0, Lad6;->a:Lnb6;

    if-eqz v0, :cond_1

    iget-object p6, v2, Lnb6;->v:Lic6;

    const-string v0, "Feature flags are being loaded already, queuing reload."

    invoke-interface {p6, v0}, Lic6;->a(Ljava/lang/String;)V

    iget-object p6, p0, Lad6;->k:Ljava/lang/Object;

    monitor-enter p6

    :try_start_0
    iget-object v0, p0, Lad6;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v2, Lad6$b;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lad6$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lng;Lng;)V

    iput-object v2, p0, Lad6;->l:Lad6$b;

    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p6

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit p6

    throw p0

    :cond_1
    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    const/4 p1, 0x0

    const/4 p2, 0x0

    :try_start_1
    iget-object p3, v2, Lnb6;->E:Loc6;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    if-eqz p3, :cond_2

    :try_start_2
    const-string p4, "deviceId"

    invoke-interface {p3, p2, p4}, Loc6;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p3, v0

    move-object v1, p0

    goto/16 :goto_1b

    :cond_2
    move-object p3, p2

    :goto_0
    :try_start_3
    instance-of p4, p3, Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-eqz p4, :cond_3

    :try_start_4
    check-cast p3, Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :cond_3
    move-object p3, p2

    :goto_1
    :try_start_5
    iget-object v2, p0, Lad6;->b:Ldb6;

    invoke-virtual {p0}, Lad6;->h()Ljava/util/LinkedHashMap;

    move-result-object v7

    invoke-virtual {p0}, Lad6;->g()Ljava/util/Map;

    move-result-object v8

    move-object v6, v5

    move-object v5, p3

    invoke-static/range {v2 .. v8}, Ldb6;->e(Ldb6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/LinkedHashMap;Ljava/util/Map;)Lcom/posthog/internal/PostHogFlagsResponse;

    move-result-object p3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz p3, :cond_2c

    :try_start_6
    iget-object p4, p0, Lad6;->a:Lnb6;

    iget-object p4, p4, Lnb6;->E:Loc6;

    if-eqz p4, :cond_4

    const-string p5, "sessionReplay"

    invoke-interface {p4, p2, p5}, Loc6;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    goto :goto_2

    :cond_4
    move-object p4, p2

    :goto_2
    iget-object p5, p0, Lad6;->a:Lnb6;

    iget-object p5, p5, Lnb6;->E:Loc6;

    if-eqz p5, :cond_5

    const-string v0, "capturePerformance"

    invoke-interface {p5, p2, v0}, Loc6;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p5

    goto :goto_3

    :cond_5
    move-object p5, p2

    :goto_3
    iget-object v0, p0, Lad6;->a:Lnb6;

    iget-object v0, v0, Lnb6;->E:Loc6;

    if-eqz v0, :cond_6

    const-string v2, "errorTracking"

    invoke-interface {v0, p2, v2}, Loc6;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_4

    :cond_6
    move-object v0, p2

    :goto_4
    iget-object v2, p0, Lad6;->m:Ljava/lang/Object;

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-virtual {p3}, Lcom/posthog/internal/PostHogFlagsResponse;->getQuotaLimited()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_a

    const-string v4, "feature_flags"

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v1, :cond_a

    iget-object p3, p0, Lad6;->a:Lnb6;

    iget-object p3, p3, Lnb6;->v:Lic6;

    const-string v3, "Feature flags are quota limited, flags could not be updated.\n                                    Learn more about billing limits at https://posthog.com/docs/billing/limits-alerts"

    invoke-interface {p3, v3}, Lic6;->a(Ljava/lang/String;)V

    if-nez p4, :cond_7

    iget-object p3, p0, Lad6;->a:Lnb6;

    iget-object p3, p3, Lnb6;->v:Lic6;

    const-string p4, "No cached session replay config to re-evaluate; replay stays disabled."

    invoke-interface {p3, p4}, Lic6;->a(Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    invoke-virtual {p0, p4, p1}, Lad6;->t(Ljava/lang/Object;Z)V

    :goto_5
    if-nez p5, :cond_8

    iget-object p3, p0, Lad6;->a:Lnb6;

    iget-object p3, p3, Lnb6;->v:Lic6;

    const-string p4, "No cached capture performance config to re-evaluate; network timing stays disabled."

    invoke-interface {p3, p4}, Lic6;->a(Ljava/lang/String;)V

    goto :goto_6

    :cond_8
    invoke-virtual {p0, p5, p1}, Lad6;->r(Ljava/lang/Object;Z)V

    :goto_6
    if-nez v0, :cond_9

    iget-object p3, p0, Lad6;->a:Lnb6;

    iget-object p3, p3, Lnb6;->v:Lic6;

    const-string p4, "No cached error tracking config to re-evaluate; autocapture stays disabled."

    invoke-interface {p3, p4}, Lic6;->a(Ljava/lang/String;)V

    goto :goto_7

    :cond_9
    invoke-virtual {p0, v0, p1}, Lad6;->s(Ljava/lang/Object;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :goto_7
    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move p3, v1

    goto/16 :goto_16

    :catchall_2
    move-exception v0

    move-object p3, v0

    goto/16 :goto_17

    :cond_a
    :try_start_9
    invoke-virtual {p0, p3}, Lad6;->l(Lcom/posthog/internal/PostHogFlagsResponse;)Lcom/posthog/internal/PostHogFlagsResponse;

    move-result-object p3

    invoke-virtual {p3}, Lcom/posthog/internal/PostHogFlagsResponse;->getErrorsWhileComputingFlags()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-virtual {p3}, Lcom/posthog/internal/PostHogFlagsResponse;->getFlags()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_17

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/posthog/internal/FeatureFlag;

    invoke-virtual {v6}, Lcom/posthog/internal/FeatureFlag;->getFailed()Ljava/lang/Boolean;

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v6, v7}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_c
    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    iget-object v5, p0, Lad6;->y:Ljava/util/Map;

    if-nez v5, :cond_d

    sget-object v5, Lmx2;->b:Lmx2;

    :cond_d
    invoke-static {v5, v4}, Ln05;->g(Ljava/util/Map;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v4

    iput-object v4, p0, Lad6;->y:Ljava/util/Map;

    invoke-virtual {p3}, Lcom/posthog/internal/PostHogFlagsResponse;->getFeatureFlags()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_f

    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_e
    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v3, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_f
    sget-object v5, Lmx2;->b:Lmx2;

    :cond_10
    iget-object v4, p0, Lad6;->s:Ljava/util/Map;

    if-nez v4, :cond_11

    sget-object v4, Lmx2;->b:Lmx2;

    :cond_11
    invoke-static {v4, v5}, Ln05;->g(Ljava/util/Map;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v4

    iput-object v4, p0, Lad6;->s:Ljava/util/Map;

    invoke-virtual {p3}, Lcom/posthog/internal/PostHogFlagsResponse;->getFeatureFlagPayloads()Ljava/util/Map;

    move-result-object p3

    invoke-virtual {p0, p3}, Lad6;->m(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object p3

    iget-object v4, p0, Lad6;->t:Ljava/util/Map;

    if-nez v4, :cond_12

    sget-object v4, Lmx2;->b:Lmx2;

    :cond_12
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_13
    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_14

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v3, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v8, v7}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_14
    invoke-static {v4, v5}, Ln05;->g(Ljava/util/Map;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v4

    iput-object v4, p0, Lad6;->t:Ljava/util/Map;

    iget-object v4, p0, Lad6;->w:Ljava/util/Set;

    move-object v5, v3

    check-cast v5, Ljava/lang/Iterable;

    invoke-static {v4, v5}, Lmr7;->l(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    move-result-object v4

    iput-object v4, p0, Lad6;->w:Ljava/util/Set;

    iget-object v4, p0, Lad6;->x:Ljava/util/Set;

    invoke-virtual {p3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p3

    check-cast p3, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_15
    :goto_b
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_16

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ljava/lang/String;

    invoke-interface {v3, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_16
    invoke-static {v4, v5}, Lmr7;->l(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    move-result-object p3

    iput-object p3, p0, Lad6;->x:Ljava/util/Set;

    goto/16 :goto_e

    :cond_17
    iget-object v3, p0, Lad6;->s:Ljava/util/Map;

    if-nez v3, :cond_18

    sget-object v3, Lmx2;->b:Lmx2;

    :cond_18
    invoke-virtual {p3}, Lcom/posthog/internal/PostHogFlagsResponse;->getFeatureFlags()Ljava/util/Map;

    move-result-object v4

    if-nez v4, :cond_19

    sget-object v4, Lmx2;->b:Lmx2;

    :cond_19
    invoke-static {v3, v4}, Ln05;->g(Ljava/util/Map;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v3

    iput-object v3, p0, Lad6;->s:Ljava/util/Map;

    invoke-virtual {p3}, Lcom/posthog/internal/PostHogFlagsResponse;->getFeatureFlagPayloads()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p0, v3}, Lad6;->m(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v3

    iget-object v4, p0, Lad6;->t:Ljava/util/Map;

    if-nez v4, :cond_1a

    sget-object v4, Lmx2;->b:Lmx2;

    :cond_1a
    invoke-static {v4, v3}, Ln05;->g(Ljava/util/Map;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v4

    iput-object v4, p0, Lad6;->t:Ljava/util/Map;

    iget-object v4, p0, Lad6;->w:Ljava/util/Set;

    invoke-virtual {p3}, Lcom/posthog/internal/PostHogFlagsResponse;->getFeatureFlags()Ljava/util/Map;

    move-result-object p3

    if-eqz p3, :cond_1b

    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p3

    if-eqz p3, :cond_1b

    check-cast p3, Ljava/lang/Iterable;

    goto :goto_c

    :cond_1b
    sget-object p3, Lox2;->b:Lox2;

    :goto_c
    invoke-static {v4, p3}, Lmr7;->l(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    move-result-object p3

    iput-object p3, p0, Lad6;->w:Ljava/util/Set;

    iget-object p3, p0, Lad6;->x:Ljava/util/Set;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {p3, v3}, Lmr7;->l(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    move-result-object p3

    iput-object p3, p0, Lad6;->x:Ljava/util/Set;

    goto :goto_e

    :cond_1c
    invoke-virtual {p3}, Lcom/posthog/internal/PostHogFlagsResponse;->getFlags()Ljava/util/Map;

    move-result-object v3

    iput-object v3, p0, Lad6;->y:Ljava/util/Map;

    invoke-virtual {p3}, Lcom/posthog/internal/PostHogFlagsResponse;->getFeatureFlags()Ljava/util/Map;

    move-result-object v3

    iput-object v3, p0, Lad6;->s:Ljava/util/Map;

    invoke-virtual {p3}, Lcom/posthog/internal/PostHogFlagsResponse;->getFeatureFlagPayloads()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p0, v3}, Lad6;->m(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v3

    iput-object v3, p0, Lad6;->t:Ljava/util/Map;

    iget-object v4, p0, Lad6;->w:Ljava/util/Set;

    invoke-virtual {p3}, Lcom/posthog/internal/PostHogFlagsResponse;->getFeatureFlags()Ljava/util/Map;

    move-result-object p3

    if-eqz p3, :cond_1d

    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p3

    if-eqz p3, :cond_1d

    check-cast p3, Ljava/lang/Iterable;

    goto :goto_d

    :cond_1d
    sget-object p3, Lox2;->b:Lox2;

    :goto_d
    invoke-static {v4, p3}, Lmr7;->l(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    move-result-object p3

    iput-object p3, p0, Lad6;->w:Ljava/util/Set;

    iget-object p3, p0, Lad6;->x:Ljava/util/Set;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {p3, v3}, Lmr7;->l(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    move-result-object p3

    iput-object p3, p0, Lad6;->x:Ljava/util/Set;

    :goto_e
    if-nez p4, :cond_1e

    iget-object p3, p0, Lad6;->a:Lnb6;

    iget-object p3, p3, Lnb6;->v:Lic6;

    const-string p4, "No cached session replay config to re-evaluate; replay stays disabled."

    invoke-interface {p3, p4}, Lic6;->a(Ljava/lang/String;)V

    goto :goto_f

    :cond_1e
    invoke-virtual {p0, p4, p1}, Lad6;->t(Ljava/lang/Object;Z)V

    :goto_f
    if-nez p5, :cond_1f

    iget-object p3, p0, Lad6;->a:Lnb6;

    iget-object p3, p3, Lnb6;->v:Lic6;

    const-string p4, "No cached capture performance config to re-evaluate; network timing stays disabled."

    invoke-interface {p3, p4}, Lic6;->a(Ljava/lang/String;)V

    goto :goto_10

    :cond_1f
    invoke-virtual {p0, p5, p1}, Lad6;->r(Ljava/lang/Object;Z)V

    :goto_10
    if-nez v0, :cond_20

    iget-object p3, p0, Lad6;->a:Lnb6;

    iget-object p3, p3, Lnb6;->v:Lic6;

    const-string p4, "No cached error tracking config to re-evaluate; autocapture stays disabled."

    invoke-interface {p3, p4}, Lic6;->a(Ljava/lang/String;)V

    goto :goto_11

    :cond_20
    invoke-virtual {p0, v0, p1}, Lad6;->s(Ljava/lang/Object;Z)V

    :goto_11
    sget-object p3, Lj59;->a:Lj59;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    monitor-exit v2

    iget-object p3, p0, Lad6;->a:Lnb6;

    iget-object p3, p3, Lnb6;->E:Loc6;

    if-eqz p3, :cond_2a

    iget-object p4, p0, Lad6;->y:Ljava/util/Map;

    if-nez p4, :cond_21

    sget-object p4, Lmx2;->b:Lmx2;

    :cond_21
    const-string p5, "flags"

    invoke-interface {p3, p5, p4}, Loc6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p4, p0, Lad6;->s:Ljava/util/Map;

    if-nez p4, :cond_22

    sget-object p4, Lmx2;->b:Lmx2;

    :cond_22
    iget-object p5, p0, Lad6;->u:Ljava/util/Map;

    invoke-interface {p5}, Ljava/util/Map;->isEmpty()Z

    move-result p5

    if-eqz p5, :cond_23

    goto :goto_13

    :cond_23
    new-instance p5, Ljava/util/LinkedHashMap;

    invoke-direct {p5}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_24
    :goto_12
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lad6;->w:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p5, v2, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    :cond_25
    move-object p4, p5

    :goto_13
    const-string p5, "featureFlags"

    invoke-interface {p3, p5, p4}, Loc6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p4, p0, Lad6;->t:Ljava/util/Map;

    if-nez p4, :cond_26

    sget-object p4, Lmx2;->b:Lmx2;

    :cond_26
    iget-object p5, p0, Lad6;->v:Ljava/util/Map;

    invoke-interface {p5}, Ljava/util/Map;->isEmpty()Z

    move-result p5

    if-eqz p5, :cond_27

    goto :goto_15

    :cond_27
    new-instance p5, Ljava/util/LinkedHashMap;

    invoke-direct {p5}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_28
    :goto_14
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lad6;->x:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p5, v2, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    :cond_29
    move-object p4, p5

    :goto_15
    const-string p5, "featureFlagsPayload"

    invoke-interface {p3, p5, p4}, Loc6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p3, Lj59;->a:Lj59;

    :cond_2a
    iput-boolean v1, p0, Lad6;->C:Z

    invoke-virtual {p0}, Lad6;->u()V

    if-eqz p6, :cond_2b

    iget-object p3, p0, Lad6;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Lad6;->n()V

    :cond_2b
    move p3, p1

    :goto_16
    sget-object p4, Lj59;->a:Lj59;

    goto :goto_18

    :goto_17
    monitor-exit v2

    throw p3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :cond_2c
    :try_start_b
    iput-boolean p1, p0, Lad6;->C:Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    if-eqz p6, :cond_2d

    :try_start_c
    iget-object p3, p0, Lad6;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p3

    if-nez p3, :cond_2d

    invoke-virtual {p0}, Lad6;->n()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :cond_2d
    :try_start_d
    sget-object p3, Lj59;->a:Lj59;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    move p3, p1

    :goto_18
    if-eqz p3, :cond_2e

    if-eqz p6, :cond_2e

    :try_start_e
    iget-object p3, p0, Lad6;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Lad6;->n()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :cond_2e
    iget-object p3, p0, Lad6;->k:Ljava/lang/Object;

    monitor-enter p3

    :try_start_f
    iget-object p4, p0, Lad6;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p4, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p4

    if-eqz p4, :cond_2f

    iget-object p4, p0, Lad6;->l:Lad6$b;

    iput-object p2, p0, Lad6;->l:Lad6$b;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    move-object p2, p4

    goto :goto_19

    :catchall_3
    move-exception v0

    move-object p0, v0

    goto :goto_1a

    :cond_2f
    :goto_19
    monitor-exit p3

    iget-object p3, p0, Lad6;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz p2, :cond_32

    iget-object p1, p0, Lad6;->a:Lnb6;

    iget-object p1, p1, Lnb6;->v:Lic6;

    const-string p3, "Executing pending feature flags reload."

    invoke-interface {p1, p3}, Lic6;->a(Ljava/lang/String;)V

    iget-object v2, p2, Lad6$b;->a:Ljava/lang/String;

    iget-object v3, p2, Lad6$b;->b:Ljava/lang/String;

    iget-object v4, p2, Lad6$b;->c:Ljava/util/Map;

    iget-object v5, p2, Lad6$b;->d:Lng;

    iget-object v6, p2, Lad6$b;->e:Lng;

    const/4 v7, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lad6;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lng;Lng;Z)V

    return-void

    :goto_1a
    monitor-exit p3

    throw p0

    :catchall_4
    move-exception v0

    move-object v1, p0

    move-object p3, v0

    :goto_1b
    :try_start_10
    iget-object p0, v1, Lad6;->a:Lnb6;

    iget-object p0, p0, Lnb6;->v:Lic6;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Loading feature flags failed: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p0, p3}, Lic6;->a(Ljava/lang/String;)V

    if-eqz p6, :cond_30

    iget-object p0, v1, Lad6;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-nez p0, :cond_30

    invoke-virtual {v1}, Lad6;->n()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    goto :goto_1c

    :catchall_5
    move-exception v0

    move-object p0, v0

    goto :goto_1f

    :cond_30
    :goto_1c
    iget-object p0, v1, Lad6;->k:Ljava/lang/Object;

    monitor-enter p0

    :try_start_11
    iget-object p3, v1, Lad6;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p3

    if-eqz p3, :cond_31

    iget-object p3, v1, Lad6;->l:Lad6$b;

    iput-object p2, v1, Lad6;->l:Lad6$b;

    move-object p2, p3

    goto :goto_1d

    :catchall_6
    move-exception v0

    move-object p1, v0

    goto :goto_1e

    :cond_31
    :goto_1d
    sget-object p3, Lj59;->a:Lj59;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    monitor-exit p0

    iget-object p0, v1, Lad6;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz p2, :cond_32

    iget-object p0, v1, Lad6;->a:Lnb6;

    iget-object p0, p0, Lnb6;->v:Lic6;

    const-string p1, "Executing pending feature flags reload."

    invoke-interface {p0, p1}, Lic6;->a(Ljava/lang/String;)V

    iget-object v2, p2, Lad6$b;->a:Ljava/lang/String;

    iget-object v3, p2, Lad6$b;->b:Ljava/lang/String;

    iget-object v4, p2, Lad6$b;->c:Ljava/util/Map;

    iget-object v5, p2, Lad6$b;->d:Lng;

    iget-object v6, p2, Lad6$b;->e:Lng;

    const/4 v7, 0x1

    invoke-virtual/range {v1 .. v7}, Lad6;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lng;Lng;Z)V

    :cond_32
    return-void

    :goto_1e
    monitor-exit p0

    throw p1

    :goto_1f
    iget-object p3, v1, Lad6;->k:Ljava/lang/Object;

    monitor-enter p3

    :try_start_12
    iget-object p4, v1, Lad6;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p4, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p4

    if-eqz p4, :cond_33

    iget-object p4, v1, Lad6;->l:Lad6$b;

    iput-object p2, v1, Lad6;->l:Lad6$b;

    move-object p2, p4

    goto :goto_20

    :catchall_7
    move-exception v0

    move-object p0, v0

    goto :goto_21

    :cond_33
    :goto_20
    sget-object p4, Lj59;->a:Lj59;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    monitor-exit p3

    iget-object p3, v1, Lad6;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz p2, :cond_34

    iget-object p1, v1, Lad6;->a:Lnb6;

    iget-object p1, p1, Lnb6;->v:Lic6;

    const-string p3, "Executing pending feature flags reload."

    invoke-interface {p1, p3}, Lic6;->a(Ljava/lang/String;)V

    iget-object v2, p2, Lad6$b;->a:Ljava/lang/String;

    iget-object v3, p2, Lad6$b;->b:Ljava/lang/String;

    iget-object v4, p2, Lad6$b;->c:Ljava/util/Map;

    iget-object v5, p2, Lad6$b;->d:Lng;

    iget-object v6, p2, Lad6$b;->e:Lng;

    const/4 v7, 0x1

    invoke-virtual/range {v1 .. v7}, Lad6;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lng;Lng;Z)V

    :cond_34
    throw p0

    :goto_21
    monitor-exit p3

    throw p0
.end method

.method public final f()Ljava/lang/Long;
    .locals 1

    invoke-virtual {p0}, Lad6;->k()V

    iget-object v0, p0, Lad6;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lad6;->A:Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final g()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lad6;->q:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lad6;->r:Ljava/util/LinkedHashMap;

    invoke-static {p0}, Ln05;->l(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final h()Ljava/util/LinkedHashMap;
    .locals 3

    iget-object v0, p0, Lad6;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v2, p0, Lad6;->a:Lnb6;

    iget-boolean v2, v2, Lnb6;->d:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lad6;->d:Lrb6;

    invoke-interface {v2}, Lrb6;->a()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p0, p0, Lad6;->p:Ljava/util/LinkedHashMap;

    invoke-interface {v1, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public final i(Ljava/util/Map;Ljava/util/Map;)Z
    .locals 4
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
            ">;)Z"
        }
    .end annotation

    const-string v0, "linkedFlag"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    instance-of v0, p2, Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p2, Ljava/lang/String;

    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_4

    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_7

    move v1, v2

    goto :goto_4

    :cond_1
    instance-of v0, p2, Ljava/util/Map;

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    check-cast p2, Ljava/util/Map;

    const-string v0, "flag"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_2

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object v0, v3

    :goto_0
    const-string v2, "variant"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    instance-of v2, p2, Ljava/lang/String;

    if-eqz v2, :cond_3

    check-cast p2, Ljava/lang/String;

    goto :goto_1

    :cond_3
    move-object p2, v3

    :goto_1
    if-eqz v0, :cond_5

    if-eqz p2, :cond_5

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_4

    check-cast p1, Ljava/lang/String;

    goto :goto_2

    :cond_4
    move-object p1, v3

    :goto_2
    invoke-static {p1, p2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    move-object p2, v0

    goto :goto_4

    :cond_5
    :goto_3
    move-object p1, v3

    move-object p2, p1

    goto :goto_4

    :cond_6
    move v1, v2

    goto :goto_3

    :cond_7
    :goto_4
    if-eqz p2, :cond_8

    if-eqz p1, :cond_8

    iget-object p0, p0, Lad6;->e:Lxb6;

    invoke-interface {p0, p1, p2}, Lxb6;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_8
    return v1
.end method

.method public final j()V
    .locals 5

    iget-object v0, p0, Lad6;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lad6;->a:Lnb6;

    iget-object v1, v1, Lnb6;->E:Loc6;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v3, "personPropertiesForFlags"

    invoke-interface {v1, v2, v3}, Loc6;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_0
    move-object v1, v2

    :goto_0
    instance-of v3, v1, Ljava/util/Map;

    if-eqz v3, :cond_1

    check-cast v1, Ljava/util/Map;

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_2

    iget-object v3, p0, Lad6;->p:Ljava/util/LinkedHashMap;

    invoke-interface {v3, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    sget-object v1, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v0

    iget-object v0, p0, Lad6;->q:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lad6;->a:Lnb6;

    iget-object v1, v1, Lnb6;->E:Loc6;

    if-eqz v1, :cond_3

    const-string v3, "groupPropertiesForFlags"

    invoke-interface {v1, v2, v3}, Loc6;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_4

    :cond_3
    move-object v1, v2

    :goto_2
    instance-of v3, v1, Ljava/util/Map;

    if-eqz v3, :cond_4

    move-object v2, v1

    check-cast v2, Ljava/util/Map;

    :cond_4
    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    iget-object v4, p0, Lad6;->r:Ljava/util/LinkedHashMap;

    invoke-static {v2}, Ln05;->n(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    sget-object p0, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_6
    monitor-exit v0

    return-void

    :goto_4
    monitor-exit v0

    throw p0

    :goto_5
    monitor-exit v0

    throw p0
.end method

.method public final k()V
    .locals 7

    iget-boolean v0, p0, Lad6;->C:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lad6;->a:Lnb6;

    iget-object v0, v0, Lnb6;->E:Loc6;

    if-eqz v0, :cond_8

    const-string v1, "flags"

    sget-object v2, Lmx2;->b:Lmx2;

    invoke-interface {v0, v2, v1}, Loc6;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Ljava/util/Map;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    check-cast v1, Ljava/util/Map;

    goto :goto_0

    :cond_0
    move-object v1, v4

    :goto_0
    if-nez v1, :cond_1

    move-object v1, v2

    :cond_1
    const-string v3, "featureFlags"

    invoke-interface {v0, v2, v3}, Loc6;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v5, v3, Ljava/util/Map;

    if-eqz v5, :cond_2

    check-cast v3, Ljava/util/Map;

    goto :goto_1

    :cond_2
    move-object v3, v4

    :goto_1
    if-nez v3, :cond_3

    move-object v3, v2

    :cond_3
    const-string v5, "featureFlagsPayload"

    invoke-interface {v0, v2, v5}, Loc6;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Ljava/util/Map;

    if-eqz v6, :cond_4

    check-cast v5, Ljava/util/Map;

    goto :goto_2

    :cond_4
    move-object v5, v4

    :goto_2
    if-nez v5, :cond_5

    goto :goto_3

    :cond_5
    move-object v2, v5

    :goto_3
    const-string v5, "feature_flag_request_id"

    invoke-interface {v0, v4, v5}, Loc6;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_6

    check-cast v5, Ljava/lang/String;

    goto :goto_4

    :cond_6
    move-object v5, v4

    :goto_4
    const-string v6, "feature_flag_evaluated_at"

    invoke-interface {v0, v4, v6}, Loc6;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v6, v0, Ljava/lang/Long;

    if-eqz v6, :cond_7

    move-object v4, v0

    check-cast v4, Ljava/lang/Long;

    :cond_7
    iget-object v0, p0, Lad6;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object v1, p0, Lad6;->y:Ljava/util/Map;

    iput-object v3, p0, Lad6;->s:Ljava/util/Map;

    iput-object v2, p0, Lad6;->t:Ljava/util/Map;

    iput-object v5, p0, Lad6;->z:Ljava/lang/String;

    iput-object v4, p0, Lad6;->A:Ljava/lang/Long;

    invoke-virtual {p0}, Lad6;->a()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lad6;->C:Z

    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_8
    return-void
.end method

.method public final l(Lcom/posthog/internal/PostHogFlagsResponse;)Lcom/posthog/internal/PostHogFlagsResponse;
    .locals 11

    invoke-virtual {p1}, Lcom/posthog/internal/PostHogFlagsResponse;->getFlags()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_5

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, Lm05;->b(I)I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/posthog/internal/FeatureFlag;

    invoke-virtual {v2}, Lcom/posthog/internal/FeatureFlag;->getVariant()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    invoke-virtual {v2}, Lcom/posthog/internal/FeatureFlag;->getEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    :cond_0
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, Lm05;->b(I)I

    move-result v1

    invoke-direct {v4, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/posthog/internal/FeatureFlag;

    invoke-virtual {v1}, Lcom/posthog/internal/FeatureFlag;->getMetadata()Lcom/posthog/internal/FeatureFlagMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/posthog/internal/FeatureFlagMetadata;->getPayload()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    const/16 v9, 0x79

    const/4 v10, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v10}, Lcom/posthog/internal/PostHogFlagsResponse;->copy$default(Lcom/posthog/internal/PostHogFlagsResponse;ZLjava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;Ljava/lang/Long;ILjava/lang/Object;)Lcom/posthog/internal/PostHogFlagsResponse;

    move-result-object p1

    iget-object v1, p0, Lad6;->m:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Lcom/posthog/internal/PostHogFlagsResponse;->getRequestId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lad6;->z:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lad6;->a:Lnb6;

    iget-object v2, v2, Lnb6;->E:Loc6;

    if-eqz v2, :cond_3

    const-string v3, "feature_flag_request_id"

    invoke-interface {v2, v3, v0}, Loc6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :cond_3
    :goto_2
    invoke-virtual {p1}, Lcom/posthog/internal/PostHogFlagsResponse;->getEvaluatedAt()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lad6;->A:Ljava/lang/Long;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    iget-object p0, p0, Lad6;->a:Lnb6;

    iget-object p0, p0, Lnb6;->E:Loc6;

    if-eqz p0, :cond_4

    const-string v0, "feature_flag_evaluated_at"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p0, v0, v2}, Loc6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit v1

    return-object p1

    :goto_3
    monitor-exit v1

    throw p0

    :cond_5
    move-object v1, p1

    return-object v1
.end method

.method public final m(Ljava/util/Map;)Ljava/util/LinkedHashMap;
    .locals 6

    if-nez p1, :cond_0

    sget-object p1, Lmx2;->b:Lmx2;

    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :catchall_0
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    :try_start_0
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lad6;->a:Lnb6;

    invoke-virtual {v3}, Lnb6;->b()Lwd6;

    move-result-object v3

    check-cast v2, Ljava/lang/String;

    iget-object v3, v3, Lwd6;->a:Lcom/google/gson/Gson;

    const-class v4, Ljava/lang/Object;

    new-instance v5, Lx39;

    invoke-direct {v5, v4}, Lx39;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {v3, v2, v5}, Lcom/google/gson/Gson;->f(Ljava/lang/String;Lx39;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final n()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lad6;->f:Lnc6;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lnc6;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    iget-object p0, p0, Lad6;->a:Lnb6;

    iget-object p0, p0, Lnb6;->v:Lic6;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Executing onRemoteConfigLoaded callback failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lic6;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final o(Ljava/lang/Object;)Ljava/lang/Long;
    .locals 6

    instance-of v0, p1, Ljava/lang/Number;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lqa8;->q(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    iget-object p0, p0, Lad6;->a:Lnb6;

    iget-object p0, p0, Lnb6;->v:Lic6;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Remote config minimumDurationMilliseconds must be non-negative, got "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". Ignoring."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lic6;->a(Ljava/lang/String;)V

    return-object v1

    :cond_2
    return-object p1
.end method

.method public final p(Ljava/lang/Object;)Ljava/lang/Double;
    .locals 6

    instance-of v0, p1, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lqa8;->m(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    goto :goto_0

    :cond_0
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v2, v4

    if-gtz v0, :cond_2

    return-object p1

    :cond_2
    iget-object p0, p0, Lad6;->a:Lnb6;

    iget-object p0, p0, Lnb6;->v:Lic6;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Sample rate must be between 0.0 and 1.0, got "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". Ignoring."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lic6;->a(Ljava/lang/String;)V

    return-object v1

    :cond_3
    return-object p1
.end method

.method public final q()V
    .locals 3

    iget-object v0, p0, Lad6;->n:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lad6;->a:Lnb6;

    iget-object p0, p0, Lnb6;->E:Loc6;

    if-eqz p0, :cond_2

    const-string v1, "capturePerformance"

    const/4 v2, 0x0

    invoke-interface {p0, v2, v1}, Loc6;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of v1, p0, Ljava/util/Map;

    if-eqz v1, :cond_0

    move-object v2, p0

    check-cast v2, Ljava/util/Map;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    const-string p0, "network_timing"

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public final r(Ljava/lang/Object;Z)V
    .locals 2

    instance-of v0, p1, Ljava/lang/Boolean;

    const-string v1, "capturePerformance"

    iget-object p0, p0, Lad6;->a:Lnb6;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnb6;->E:Loc6;

    if-eqz p0, :cond_1

    invoke-interface {p0, v1}, Loc6;->remove(Ljava/lang/String;)V

    return-void

    :cond_0
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/util/Map;

    const-string v0, "network_timing"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    iget-object p0, p0, Lnb6;->E:Loc6;

    if-eqz p0, :cond_1

    invoke-interface {p0, v1, p1}, Loc6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final s(Ljava/lang/Object;Z)V
    .locals 4

    instance-of v0, p1, Ljava/lang/Boolean;

    const-string v1, "errorTracking"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lad6;->E:Z

    iget-object p0, p0, Lad6;->a:Lnb6;

    iget-object p0, p0, Lnb6;->E:Loc6;

    if-eqz p0, :cond_3

    invoke-interface {p0, v1}, Loc6;->remove(Ljava/lang/String;)V

    return-void

    :cond_0
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_3

    check-cast p1, Ljava/util/Map;

    const-string v0, "autocaptureExceptions"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    check-cast v0, Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :cond_2
    iput-boolean v2, p0, Lad6;->E:Z

    if-eqz p2, :cond_3

    iget-object p0, p0, Lad6;->a:Lnb6;

    iget-object p0, p0, Lnb6;->E:Loc6;

    if-eqz p0, :cond_3

    invoke-interface {p0, v1, p1}, Loc6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public final t(Ljava/lang/Object;Z)V
    .locals 6

    instance-of v0, p1, Ljava/lang/Boolean;

    const-string v1, "sessionReplay"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lad6;->F:Z

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p0, p0, Lad6;->a:Lnb6;

    iget-object p0, p0, Lnb6;->E:Loc6;

    if-eqz p0, :cond_a

    invoke-interface {p0, v1}, Loc6;->remove(Ljava/lang/String;)V

    return-void

    :cond_0
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_a

    check-cast p1, Ljava/util/Map;

    iget-object v0, p0, Lad6;->a:Lnb6;

    const-string v3, "endpoint"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/String;

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    check-cast v3, Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v3, v5

    :goto_0
    if-nez v3, :cond_2

    iget-object v3, p0, Lad6;->a:Lnb6;

    iget-object v3, v3, Lnb6;->G:Ljava/lang/String;

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v3, v0, Lnb6;->G:Ljava/lang/String;

    iget-object v0, p0, Lad6;->s:Ljava/util/Map;

    if-nez v0, :cond_3

    sget-object v0, Lmx2;->b:Lmx2;

    :cond_3
    invoke-virtual {p0, v0, p1}, Lad6;->i(Ljava/util/Map;Ljava/util/Map;)Z

    const-string v0, "consoleLogRecordingEnabled"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Ljava/lang/Boolean;

    if-eqz v3, :cond_4

    check-cast v0, Ljava/lang/Boolean;

    goto :goto_1

    :cond_4
    move-object v0, v5

    :goto_1
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :cond_5
    iput-boolean v2, p0, Lad6;->F:Z

    const-string v0, "sampleRate"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lad6;->p(Ljava/lang/Object;)Ljava/lang/Double;

    const-string v0, "eventTriggers"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_6

    check-cast v0, Ljava/util/List;

    goto :goto_2

    :cond_6
    move-object v0, v5

    :goto_2
    if-nez v0, :cond_7

    goto :goto_4

    :cond_7
    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_3

    :cond_8
    move-object v0, v5

    :goto_3
    if-eqz v0, :cond_9

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lqn1;->y0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v5

    :cond_9
    :goto_4
    iput-object v5, p0, Lad6;->G:Ljava/util/Set;

    const-string v0, "minimumDurationMilliseconds"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lad6;->o(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lad6;->H:Ljava/lang/Long;

    if-eqz p2, :cond_a

    iget-object p0, p0, Lad6;->a:Lnb6;

    iget-object p0, p0, Lnb6;->E:Loc6;

    if-eqz p0, :cond_a

    invoke-interface {p0, v1, p1}, Loc6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_a
    return-void
.end method

.method public final u()V
    .locals 2

    iget-object v0, p0, Lad6;->m:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lad6;->D:Z

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
