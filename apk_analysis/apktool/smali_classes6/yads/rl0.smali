.class public final Lyads/rl0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/vc6;


# instance fields
.field public final a:Lyads/t5;

.field public final b:Lyads/hl4;

.field public final c:Lyads/jd0;

.field public final d:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lyads/t5;ILyads/hl4;Lyads/jd0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/rl0;->a:Lyads/t5;

    iput-object p3, p0, Lyads/rl0;->b:Lyads/hl4;

    iput-object p4, p0, Lyads/rl0;->c:Lyads/jd0;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lyads/rl0;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lyads/rl0;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lyads/rl0;->a:Lyads/t5;

    sget-object v1, Lyads/s5;->r:Lyads/s5;

    invoke-virtual {v0, v1}, Lyads/t5;->a(Lyads/s5;)V

    iget-object p0, p0, Lyads/rl0;->b:Lyads/hl4;

    invoke-virtual {p0}, Lyads/hl4;->a()V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lyads/rl0;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lyads/rl0;->a:Lyads/t5;

    sget-object v1, Lyads/s5;->r:Lyads/s5;

    invoke-virtual {v0, v1}, Lyads/t5;->a(Lyads/s5;)V

    iget-object v0, p0, Lyads/rl0;->c:Lyads/jd0;

    sget-object v1, Lyads/id0;->h:Lyads/id0;

    invoke-virtual {v0, v1}, Lyads/jd0;->a(Lyads/id0;)V

    iget-object p0, p0, Lyads/rl0;->b:Lyads/hl4;

    invoke-virtual {p0}, Lyads/hl4;->a()V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method
