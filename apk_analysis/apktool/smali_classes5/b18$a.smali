.class public final Lb18$a;
.super Lhe7$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb18;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final b:Ljava/util/concurrent/ScheduledExecutorService;

.field public final c:Lfu1;

.field public volatile d:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb18$a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance p1, Lfu1;

    invoke-direct {p1}, Lfu1;-><init>()V

    iput-object p1, p0, Lb18$a;->c:Lfu1;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcp2;
    .locals 3

    iget-boolean v0, p0, Lb18$a;->d:Z

    if-eqz v0, :cond_0

    sget-object p0, Lhx2;->INSTANCE:Lhx2;

    return-object p0

    :cond_0
    new-instance v0, Lge7;

    iget-object v1, p0, Lb18$a;->c:Lfu1;

    invoke-direct {v0, p1, v1}, Lge7;-><init>(Ljava/lang/Runnable;Lfp2;)V

    iget-object p1, p0, Lb18$a;->c:Lfu1;

    invoke-virtual {p1, v0}, Lfu1;->b(Lcp2;)Z

    const-wide/16 v1, 0x0

    cmp-long p1, p2, v1

    iget-object v1, p0, Lb18$a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    if-gtz p1, :cond_1

    :try_start_0
    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    invoke-interface {v1, v0, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Lge7;->a(Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_1
    invoke-virtual {p0}, Lb18$a;->dispose()V

    invoke-static {p1}, Ld97;->b(Ljava/lang/Throwable;)V

    sget-object p0, Lhx2;->INSTANCE:Lhx2;

    return-object p0
.end method

.method public final dispose()V
    .locals 1

    iget-boolean v0, p0, Lb18$a;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb18$a;->d:Z

    iget-object p0, p0, Lb18$a;->c:Lfu1;

    invoke-virtual {p0}, Lfu1;->dispose()V

    :cond_0
    return-void
.end method

.method public final isDisposed()Z
    .locals 0

    iget-boolean p0, p0, Lb18$a;->d:Z

    return p0
.end method
