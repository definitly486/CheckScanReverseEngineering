.class public final Lzr5$b;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lls5;
.implements Lcp2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzr5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lls5<",
        "TT;>;",
        "Lcp2;"
    }
.end annotation


# static fields
.field public static final k:Lzr5$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lzr5$a<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Lls5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lls5<",
            "-TR;>;"
        }
    .end annotation
.end field

.field public final c:Lxl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxl3<",
            "-TT;+",
            "Lwr5<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field public final d:I

.field public final e:Lpt;

.field public volatile f:Z

.field public volatile g:Z

.field public h:Lcp2;

.field public final i:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lzr5$a<",
            "TT;TR;>;>;"
        }
    .end annotation
.end field

.field public volatile j:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lzr5$a;

    const-wide/16 v1, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v4, v1, v2, v3}, Lzr5$a;-><init>(Lzr5$b;JI)V

    sput-object v0, Lzr5$b;->k:Lzr5$a;

    invoke-static {v0}, Lip2;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method

.method public constructor <init>(Lls5;Lw3;I)V
    .locals 1

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lzr5$b;->i:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p1, p0, Lzr5$b;->b:Lls5;

    iput-object p2, p0, Lzr5$b;->c:Lxl3;

    iput p3, p0, Lzr5$b;->d:I

    new-instance p1, Lpt;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lzr5$b;->e:Lpt;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object p0, p0, Lzr5$b;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzr5$a;

    sget-object v1, Lzr5$b;->k:Lzr5$a;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzr5$a;

    if-eq p0, v1, :cond_0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lip2;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 12

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_9

    :cond_0
    iget-object v0, p0, Lzr5$b;->b:Lls5;

    iget-object v1, p0, Lzr5$b;->i:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x1

    move v3, v2

    :cond_1
    :goto_0
    iget-boolean v4, p0, Lzr5$b;->g:Z

    if-eqz v4, :cond_2

    goto/16 :goto_9

    :cond_2
    iget-boolean v4, p0, Lzr5$b;->f:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3

    move v4, v2

    goto :goto_1

    :cond_3
    move v4, v5

    :goto_1
    iget-object v6, p0, Lzr5$b;->e:Lpt;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Throwable;

    if-eqz v6, :cond_4

    iget-object p0, p0, Lzr5$b;->e:Lpt;

    invoke-static {p0}, Lk13;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object p0

    invoke-interface {v0, p0}, Lls5;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_4
    if-eqz v4, :cond_5

    invoke-interface {v0}, Lls5;->onComplete()V

    return-void

    :cond_5
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lzr5$a;

    if-eqz v4, :cond_14

    iget-object v6, v4, Lzr5$a;->e:Liz7;

    if-eqz v6, :cond_14

    iget-boolean v7, v4, Lzr5$a;->f:Z

    const/4 v8, 0x0

    if-eqz v7, :cond_9

    invoke-interface {v6}, Liz7;->isEmpty()Z

    move-result v7

    iget-object v9, p0, Lzr5$b;->e:Lpt;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Throwable;

    if-eqz v9, :cond_6

    iget-object p0, p0, Lzr5$b;->e:Lpt;

    invoke-static {p0}, Lk13;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object p0

    invoke-interface {v0, p0}, Lls5;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_6
    if-eqz v7, :cond_9

    :cond_7
    invoke-virtual {v1, v4, v8}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_0

    :cond_8
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eq v5, v4, :cond_7

    goto :goto_0

    :cond_9
    move v7, v5

    :goto_2
    iget-boolean v9, p0, Lzr5$b;->g:Z

    if-eqz v9, :cond_a

    goto/16 :goto_9

    :cond_a
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v9

    if-eq v4, v9, :cond_b

    :goto_3
    move v7, v2

    goto :goto_8

    :cond_b
    iget-object v9, p0, Lzr5$b;->e:Lpt;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Throwable;

    if-eqz v9, :cond_c

    iget-object p0, p0, Lzr5$b;->e:Lpt;

    invoke-static {p0}, Lk13;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object p0

    invoke-interface {v0, p0}, Lls5;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_c
    iget-boolean v9, v4, Lzr5$a;->f:Z

    :try_start_0
    invoke-interface {v6}, Liz7;->poll()Ljava/lang/Object;

    move-result-object v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v7

    invoke-static {v7}, Lm13;->d(Ljava/lang/Throwable;)V

    iget-object v10, p0, Lzr5$b;->e:Lpt;

    invoke-static {v10, v7}, Lk13;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    :cond_d
    invoke-virtual {v1, v4, v8}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    goto :goto_4

    :cond_e
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    if-eq v7, v4, :cond_d

    :goto_4
    invoke-virtual {p0}, Lzr5$b;->a()V

    iget-object v7, p0, Lzr5$b;->h:Lcp2;

    invoke-interface {v7}, Lcp2;->dispose()V

    iput-boolean v2, p0, Lzr5$b;->f:Z

    move v7, v2

    move-object v10, v8

    :goto_5
    if-nez v10, :cond_f

    move v11, v2

    goto :goto_6

    :cond_f
    move v11, v5

    :goto_6
    if-eqz v9, :cond_12

    if-eqz v11, :cond_12

    :cond_10
    invoke-virtual {v1, v4, v8}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    goto :goto_7

    :cond_11
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eq v5, v4, :cond_10

    :goto_7
    goto :goto_3

    :cond_12
    if-eqz v11, :cond_13

    :goto_8
    if-eqz v7, :cond_14

    goto/16 :goto_0

    :cond_13
    invoke-interface {v0, v10}, Lls5;->onNext(Ljava/lang/Object;)V

    goto :goto_2

    :cond_14
    neg-int v3, v3

    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v3

    if-nez v3, :cond_1

    :goto_9
    return-void
