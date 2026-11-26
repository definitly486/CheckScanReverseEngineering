.class public final Lfh3$a;
.super Lye0;
.source "SourceFile"

# interfaces
.implements Lrh3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfh3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lye0<",
        "TT;>;",
        "Lrh3<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Lwb8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwb8<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final c:Lhz7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhz7<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final d:Lh6;

.field public e:Lbc8;

.field public volatile f:Z

.field public volatile g:Z

.field public h:Ljava/lang/Throwable;

.field public final i:Ljava/util/concurrent/atomic/AtomicLong;

.field public j:Z


# direct methods
.method public constructor <init>(Lwb8;IZLrm3$d;)V
    .locals 1

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lfh3$a;->i:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p1, p0, Lfh3$a;->b:Lwb8;

    iput-object p4, p0, Lfh3$a;->d:Lh6;

    if-eqz p3, :cond_0

    new-instance p1, Ln68;

    invoke-direct {p1, p2}, Ln68;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance p1, Lm68;

    invoke-direct {p1, p2}, Lm68;-><init>(I)V

    :goto_0
    iput-object p1, p0, Lfh3$a;->c:Lhz7;

    return-void
.end method


# virtual methods
.method public final a(Lbc8;)V
    .locals 2

    iget-object v0, p0, Lfh3$a;->e:Lbc8;

    invoke-static {v0, p1}, Lhc8;->f(Lbc8;Lbc8;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lfh3$a;->e:Lbc8;

    iget-object v0, p0, Lfh3$a;->b:Lwb8;

    invoke-interface {v0, p0}, Lwb8;->a(Lbc8;)V

    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, Lbc8;->request(J)V

    :cond_0
    return-void
.end method

.method public final b(ZZLwb8;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lwb8<",
            "-TT;>;)Z"
        }
    .end annotation

    iget-boolean v0, p0, Lfh3$a;->f:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lfh3$a;->c:Lhz7;

    invoke-interface {p0}, Liz7;->clear()V

    return v1

    :cond_0
    if-eqz p1, :cond_2

    iget-object p1, p0, Lfh3$a;->h:Ljava/lang/Throwable;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lfh3$a;->c:Lhz7;

    invoke-interface {p0}, Liz7;->clear()V

    invoke-interface {p3, p1}, Lwb8;->onError(Ljava/lang/Throwable;)V

    return v1

    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p3}, Lwb8;->onComplete()V

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final cancel()V
    .locals 1

    iget-boolean v0, p0, Lfh3$a;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lfh3$a;->f:Z

    iget-object v0, p0, Lfh3$a;->e:Lbc8;

    invoke-interface {v0}, Lbc8;->cancel()V

    iget-boolean v0, p0, Lfh3$a;->j:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lfh3$a;->c:Lhz7;

    invoke-interface {p0}, Liz7;->clear()V

    :cond_0
    return-void
.end method

.method public final clear()V
    .locals 0

    iget-object p0, p0, Lfh3$a;->c:Lhz7;

    invoke-interface {p0}, Liz7;->clear()V

    return-void
.end method

.method public final d(I)I
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lfh3$a;->j:Z

    const/4 p0, 0x2

    return p0
.end method

.method public final f()V
    .locals 14

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lfh3$a;->c:Lhz7;

    iget-object v1, p0, Lfh3$a;->b:Lwb8;

    const/4 v2, 0x1

    move v3, v2

    :cond_0
    iget-boolean v4, p0, Lfh3$a;->g:Z

    invoke-interface {v0}, Liz7;->isEmpty()Z

    move-result v5

    invoke-virtual {p0, v4, v5, v1}, Lfh3$a;->b(ZZLwb8;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_3

    :cond_1
    iget-object v4, p0, Lfh3$a;->i:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    move-wide v8, v6

    :goto_0
    cmp-long v10, v8, v4

    if-eqz v10, :cond_5

    iget-boolean v11, p0, Lfh3$a;->g:Z

    invoke-interface {v0}, Liz7;->poll()Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_2

    move v13, v2

    goto :goto_1

    :cond_2
    const/4 v13, 0x0

    :goto_1
    invoke-virtual {p0, v11, v13, v1}, Lfh3$a;->b(ZZLwb8;)Z

    move-result v11

    if-eqz v11, :cond_3

    goto :goto_3

    :cond_3
    if-eqz v13, :cond_4

    goto :goto_2

    :cond_4
    invoke-interface {v1, v12}, Lwb8;->onNext(Ljava/lang/Object;)V

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    goto :goto_0

    :cond_5
    :goto_2
    if-nez v10, :cond_6

    iget-boolean v10, p0, Lfh3$a;->g:Z

    invoke-interface {v0}, Liz7;->isEmpty()Z

    move-result v11

    invoke-virtual {p0, v10, v11, v1}, Lfh3$a;->b(ZZLwb8;)Z

    move-result v10

    if-eqz v10, :cond_6

    goto :goto_3

    :cond_6
    cmp-long v6, v8, v6

    if-eqz v6, :cond_7

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v4, v4, v6

    if-eqz v4, :cond_7

    iget-object v4, p0, Lfh3$a;->i:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v5, v8

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    :cond_7
    neg-int v3, v3

    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v3

    if-nez v3, :cond_0

    :cond_8
    :goto_3
    return-void
.end method

.method public final isEmpty()Z
    .locals 0

    iget-object p0, p0, Lfh3$a;->c:Lhz7;

    invoke-interface {p0}, Liz7;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public final onComplete()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lfh3$a;->g:Z

    iget-boolean v0, p0, Lfh3$a;->j:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lfh3$a;->b:Lwb8;

    invoke-interface {p0}, Lwb8;->onComplete()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lfh3$a;->f()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    iput-object p1, p0, Lfh3$a;->h:Ljava/lang/Throwable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lfh3$a;->g:Z

    iget-boolean v0, p0, Lfh3$a;->j:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lfh3$a;->b:Lwb8;

    invoke-interface {p0, p1}, Lwb8;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lfh3$a;->f()V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lfh3$a;->c:Lhz7;

    invoke-interface {v0, p1}, Liz7;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lfh3$a;->e:Lbc8;

    invoke-interface {p1}, Lbc8;->cancel()V

    new-instance p1, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string v0, "Buffer is full"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lfh3$a;->d:Lh6;

    invoke-interface {v0}, Lh6;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lm13;->d(Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :goto_0
    invoke-virtual {p0, p1}, Lfh3$a;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    iget-boolean p1, p0, Lfh3$a;->j:Z

    if-eqz p1, :cond_1

    iget-object p0, p0, Lfh3$a;->b:Lwb8;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lwb8;->onNext(Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lfh3$a;->f()V

    return-void
.end method

.method public final poll()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lfh3$a;->c:Lhz7;

    invoke-interface {p0}, Liz7;->poll()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final request(J)V
    .locals 1

    iget-boolean v0, p0, Lfh3$a;->j:Z

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Lhc8;->e(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfh3$a;->i:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lm00;->c(Ljava/util/concurrent/atomic/AtomicLong;J)J

    invoke-virtual {p0}, Lfh3$a;->f()V

    :cond_0
    return-void
.end method
