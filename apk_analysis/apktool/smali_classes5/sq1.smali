.class public final Lsq1;
.super Lqp1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsq1$a;,
        Lsq1$b;
    }
.end annotation


# instance fields
.field public final b:Lqp1;

.field public final c:J

.field public final d:Ljava/util/concurrent/TimeUnit;

.field public final e:Lhe7;


# direct methods
.method public constructor <init>(Lqp1;JLhe7;)V
    .locals 0

    invoke-direct {p0}, Lqp1;-><init>()V

    iput-object p1, p0, Lsq1;->b:Lqp1;

    iput-wide p2, p0, Lsq1;->c:J

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iput-object p1, p0, Lsq1;->d:Ljava/util/concurrent/TimeUnit;

    iput-object p4, p0, Lsq1;->e:Lhe7;

    return-void
.end method


# virtual methods
.method public final h(Lmq1;)V
    .locals 7

    new-instance v0, Lfu1;

    invoke-direct {v0}, Lfu1;-><init>()V

    invoke-interface {p1, v0}, Lmq1;->onSubscribe(Lcp2;)V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    new-instance v2, Lsq1$a;

    invoke-direct {v2, p0, v1, v0, p1}, Lsq1$a;-><init>(Lsq1;Ljava/util/concurrent/atomic/AtomicBoolean;Lfu1;Lmq1;)V

    iget-wide v3, p0, Lsq1;->c:J

    iget-object v5, p0, Lsq1;->d:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, Lsq1;->e:Lhe7;

    invoke-virtual {v6, v2, v3, v4, v5}, Lhe7;->d(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcp2;

    move-result-object v2

    invoke-virtual {v0, v2}, Lfu1;->b(Lcp2;)Z

    new-instance v2, Lsq1$b;

    invoke-direct {v2, v0, v1, p1}, Lsq1$b;-><init>(Lfu1;Ljava/util/concurrent/atomic/AtomicBoolean;Lmq1;)V

    iget-object p0, p0, Lsq1;->b:Lqp1;

    invoke-virtual {p0, v2}, Lqp1;->b(Lmq1;)V

    return-void
.end method