.end method

.method public final dispose()V
    .locals 1

    iget-boolean v0, p0, Lzr5$b;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzr5$b;->g:Z

    iget-object v0, p0, Lzr5$b;->h:Lcp2;

    invoke-interface {v0}, Lcp2;->dispose()V

    invoke-virtual {p0}, Lzr5$b;->a()V

    :cond_0
    return-void
.end method

.method public final isDisposed()Z
    .locals 0

    iget-boolean p0, p0, Lzr5$b;->g:Z

    return p0
.end method

.method public final onComplete()V
    .locals 1

    iget-boolean v0, p0, Lzr5$b;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzr5$b;->f:Z

    invoke-virtual {p0}, Lzr5$b;->b()V

    :cond_0
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Lzr5$b;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lzr5$b;->e:Lpt;

    invoke-static {v0, p1}, Lk13;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lzr5$b;->a()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lzr5$b;->f:Z

    invoke-virtual {p0}, Lzr5$b;->b()V

    return-void

    :cond_0
    invoke-static {p1}, Ld97;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-wide v0, p0, Lzr5$b;->j:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lzr5$b;->j:J

    iget-object v2, p0, Lzr5$b;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzr5$a;

    if-eqz v2, :cond_0

    invoke-static {v2}, Lip2;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    :cond_0
    :try_start_0
    iget-object v2, p0, Lzr5$b;->c:Lxl3;

    invoke-interface {v2, p1}, Lxl3;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "The ObservableSource returned is null"

    invoke-static {p1, v2}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lwr5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v2, Lzr5$a;

    iget v3, p0, Lzr5$b;->d:I

    invoke-direct {v2, p0, v0, v1, v3}, Lzr5$a;-><init>(Lzr5$b;JI)V

    :goto_0
    iget-object v0, p0, Lzr5$b;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzr5$a;

    sget-object v1, Lzr5$b;->k:Lzr5$a;

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lzr5$b;->i:Ljava/util/concurrent/atomic/AtomicReference;

    :cond_2
    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1, v2}, Lwr5;->a(Lls5;)V

    return-void

    :cond_3
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v0, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lm13;->d(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lzr5$b;->h:Lcp2;

    invoke-interface {v0}, Lcp2;->dispose()V

    invoke-virtual {p0, p1}, Lzr5$b;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lcp2;)V
    .locals 1

    iget-object v0, p0, Lzr5$b;->h:Lcp2;

    invoke-static {v0, p1}, Lip2;->i(Lcp2;Lcp2;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lzr5$b;->h:Lcp2;

    iget-object p1, p0, Lzr5$b;->b:Lls5;

    invoke-interface {p1, p0}, Lls5;->onSubscribe(Lcp2;)V

    :cond_0
    return-void
.end method
