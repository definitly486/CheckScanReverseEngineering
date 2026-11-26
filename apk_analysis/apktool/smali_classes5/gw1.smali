.class public final Lgw1;
.super Lmu0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lmu0<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final t:Lcu0;


# direct methods
.method public constructor <init>(ILcu0;Lnl3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcu0;",
            "Lnl3<",
            "-TE;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p3}, Lmu0;-><init>(ILnl3;)V

    iput-object p2, p0, Lgw1;->t:Lcu0;

    sget-object p0, Lcu0;->SUSPEND:Lcu0;

    const/4 p3, 0x0

    if-eq p2, p0, :cond_1

    const/4 p0, 0x1

    if-lt p1, p0, :cond_0

    return-void

    :cond_0
    const-string p0, "Buffered channel capacity must be at least 1, but "

    const-string p2, " was specified"

    invoke-static {p1, p0, p2}, Lkv2;->b(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc9;->f(Ljava/lang/Object;)V

    throw p3

    :cond_1
    const-class p0, Lmu0;

    invoke-static {p0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object p0

    invoke-virtual {p0}, Lzk1;->f()Ljava/lang/String;

    move-result-object p0

    const-string p1, " instead"

    const-string p2, "This implementation does not support suspension for senders, use "

    invoke-static {p0, p2, p1}, Lh8;->f(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    throw p3
.end method


# virtual methods
.method public final F(Lbm7;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbm7<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lgw1;->N(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p0

    instance-of p2, p0, Lp91$b;

    if-nez p2, :cond_0

    check-cast p0, Lj59;

    sget-object p0, Lj59;->a:Lj59;

    invoke-interface {p1, p0}, Lbm7;->d(Ljava/lang/Object;)V

    return-void

    :cond_0
    instance-of p0, p0, Lp91$a;

    if-eqz p0, :cond_1

    sget-object p0, Lsu0;->l:Lbh8;

    invoke-interface {p1, p0}, Lbm7;->d(Ljava/lang/Object;)V

    return-void

    :cond_1
    const-string p0, "unreachable"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void
.end method

.method public final N(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lgw1;->t:Lcu0;

    sget-object v2, Lcu0;->DROP_LATEST:Lcu0;

    const/4 v8, 0x0

    if-ne v1, v2, :cond_4

    invoke-super/range {p0 .. p1}, Lmu0;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lp91$b;

    if-eqz v2, :cond_3

    instance-of v2, v1, Lp91$a;

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_2

    iget-object v0, v0, Lmu0;->c:Lnl3;

    if-eqz v0, :cond_2

    move-object/from16 v3, p1

    invoke-static {v0, v3, v8}, Lrq3;->b(Lnl3;Ljava/lang/Object;Lkotlinx/coroutines/internal/UndeliveredElementException;)Lkotlinx/coroutines/internal/UndeliveredElementException;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    throw v0

    :cond_2
    :goto_0
    sget-object v0, Lj59;->a:Lj59;

    return-object v0

    :cond_3
    :goto_1
    return-object v1

    :cond_4
    move-object/from16 v3, p1

    sget-object v6, Lsu0;->d:Lbh8;

    sget-object v1, Lmu0;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq91;

    :cond_5
    :goto_2
    sget-object v2, Lmu0;->e:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v4

    const-wide v9, 0xfffffffffffffffL

    and-long/2addr v9, v4

    const/4 v2, 0x0

    invoke-virtual {v0, v4, v5, v2}, Lmu0;->v(JZ)Z

    move-result v7

    sget v11, Lsu0;->b:I

    int-to-long v12, v11

    div-long v4, v9, v12

    rem-long v14, v9, v12

    long-to-int v2, v14

    iget-wide v14, v1, Lhl7;->e:J

    cmp-long v14, v14, v4

    if-eqz v14, :cond_7

    invoke-virtual {v0, v4, v5, v1}, Lmu0;->k(JLq91;)Lq91;

    move-result-object v4

    if-nez v4, :cond_6

    if-eqz v7, :cond_5

    invoke-virtual {v0}, Lmu0;->q()Ljava/lang/Throwable;

    move-result-object v0

    new-instance v1, Lp91$a;

    invoke-direct {v1, v0}, Lp91$a;-><init>(Ljava/lang/Throwable;)V

    return-object v1

    :cond_6
    move-object v1, v4

    :cond_7
    move-wide v4, v9

    invoke-virtual/range {v0 .. v7}, Lmu0;->K(Lq91;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result v9

    if-eqz v9, :cond_11

    const/4 v3, 0x1

    if-eq v9, v3, :cond_10

    const/4 v3, 0x2

    if-eq v9, v3, :cond_c

    const/4 v2, 0x3

    if-eq v9, v2, :cond_b

    const/4 v2, 0x4

    if-eq v9, v2, :cond_9

    const/4 v2, 0x5

    if-eq v9, v2, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual {v1}, Ldv1;->a()V

    :goto_3
    move-object/from16 v3, p1

    goto :goto_2

    :cond_9
    invoke-virtual {v0}, Lmu0;->p()J

    move-result-wide v2

    cmp-long v2, v4, v2

    if-gez v2, :cond_a

    invoke-virtual {v1}, Ldv1;->a()V

    :cond_a
    invoke-virtual {v0}, Lmu0;->q()Ljava/lang/Throwable;

    move-result-object v0

    new-instance v1, Lp91$a;

    invoke-direct {v1, v0}, Lp91$a;-><init>(Ljava/lang/Throwable;)V

    return-object v1

    :cond_b
    const-string v0, "unexpected"

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-object v8

    :cond_c
    if-eqz v7, :cond_d

    invoke-virtual {v1}, Lhl7;->i()V

    invoke-virtual {v0}, Lmu0;->q()Ljava/lang/Throwable;

    move-result-object v0

    new-instance v1, Lp91$a;

    invoke-direct {v1, v0}, Lp91$a;-><init>(Ljava/lang/Throwable;)V

    return-object v1

    :cond_d
    instance-of v3, v6, Llf9;

    if-eqz v3, :cond_e

    move-object v8, v6

    check-cast v8, Llf9;

    :cond_e
    if-eqz v8, :cond_f

    add-int v3, v2, v11

    invoke-interface {v8, v1, v3}, Llf9;->a(Lhl7;I)V

    :cond_f
    iget-wide v3, v1, Lhl7;->e:J

    mul-long/2addr v3, v12

    int-to-long v1, v2

    add-long/2addr v3, v1

    invoke-virtual {v0, v3, v4}, Lmu0;->f(J)V

    sget-object v0, Lj59;->a:Lj59;

    return-object v0

    :cond_10
    sget-object v0, Lj59;->a:Lj59;

    return-object v0

    :cond_11
    invoke-virtual {v1}, Ldv1;->a()V

    sget-object v0, Lj59;->a:Lj59;

    return-object v0
.end method

.method public final send(Ljava/lang/Object;Le02;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lgw1;->N(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p2

    instance-of p2, p2, Lp91$a;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lmu0;->c:Lnl3;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lrq3;->b(Lnl3;Ljava/lang/Object;Lkotlinx/coroutines/internal/UndeliveredElementException;)Lkotlinx/coroutines/internal/UndeliveredElementException;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lmu0;->q()Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {p1, p0}, Lsj0;->c(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    invoke-virtual {p0}, Lmu0;->q()Ljava/lang/Throwable;

    move-result-object p0

    throw p0

    :cond_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lgw1;->N(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final x()Z
    .locals 1

    iget-object p0, p0, Lgw1;->t:Lcu0;

    sget-object v0, Lcu0;->DROP_OLDEST:Lcu0;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
