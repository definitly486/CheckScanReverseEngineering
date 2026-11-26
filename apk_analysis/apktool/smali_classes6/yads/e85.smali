.class public final Lyads/e85;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final b:Ljava/util/HashSet;

.field public final c:Ljava/util/concurrent/PriorityBlockingQueue;

.field public final d:Ljava/util/concurrent/PriorityBlockingQueue;

.field public final e:Lyads/xv;

.field public final f:Lyads/ss;

.field public final g:Lyads/pp2;

.field public final h:[Lyads/bn4;

.field public i:Lyads/ew;

.field public final j:Ljava/util/ArrayList;

.field public final k:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lyads/xv;Lyads/ss;I)V
    .locals 3

    new-instance v0, Lyads/pp2;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Lyads/pp2;-><init>(Landroid/os/Handler;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v1, p0, Lyads/e85;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lyads/e85;->b:Ljava/util/HashSet;

    new-instance v1, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v1, p0, Lyads/e85;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v1, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v1, p0, Lyads/e85;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lyads/e85;->j:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lyads/e85;->k:Ljava/util/ArrayList;

    iput-object p1, p0, Lyads/e85;->e:Lyads/xv;

    iput-object p2, p0, Lyads/e85;->f:Lyads/ss;

    new-array p1, p3, [Lyads/bn4;

    iput-object p1, p0, Lyads/e85;->h:[Lyads/bn4;

    iput-object v0, p0, Lyads/e85;->g:Lyads/pp2;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    iget-object v0, p0, Lyads/e85;->i:Lyads/ew;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, v0, Lyads/ew;->f:Z

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    iget-object v0, p0, Lyads/e85;->h:[Lyads/bn4;

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    if-eqz v5, :cond_1

    iput-boolean v1, v5, Lyads/bn4;->f:Z

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Lyads/ew;

    iget-object v1, p0, Lyads/e85;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v2, p0, Lyads/e85;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v4, p0, Lyads/e85;->e:Lyads/xv;

    iget-object v5, p0, Lyads/e85;->g:Lyads/pp2;

    invoke-direct {v0, v1, v2, v4, v5}, Lyads/ew;-><init>(Ljava/util/concurrent/PriorityBlockingQueue;Ljava/util/concurrent/PriorityBlockingQueue;Lyads/xv;Lyads/pp2;)V

    iput-object v0, p0, Lyads/e85;->i:Lyads/ew;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_1
    iget-object v0, p0, Lyads/e85;->h:[Lyads/bn4;

    array-length v0, v0

    if-ge v3, v0, :cond_3

    new-instance v0, Lyads/bn4;

    iget-object v1, p0, Lyads/e85;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v2, p0, Lyads/e85;->f:Lyads/ss;

    iget-object v4, p0, Lyads/e85;->e:Lyads/xv;

    iget-object v5, p0, Lyads/e85;->g:Lyads/pp2;

    invoke-direct {v0, v1, v2, v4, v5}, Lyads/bn4;-><init>(Ljava/util/concurrent/PriorityBlockingQueue;Lyads/ss;Lyads/xv;Lyads/pp2;)V

    iget-object v1, p0, Lyads/e85;->h:[Lyads/bn4;

    aput-object v0, v1, v3

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final a(Lyads/d85;)V
    .locals 3

    .line 76
    iget-object v0, p0, Lyads/e85;->b:Ljava/util/HashSet;

    monitor-enter v0

    .line 77
    :try_start_0
    iget-object p0, p0, Lyads/e85;->b:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/r75;

    .line 78
    invoke-interface {p1, v1}, Lyads/d85;->a(Lyads/r75;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    invoke-virtual {v1}, Lyads/r75;->a()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 80
    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final a(Lyads/r75;)V
    .locals 2

    .line 81
    iput-object p0, p1, Lyads/r75;->i:Lyads/e85;

    .line 82
    iget-object v0, p0, Lyads/e85;->b:Ljava/util/HashSet;

    monitor-enter v0

    .line 83
    :try_start_0
    iget-object v1, p0, Lyads/e85;->b:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 84
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    iget-object v0, p0, Lyads/e85;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 86
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lyads/r75;->h:Ljava/lang/Integer;

    .line 87
    const-string v0, "add-to-queue"

    invoke-virtual {p1, v0}, Lyads/r75;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 88
    invoke-virtual {p0, p1, v0}, Lyads/e85;->a(Lyads/r75;I)V

    .line 89
    iget-boolean v0, p1, Lyads/r75;->j:Z

    if-nez v0, :cond_0

    .line 90
    iget-object p0, p0, Lyads/e85;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    return-void

    .line 91
    :cond_0
    iget-object p0, p0, Lyads/e85;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    return-void

    :catchall_0
    move-exception p0

    .line 92
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final a(Lyads/r75;I)V
    .locals 3

    .line 93
    iget-object v0, p0, Lyads/e85;->k:Ljava/util/ArrayList;

    monitor-enter v0

    .line 94
    :try_start_0
    iget-object p0, p0, Lyads/e85;->k:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/c85;

    .line 95
    check-cast v1, Lyads/t75;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    instance-of v1, p1, Lyads/es;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Lyads/es;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_0

    const/4 v2, 0x3

    if-ne p2, v2, :cond_0

    .line 97
    iget-object v1, v1, Lyads/es;->u:Lyads/w75;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lyads/w75;->a()V

    goto :goto_0

    .line 98
    :cond_2
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final a(Lyads/t75;)V
    .locals 1

    .line 99
    iget-object v0, p0, Lyads/e85;->k:Ljava/util/ArrayList;

    monitor-enter v0

    .line 100
    :try_start_0
    iget-object p0, p0, Lyads/e85;->k:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
