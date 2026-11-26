.class public abstract Lk67;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcm1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk67$q;,
        Lk67$s;,
        Lk67$y;,
        Lk67$p;,
        Lk67$o;,
        Lk67$x;,
        Lk67$v;,
        Lk67$w;,
        Lk67$n;,
        Lk67$t;,
        Lk67$r;,
        Lk67$u;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcm1;"
    }
.end annotation


# static fields
.field public static final B:Lla5$b;

.field public static final C:Lla5$b;

.field public static final D:Lh88;

.field public static final E:Ljava/util/Random;

.field public static final F:Z


# instance fields
.field public A:Z

.field public final b:Lra5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lra5<",
            "TReqT;*>;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/concurrent/Executor;

.field public final d:Lch8;

.field public final e:Ljava/util/concurrent/ScheduledExecutorService;

.field public final f:Lla5;

.field public final g:Lq67;

.field public final h:Lsv3;

.field public final i:Z

.field public final j:Ljava/lang/Object;

.field public final k:Lk67$p;

.field public final l:J

.field public final m:J

.field public final n:Lk67$y;

.field public final o:Ly54;

.field public volatile p:Lk67$v;

.field public final q:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final r:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final s:Ljava/util/concurrent/atomic/AtomicInteger;

.field public t:Lk67$t;

.field public u:J

.field public v:Ldm1;

.field public w:Lk67$q;

.field public x:Lk67$q;

.field public y:J

.field public z:Lh88;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lla5;->d:Lla5$a;

    sget-object v1, Lla5$d;->d:Ljava/util/BitSet;

    new-instance v1, Lla5$b;

    const-string v2, "grpc-previous-rpc-attempts"

    invoke-direct {v1, v2, v0}, Lla5$b;-><init>(Ljava/lang/String;Lla5$c;)V

    sput-object v1, Lk67;->B:Lla5$b;

    new-instance v1, Lla5$b;

    const-string v2, "grpc-retry-pushback-ms"

    invoke-direct {v1, v2, v0}, Lla5$b;-><init>(Ljava/lang/String;Lla5$c;)V

    sput-object v1, Lk67;->C:Lla5$b;

    sget-object v0, Lh88;->f:Lh88;

    const-string v1, "Stream thrown away because RetriableStream committed"

    invoke-virtual {v0, v1}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object v0

    sput-object v0, Lk67;->D:Lh88;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lk67;->E:Ljava/util/Random;

    sget-object v0, Lvs3;->a:Ljava/util/logging/Logger;

    const-string v0, "GRPC_EXPERIMENTAL_XDS_RLS_LB"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ll63;->a(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lk67;->F:Z

    return-void
.end method

.method public constructor <init>(Lra5;Lla5;Lk67$p;JJLjava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lq67;Lsv3;Lk67$y;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lra5<",
            "TReqT;*>;",
            "Lla5;",
            "Lk67$p;",
            "JJ",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lq67;",
            "Lsv3;",
            "Lk67$y;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p10

    move-object/from16 v1, p11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lch8;

    new-instance v3, Lk67$a;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-direct {v2, v3}, Lch8;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iput-object v2, p0, Lk67;->d:Lch8;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lk67;->j:Ljava/lang/Object;

    new-instance v2, Ly54;

    invoke-direct {v2}, Ly54;-><init>()V

    iput-object v2, p0, Lk67;->o:Ly54;

    new-instance v3, Lk67$v;

    new-instance v4, Ljava/util/ArrayList;

    const/16 v2, 0x8

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v11}, Lk67$v;-><init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Lk67$x;ZZZI)V

    iput-object v3, p0, Lk67;->p:Lk67$v;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v2, p0, Lk67;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v2, p0, Lk67;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v2, p0, Lk67;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Lk67;->b:Lra5;

    iput-object p3, p0, Lk67;->k:Lk67$p;

    move-wide/from16 v2, p4

    iput-wide v2, p0, Lk67;->l:J

    move-wide/from16 v2, p6

    iput-wide v2, p0, Lk67;->m:J

    move-object/from16 p1, p8

    iput-object p1, p0, Lk67;->c:Ljava/util/concurrent/Executor;

    move-object/from16 p1, p9

    iput-object p1, p0, Lk67;->e:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p2, p0, Lk67;->f:Lla5;

    iput-object v0, p0, Lk67;->g:Lq67;

    if-eqz v0, :cond_0

    iget-wide p1, v0, Lq67;->b:J

    iput-wide p1, p0, Lk67;->y:J

    :cond_0
    iput-object v1, p0, Lk67;->h:Lsv3;

    const/4 p1, 0x1

    const/4 p2, 0x0

    if-eqz v0, :cond_2

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move p3, p2

    goto :goto_1

    :cond_2
    :goto_0
    move p3, p1

    :goto_1
    const-string v0, "Should not provide both retryPolicy and hedgingPolicy"

    invoke-static {p3, v0}, Lo8;->f(ZLjava/lang/Object;)V

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    move p1, p2

    :goto_2
    iput-boolean p1, p0, Lk67;->i:Z

    move-object/from16 p1, p12

    iput-object p1, p0, Lk67;->n:Lk67$y;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    new-instance v0, Lk67$g;

    invoke-direct {v0, p1}, Lk67$g;-><init>(I)V

    invoke-virtual {p0, v0}, Lk67;->o(Lk67$n;)V

    return-void
