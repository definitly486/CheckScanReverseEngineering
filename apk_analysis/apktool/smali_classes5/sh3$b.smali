.class public final Lsh3$b;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lrh3;
.implements Lbc8;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsh3;
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
        "Lrh3<",
        "TT;>;",
        "Lbc8;"
    }
.end annotation


# static fields
.field public static final l:Lsh3$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsh3$a<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Lwb8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwb8<",
            "-TR;>;"
        }
    .end annotation
.end field

.field public final c:Lxl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxl3<",
            "-TT;+",
            "Ldt6<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field public final d:I

.field public volatile e:Z

.field public final f:Lpt;

.field public volatile g:Z

.field public h:Lbc8;

.field public final i:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lsh3$a<",
            "TT;TR;>;>;"
        }
    .end annotation
.end field

.field public final j:Ljava/util/concurrent/atomic/AtomicLong;

.field public volatile k:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lsh3$a;

    const-wide/16 v1, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v4, v1, v2, v3}, Lsh3$a;-><init>(Lsh3$b;JI)V

    sput-object v0, Lsh3$b;->l:Lsh3$a;

    invoke-static {v0}, Lhc8;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method

.method public constructor <init>(Lwb8;Ll3;I)V
    .locals 1

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lsh3$b;->i:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lsh3$b;->j:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p1, p0, Lsh3$b;->b:Lwb8;

    iput-object p2, p0, Lsh3$b;->c:Lxl3;

    iput p3, p0, Lsh3$b;->d:I

    new-instance p1, Lpt;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lsh3$b;->f:Lpt;

    return-void
.end method


# virtual methods
.method public final a(Lbc8;)V
    .locals 1

    iget-object v0, p0, Lsh3$b;->h:Lbc8;

    invoke-static {v0, p1}, Lhc8;->f(Lbc8;Lbc8;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lsh3$b;->h:Lbc8;

    iget-object p1, p0, Lsh3$b;->b:Lwb8;

    invoke-interface {p1, p0}, Lwb8;->a(Lbc8;)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    iget-object p0, p0, Lsh3$b;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsh3$a;

    sget-object v1, Lsh3$b;->l:Lsh3$a;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lsh3$a;

    if-eq p0, v1, :cond_0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lhc8;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    :cond_0
    return-void
.end method

.method public final cancel()V
    .locals 1

    iget-boolean v0, p0, Lsh3$b;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsh3$b;->g:Z

    iget-object v0, p0, Lsh3$b;->h:Lbc8;

    invoke-interface {v0}, Lbc8;->cancel()V

    invoke-virtual {p0}, Lsh3$b;->b()V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 19

    move-object/from16 v1, p0

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_9

    :cond_0
    iget-object v2, v1, Lsh3$b;->b:Lwb8;

    const/4 v3, 0x1

    move v4, v3

    :cond_1
    :goto_0
    iget-boolean v0, v1, Lsh3$b;->g:Z

    if-eqz v0, :cond_2

    goto/16 :goto_9

    :cond_2
    iget-boolean v0, v1, Lsh3$b;->e:Z

    if-eqz v0, :cond_4

    iget-object v0, v1, Lsh3$b;->f:Lpt;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Lsh3$b;->b()V

    iget-object v0, v1, Lsh3$b;->f:Lpt;

    invoke-static {v0}, Lk13;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v2, v0}, Lwb8;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_3
    iget-object v0, v1, Lsh3$b;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-interface {v2}, Lwb8;->onComplete()V

    return-void

    :cond_4
    iget-object v0, v1, Lsh3$b;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lsh3$a;

    const/4 v6, 0x0

    if-eqz v5, :cond_5

    iget-object v0, v5, Lsh3$a;->e:Liz7;

    move-object v7, v0

    goto :goto_1

    :cond_5
    move-object v7, v6

    :goto_1
    if-eqz v7, :cond_15

    iget-boolean v0, v5, Lsh3$a;->f:Z

    if-eqz v0, :cond_9

    iget-object v0, v1, Lsh3$b;->f:Lpt;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_6

    invoke-virtual {v1}, Lsh3$b;->b()V

    iget-object v0, v1, Lsh3$b;->f:Lpt;

    invoke-static {v0}, Lk13;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v2, v0}, Lwb8;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_6
    invoke-interface {v7}, Liz7;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v1, Lsh3$b;->i:Ljava/util/concurrent/atomic/AtomicReference;

    :cond_7
    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    goto :goto_0

    :cond_8
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    if-eq v7, v5, :cond_7

    goto :goto_0

    :cond_9
    iget-object v0, v1, Lsh3$b;->j:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    const-wide/16 v12, 0x0

    :goto_2
    cmp-long v0, v12, v8

    const/4 v14, 0x0

    if-eqz v0, :cond_12

    iget-boolean v0, v1, Lsh3$b;->g:Z

    if-eqz v0, :cond_a

    goto/16 :goto_9

    :cond_a
    iget-boolean v0, v5, Lsh3$a;->f:Z

    :try_start_0
    invoke-interface {v7}, Liz7;->poll()Ljava/lang/Object;

    move-result-object v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lm13;->d(Ljava/lang/Throwable;)V

    invoke-static {v5}, Lhc8;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    iget-object v15, v1, Lsh3$b;->f:Lpt;

    invoke-static {v15, v0}, Lk13;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move v0, v3

    move-object v15, v6

    :goto_3
    if-nez v15, :cond_b

    move/from16 v16, v3

    :goto_4
    const-wide/16 v17, 0x0

    goto :goto_5

    :cond_b
    move/from16 v16, v14

    goto :goto_4

    :goto_5
    iget-object v10, v1, Lsh3$b;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v10

    if-eq v5, v10, :cond_c

    :goto_6
    move v14, v3

    goto :goto_8

    :cond_c
    if-eqz v0, :cond_10

    iget-object v0, v1, Lsh3$b;->f:Lpt;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_d

    iget-object v0, v1, Lsh3$b;->f:Lpt;

    invoke-static {v0}, Lk13;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v2, v0}, Lwb8;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_d
    if-eqz v16, :cond_10

    iget-object v0, v1, Lsh3$b;->i:Ljava/util/concurrent/atomic/AtomicReference;

    :cond_e
    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    goto :goto_7

    :cond_f
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    if-eq v7, v5, :cond_e

    :goto_7
    goto :goto_6

    :cond_10
    if-eqz v16, :cond_11

    goto :goto_8

    :cond_11
    invoke-interface {v2, v15}, Lwb8;->onNext(Ljava/lang/Object;)V

    const-wide/16 v10, 0x1

    add-long/2addr v12, v10

    goto :goto_2

    :cond_12
    const-wide/16 v17, 0x0

    :goto_8
    cmp-long v0, v12, v17

    if-eqz v0, :cond_14

    iget-boolean v0, v1, Lsh3$b;->g:Z

    if-nez v0, :cond_14

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v0, v8, v6

    if-eqz v0, :cond_13

    iget-object v0, v1, Lsh3$b;->j:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v6, v12

    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    :cond_13
    iget v0, v5, Lsh3$a;->g:I

    if-eq v0, v3, :cond_14

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbc8;

    invoke-interface {v0, v12, v13}, Lbc8;->request(J)V

    :cond_14
    if-eqz v14, :cond_15

    goto/16 :goto_0

    :cond_15
    neg-int v0, v4

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v4

    if-nez v4, :cond_1

    :goto_9
    return-void
