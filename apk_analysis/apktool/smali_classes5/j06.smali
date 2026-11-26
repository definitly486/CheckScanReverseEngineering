.class public final Lj06;
.super Lio/grpc/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj06$f;,
        Lj06$e;,
        Lj06$j;,
        Lj06$i;,
        Lj06$d;,
        Lj06$c;,
        Lj06$g;,
        Lj06$h;,
        Lj06$a;,
        Lj06$b;
    }
.end annotation


# static fields
.field public static final o:Lio/grpc/a$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/a$b<",
            "Lj06$c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final f:Lj06$d;

.field public final g:Ljava/util/HashMap;

.field public final h:Lch8;

.field public final i:Lir3;

.field public final j:Ldu8;

.field public final k:Ljava/util/concurrent/ScheduledExecutorService;

.field public l:Lch8$c;

.field public m:Ljava/lang/Long;

.field public final n:Ln91;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/grpc/a$b;

    const-string v1, "endpointTrackerKey"

    invoke-direct {v0, v1}, Lio/grpc/a$b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lj06;->o:Lio/grpc/a$b;

    return-void
.end method

.method public constructor <init>(Lio/grpc/h$e;Ldu8;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lj06;->g:Ljava/util/HashMap;

    invoke-virtual {p1}, Lio/grpc/h$e;->b()Ln91;

    move-result-object v0

    iput-object v0, p0, Lj06;->n:Ln91;

    new-instance v1, Lj06$a;

    invoke-direct {v1, p0, p1}, Lj06$a;-><init>(Lj06;Lio/grpc/h$e;)V

    new-instance v2, Lir3;

    invoke-direct {v2, v1}, Lir3;-><init>(Lio/grpc/h$e;)V

    iput-object v2, p0, Lj06;->i:Lir3;

    new-instance v1, Lj06$d;

    invoke-direct {v1}, Lj06$d;-><init>()V

    iput-object v1, p0, Lj06;->f:Lj06$d;

    invoke-virtual {p1}, Lio/grpc/h$e;->d()Lch8;

    move-result-object v1

    const-string v2, "syncContext"

    invoke-static {v1, v2}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lj06;->h:Lch8;

    invoke-virtual {p1}, Lio/grpc/h$e;->c()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    const-string v1, "timeService"

    invoke-static {p1, v1}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lj06;->k:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p2, p0, Lj06;->j:Ldu8;

    sget-object p0, Ln91$a;->DEBUG:Ln91$a;

    const-string p1, "OutlierDetection lb created."

    invoke-virtual {v0, p0, p1}, Ln91;->a(Ln91$a;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/d;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/d;

    iget-object v2, v2, Lio/grpc/d;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    if-le v1, v3, :cond_0

    return v0

    :cond_1
    return v3
.end method

.method public static f(Lj06$d;I)Ljava/util/ArrayList;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lmj3;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj06$c;

    invoke-virtual {v1}, Lj06$c;->c()J

    move-result-wide v2

    int-to-long v4, p1

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final a(Lio/grpc/h$i;)Lh88;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lj06;->g:Ljava/util/HashMap;

    iget-object v3, v0, Lj06;->f:Lj06$d;

    iget-object v4, v0, Lj06;->n:Ln91;

    sget-object v5, Ln91$a;->DEBUG:Ln91$a;

    const-string v6, "Received resolution result: {0}"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Ln91;->b(Ln91$a;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, v1, Lio/grpc/h$i;->c:Ljava/lang/Object;

    check-cast v5, Lj06$f;

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iget-object v8, v1, Lio/grpc/h$i;->a:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lio/grpc/d;

    iget-object v10, v9, Lio/grpc/d;->a:Ljava/util/List;

    invoke-static {v10}, Lcom/google/common/collect/n;->n(Ljava/util/Collection;)Lcom/google/common/collect/n;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v9, v9, Lio/grpc/d;->a:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/net/SocketAddress;

    invoke-virtual {v7, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    sget-object v12, Ln91$a;->WARNING:Ln91$a;

    const-string v13, "Unexpected duplicated address {0} belongs to multiple endpoints"

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v4, v12, v13, v14}, Ln91;->b(Ln91$a;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {v7, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Lmj3;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8, v6}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    iget-object v8, v3, Lj06$d;->b:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lj06$c;

    iput-object v5, v9, Lj06$c;->a:Lj06$f;

    goto :goto_1

    :cond_3
    iget-object v8, v3, Lj06$d;->b:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    new-instance v10, Lj06$c;

    invoke-direct {v10, v5}, Lj06$c;-><init>(Lj06$f;)V

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/net/SocketAddress;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v7}, Lmj3;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lj06$c;

    invoke-virtual {v2, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    iget-object v2, v5, Lj06$f;->e:Lj06$f$c;

    if-nez v2, :cond_9

    iget-object v2, v5, Lj06$f;->f:Lj06$f$b;

    if-eqz v2, :cond_7

    goto :goto_5

    :cond_7
    iget-object v2, v0, Lj06;->l:Lch8$c;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Lch8$c;->a()V

    const/4 v2, 0x0

    iput-object v2, v0, Lj06;->m:Ljava/lang/Long;

    iget-object v2, v3, Lj06$d;->b:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lj06$c;

    invoke-virtual {v3}, Lj06$c;->d()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v3}, Lj06$c;->e()V

    :cond_8
    const/4 v4, 0x0

    iput v4, v3, Lj06$c;->e:I

    goto :goto_4

    :cond_9
    :goto_5
    iget-object v2, v0, Lj06;->m:Ljava/lang/Long;

    iget-wide v6, v5, Lj06$f;->a:J

    const-wide/16 v8, 0x0

    if-nez v2, :cond_a

    :goto_6
    move-wide v12, v6

    goto :goto_7

    :cond_a
    iget-object v2, v0, Lj06;->j:Ldu8;

    invoke-virtual {v2}, Ldu8;->a()J

    move-result-wide v10

    iget-object v2, v0, Lj06;->m:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    sub-long/2addr v10, v12

    sub-long/2addr v6, v10

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    goto :goto_6

    :goto_7
    iget-object v2, v0, Lj06;->l:Lch8$c;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lch8$c;->a()V

    iget-object v2, v3, Lj06$d;->b:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lj06$c;

    iget-object v6, v3, Lj06$c;->b:Lj06$c$a;

    iget-object v7, v6, Lj06$c$a;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v6, v6, Lj06$c$a;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v3, v3, Lj06$c;->c:Lj06$c$a;

    iget-object v6, v3, Lj06$c$a;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v3, v3, Lj06$c$a;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    goto :goto_8

    :cond_b
    iget-object v15, v0, Lj06;->h:Lch8;

    new-instance v2, Lj06$b;

    invoke-direct {v2, v0, v5, v4}, Lj06$b;-><init>(Lj06;Lj06$f;Ln91;)V

    iget-wide v3, v5, Lj06$f;->a:J

    iget-object v10, v0, Lj06;->k:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lch8$b;

    invoke-direct {v6, v2}, Lch8$b;-><init>(Ljava/lang/Runnable;)V

    new-instance v14, Ldh8;

    move-object/from16 v17, v2

    move-wide/from16 v18, v3

    move-object/from16 v16, v6

    invoke-direct/range {v14 .. v19}, Ldh8;-><init>(Lch8;Lch8$b;Lj06$b;J)V

    move-object v11, v14

    move-object/from16 v2, v16

    move-wide/from16 v14, v18

    sget-object v16, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v10 .. v16}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v3

    new-instance v4, Lch8$c;

    invoke-direct {v4, v2, v3}, Lch8$c;-><init>(Lch8$b;Ljava/util/concurrent/ScheduledFuture;)V

    iput-object v4, v0, Lj06;->l:Lch8$c;

    :cond_c
    iget-object v0, v0, Lj06;->i:Lir3;

    invoke-virtual {v1}, Lio/grpc/h$i;->a()Lio/grpc/h$i$a;

    move-result-object v1

    iget-object v2, v5, Lj06$f;->g:Ljava/lang/Object;

    iput-object v2, v1, Lio/grpc/h$i$a;->c:Ljava/lang/Object;

    invoke-virtual {v1}, Lio/grpc/h$i$a;->a()Lio/grpc/h$i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lir3;->a(Lio/grpc/h$i;)Lh88;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lh88;)V
    .locals 0

    iget-object p0, p0, Lj06;->i:Lir3;

    invoke-virtual {p0, p1}, Ljj3;->b(Lh88;)V

    return-void
.end method

.method public final d()V
    .locals 0

    iget-object p0, p0, Lj06;->i:Lir3;

    invoke-virtual {p0}, Lir3;->d()V

    return-void
.end method