.end method

.method public final b(I)V
    .locals 1

    new-instance v0, Lk67$h;

    invoke-direct {v0, p1}, Lk67$h;-><init>(I)V

    invoke-virtual {p0, v0}, Lk67;->o(Lk67$n;)V

    return-void
.end method

.method public final c(Lqu1;)V
    .locals 1

    new-instance v0, Lk67$b;

    invoke-direct {v0, p1}, Lk67$b;-><init>(Lqu1;)V

    invoke-virtual {p0, v0}, Lk67;->o(Lk67$n;)V

    return-void
.end method

.method public final d(Ljava/io/InputStream;)V
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "RetriableStream.writeMessage() should not be called directly"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final e()V
    .locals 1

    new-instance v0, Lk67$i;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v0}, Lk67;->o(Lk67$n;)V

    return-void
.end method

.method public final f(Lyd2;)V
    .locals 1

    new-instance v0, Lk67$d;

    invoke-direct {v0, p1}, Lk67$d;-><init>(Lyd2;)V

    invoke-virtual {p0, v0}, Lk67;->o(Lk67$n;)V

    return-void
.end method

.method public final flush()V
    .locals 2

    iget-object v0, p0, Lk67;->p:Lk67$v;

    iget-boolean v1, v0, Lk67$v;->a:Z

    if-eqz v1, :cond_0

    iget-object p0, v0, Lk67$v;->f:Lk67$x;

    iget-object p0, p0, Lk67$x;->a:Lcm1;

    invoke-interface {p0}, Le98;->flush()V

    return-void

    :cond_0
    new-instance v0, Lk67$e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v0}, Lk67;->o(Lk67$n;)V

    return-void
.end method

.method public final g(Lxc2;)V
    .locals 1

    new-instance v0, Lk67$c;

    invoke-direct {v0, p1}, Lk67$c;-><init>(Lxc2;)V

    invoke-virtual {p0, v0}, Lk67;->o(Lk67$n;)V

    return-void
.end method

.method public final h()V
    .locals 1

    new-instance v0, Lk67$f;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v0}, Lk67;->o(Lk67$n;)V

    return-void
.end method

