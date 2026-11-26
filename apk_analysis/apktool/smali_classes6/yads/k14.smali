.class public final Lyads/k14;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Lyads/h14;

.field public final c:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final d:J


# direct methods
.method public constructor <init>()V
    .locals 6

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lyads/k14;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILyads/h14;J)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILyads/h14;J)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lyads/k14;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 16
    iput p2, p0, Lyads/k14;->a:I

    .line 17
    iput-object p3, p0, Lyads/k14;->b:Lyads/h14;

    .line 18
    iput-wide p4, p0, Lyads/k14;->d:J

    return-void
.end method


# virtual methods
.method public final a(J)J
    .locals 3

    .line 47
    invoke-static {p1, p2}, Lyads/u56;->b(J)J

    move-result-wide p1

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-wide v0

    .line 48
    :cond_0
    iget-wide v0, p0, Lyads/k14;->d:J

    add-long/2addr v0, p1

    return-wide v0
.end method

.method public final a(Lyads/cu3;Lyads/r04;)V
    .locals 4

    .line 38
    iget-object v0, p0, Lyads/k14;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/j14;

    .line 39
    iget-object v2, v1, Lyads/j14;->b:Ljava/lang/Object;

    .line 40
    iget-object v1, v1, Lyads/j14;->a:Landroid/os/Handler;

    new-instance v3, Lk0a;

    invoke-direct {v3, p0, v2, p1, p2}, Lk0a;-><init>(Lyads/k14;Lyads/l14;Lyads/cu3;Lyads/r04;)V

    invoke-static {v1, v3}, Lyads/u56;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lyads/cu3;Lyads/r04;Ljava/io/IOException;Z)V
    .locals 9

    iget-object v0, p0, Lyads/k14;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/j14;

    iget-object v4, v1, Lyads/j14;->b:Ljava/lang/Object;

    iget-object v1, v1, Lyads/j14;->a:Landroid/os/Handler;

    new-instance v2, Lj0a;

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v2 .. v8}, Lj0a;-><init>(Lyads/k14;Lyads/l14;Lyads/cu3;Lyads/r04;Ljava/io/IOException;Z)V

    invoke-static {v1, v2}, Lyads/u56;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final synthetic a(Lyads/l14;Lyads/cu3;Lyads/r04;)V
    .locals 1

    .line 37
    iget v0, p0, Lyads/k14;->a:I

    iget-object p0, p0, Lyads/k14;->b:Lyads/h14;

    invoke-interface {p1, v0, p0, p2, p3}, Lyads/l14;->c(ILyads/h14;Lyads/cu3;Lyads/r04;)V

    return-void
.end method

.method public final synthetic a(Lyads/l14;Lyads/cu3;Lyads/r04;Ljava/io/IOException;Z)V
    .locals 7

    .line 41
    iget v1, p0, Lyads/k14;->a:I

    iget-object v2, p0, Lyads/k14;->b:Lyads/h14;

    move-object v0, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lyads/l14;->a(ILyads/h14;Lyads/cu3;Lyads/r04;Ljava/io/IOException;Z)V

    return-void
.end method

.method public final synthetic a(Lyads/l14;Lyads/h14;Lyads/r04;)V
    .locals 0

    .line 42
    iget p0, p0, Lyads/k14;->a:I

    invoke-interface {p1, p0, p2, p3}, Lyads/l14;->a(ILyads/h14;Lyads/r04;)V

    return-void
.end method

.method public final synthetic a(Lyads/l14;Lyads/r04;)V
    .locals 1

    .line 46
    iget v0, p0, Lyads/k14;->a:I

    iget-object p0, p0, Lyads/k14;->b:Lyads/h14;

    invoke-interface {p1, v0, p0, p2}, Lyads/l14;->b(ILyads/h14;Lyads/r04;)V

    return-void
.end method

.method public final a(Lyads/r04;)V
    .locals 5

    .line 43
    iget-object v0, p0, Lyads/k14;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/j14;

    .line 44
    iget-object v2, v1, Lyads/j14;->b:Ljava/lang/Object;

    .line 45
    iget-object v1, v1, Lyads/j14;->a:Landroid/os/Handler;

    new-instance v3, Ll0a;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v2, p1, v4}, Ll0a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v1, v3}, Lyads/u56;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(Lyads/cu3;Lyads/r04;)V
    .locals 4

    .line 38
    iget-object v0, p0, Lyads/k14;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/j14;

    .line 39
    iget-object v2, v1, Lyads/j14;->b:Ljava/lang/Object;

    .line 40
    iget-object v1, v1, Lyads/j14;->a:Landroid/os/Handler;

    new-instance v3, Lm0a;

    invoke-direct {v3, p0, v2, p1, p2}, Lm0a;-><init>(Lyads/k14;Lyads/l14;Lyads/cu3;Lyads/r04;)V

    invoke-static {v1, v3}, Lyads/u56;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final synthetic b(Lyads/l14;Lyads/cu3;Lyads/r04;)V
    .locals 1

    .line 37
    iget v0, p0, Lyads/k14;->a:I

    iget-object p0, p0, Lyads/k14;->b:Lyads/h14;

    invoke-interface {p1, v0, p0, p2, p3}, Lyads/l14;->a(ILyads/h14;Lyads/cu3;Lyads/r04;)V

    return-void
.end method

.method public final b(Lyads/r04;)V
    .locals 5

    iget-object v0, p0, Lyads/k14;->b:Lyads/h14;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lyads/k14;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/j14;

    iget-object v3, v2, Lyads/j14;->b:Ljava/lang/Object;

    iget-object v2, v2, Lyads/j14;->a:Landroid/os/Handler;

    new-instance v4, Li0a;

    invoke-direct {v4, p0, v3, v0, p1}, Li0a;-><init>(Lyads/k14;Lyads/l14;Lyads/h14;Lyads/r04;)V

    invoke-static {v2, v4}, Lyads/u56;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c(Lyads/cu3;Lyads/r04;)V
    .locals 4

    iget-object v0, p0, Lyads/k14;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/j14;

    iget-object v2, v1, Lyads/j14;->b:Ljava/lang/Object;

    iget-object v1, v1, Lyads/j14;->a:Landroid/os/Handler;

    new-instance v3, Ln0a;

    invoke-direct {v3, p0, v2, p1, p2}, Ln0a;-><init>(Lyads/k14;Lyads/l14;Lyads/cu3;Lyads/r04;)V

    invoke-static {v1, v3}, Lyads/u56;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final synthetic c(Lyads/l14;Lyads/cu3;Lyads/r04;)V
    .locals 1

    .line 32
    iget v0, p0, Lyads/k14;->a:I

    iget-object p0, p0, Lyads/k14;->b:Lyads/h14;

    invoke-interface {p1, v0, p0, p2, p3}, Lyads/l14;->b(ILyads/h14;Lyads/cu3;Lyads/r04;)V

    return-void
.end method
