.class public final Lyads/ho2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/tf6;

.field public final b:Lyads/cf2;

.field public c:Z

.field public final d:Lyads/do2;

.field public e:Lyads/vq0;

.field public f:Lyads/fo2;


# direct methods
.method public constructor <init>(Lyads/bo2;Lyads/vq0;Lyads/tf6;Lyads/cf2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lyads/ho2;->a:Lyads/tf6;

    iput-object p4, p0, Lyads/ho2;->b:Lyads/cf2;

    const/4 p3, 0x0

    iput-boolean p3, p0, Lyads/ho2;->c:Z

    new-instance p3, Lyads/do2;

    invoke-direct {p3, p1, p2}, Lyads/do2;-><init>(Lyads/bo2;Lyads/vq0;)V

    iput-object p3, p0, Lyads/ho2;->d:Lyads/do2;

    invoke-virtual {p0}, Lyads/ho2;->a()V

    return-void
.end method

.method public static final a(Lyads/ho2;Lyads/st;)Lj59;
    .locals 6

    iget-object p0, p0, Lyads/ho2;->d:Lyads/do2;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lyads/st;->a:Lyads/qb1;

    iget-object v0, p0, Lyads/do2;->f:Lyads/tp0;

    if-eqz v0, :cond_8

    instance-of v1, v0, Ljava/lang/AutoCloseable;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    goto :goto_1

    :cond_0
    instance-of v1, v0, Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_4

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonPool()Ljava/util/concurrent/ForkJoinPool;

    move-result-object v1

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const/4 v2, 0x0

    :cond_2
    :goto_0
    if-nez v1, :cond_3

    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-interface {v0, v4, v5, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    if-nez v2, :cond_2

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_8

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    :cond_4
    instance-of v1, v0, Landroid/content/res/TypedArray;

    if-eqz v1, :cond_5

    check-cast v0, Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    :cond_5
    instance-of v1, v0, Landroid/media/MediaMetadataRetriever;

    if-eqz v1, :cond_6

    check-cast v0, Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_1

    :cond_6
    instance-of v1, v0, Landroid/media/MediaDrm;

    if-eqz v1, :cond_7

    check-cast v0, Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->release()V

    goto :goto_1

    :cond_7
    invoke-static {}, Lmi2;->b()V

    const/4 p0, 0x0

    return-object p0

    :cond_8
    :goto_1
    iget-object v0, p0, Lyads/do2;->a:Lyads/bo2;

    iget-object v1, p1, Lyads/st;->a:Lyads/qb1;

    iget-object p1, p1, Lyads/st;->b:Lyads/db1;

    invoke-virtual {v0, p1, v1}, Lyads/bo2;->a(Lyads/db1;Lyads/qb1;)Lyads/ao2;

    move-result-object p1

    iget-object v0, p0, Lyads/do2;->g:Lbm3;

    invoke-virtual {p1, v0}, Lyads/ao2;->a(Lbm3;)Lyads/tp0;

    move-result-object p1

    iput-object p1, p0, Lyads/do2;->f:Lyads/tp0;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 126
    iget-boolean v0, p0, Lyads/ho2;->c:Z

    if-eqz v0, :cond_3

    .line 127
    iget-object v0, p0, Lyads/ho2;->a:Lyads/tf6;

    new-instance v1, Lvh0;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lvh0;-><init>(Ljava/lang/Object;I)V

    .line 128
    iget-object v2, v0, Lyads/tf6;->a:Lyads/st;

    .line 129
    invoke-virtual {v1, v2}, Lvh0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v0, v0, Lyads/tf6;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v0, p0, Lyads/ho2;->e:Lyads/vq0;

    if-eqz v0, :cond_2

    .line 132
    iput-object v0, p0, Lyads/ho2;->e:Lyads/vq0;

    .line 133
    iget-boolean v1, p0, Lyads/ho2;->c:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 134
    :cond_0
    iget-object v1, p0, Lyads/ho2;->f:Lyads/fo2;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lyads/fo2;->close()V

    .line 135
    :cond_1
    new-instance v1, Lyads/fo2;

    iget-object v2, p0, Lyads/ho2;->d:Lyads/do2;

    iget-object v3, p0, Lyads/ho2;->b:Lyads/cf2;

    invoke-direct {v1, v0, v2, v3}, Lyads/fo2;-><init>(Lyads/vq0;Lyads/do2;Lyads/cf2;)V

    iput-object v1, p0, Lyads/ho2;->f:Lyads/fo2;

    :cond_2
    :goto_0
    return-void

    .line 136
    :cond_3
    iget-object v0, p0, Lyads/ho2;->f:Lyads/fo2;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lyads/fo2;->close()V

    :cond_4
    const/4 v0, 0x0

    .line 137
    iput-object v0, p0, Lyads/ho2;->f:Lyads/fo2;

    return-void
.end method
