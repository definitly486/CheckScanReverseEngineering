.class public final Lau7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpq5;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lpq5<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Lyt7$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyt7$c<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lyt7$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyt7$c<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lau7;->b:Lyt7$c;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lau7;->b:Lyt7$c;

    sget-object v0, Lyt7;->c:Lyt7;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lyt7;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, p0}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyt7$b;

    if-nez v1, :cond_0

    new-instance v1, Lyt7$b;

    invoke-interface {p0}, Lyt7$c;->create()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v2}, Lyt7$b;-><init>(Ljava/lang/Object;)V

    iget-object v2, v0, Lyt7;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p0, v1, Lyt7$b;->c:Ljava/util/concurrent/ScheduledFuture;

    if-eqz p0, :cond_1

    const/4 v2, 0x0

    invoke-interface {p0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const/4 p0, 0x0

    iput-object p0, v1, Lyt7$b;->c:Ljava/util/concurrent/ScheduledFuture;

    :cond_1
    iget p0, v1, Lyt7$b;->b:I

    add-int/lit8 p0, p0, 0x1

    iput p0, v1, Lyt7$b;->b:I

    iget-object p0, v1, Lyt7$b;->a:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 6

    iget-object p0, p0, Lau7;->b:Lyt7$c;

    sget-object v0, Lyt7;->c:Lyt7;

    const-string v1, "No cached instance found for "

    monitor-enter v0

    :try_start_0
    iget-object v2, v0, Lyt7;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v2, p0}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyt7$b;

    if-eqz v2, :cond_5

    iget-object v1, v2, Lyt7$b;->a:Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p1, v1, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const-string v5, "Releasing the wrong instance"

    invoke-static {v1, v5}, Lo8;->f(ZLjava/lang/Object;)V

    iget v1, v2, Lyt7$b;->b:I

    if-lez v1, :cond_1

    move v1, v4

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    const-string v5, "Refcount has already reached zero"

    invoke-static {v1, v5}, Lo8;->s(ZLjava/lang/Object;)V

    iget v1, v2, Lyt7$b;->b:I

    sub-int/2addr v1, v4

    iput v1, v2, Lyt7$b;->b:I

    if-nez v1, :cond_4

    iget-object v1, v2, Lyt7$b;->c:Ljava/util/concurrent/ScheduledFuture;

    if-nez v1, :cond_2

    move v3, v4

    :cond_2
    const-string v1, "Destroy task already scheduled"

    invoke-static {v3, v1}, Lo8;->s(ZLjava/lang/Object;)V

    iget-object v1, v0, Lyt7;->b:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v1, :cond_3

    const-string v1, "grpc-shared-destroyer-%d"

    invoke-static {v1}, Lvs3;->d(Ljava/lang/String;)Lmt8;

    move-result-object v1

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, v0, Lyt7;->b:Ljava/util/concurrent/ScheduledExecutorService;

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_3
    :goto_2
    new-instance v3, Lvu4;

    new-instance v4, Lzt7;

    invoke-direct {v4, v0, v2, p0, p1}, Lzt7;-><init>(Lyt7;Lyt7$b;Lyt7$c;Ljava/lang/Object;)V

    invoke-direct {v3, v4}, Lvu4;-><init>(Ljava/lang/Runnable;)V

    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-interface {v1, v3, v4, v5, p0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    iput-object p0, v2, Lyt7$b;->c:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit v0

    return-void

    :cond_5
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
