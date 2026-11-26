.class public final Lyads/dg6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/cg6;


# direct methods
.method public constructor <init>(Lyads/o90;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lyads/cg6;

    invoke-direct {v0, p1}, Lyads/cg6;-><init>(Lyads/o90;)V

    iput-object v0, p0, Lyads/dg6;->a:Lyads/cg6;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public final a(Lyads/cd;)V
    .locals 5

    iget-object v0, p1, Lyads/cd;->a:Ljava/lang/String;

    iget-object v1, p0, Lyads/dg6;->a:Lyads/cg6;

    iget-object v1, v1, Lyads/cg6;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p1, Lyads/cd;->h:Z

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Lyads/dg6;->a:Lyads/cg6;

    iget-object v0, v0, Lyads/cg6;->c:Lyads/ts;

    iget-object v1, v0, Lyads/ts;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v1, p1, Lyads/cd;->a:Ljava/lang/String;

    iget-object v2, p0, Lyads/dg6;->a:Lyads/cg6;

    iget-object v2, v2, Lyads/cg6;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, p1, Lyads/cd;->h:Z

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lyads/dg6;->a:Lyads/cg6;

    iget-object v1, v1, Lyads/cg6;->c:Lyads/ts;

    iget-object v2, v1, Lyads/ts;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, v1, Lyads/ts;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/bg6;

    iget-object v3, v3, Lyads/bg6;->c:Ljava/lang/String;

    iget-object v4, p1, Lyads/cd;->a:Ljava/lang/String;

    invoke-static {v3, v4}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_3
    :goto_0
    :try_start_2
    iget-object v1, v1, Lyads/ts;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object p0, p0, Lyads/dg6;->a:Lyads/cg6;

    iget-object p0, p0, Lyads/cg6;->c:Lyads/ts;

    new-instance v1, Lyads/bg6;

    const/4 v2, -0x1

    invoke-direct {v1, p1, v2}, Lyads/bg6;-><init>(Lyads/cd;I)V

    invoke-virtual {p0, v1}, Lyads/ts;->offer(Ljava/lang/Object;)Z

    sget-object p0, Lj59;->a:Lj59;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object p0, v0, Lyads/ts;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_1
    move-exception p0

    goto :goto_3

    :goto_1
    :try_start_3
    iget-object p1, v1, Lyads/ts;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_4
    :goto_2
    iget-object p0, v0, Lyads/ts;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :goto_3
    iget-object p1, v0, Lyads/ts;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0

    :cond_5
    :goto_4
    return-void
.end method
