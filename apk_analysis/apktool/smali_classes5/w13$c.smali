.class public final Lw13$c;
.super Lhe7$c;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw13;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw13$c$b;,
        Lw13$c$a;
    }
.end annotation


# instance fields
.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Lbf5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbf5<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public volatile d:Z

.field public final e:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final f:Lfu1;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lw13$c;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Lfu1;

    invoke-direct {v0}, Lfu1;-><init>()V

    iput-object v0, p0, Lw13$c;->f:Lfu1;

    iput-object p1, p0, Lw13$c;->b:Ljava/util/concurrent/Executor;

    new-instance p1, Lbf5;

    invoke-direct {p1}, Lbf5;-><init>()V

    iput-object p1, p0, Lw13$c;->c:Lbf5;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;)Lcp2;
    .locals 1

    iget-boolean v0, p0, Lw13$c;->d:Z

    if-eqz v0, :cond_0

    sget-object p0, Lhx2;->INSTANCE:Lhx2;

    return-object p0

    :cond_0
    new-instance v0, Lw13$c$a;

    invoke-direct {v0, p1}, Lw13$c$a;-><init>(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lw13$c;->c:Lbf5;

    invoke-virtual {p1, v0}, Lbf5;->offer(Ljava/lang/Object;)Z

    iget-object p1, p0, Lw13$c;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-nez p1, :cond_1

    :try_start_0
    iget-object p1, p0, Lw13$c;->b:Ljava/util/concurrent/Executor;

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lw13$c;->d:Z

    iget-object p0, p0, Lw13$c;->c:Lbf5;

    invoke-virtual {p0}, Lbf5;->clear()V

    invoke-static {p1}, Ld97;->b(Ljava/lang/Throwable;)V

    sget-object p0, Lhx2;->INSTANCE:Lhx2;

    return-object p0

    :cond_1
    return-object v0
.end method

.method public final b(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcp2;
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    invoke-virtual {p0, p1}, Lw13$c;->a(Ljava/lang/Runnable;)Lcp2;

    move-result-object p0

    return-object p0

    :cond_0
    iget-boolean v0, p0, Lw13$c;->d:Z

    if-eqz v0, :cond_1

    sget-object p0, Lhx2;->INSTANCE:Lhx2;

    return-object p0

    :cond_1
    new-instance v0, Lkp7;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v1, Lkp7;

    invoke-direct {v1, v0}, Lkp7;-><init>(Lkp7;)V

    new-instance v2, Lge7;

    new-instance v3, Lw13$c$b;

    invoke-direct {v3, p0, v1, p1}, Lw13$c$b;-><init>(Lw13$c;Lkp7;Ljava/lang/Runnable;)V

    iget-object p1, p0, Lw13$c;->f:Lfu1;

    invoke-direct {v2, v3, p1}, Lge7;-><init>(Ljava/lang/Runnable;Lfp2;)V

    iget-object p1, p0, Lw13$c;->f:Lfu1;

    invoke-virtual {p1, v2}, Lfu1;->b(Lcp2;)Z

    iget-object p1, p0, Lw13$c;->b:Ljava/util/concurrent/Executor;

    instance-of v3, p1, Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v3, :cond_2

    :try_start_0
    check-cast p1, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1, v2, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    invoke-virtual {v2, p1}, Lge7;->a(Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p2, 0x1

    iput-boolean p2, p0, Lw13$c;->d:Z

    invoke-static {p1}, Ld97;->b(Ljava/lang/Throwable;)V

    sget-object p0, Lhx2;->INSTANCE:Lhx2;

    return-object p0

    :cond_2
    sget-object p0, Lw13;->d:Lhe7;

    invoke-virtual {p0, v2, p2, p3, p4}, Lhe7;->d(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcp2;

    move-result-object p0

    new-instance p1, Llp2;

    invoke-direct {p1, p0}, Llp2;-><init>(Lcp2;)V

    invoke-virtual {v2, p1}, Lge7;->a(Ljava/util/concurrent/Future;)V

    :goto_0
    invoke-static {v0, v2}, Lip2;->e(Ljava/util/concurrent/atomic/AtomicReference;Lcp2;)V

    return-object v1
.end method

.method public final dispose()V
    .locals 1

    iget-boolean v0, p0, Lw13$c;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lw13$c;->d:Z

    iget-object v0, p0, Lw13$c;->f:Lfu1;

    invoke-virtual {v0}, Lfu1;->dispose()V

    iget-object v0, p0, Lw13$c;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lw13$c;->c:Lbf5;

    invoke-virtual {p0}, Lbf5;->clear()V

    :cond_0
    return-void
.end method

.method public final isDisposed()Z
    .locals 0

    iget-boolean p0, p0, Lw13$c;->d:Z

    return p0
.end method

.method public final run()V
    .locals 3

    iget-object v0, p0, Lw13$c;->c:Lbf5;

    const/4 v1, 0x1

    :cond_0
    iget-boolean v2, p0, Lw13$c;->d:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lbf5;->clear()V

    return-void

    :cond_1
    invoke-virtual {v0}, Lbf5;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lw13$c;->d:Z

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lbf5;->clear()V

    return-void

    :cond_2
    iget-object v2, p0, Lw13$c;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v1, v1

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_3
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    iget-boolean v2, p0, Lw13$c;->d:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lbf5;->clear()V

    return-void
.end method
