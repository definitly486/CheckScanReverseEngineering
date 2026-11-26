.class public final Lod2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt82$a;
.implements Ljava/lang/Runnable;
.implements Ljava/lang/Comparable;
.implements Lf53$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lod2$c;,
        Lod2$e;,
        Lod2$d;,
        Lod2$f;,
        Lod2$g;,
        Lod2$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lt82$a;",
        "Ljava/lang/Runnable;",
        "Ljava/lang/Comparable<",
        "Lod2<",
        "*>;>;",
        "Lf53$d;"
    }
.end annotation


# static fields
.field public static final I:Lqz5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqz5<",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public A:Lkf4;

.field public B:Ljava/lang/Object;

.field public C:Ly82;

.field public D:Ls82;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls82<",
            "*>;"
        }
    .end annotation
.end field

.field public volatile E:Lt82;

.field public volatile F:Z

.field public volatile G:Z

.field public H:Z

.field public final b:Lmd2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmd2<",
            "TR;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/ArrayList;

.field public final d:Lc78$a;

.field public final e:Lod2$d;

.field public final f:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lod2<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final g:Lod2$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lod2$c<",
            "*>;"
        }
    .end annotation
.end field

.field public final h:Lod2$e;

.field public i:Lwq3;

.field public j:Lkf4;

.field public k:Ljg6;

.field public l:Lwz2;

.field public m:I

.field public n:I

.field public o:Lsn2;

.field public p:Lxz5;

.field public q:Luz2;

.field public r:I

.field public s:Lod2$g;

.field public t:Lod2$f;

.field public u:J

.field public v:Ljava/lang/Object;

.field public w:Lyq3;

.field public x:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public y:Ljava/lang/Thread;

.field public z:Lkf4;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lqz5;

    const/4 v1, 0x0

    sget-object v2, Lqz5;->e:Lqz5$a;

    const-string v3, "glide_thread_priority_override"

    invoke-direct {v0, v3, v1, v2}, Lqz5;-><init>(Ljava/lang/String;Ljava/lang/Object;Lqz5$b;)V

    sput-object v0, Lod2;->I:Lqz5;

    return-void
.end method

