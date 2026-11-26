.class public final Lnd5$b;
.super Lnd5$a;
.source "SourceFile"

# interfaces
.implements Lxr4;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnd5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnd5$b$a;,
        Lnd5$b$b;
    }
.end annotation


# instance fields
.field public final c:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0

    invoke-direct {p0, p1}, Lnd5$a;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object p1, p0, Lnd5$b;->c:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method


# virtual methods
.method public final bridge synthetic schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 25
    invoke-virtual {p0, p1, p2, p3, p4}, Lnd5$b;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lnd5$b$a;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 26
    invoke-virtual {p0, p1, p2, p3, p4}, Lnd5$b;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Lnd5$b$a;

    move-result-object p0

    return-object p0
.end method

.method public final schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lnd5$b$a;
    .locals 2

    new-instance v0, Ln39;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Ljava/util/concurrent/Executors;->callable(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object p1

    invoke-direct {v0, p1}, Ln39;-><init>(Ljava/util/concurrent/Callable;)V

    iget-object p0, p0, Lnd5$b;->c:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p0, v0, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    new-instance p1, Lnd5$b$a;

    invoke-direct {p1, v0, p0}, Lnd5$b$a;-><init>(Ll0;Ljava/util/concurrent/ScheduledFuture;)V

    return-object p1
.end method

.method public final schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Lnd5$b$a;
    .locals 1

    .line 22
    new-instance v0, Ln39;

    invoke-direct {v0, p1}, Ln39;-><init>(Ljava/util/concurrent/Callable;)V

    .line 23
    iget-object p0, p0, Lnd5$b;->c:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p0, v0, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    .line 24
    new-instance p1, Lnd5$b$a;

    invoke-direct {p1, v0, p0}, Lnd5$b$a;-><init>(Ll0;Ljava/util/concurrent/ScheduledFuture;)V

    return-object p1
.end method

.method public final bridge synthetic scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 18
    invoke-virtual/range {p0 .. p6}, Lnd5$b;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lnd5$b$a;

    move-result-object p0

    return-object p0
.end method

.method public final scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lnd5$b$a;
    .locals 1

    move-object v0, p1

    new-instance p1, Lnd5$b$b;

    invoke-direct {p1, v0}, Lnd5$b$b;-><init>(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lnd5$b;->c:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface/range {p0 .. p6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    new-instance p2, Lnd5$b$a;

    invoke-direct {p2, p1, p0}, Lnd5$b$a;-><init>(Ll0;Ljava/util/concurrent/ScheduledFuture;)V

    return-object p2
.end method

.method public final bridge synthetic scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 18
    invoke-virtual/range {p0 .. p6}, Lnd5$b;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lnd5$b$a;

    move-result-object p0

    return-object p0
.end method

.method public final scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lnd5$b$a;
    .locals 1

    move-object v0, p1

    new-instance p1, Lnd5$b$b;

    invoke-direct {p1, v0}, Lnd5$b$b;-><init>(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lnd5$b;->c:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface/range {p0 .. p6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    new-instance p2, Lnd5$b$a;

    invoke-direct {p2, p1, p0}, Lnd5$b$a;-><init>(Ll0;Ljava/util/concurrent/ScheduledFuture;)V

    return-object p2
.end method