.method public final i(Ldm1;)V
    .locals 6

    iput-object p1, p0, Lk67;->v:Ldm1;

    invoke-virtual {p0}, Lk67;->u()Lh88;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lk67;->j(Lh88;)V

    return-void

    :cond_0
    iget-object p1, p0, Lk67;->j:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lk67;->p:Lk67$v;

    iget-object v0, v0, Lk67$v;->b:Ljava/util/List;

    new-instance v1, Lk67$u;

    invoke-direct {v1, p0}, Lk67$u;-><init>(Lk67;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1, p1}, Lk67;->n(IZZ)Lk67$x;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-boolean v1, p0, Lk67;->i:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lk67;->j:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v2, p0, Lk67;->p:Lk67$v;

    invoke-virtual {v2, v0}, Lk67$v;->a(Lk67$x;)Lk67$v;

    move-result-object v2

    iput-object v2, p0, Lk67;->p:Lk67$v;

    iget-object v2, p0, Lk67;->p:Lk67$v;

    invoke-virtual {p0, v2}, Lk67;->r(Lk67$v;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lk67;->n:Lk67$y;

    if-eqz v2, :cond_3

    iget-object v3, v2, Lk67$y;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    iget v2, v2, Lk67$y;->b:I

    if-le v3, v2, :cond_2

    const/4 p1, 0x1

    :cond_2
    if-eqz p1, :cond_4

    :cond_3
    new-instance p1, Lk67$q;

    iget-object v2, p0, Lk67;->j:Ljava/lang/Object;

    invoke-direct {p1, v2}, Lk67$q;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lk67;->x:Lk67$q;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_5

    iget-object v1, p0, Lk67;->e:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lk67$r;

    invoke-direct {v2, p0, p1}, Lk67$r;-><init>(Lk67;Lk67$q;)V

    iget-object v3, p0, Lk67;->h:Lsv3;

    iget-wide v3, v3, Lsv3;->b:J

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    invoke-virtual {p1, v1}, Lk67$q;->a(Ljava/util/concurrent/ScheduledFuture;)V

    goto :goto_2

    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_5
    :goto_2
    invoke-virtual {p0, v0}, Lk67;->p(Lk67$x;)V

    return-void

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public final isReady()Z
    .locals 1

    iget-object p0, p0, Lk67;->p:Lk67$v;

    iget-object p0, p0, Lk67$v;->c:Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk67$x;

    iget-object v0, v0, Lk67$x;->a:Lcm1;

    invoke-interface {v0}, Le98;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final j(Lh88;)V
    .locals 12

    new-instance v0, Lk67$x;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lk67$x;-><init>(I)V

    new-instance v1, Ld31;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ld31;-><init>(I)V

    iput-object v1, v0, Lk67$x;->a:Lcm1;

    invoke-virtual {p0, v0}, Lk67;->k(Lk67$x;)Ll67;

    move-result-object v1

    iget-object v2, p0, Lk67;->j:Ljava/lang/Object;

    if-eqz v1, :cond_0

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lk67;->p:Lk67$v;

    invoke-virtual {v3, v0}, Lk67$v;->d(Lk67$x;)Lk67$v;

    move-result-object v0

    iput-object v0, p0, Lk67;->p:Lk67$v;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ll67;->run()V

    sget-object v0, Ldm1$a;->PROCESSED:Ldm1$a;

    new-instance v1, Lla5;

    invoke-direct {v1}, Lla5;-><init>()V

    invoke-virtual {p0, p1, v0, v1}, Lk67;->w(Lh88;Ldm1$a;Lla5;)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    monitor-enter v2

    :try_start_2
    iget-object v0, p0, Lk67;->p:Lk67$v;

    iget-object v0, v0, Lk67$v;->c:Ljava/util/Collection;

    iget-object v1, p0, Lk67;->p:Lk67$v;

    iget-object v1, v1, Lk67$v;->f:Lk67$x;

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lk67;->p:Lk67$v;

    iget-object v0, v0, Lk67$v;->f:Lk67$x;

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_1
    iput-object p1, p0, Lk67;->z:Lh88;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lk67;->p:Lk67$v;

    new-instance v3, Lk67$v;

    iget-object v4, v1, Lk67$v;->b:Ljava/util/List;

    iget-object v5, v1, Lk67$v;->c:Ljava/util/Collection;

    iget-object v6, v1, Lk67$v;->d:Ljava/util/Collection;

    iget-object v7, v1, Lk67$v;->f:Lk67$x;

    iget-boolean v9, v1, Lk67$v;->a:Z

    iget-boolean v10, v1, Lk67$v;->h:Z

    iget v11, v1, Lk67$v;->e:I

    const/4 v8, 0x1

    invoke-direct/range {v3 .. v11}, Lk67$v;-><init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Lk67$x;ZZZI)V

    iput-object v3, p0, Lk67;->p:Lk67$v;

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_2

    iget-object p0, v0, Lk67$x;->a:Lcm1;

    invoke-interface {p0, p1}, Lcm1;->j(Lh88;)V

    :cond_2
    return-void

    :goto_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public final k(Lk67$x;)Ll67;
    .locals 18

    move-object/from16 v1, p0

    iget-object v8, v1, Lk67;->j:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    iget-object v0, v1, Lk67;->p:Lk67$v;

    iget-object v0, v0, Lk67$v;->f:Lk67$x;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    monitor-exit v8

    return-object v2

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_0
    iget-object v0, v1, Lk67;->p:Lk67$v;

    iget-object v0, v0, Lk67$v;->c:Ljava/util/Collection;

    iget-object v3, v1, Lk67;->p:Lk67$v;

    iget-object v4, v3, Lk67$v;->f:Lk67$x;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_1

    move v4, v6

    goto :goto_0

    :cond_1
    move v4, v5

    :goto_0
    const-string v7, "Already committed"

    invoke-static {v4, v7}, Lo8;->s(ZLjava/lang/Object;)V

    iget-object v4, v3, Lk67$v;->b:Ljava/util/List;

    iget-object v7, v3, Lk67$v;->c:Ljava/util/Collection;

    move-object/from16 v13, p1

    invoke-interface {v7, v13}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {v13}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    move-object v10, v2

    move-object v11, v4

    move v15, v6

    goto :goto_1

    :cond_2
    sget-object v7, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    move-object v10, v4

    move v15, v5

    move-object v11, v7

    :goto_1
    new-instance v9, Lk67$v;

    iget-object v12, v3, Lk67$v;->d:Ljava/util/Collection;

    iget-boolean v14, v3, Lk67$v;->g:Z

    iget-boolean v4, v3, Lk67$v;->h:Z

    iget v3, v3, Lk67$v;->e:I

    move/from16 v17, v3

    move/from16 v16, v4

    invoke-direct/range {v9 .. v17}, Lk67$v;-><init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Lk67$x;ZZZI)V

    iput-object v9, v1, Lk67;->p:Lk67$v;

    iget-object v3, v1, Lk67;->k:Lk67$p;

    iget-wide v9, v1, Lk67;->u:J

    neg-long v9, v9

    iget-object v3, v3, Lk67$p;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3, v9, v10}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    iget-object v3, v1, Lk67;->w:Lk67$q;

    if-eqz v3, :cond_3

    iget-boolean v4, v3, Lk67$q;->c:Z

    goto :goto_2

    :cond_3
    move v4, v5

    :goto_2
    if-eqz v3, :cond_4

    move v5, v6

    :cond_4
    if-eqz v5, :cond_5

    iput-boolean v6, v3, Lk67$q;->c:Z

    iget-object v3, v3, Lk67$q;->b:Ljava/util/concurrent/Future;

    iput-object v2, v1, Lk67;->w:Lk67$q;

    goto :goto_3

    :cond_5
    move-object v3, v2

    :goto_3
    iget-object v7, v1, Lk67;->x:Lk67$q;

    if-eqz v7, :cond_6

    iput-boolean v6, v7, Lk67$q;->c:Z

    iget-object v6, v7, Lk67$q;->b:Ljava/util/concurrent/Future;

    iput-object v2, v1, Lk67;->x:Lk67$q;

    move-object v7, v6

    :goto_4
    move-object v2, v0

    goto :goto_5

    :cond_6
    move-object v7, v2

    goto :goto_4

    :goto_5
    new-instance v0, Ll67;

    move v6, v4

    move v4, v5

    move-object v5, v3

    move-object/from16 v3, p1

    invoke-direct/range {v0 .. v7}, Ll67;-><init>(Lk67;Ljava/util/Collection;Lk67$x;ZLjava/util/concurrent/Future;ZLjava/util/concurrent/Future;)V

    monitor-exit v8

    return-object v0

    :goto_6
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final l(Ly54;)V
    .locals 3

    iget-object v0, p0, Lk67;->j:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "closed"

    iget-object v2, p0, Lk67;->o:Ly54;

    invoke-virtual {p1, v2, v1}, Ly54;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lk67;->p:Lk67$v;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lk67$v;->f:Lk67$x;

    if-eqz v0, :cond_0

    new-instance v0, Ly54;

    invoke-direct {v0}, Ly54;-><init>()V

    iget-object p0, p0, Lk67$v;->f:Lk67$x;

    iget-object p0, p0, Lk67$x;->a:Lcm1;

    invoke-interface {p0, v0}, Lcm1;->l(Ly54;)V

    const-string p0, "committed"

    invoke-virtual {p1, v0, p0}, Ly54;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ly54;

    invoke-direct {v0}, Ly54;-><init>()V

    iget-object p0, p0, Lk67$v;->c:Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk67$x;

    new-instance v2, Ly54;

    invoke-direct {v2}, Ly54;-><init>()V

    iget-object v1, v1, Lk67$x;->a:Lcm1;

    invoke-interface {v1, v2}, Lcm1;->l(Ly54;)V

    iget-object v1, v0, Ly54;->a:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string p0, "open"

    invoke-virtual {p1, v0, p0}, Ly54;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final m()V
    .locals 2

    iget-object v0, p0, Lk67;->p:Lk67$v;

    iget-boolean v1, v0, Lk67$v;->a:Z

    if-eqz v1, :cond_0

    iget-object p0, v0, Lk67$v;->f:Lk67$x;

    iget-object p0, p0, Lk67$x;->a:Lcm1;

    invoke-interface {p0}, Le98;->m()V

    return-void

    :cond_0
    new-instance v0, Lm67;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v0}, Lk67;->o(Lk67$n;)V

    return-void