.method public constructor <init>(Lkz2$c;Lf53$c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmd2;

    invoke-direct {v0}, Lmd2;-><init>()V

    iput-object v0, p0, Lod2;->b:Lmd2;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lod2;->c:Ljava/util/ArrayList;

    new-instance v0, Lc78$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lod2;->d:Lc78$a;

    new-instance v0, Lod2$c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lod2;->g:Lod2$c;

    new-instance v0, Lod2$e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lod2;->h:Lod2$e;

    iput-object p1, p0, Lod2;->e:Lod2$d;

    iput-object p2, p0, Lod2;->f:Landroidx/core/util/Pools$Pool;

    return-void
.end method


# virtual methods
.method public final a(Lkf4;Ljava/lang/Exception;Ls82;Ly82;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkf4;",
            "Ljava/lang/Exception;",
            "Ls82<",
            "*>;",
            "Ly82;",
            ")V"
        }
    .end annotation

    invoke-interface {p3}, Ls82;->b()V

    new-instance v0, Lcom/bumptech/glide/load/engine/GlideException;

    const-string v1, "Fetching data failed"

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {p3}, Ls82;->a()Ljava/lang/Class;

    move-result-object p2

    iput-object p1, v0, Lcom/bumptech/glide/load/engine/GlideException;->c:Lkf4;

    iput-object p4, v0, Lcom/bumptech/glide/load/engine/GlideException;->d:Ly82;

    iput-object p2, v0, Lcom/bumptech/glide/load/engine/GlideException;->e:Ljava/lang/Class;

    iget-object p1, p0, Lod2;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object p2, p0, Lod2;->y:Ljava/lang/Thread;

    if-eq p1, p2, :cond_0

    sget-object p1, Lod2$f;->SWITCH_TO_SOURCE_SERVICE:Lod2$f;

    invoke-virtual {p0, p1}, Lod2;->n(Lod2$f;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lod2;->p()V

    return-void
.end method

.method public final c(Lkf4;Ljava/lang/Object;Ls82;Ly82;Lkf4;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkf4;",
            "Ljava/lang/Object;",
            "Ls82<",
            "*>;",
            "Ly82;",
            "Lkf4;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lod2;->z:Lkf4;

    iput-object p2, p0, Lod2;->B:Ljava/lang/Object;

    iput-object p3, p0, Lod2;->D:Ls82;

    iput-object p4, p0, Lod2;->C:Ly82;

    iput-object p5, p0, Lod2;->A:Lkf4;

    iget-object p2, p0, Lod2;->b:Lmd2;

    invoke-virtual {p2}, Lmd2;->a()Ljava/util/ArrayList;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eq p1, p2, :cond_0

    const/4 p3, 0x1

    :cond_0
    iput-boolean p3, p0, Lod2;->H:Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object p2, p0, Lod2;->y:Ljava/lang/Thread;

    if-eq p1, p2, :cond_1

    sget-object p1, Lod2$f;->DECODE_DATA:Lod2$f;

    invoke-virtual {p0, p1}, Lod2;->n(Lod2$f;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lod2;->g()V

    return-void
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lod2;

    iget-object v0, p0, Lod2;->k:Ljg6;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object v1, p1, Lod2;->k:Ljg6;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    iget p0, p0, Lod2;->r:I

    iget p1, p1, Lod2;->r:I

    sub-int/2addr p0, p1

    return p0

    :cond_0
    return v0
.end method

.method public final d()Lc78$a;
    .locals 0

    iget-object p0, p0, Lod2;->d:Lc78$a;

    return-object p0
.end method

.method public final e(Ls82;Ljava/lang/Object;Ly82;)Le47;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ls82<",
            "*>;TData;",
            "Ly82;",
            ")",
            "Le47<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "Decoded result "

    const/4 v1, 0x0

    if-nez p2, :cond_0

    invoke-interface {p1}, Ls82;->b()V

    return-object v1

    :cond_0
    :try_start_0
    sget v2, Lcv4;->b:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    invoke-virtual {p0, p2, p3}, Lod2;->f(Ljava/lang/Object;Ly82;)Le47;

    move-result-object p2

    const-string p3, "DecodeJob"

    const/4 v4, 0x2

    invoke-static {p3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p3

    if-eqz p3, :cond_1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, v2, v3, p3, v1}, Lod2;->j(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ls82;->b()V

    return-object p2

    :goto_1
    invoke-interface {p1}, Ls82;->b()V

    throw p0
.end method

.method public final f(Ljava/lang/Object;Ly82;)Le47;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(TData;",
            "Ly82;",
            ")",
            "Le47<",
            "TR;>;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lod2;->b:Lmd2;

    invoke-virtual {v1, v0}, Lmd2;->c(Ljava/lang/Class;)Lgs4;

    move-result-object v2

    iget-object v0, p0, Lod2;->p:Lxz5;

    sget-object v3, Ly82;->RESOURCE_DISK_CACHE:Ly82;

    if-eq p2, v3, :cond_1

    iget-boolean v1, v1, Lmd2;->r:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    sget-object v3, Lvq2;->i:Lqz5;

    invoke-virtual {v0, v3}, Lxz5;->c(Lqz5;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    :goto_2
    move-object v6, v0

    goto :goto_3

    :cond_3
    new-instance v0, Lxz5;

    invoke-direct {v0}, Lxz5;-><init>()V

    iget-object v4, p0, Lod2;->p:Lxz5;

    iget-object v4, v4, Lxz5;->b:Lzx0;

    iget-object v5, v0, Lxz5;->b:Lzx0;

    invoke-virtual {v5, v4}, Lzx0;->putAll(Landroidx/collection/SimpleArrayMap;)V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v5, v3, v1}, Lzx0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :goto_3
    iget-object v0, p0, Lod2;->i:Lwq3;

    invoke-virtual {v0}, Lwq3;->a()Lcom/bumptech/glide/Registry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/Registry;->g(Ljava/lang/Object;)Lcom/bumptech/glide/load/data/a;

    move-result-object v7

    :try_start_0
    iget v3, p0, Lod2;->m:I

    iget v4, p0, Lod2;->n:I

    new-instance v5, Lod2$b;

    invoke-direct {v5, p0, p2}, Lod2$b;-><init>(Lod2;Ly82;)V

    invoke-virtual/range {v2 .. v7}, Lgs4;->a(IILod2$b;Lxz5;Lcom/bumptech/glide/load/data/a;)Le47;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v7}, Lcom/bumptech/glide/load/data/a;->b()V

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-interface {v7}, Lcom/bumptech/glide/load/data/a;->b()V

    throw p0
.end method

.method public final g()V
    .locals 13

    const-string v0, "DecodeJob"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Retrieved data"

    iget-wide v2, p0, Lod2;->u:J

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "data: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lod2;->B:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", cache key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lod2;->z:Lkf4;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", fetcher: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lod2;->D:Ls82;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v0, v4}, Lod2;->j(JLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lod2;->w:Lyq3;

    const-class v2, Luq3;

    iget-object v0, v0, Lyq3;->a:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lod2;->x:Ljava/util/function/Supplier;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    iget-object v3, p0, Lod2;->x:Ljava/util/function/Supplier;

    invoke-interface {v3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v0, v3}, Landroid/os/Process;->setThreadPriority(II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    iput-object v2, p0, Lod2;->x:Ljava/util/function/Supplier;

    const-string v3, "DecodeJob"

    invoke-static {v3, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "DecodeJob"

    const-string v3, "Failed to set thread priority; using default priority for any subsequent jobs."

    invoke-static {v1, v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    :try_start_1
    iget-object v0, p0, Lod2;->D:Ls82;

    iget-object v1, p0, Lod2;->B:Ljava/lang/Object;

    iget-object v3, p0, Lod2;->C:Ly82;

    invoke-virtual {p0, v0, v1, v3}, Lod2;->e(Ls82;Ljava/lang/Object;Ly82;)Le47;

    move-result-object v0
    :try_end_1
    .catch Lcom/bumptech/glide/load/engine/GlideException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    iget-object v1, p0, Lod2;->A:Lkf4;

    iget-object v3, p0, Lod2;->C:Ly82;

    iput-object v1, v0, Lcom/bumptech/glide/load/engine/GlideException;->c:Lkf4;

    iput-object v3, v0, Lcom/bumptech/glide/load/engine/GlideException;->d:Ly82;

    iput-object v2, v0, Lcom/bumptech/glide/load/engine/GlideException;->e:Ljava/lang/Class;

    iget-object v1, p0, Lod2;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v2

    :goto_2
    if-eqz v0, :cond_d

    iget-object v1, p0, Lod2;->C:Ly82;

    iget-boolean v3, p0, Lod2;->H:Z

    instance-of v4, v0, Lg54;

    if-eqz v4, :cond_2

    move-object v4, v0

    check-cast v4, Lg54;

    invoke-interface {v4}, Lg54;->initialize()V

    :cond_2
    iget-object v4, p0, Lod2;->g:Lod2$c;

    iget-object v4, v4, Lod2$c;->c:Lsu4;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_3

    sget-object v2, Lsu4;->f:Lf53$c;

    invoke-virtual {v2}, Lf53$c;->acquire()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsu4;

    iput-boolean v5, v2, Lsu4;->e:Z

    iput-boolean v6, v2, Lsu4;->d:Z

    iput-object v0, v2, Lsu4;->c:Le47;

    move-object v0, v2

    :cond_3
    iget-object v4, p0, Lod2;->w:Lyq3;

    const-class v7, Luq3;

    iget-object v4, v4, Lyq3;->a:Ljava/util/Map;

    invoke-interface {v4, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lod2;->o()V

    :cond_4
    invoke-virtual {p0}, Lod2;->r()V

    iget-object v4, p0, Lod2;->q:Luz2;

    monitor-enter v4

    :try_start_2
    iput-object v0, v4, Luz2;->o:Le47;

    iput-object v1, v4, Luz2;->p:Ly82;

    iput-boolean v3, v4, Luz2;->w:Z

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    monitor-enter v4

    :try_start_3
    iget-object v0, v4, Luz2;->c:Lc78$a;

    invoke-virtual {v0}, Lc78$a;->a()V

    iget-boolean v0, v4, Luz2;->v:Z

    if-eqz v0, :cond_5

    iget-object v0, v4, Luz2;->o:Le47;

    invoke-interface {v0}, Le47;->recycle()V

    invoke-virtual {v4}, Luz2;->g()V

    monitor-exit v4

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_7

    :cond_5
    iget-object v0, v4, Luz2;->b:Luz2$e;

    iget-object v0, v0, Luz2$e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    iget-boolean v0, v4, Luz2;->q:Z

    if-nez v0, :cond_b

    iget-object v0, v4, Luz2;->f:Luz2$c;

    iget-object v8, v4, Luz2;->o:Le47;

    iget-boolean v9, v4, Luz2;->m:Z

    iget-object v11, v4, Luz2;->l:Lwz2;

    iget-object v12, v4, Luz2;->d:Lyz2$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lyz2;

    const/4 v10, 0x1

    invoke-direct/range {v7 .. v12}, Lyz2;-><init>(Le47;ZZLkf4;Lyz2$a;)V

    iput-object v7, v4, Luz2;->t:Lyz2;

    iput-boolean v6, v4, Luz2;->q:Z

    iget-object v0, v4, Luz2;->b:Luz2$e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, v0, Luz2$e;->b:Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v6

    invoke-virtual {v4, v0}, Luz2;->e(I)V

    iget-object v0, v4, Luz2;->l:Lwz2;

    iget-object v3, v4, Luz2;->t:Lyz2;

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v7, v4, Luz2;->g:Lvz2;

    check-cast v7, Lkz2;

    invoke-virtual {v7, v4, v0, v3}, Lkz2;->e(Luz2;Lkf4;Lyz2;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Luz2$d;

    iget-object v3, v1, Luz2$d;->b:Ljava/util/concurrent/Executor;

    new-instance v7, Luz2$b;

    iget-object v1, v1, Luz2$d;->a:Ly08;

    invoke-direct {v7, v4, v1}, Luz2$b;-><init>(Luz2;Ly08;)V

    invoke-interface {v3, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_6
    invoke-virtual {v4}, Luz2;->c()V

    :goto_4
    sget-object v0, Lod2$g;->ENCODE:Lod2$g;

    iput-object v0, p0, Lod2;->s:Lod2$g;

    :try_start_4
    iget-object v1, p0, Lod2;->g:Lod2$c;

    iget-object v0, v1, Lod2$c;->c:Lsu4;

    if-eqz v0, :cond_7

    move v5, v6

    :cond_7
    if-eqz v5, :cond_8

    iget-object v0, p0, Lod2;->e:Lod2$d;

    iget-object v3, p0, Lod2;->p:Lxz5;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    check-cast v0, Lkz2$c;

    invoke-virtual {v0}, Lkz2$c;->a()Lrn2;

    move-result-object v0

    iget-object v4, v1, Lod2$c;->a:Lkf4;

    new-instance v5, Lq82;

    iget-object v7, v1, Lod2$c;->b:Ll47;

    iget-object v8, v1, Lod2$c;->c:Lsu4;

    invoke-direct {v5, v7, v8, v3}, Lq82;-><init>(Lvx2;Ljava/lang/Object;Lxz5;)V

    invoke-interface {v0, v4, v5}, Lrn2;->a(Lkf4;Lq82;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    iget-object v0, v1, Lod2$c;->c:Lsu4;

    invoke-virtual {v0}, Lsu4;->b()V

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object p0, v0

    iget-object v0, v1, Lod2$c;->c:Lsu4;

    invoke-virtual {v0}, Lsu4;->b()V

    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    move-object p0, v0

    goto :goto_6

    :cond_8
    :goto_5
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lsu4;->b()V

    :cond_9
    iget-object v1, p0, Lod2;->h:Lod2$e;

    monitor-enter v1

    :try_start_7
    iput-boolean v6, v1, Lod2$e;->b:Z

    invoke-virtual {v1}, Lod2$e;->a()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    monitor-exit v1

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lod2;->l()V

    goto :goto_8

    :catchall_3
    move-exception v0

    move-object p0, v0

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw p0

    :goto_6
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lsu4;->b()V

    :cond_a
    throw p0

    :cond_b
    :try_start_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Already have resource"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Received a resource without any callbacks to notify"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_7
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw p0

    :catchall_4
    move-exception v0

    move-object p0, v0

    :try_start_a
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw p0

    :cond_d
    invoke-virtual {p0}, Lod2;->p()V

    :cond_e
    :goto_8
    return-void
.end method

.method public final h()Lt82;
    .locals 3

    sget-object v0, Lod2$a;->b:[I

    iget-object v1, p0, Lod2;->s:Lod2$g;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lod2;->b:Lmd2;

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return-object v2

    :cond_0
    const-string v0, "Unrecognized stage: "

    iget-object p0, p0, Lod2;->s:Lod2$g;

    invoke-static {p0, v0}, Lqz0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2

    :cond_1
    new-instance v0, Lz48;

    invoke-direct {v0, v2, p0}, Lz48;-><init>(Lmd2;Lod2;)V

    return-object v0

    :cond_2
    new-instance v0, Lo82;

    invoke-virtual {v2}, Lmd2;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1, v2, p0}, Lo82;-><init>(Ljava/util/List;Lmd2;Lt82$a;)V

    return-object v0

    :cond_3
    new-instance v0, Lg47;

    invoke-direct {v0, v2, p0}, Lg47;-><init>(Lmd2;Lod2;)V

    return-object v0
.end method

.method public final i(Lod2$g;)Lod2$g;
    .locals 2

    sget-object v0, Lod2$a;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget-object p1, p0, Lod2;->o:Lsn2;

    invoke-virtual {p1}, Lsn2;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p0, Lod2$g;->RESOURCE_CACHE:Lod2$g;

    return-object p0

    :cond_0
    sget-object p1, Lod2$g;->RESOURCE_CACHE:Lod2$g;

    invoke-virtual {p0, p1}, Lod2;->i(Lod2$g;)Lod2$g;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "Unrecognized stage: "

    invoke-static {p1, p0}, Lr01;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    sget-object p0, Lod2$g;->FINISHED:Lod2$g;

    return-object p0

    :cond_3
    sget-object p0, Lod2$g;->SOURCE:Lod2$g;

    return-object p0

    :cond_4
    iget-object p1, p0, Lod2;->o:Lsn2;

    invoke-virtual {p1}, Lsn2;->a()Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p0, Lod2$g;->DATA_CACHE:Lod2$g;

    return-object p0

    :cond_5
    sget-object p1, Lod2$g;->DATA_CACHE:Lod2$g;

    invoke-virtual {p0, p1}, Lod2;->i(Lod2$g;)Lod2$g;

    move-result-object p0

    return-object p0
.end method

.method public final j(JLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, " in "

    invoke-static {p3, v0}, Lfh;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-static {p1, p2}, Lcv4;->a(J)D

    move-result-wide p1

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, ", load key: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lod2;->l:Lwz2;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_0

    const-string p0, ", "

    invoke-virtual {p0, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", thread: "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DecodeJob"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final k()V
    .locals 6

    iget-object v0, p0, Lod2;->w:Lyq3;

    const-class v1, Luq3;

    iget-object v0, v0, Lyq3;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lod2;->o()V

    :cond_0
    invoke-virtual {p0}, Lod2;->r()V

    new-instance v0, Lcom/bumptech/glide/load/engine/GlideException;

    const-string v1, "Failed to load resource"

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lod2;->c:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iget-object v1, p0, Lod2;->q:Luz2;

    monitor-enter v1

    :try_start_0
    iput-object v0, v1, Luz2;->r:Lcom/bumptech/glide/load/engine/GlideException;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-enter v1

    :try_start_1
    iget-object v0, v1, Luz2;->c:Lc78$a;

    invoke-virtual {v0}, Lc78$a;->a()V

    iget-boolean v0, v1, Luz2;->v:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Luz2;->g()V

    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    iget-object v0, v1, Luz2;->b:Luz2$e;

    iget-object v0, v0, Luz2$e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, v1, Luz2;->s:Z

    if-nez v0, :cond_4

    iput-boolean v2, v1, Luz2;->s:Z

    iget-object v0, v1, Luz2;->l:Lwz2;

    iget-object v3, v1, Luz2;->b:Luz2$e;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Ljava/util/ArrayList;

    iget-object v3, v3, Luz2$e;->b:Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Luz2;->e(I)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v3, v1, Luz2;->g:Lvz2;

    const/4 v5, 0x0

    check-cast v3, Lkz2;

    invoke-virtual {v3, v1, v0, v5}, Lkz2;->e(Luz2;Lkf4;Lyz2;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Luz2$d;

    iget-object v4, v3, Luz2$d;->b:Ljava/util/concurrent/Executor;

    new-instance v5, Luz2$a;

    iget-object v3, v3, Luz2$d;->a:Ly08;

    invoke-direct {v5, v1, v3}, Luz2$a;-><init>(Luz2;Ly08;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Luz2;->c()V

    :goto_1
    iget-object v0, p0, Lod2;->h:Lod2$e;

    monitor-enter v0

    :try_start_2
    iput-boolean v2, v0, Lod2$e;->c:Z

    invoke-virtual {v0}, Lod2$e;->a()Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lod2;->l()V

    :cond_3
    return-void

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_4
    :try_start_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Already failed once"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Received an exception without any callbacks to notify"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_2
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :catchall_2
    move-exception p0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0
.end method

.method public final l()V
    .locals 5

    iget-object v0, p0, Lod2;->h:Lod2$e;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, v0, Lod2$e;->b:Z

    iput-boolean v1, v0, Lod2$e;->a:Z

    iput-boolean v1, v0, Lod2$e;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    iget-object v0, p0, Lod2;->g:Lod2$c;

    const/4 v2, 0x0

    iput-object v2, v0, Lod2$c;->a:Lkf4;

    iput-object v2, v0, Lod2$c;->b:Ll47;

    iput-object v2, v0, Lod2$c;->c:Lsu4;

    iget-object v0, p0, Lod2;->b:Lmd2;

    iput-object v2, v0, Lmd2;->c:Lwq3;

    iput-object v2, v0, Lmd2;->d:Ljava/lang/Object;

    iput-object v2, v0, Lmd2;->n:Lkf4;

    iput-object v2, v0, Lmd2;->g:Ljava/lang/Class;

    iput-object v2, v0, Lmd2;->k:Ljava/lang/Class;

    iput-object v2, v0, Lmd2;->i:Lxz5;

    iput-object v2, v0, Lmd2;->o:Ljg6;

    iput-object v2, v0, Lmd2;->j:Ljava/util/Map;

    iput-object v2, v0, Lmd2;->p:Lsn2;

    iget-object v3, v0, Lmd2;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iput-boolean v1, v0, Lmd2;->l:Z

    iget-object v3, v0, Lmd2;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iput-boolean v1, v0, Lmd2;->m:Z

    iput-boolean v1, p0, Lod2;->F:Z

    iput-object v2, p0, Lod2;->i:Lwq3;

    iput-object v2, p0, Lod2;->j:Lkf4;

    iput-object v2, p0, Lod2;->p:Lxz5;

    iput-object v2, p0, Lod2;->k:Ljg6;

    iput-object v2, p0, Lod2;->l:Lwz2;

    iput-object v2, p0, Lod2;->q:Luz2;

    iput-object v2, p0, Lod2;->s:Lod2$g;

    iput-object v2, p0, Lod2;->E:Lt82;

    iput-object v2, p0, Lod2;->y:Ljava/lang/Thread;

    iput-object v2, p0, Lod2;->z:Lkf4;

    iput-object v2, p0, Lod2;->B:Ljava/lang/Object;

    iput-object v2, p0, Lod2;->C:Ly82;

    iput-object v2, p0, Lod2;->D:Ls82;

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lod2;->u:J

    iput-boolean v1, p0, Lod2;->G:Z

    iput-object v2, p0, Lod2;->v:Ljava/lang/Object;

    iget-object v0, p0, Lod2;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lod2;->f:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0, p0}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final n(Lod2$f;)V
    .locals 1

    iput-object p1, p0, Lod2;->t:Lod2$f;

    iget-object p1, p0, Lod2;->q:Luz2;

    iget-boolean v0, p1, Luz2;->n:Z

    if-eqz v0, :cond_0

    iget-object p1, p1, Luz2;->j:Lxq3;

    goto :goto_0

    :cond_0
    iget-object p1, p1, Luz2;->i:Lxq3;

    :goto_0
    invoke-virtual {p1, p0}, Lxq3;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final o()V
    .locals 2

    iget-object v0, p0, Lod2;->w:Lyq3;

    const-class v1, Luq3;

    iget-object v0, v0, Lyq3;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lod2;->x:Ljava/util/function/Supplier;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    const/16 v1, 0x9

    invoke-static {v0, v1}, Landroid/os/Process;->setThreadPriority(II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lod2;->x:Ljava/util/function/Supplier;

    const/4 p0, 0x2

    const-string v1, "DecodeJob"

    invoke-static {v1, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "Failed to set thread priority; using default priority for any subsequent jobs."

    invoke-static {v1, p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void

    :cond_1
    const-string p0, "OverrideGlideThreadPriority experiment is not enabled."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void
.end method

.method public final p()V
    .locals 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lod2;->y:Ljava/lang/Thread;

    sget v0, Lcv4;->b:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Lod2;->u:J

    const/4 v0, 0x0

    :cond_0
    iget-boolean v1, p0, Lod2;->G:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lod2;->E:Lt82;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lod2;->E:Lt82;

    invoke-interface {v0}, Lt82;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lod2;->s:Lod2$g;

    invoke-virtual {p0, v1}, Lod2;->i(Lod2$g;)Lod2$g;

    move-result-object v1

    iput-object v1, p0, Lod2;->s:Lod2$g;

    invoke-virtual {p0}, Lod2;->h()Lt82;

    move-result-object v1

    iput-object v1, p0, Lod2;->E:Lt82;

    iget-object v1, p0, Lod2;->s:Lod2$g;

    sget-object v2, Lod2$g;->SOURCE:Lod2$g;

    if-ne v1, v2, :cond_0

    sget-object v0, Lod2$f;->SWITCH_TO_SOURCE_SERVICE:Lod2$f;

    invoke-virtual {p0, v0}, Lod2;->n(Lod2$f;)V

    return-void

    :cond_1
    iget-object v1, p0, Lod2;->s:Lod2$g;

    sget-object v2, Lod2$g;->FINISHED:Lod2$g;

    if-eq v1, v2, :cond_2

    iget-boolean v1, p0, Lod2;->G:Z

    if-eqz v1, :cond_3

    :cond_2
    if-nez v0, :cond_3

    invoke-virtual {p0}, Lod2;->k()V

    :cond_3
    return-void
.end method

.method public final q()V
    .locals 2

    sget-object v0, Lod2$a;->a:[I

    iget-object v1, p0, Lod2;->t:Lod2$f;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lod2;->g()V

    return-void

    :cond_0
    const-string v0, "Unrecognized run reason: "

    iget-object p0, p0, Lod2;->t:Lod2$f;

    invoke-static {p0, v0}, Lqz0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lod2;->p()V

    return-void

    :cond_2
    sget-object v0, Lod2$g;->INITIALIZE:Lod2$g;

    invoke-virtual {p0, v0}, Lod2;->i(Lod2$g;)Lod2$g;

    move-result-object v0

    iput-object v0, p0, Lod2;->s:Lod2$g;

    invoke-virtual {p0}, Lod2;->h()Lt82;

    move-result-object v0

    iput-object v0, p0, Lod2;->E:Lt82;

    invoke-virtual {p0}, Lod2;->p()V

    return-void
.end method

.method public final r()V
    .locals 2

    iget-object v0, p0, Lod2;->d:Lc78$a;

    invoke-virtual {v0}, Lc78$a;->a()V

    iget-boolean v0, p0, Lod2;->F:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lod2;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lod2;->c:Ljava/util/ArrayList;

    invoke-static {v1, p0}, Ldd2;->b(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    :goto_0
    const-string v0, "Already notified"

    invoke-static {v0, p0}, Lh2;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_1
    iput-boolean v1, p0, Lod2;->F:Z

    return-void
.end method

.method public final run()V
    .locals 5

    const-string v0, "DecodeJob"

    const-string v1, "DecodeJob threw unexpectedly, isCancelled: "

    iget-object v2, p0, Lod2;->D:Ls82;

    :try_start_0
    iget-boolean v3, p0, Lod2;->G:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lod2;->k()V
    :try_end_0
    .catch Lvy0; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ls82;->b()V

    return-void

    :catchall_0
    move-exception v3

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lod2;->q()V
    :try_end_1
    .catch Lvy0; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ls82;->b()V

    :cond_1
    return-void

    :goto_0
    const/4 v4, 0x3

    :try_start_2
    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lod2;->G:Z

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", stage: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lod2;->s:Lod2$g;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_2
    :goto_1
    iget-object v0, p0, Lod2;->s:Lod2$g;

    sget-object v1, Lod2$g;->ENCODE:Lod2$g;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lod2;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lod2;->k()V

    :cond_3
    iget-boolean p0, p0, Lod2;->G:Z

    if-nez p0, :cond_4

    throw v3

    :cond_4
    throw v3

    :goto_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_3
    if-eqz v2, :cond_5

    invoke-interface {v2}, Ls82;->b()V

    :cond_5
    throw p0
.end method
