.class public final Lw13;
.super Lhe7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw13$a;,
        Lw13$b;,
        Lw13$c;
    }
.end annotation


# static fields
.field public static final d:Lhe7;


# instance fields
.field public final c:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lne7;->a:Lhe7;

    sput-object v0, Lw13;->d:Lhe7;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Lhe7;-><init>()V

    iput-object p1, p0, Lw13;->c:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final b()Lhe7$c;
    .locals 1

    new-instance v0, Lw13$c;

    iget-object p0, p0, Lw13;->c:Ljava/util/concurrent/Executor;

    invoke-direct {v0, p0}, Lw13$c;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public final c(Ljava/lang/Runnable;)Lcp2;
    .locals 1

    iget-object p0, p0, Lw13;->c:Ljava/util/concurrent/Executor;

    :try_start_0
    instance-of v0, p0, Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    new-instance v0, Lfe7;

    invoke-direct {v0, p1}, Lg0;-><init>(Ljava/lang/Runnable;)V

    check-cast p0, Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-virtual {v0, p0}, Lg0;->a(Ljava/util/concurrent/Future;)V

    return-object v0

    :cond_0
    new-instance v0, Lw13$c$a;

    invoke-direct {v0, p1}, Lw13$c$a;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    invoke-static {p0}, Ld97;->b(Ljava/lang/Throwable;)V

    sget-object p0, Lhx2;->INSTANCE:Lhx2;

    return-object p0
.end method

.method public final d(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcp2;
    .locals 2

    iget-object v0, p0, Lw13;->c:Ljava/util/concurrent/Executor;

    instance-of v1, v0, Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v1, :cond_0

    :try_start_0
    new-instance p0, Lfe7;

    invoke-direct {p0, p1}, Lg0;-><init>(Ljava/lang/Runnable;)V

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p0, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    invoke-virtual {p0, p1}, Lg0;->a(Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Ld97;->b(Ljava/lang/Throwable;)V

    sget-object p0, Lhx2;->INSTANCE:Lhx2;

    return-object p0

    :cond_0
    new-instance v0, Lw13$b;

    invoke-direct {v0, p1}, Lw13$b;-><init>(Ljava/lang/Runnable;)V

    new-instance p1, Lw13$a;

    invoke-direct {p1, p0, v0}, Lw13$a;-><init>(Lw13;Lw13$b;)V

    sget-object p0, Lw13;->d:Lhe7;

    invoke-virtual {p0, p1, p2, p3, p4}, Lhe7;->d(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcp2;

    move-result-object p0

    iget-object p1, v0, Lw13$b;->b:Lkp7;

    invoke-static {p1, p0}, Lip2;->e(Ljava/util/concurrent/atomic/AtomicReference;Lcp2;)V

    return-object v0
.end method

.method public final e(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lcp2;
    .locals 7

    iget-object v0, p0, Lw13;->c:Ljava/util/concurrent/Executor;

    instance-of v1, v0, Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v1, :cond_0

    :try_start_0
    new-instance p0, Lee7;

    invoke-direct {p0, p1}, Lg0;-><init>(Ljava/lang/Runnable;)V

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    move-object p1, p0

    move-object p0, v0

    invoke-interface/range {p0 .. p6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    invoke-virtual {p1, p0}, Lg0;->a(Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    move-object p0, v0

    invoke-static {p0}, Ld97;->b(Ljava/lang/Throwable;)V

    sget-object p0, Lhx2;->INSTANCE:Lhx2;

    return-object p0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-super/range {v0 .. v6}, Lhe7;->e(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lcp2;

    move-result-object p0

    return-object p0
.end method