.end method

.method public final onComplete()V
    .locals 1

    iget-boolean v0, p0, Lsh3$b;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsh3$b;->e:Z

    invoke-virtual {p0}, Lsh3$b;->d()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Lsh3$b;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lsh3$b;->f:Lpt;

    invoke-static {v0, p1}, Lk13;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lsh3$b;->b()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lsh3$b;->e:Z

    invoke-virtual {p0}, Lsh3$b;->d()V

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

    iget-boolean v0, p0, Lsh3$b;->e:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-wide v0, p0, Lsh3$b;->k:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lsh3$b;->k:J

    iget-object v2, p0, Lsh3$b;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsh3$a;

    if-eqz v2, :cond_1

    invoke-static {v2}, Lhc8;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    :cond_1
    :try_start_0
    iget-object v2, p0, Lsh3$b;->c:Lxl3;

    invoke-interface {v2, p1}, Lxl3;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "The publisher returned is null"

    invoke-static {p1, v2}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ldt6;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v2, Lsh3$a;

    iget v3, p0, Lsh3$b;->d:I

    invoke-direct {v2, p0, v0, v1, v3}, Lsh3$a;-><init>(Lsh3$b;JI)V

    :goto_0
    iget-object v0, p0, Lsh3$b;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsh3$a;

    sget-object v1, Lsh3$b;->l:Lsh3$a;

    if-ne v0, v1, :cond_2

    :goto_1
    return-void

    :cond_2
    iget-object v1, p0, Lsh3$b;->i:Ljava/util/concurrent/atomic/AtomicReference;

    :cond_3
    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1, v2}, Ldt6;->a(Lwb8;)V

    return-void

    :cond_4
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v0, :cond_3

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lm13;->d(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lsh3$b;->h:Lbc8;

    invoke-interface {v0}, Lbc8;->cancel()V

    invoke-virtual {p0, p1}, Lsh3$b;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final request(J)V
    .locals 2

    invoke-static {p1, p2}, Lhc8;->e(J)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lsh3$b;->j:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lm00;->c(Ljava/util/concurrent/atomic/AtomicLong;J)J

    iget-wide p1, p0, Lsh3$b;->k:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    iget-object p0, p0, Lsh3$b;->h:Lbc8;

    const-wide p1, 0x7fffffffffffffffL

    invoke-interface {p0, p1, p2}, Lbc8;->request(J)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lsh3$b;->d()V

    :cond_1
    return-void
.end method
