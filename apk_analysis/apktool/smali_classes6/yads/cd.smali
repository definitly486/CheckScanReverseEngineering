.class public final Lyads/cd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/gg6;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lyads/zt4;

.field public final c:Lyads/gg6;

.field public final d:Lyads/dg6;

.field public final e:Ljava/util/concurrent/LinkedBlockingQueue;

.field public final f:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final h:Z

.field public volatile i:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lyads/zt4;Lyads/gg6;Lyads/dg6;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/cd;->a:Ljava/lang/String;

    iput-object p2, p0, Lyads/cd;->b:Lyads/zt4;

    iput-object p3, p0, Lyads/cd;->c:Lyads/gg6;

    iput-object p4, p0, Lyads/cd;->d:Lyads/dg6;

    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lyads/cd;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p2, p5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p2, p0, Lyads/cd;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lyads/cd;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lyads/cd;->h:Z

    iput p5, p0, Lyads/cd;->i:I

    move p1, p3

    :goto_0
    if-ge p1, p5, :cond_0

    iget-object p2, p0, Lyads/cd;->d:Lyads/dg6;

    iget-object p2, p2, Lyads/dg6;->a:Lyads/cg6;

    iget-object p2, p2, Lyads/cg6;->c:Lyads/ts;

    new-instance p4, Lyads/bg6;

    invoke-direct {p4, p0, p3}, Lyads/bg6;-><init>(Lyads/cd;I)V

    invoke-virtual {p2, p4}, Lyads/ts;->offer(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    iget-object v0, p0, Lyads/cd;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    :try_start_0
    iget-object v0, p0, Lyads/cd;->d:Lyads/dg6;

    invoke-virtual {v0, p0}, Lyads/dg6;->a(Lyads/cd;)V

    iget-object v0, p0, Lyads/cd;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x10

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lyads/cd;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lyads/cd;->c:Lyads/gg6;

    invoke-interface {v0}, Lyads/gg6;->a()Landroid/view/View;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    iget-object v0, p0, Lyads/cd;->c:Lyads/gg6;

    invoke-interface {v0}, Lyads/gg6;->a()Landroid/view/View;

    move-result-object v0

    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    iget-object v1, p0, Lyads/cd;->b:Lyads/zt4;

    iget-object v2, p0, Lyads/cd;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lyads/cd;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    iget-object v1, p0, Lyads/cd;->b:Lyads/zt4;

    iget-object v2, p0, Lyads/cd;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_1
    iget v1, p0, Lyads/cd;->i:I

    iget-object v2, p0, Lyads/cd;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-gt v1, v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    iget-object v1, p0, Lyads/cd;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v1

    iget-object v2, p0, Lyads/cd;->d:Lyads/dg6;

    iget-object v2, v2, Lyads/dg6;->a:Lyads/cg6;

    iget-object v2, v2, Lyads/cg6;->c:Lyads/ts;

    new-instance v3, Lyads/bg6;

    invoke-direct {v3, p0, v1}, Lyads/bg6;-><init>(Lyads/cd;I)V

    invoke-virtual {v2, v3}, Lyads/ts;->offer(Ljava/lang/Object;)Z

    iget-object p0, p0, Lyads/cd;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Landroid/view/View;

    return-object v0
.end method
