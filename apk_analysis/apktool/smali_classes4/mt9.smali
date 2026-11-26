.class public final Lmt9;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmt9;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    invoke-static {}, Lw4a;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p0, "VideoLoaderUtils: Method load called from main thread"

    invoke-static {v1, p0}, Ly14;->u(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    iget-object v2, p0, Lmt9;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iget-object p0, p0, Lmt9;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lifa;

    iget-object v3, v2, Lifa;->a:Ljava/lang/Object;

    check-cast v3, Lrn9;

    iget-object v4, v3, Lxha;->a:Ljava/lang/String;

    new-instance v5, Lmt9$a;

    invoke-direct {v5, v3, v0, v2, v4}, Lmt9$a;-><init>(Lrn9;Ljava/util/concurrent/CountDownLatch;Lifa;Ljava/lang/String;)V

    sget-object v2, Lsr9;->b:Lsr9;

    if-nez v2, :cond_2

    const-class v3, Lsr9;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lsr9;->b:Lsr9;

    if-nez v2, :cond_1

    new-instance v2, Lsr9;

    invoke-direct {v2}, Lsr9;-><init>()V

    sput-object v2, Lsr9;->b:Lsr9;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit v3

    goto :goto_3

    :goto_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_3
    new-instance v3, Lrr9;

    invoke-direct {v3, v2, v4, v5}, Lrr9;-><init>(Lsr9;Ljava/lang/String;Lmt9$a;)V

    sget-object v2, Lw4a;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    const-string p0, "VideoLoaderUtils: success media loading"

    invoke-static {v1, p0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    const-string p0, "VideoLoaderUtils: awaiting media files load failed"

    invoke-static {v1, p0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
