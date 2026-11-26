.class public final Luz2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf53$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luz2$c;,
        Luz2$e;,
        Luz2$b;,
        Luz2$a;,
        Luz2$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lf53$d;"
    }
.end annotation


# static fields
.field public static final x:Luz2$c;


# instance fields
.field public final b:Luz2$e;

.field public final c:Lc78$a;

.field public final d:Lyz2$a;

.field public final e:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Luz2<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final f:Luz2$c;

.field public final g:Lvz2;

.field public final h:Lxq3;

.field public final i:Lxq3;

.field public final j:Lxq3;

.field public final k:Ljava/util/concurrent/atomic/AtomicInteger;

.field public l:Lwz2;

.field public m:Z

.field public n:Z

.field public o:Le47;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le47<",
            "*>;"
        }
    .end annotation
.end field

.field public p:Ly82;

.field public q:Z

.field public r:Lcom/bumptech/glide/load/engine/GlideException;

.field public s:Z

.field public t:Lyz2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyz2<",
            "*>;"
        }
    .end annotation
.end field

.field public u:Lod2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lod2<",
            "TR;>;"
        }
    .end annotation
.end field

.field public volatile v:Z

.field public w:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Luz2$c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Luz2;->x:Luz2$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Lxq3;Lxq3;Lxq3;Lxq3;Lkz2;Lkz2;Lf53$c;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p3, Luz2$e;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p3, v0}, Luz2$e;-><init>(Ljava/util/ArrayList;)V

    iput-object p3, p0, Luz2;->b:Luz2$e;

    new-instance p3, Lc78$a;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Luz2;->c:Lc78$a;

    new-instance p3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p3, p0, Luz2;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Luz2;->h:Lxq3;

    iput-object p2, p0, Luz2;->i:Lxq3;

    iput-object p4, p0, Luz2;->j:Lxq3;

    iput-object p5, p0, Luz2;->g:Lvz2;

    iput-object p6, p0, Luz2;->d:Lyz2$a;

    iput-object p7, p0, Luz2;->e:Landroidx/core/util/Pools$Pool;

    sget-object p1, Luz2;->x:Luz2$c;

    iput-object p1, p0, Luz2;->f:Luz2$c;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ly08;Ljava/util/concurrent/Executor;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Luz2;->c:Lc78$a;

    invoke-virtual {v0}, Lc78$a;->a()V

    iget-object v0, p0, Luz2;->b:Luz2$e;

    iget-object v0, v0, Luz2$e;->b:Ljava/util/ArrayList;

    new-instance v1, Luz2$d;

    invoke-direct {v1, p1, p2}, Luz2$d;-><init>(Ly08;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Luz2;->q:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Luz2;->e(I)V

    new-instance v0, Luz2$b;

    invoke-direct {v0, p0, p1}, Luz2$b;-><init>(Luz2;Ly08;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Luz2;->s:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Luz2;->e(I)V

    new-instance v0, Luz2$a;

    invoke-direct {v0, p0, p1}, Luz2$a;-><init>(Luz2;Ly08;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Luz2;->v:Z

    xor-int/2addr p1, v1

    const-string p2, "Cannot add callbacks to a cancelled EngineJob"

    invoke-static {p1, p2}, Lr96;->a(ZLjava/lang/String;)V
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

.method public final b()V
    .locals 4

    invoke-virtual {p0}, Luz2;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Luz2;->v:Z

    iget-object v1, p0, Luz2;->u:Lod2;

    iput-boolean v0, v1, Lod2;->G:Z

    iget-object v0, v1, Lod2;->E:Lt82;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lt82;->cancel()V

    :cond_1
    iget-object v0, p0, Luz2;->g:Lvz2;

    iget-object v1, p0, Luz2;->l:Lwz2;

    check-cast v0, Lkz2;

    monitor-enter v0

    :try_start_0
    iget-object v2, v0, Lkz2;->a:Lvb4;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v2, Lvb4;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq p0, v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final c()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Luz2;->c:Lc78$a;

    invoke-virtual {v0}, Lc78$a;->a()V

    invoke-virtual {p0}, Luz2;->f()Z

    move-result v0

    const-string v1, "Not yet complete!"

    invoke-static {v0, v1}, Lr96;->a(ZLjava/lang/String;)V

    iget-object v0, p0, Luz2;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Can\'t decrement below 0"

    invoke-static {v1, v2}, Lr96;->a(ZLjava/lang/String;)V

    if-nez v0, :cond_1

    iget-object v0, p0, Luz2;->t:Lyz2;

    invoke-virtual {p0}, Luz2;->g()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lyz2;->c()V

    :cond_2
    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final d()Lc78$a;
    .locals 0

    iget-object p0, p0, Luz2;->c:Lc78$a;

    return-object p0
.end method

.method public final declared-synchronized e(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Luz2;->f()Z

    move-result v0

    const-string v1, "Not yet complete!"

    invoke-static {v0, v1}, Lr96;->a(ZLjava/lang/String;)V

    iget-object v0, p0, Luz2;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Luz2;->t:Lyz2;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lyz2;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
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

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Luz2;->s:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Luz2;->q:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Luz2;->v:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final declared-synchronized g()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Luz2;->l:Lwz2;

    if-eqz v0, :cond_1

    iget-object v0, p0, Luz2;->b:Luz2$e;

    iget-object v0, v0, Luz2$e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Luz2;->l:Lwz2;

    iput-object v0, p0, Luz2;->t:Lyz2;

    iput-object v0, p0, Luz2;->o:Le47;

    const/4 v1, 0x0

    iput-boolean v1, p0, Luz2;->s:Z

    iput-boolean v1, p0, Luz2;->v:Z

    iput-boolean v1, p0, Luz2;->q:Z

    iput-boolean v1, p0, Luz2;->w:Z

    iget-object v1, p0, Luz2;->u:Lod2;

    iget-object v2, v1, Lod2;->h:Lod2$e;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x1

    :try_start_1
    iput-boolean v3, v2, Lod2$e;->a:Z

    invoke-virtual {v2}, Lod2$e;->a()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v2

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lod2;->l()V

    :cond_0
    iput-object v0, p0, Luz2;->u:Lod2;

    iput-object v0, p0, Luz2;->r:Lcom/bumptech/glide/load/engine/GlideException;

    iput-object v0, p0, Luz2;->p:Ly82;

    iget-object v0, p0, Luz2;->e:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0, p0}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :goto_0
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public final declared-synchronized h(Ly08;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Luz2;->c:Lc78$a;

    invoke-virtual {v0}, Lc78$a;->a()V

    iget-object v0, p0, Luz2;->b:Luz2$e;

    iget-object v0, v0, Luz2$e;->b:Ljava/util/ArrayList;

    new-instance v1, Luz2$d;

    sget-object v2, Ly13;->b:Ly13$b;

    invoke-direct {v1, p1, v2}, Luz2$d;-><init>(Ly08;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Luz2;->b:Luz2$e;

    iget-object p1, p1, Luz2$e;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Luz2;->b()V

    iget-boolean p1, p0, Luz2;->q:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Luz2;->s:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Luz2;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Luz2;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