.end method

.method public final n(IZZ)Lk67$x;
    .locals 8

    :cond_0
    iget-object v0, p0, Lk67;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-gez v1, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lk67$x;

    invoke-direct {v0, p1}, Lk67$x;-><init>(I)V

    new-instance v1, Lk67$o;

    invoke-direct {v1, p0, v0}, Lk67$o;-><init>(Lk67;Lk67$x;)V

    new-instance v4, Lk67$k;

    invoke-direct {v4, v1}, Lk67$k;-><init>(Lk67$o;)V

    new-instance v3, Lla5;

    invoke-direct {v3}, Lla5;-><init>()V

    iget-object v1, p0, Lk67;->f:Lla5;

    invoke-virtual {v3, v1}, Lla5;->d(Lla5;)V

    if-lez p1, :cond_2

    sget-object v1, Lk67;->B:Lla5$b;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lla5;->e(Lla5$d;Ljava/lang/Object;)V

    :cond_2
    move-object v2, p0

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-virtual/range {v2 .. v7}, Lk67;->s(Lla5;Lk67$k;IZZ)Lcm1;

    move-result-object p0

    iput-object p0, v0, Lk67$x;->a:Lcm1;

    return-object v0
.end method

.method public final o(Lk67$n;)V
    .locals 2

    iget-object v0, p0, Lk67;->j:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lk67;->p:Lk67$v;

    iget-boolean v1, v1, Lk67$v;->a:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lk67;->p:Lk67$v;

    iget-object v1, v1, Lk67$v;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    iget-object p0, p0, Lk67;->p:Lk67$v;

    iget-object p0, p0, Lk67$v;->c:Ljava/util/Collection;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk67$x;

    invoke-interface {p1, v0}, Lk67$n;->a(Lk67$x;)V

    goto :goto_1

    :cond_1
    return-void

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final p(Lk67$x;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    move-object v3, v1

    :goto_0
    iget-object v4, p0, Lk67;->j:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Lk67;->p:Lk67$v;

    iget-object v6, v5, Lk67$v;->f:Lk67$x;

    if-eqz v6, :cond_0

    if-eq v6, p1, :cond_0

    monitor-exit v4

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :cond_0
    iget-boolean v6, v5, Lk67$v;->g:Z

    if-eqz v6, :cond_1

    monitor-exit v4

    goto :goto_1

    :cond_1
    iget-object v6, v5, Lk67$v;->b:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne v0, v6, :cond_6

    invoke-virtual {v5, p1}, Lk67$v;->d(Lk67$x;)Lk67$v;

    move-result-object v0

    iput-object v0, p0, Lk67;->p:Lk67$v;

    invoke-virtual {p0}, Lk67;->isReady()Z

    move-result v0

    if-nez v0, :cond_2

    monitor-exit v4

    return-void

    :cond_2
    new-instance v1, Lk67$l;

    invoke-direct {v1, p0}, Lk67$l;-><init>(Lk67;)V

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    if-eqz v1, :cond_3

    iget-object p0, p0, Lk67;->d:Lch8;

    invoke-virtual {p0, v1}, Lch8;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_3
    if-nez v2, :cond_4

    iget-object v0, p1, Lk67$x;->a:Lcm1;

    new-instance v1, Lk67$w;

    invoke-direct {v1, p0, p1}, Lk67$w;-><init>(Lk67;Lk67$x;)V

    invoke-interface {v0, v1}, Lcm1;->i(Ldm1;)V

    :cond_4
    iget-object v0, p1, Lk67$x;->a:Lcm1;

    iget-object v1, p0, Lk67;->p:Lk67$v;

    iget-object v1, v1, Lk67$v;->f:Lk67$x;

    if-ne v1, p1, :cond_5

    iget-object p0, p0, Lk67;->z:Lh88;

    goto :goto_2

    :cond_5
    sget-object p0, Lk67;->D:Lh88;

    :goto_2
    invoke-interface {v0, p0}, Lcm1;->j(Lh88;)V

    return-void

    :cond_6
    :try_start_1
    iget-boolean v6, p1, Lk67$x;->b:Z

    if-eqz v6, :cond_7

    monitor-exit v4

    return-void

    :cond_7
    add-int/lit16 v6, v0, 0x80

    iget-object v7, v5, Lk67$v;->b:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-nez v3, :cond_8

    new-instance v3, Ljava/util/ArrayList;

    iget-object v5, v5, Lk67$v;->b:Ljava/util/List;

    invoke-interface {v5, v0, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_3

    :cond_8
    invoke-interface {v3}, Ljava/util/List;->clear()V

    iget-object v5, v5, Lk67$v;->b:Ljava/util/List;

    invoke-interface {v5, v0, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_3
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lk67$n;

    invoke-interface {v4, p1}, Lk67$n;->a(Lk67$x;)V

    instance-of v4, v4, Lk67$u;

    if-eqz v4, :cond_a

    const/4 v2, 0x1

    :cond_a
    iget-object v4, p0, Lk67;->p:Lk67$v;

    iget-object v5, v4, Lk67$v;->f:Lk67$x;

    if-eqz v5, :cond_b

    if-eq v5, p1, :cond_b

    goto :goto_4

    :cond_b
    iget-boolean v4, v4, Lk67$v;->g:Z

    if-eqz v4, :cond_9

    :cond_c
    :goto_4
    move v0, v6

    goto/16 :goto_0

    :goto_5
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final q()V
    .locals 13

    iget-object v1, p0, Lk67;->j:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lk67;->x:Lk67$q;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    iput-boolean v3, v0, Lk67$q;->c:Z

    iget-object v0, v0, Lk67$q;->b:Ljava/util/concurrent/Future;

    iput-object v2, p0, Lk67;->x:Lk67$q;

    move-object v2, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_0
    :goto_0
    iget-object v0, p0, Lk67;->p:Lk67$v;

    iget-boolean v3, v0, Lk67$v;->h:Z

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance v4, Lk67$v;

    iget-object v5, v0, Lk67$v;->b:Ljava/util/List;

    iget-object v6, v0, Lk67$v;->c:Ljava/util/Collection;

    iget-object v7, v0, Lk67$v;->d:Ljava/util/Collection;

    iget-object v8, v0, Lk67$v;->f:Lk67$x;

    iget-boolean v9, v0, Lk67$v;->g:Z

    iget-boolean v10, v0, Lk67$v;->a:Z

    iget v12, v0, Lk67$v;->e:I

    const/4 v11, 0x1

    invoke-direct/range {v4 .. v12}, Lk67$v;-><init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Lk67$x;ZZZI)V

    move-object v0, v4

    :goto_1
    iput-object v0, p0, Lk67;->p:Lk67$v;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    const/4 p0, 0x0

    invoke-interface {v2, p0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_2
    return-void

    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final r(Lk67$v;)Z
    .locals 1

    iget-object v0, p1, Lk67$v;->f:Lk67$x;

    if-nez v0, :cond_0

    iget v0, p1, Lk67$v;->e:I

    iget-object p0, p0, Lk67;->h:Lsv3;

    iget p0, p0, Lsv3;->a:I

    if-ge v0, p0, :cond_0

    iget-boolean p0, p1, Lk67$v;->h:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public abstract s(Lla5;Lk67$k;IZZ)Lcm1;
.end method

.method public abstract t()V
.end method

.method public abstract u()Lh88;
.end method

.method public final v(Ljava/lang/Integer;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_1

    invoke-virtual {p0}, Lk67;->q()V

    return-void

    :cond_1
    iget-object v0, p0, Lk67;->j:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lk67;->x:Lk67$q;

    if-nez v1, :cond_2

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, v1, Lk67$q;->c:Z

    iget-object v1, v1, Lk67$q;->b:Ljava/util/concurrent/Future;

    new-instance v2, Lk67$q;

    iget-object v3, p0, Lk67;->j:Ljava/lang/Object;

    invoke-direct {v2, v3}, Lk67$q;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lk67;->x:Lk67$q;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_3
    iget-object v0, p0, Lk67;->e:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lk67$r;

    invoke-direct {v1, p0, v2}, Lk67$r;-><init>(Lk67;Lk67$q;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long p0, p0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, p0, p1, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    invoke-virtual {v2, p0}, Lk67$q;->a(Ljava/util/concurrent/ScheduledFuture;)V

    return-void

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final w(Lh88;Ldm1$a;Lla5;)V
    .locals 2

    new-instance v0, Lk67$t;

    invoke-direct {v0, p1, p2, p3}, Lk67$t;-><init>(Lh88;Ldm1$a;Lla5;)V

    iput-object v0, p0, Lk67;->t:Lk67$t;

    iget-object v0, p0, Lk67;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    new-instance v0, Lk67$m;

    invoke-direct {v0, p0, p1, p2, p3}, Lk67$m;-><init>(Lk67;Lh88;Ldm1$a;Lla5;)V

    iget-object p0, p0, Lk67;->d:Lch8;

    invoke-virtual {p0, v0}, Lch8;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final x(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReqT;)V"
        }
    .end annotation

    iget-object v0, p0, Lk67;->p:Lk67$v;

    iget-boolean v1, v0, Lk67$v;->a:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lk67$v;->f:Lk67$x;

    iget-object v0, v0, Lk67$x;->a:Lcm1;

    iget-object p0, p0, Lk67;->b:Lra5;

    iget-object p0, p0, Lra5;->d:Lns6$a;

    invoke-virtual {p0, p1}, Lns6$a;->b(Ljava/lang/Object;)Lms6;

    move-result-object p0

    invoke-interface {v0, p0}, Le98;->d(Ljava/io/InputStream;)V

    return-void

    :cond_0
    new-instance v0, Lk67$j;

    invoke-direct {v0, p0, p1}, Lk67$j;-><init>(Lk67;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lk67;->o(Lk67$n;)V

    return-void
.end method
