.class public final Lmu0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk91;
.implements Llf9;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmu0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lk91<",
        "TE;>;",
        "Llf9;"
    }
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public c:Lc31;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc31<",
            "-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic d:Lmu0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmu0<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmu0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmu0$a;->d:Lmu0;

    sget-object p1, Lsu0;->p:Lbh8;

    iput-object p1, p0, Lmu0$a;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lhl7;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhl7<",
            "*>;I)V"
        }
    .end annotation

    iget-object p0, p0, Lmu0$a;->c:Lc31;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lc31;->a(Lhl7;I)V

    :cond_0
    return-void
.end method

.method public final b(Lf02;)Ljava/lang/Object;
    .locals 12

    iget-object v0, p0, Lmu0$a;->b:Ljava/lang/Object;

    sget-object v1, Lsu0;->p:Lbh8;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    sget-object v1, Lsu0;->l:Lbh8;

    if-eq v0, v1, :cond_0

    goto/16 :goto_8

    :cond_0
    sget-object v0, Lmu0;->j:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iget-object v3, p0, Lmu0$a;->d:Lmu0;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq91;

    :goto_0
    invoke-virtual {v3}, Lmu0;->w()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object p1, Lsu0;->l:Lbh8;

    iput-object p1, p0, Lmu0$a;->b:Ljava/lang/Object;

    invoke-virtual {v3}, Lmu0;->n()Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 v2, 0x0

    goto/16 :goto_8

    :cond_1
    sget p1, Lp68;->a:I

    throw p0

    :cond_2
    sget-object v1, Lmu0;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v6

    sget v1, Lsu0;->b:I

    int-to-long v4, v1

    div-long v8, v6, v4

    rem-long v4, v6, v4

    long-to-int v5, v4

    iget-wide v10, v0, Lhl7;->e:J

    cmp-long v1, v10, v8

    if-eqz v1, :cond_4

    invoke-virtual {v3, v8, v9, v0}, Lmu0;->j(JLq91;)Lq91;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    move-object v4, v1

    goto :goto_1

    :cond_4
    move-object v4, v0

    :goto_1
    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lmu0;->J(Lq91;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lsu0;->m:Lbh8;

    const/4 v9, 0x0

    if-eq v0, v1, :cond_14

    sget-object v10, Lsu0;->o:Lbh8;

    if-ne v0, v10, :cond_6

    invoke-virtual {v3}, Lmu0;->s()J

    move-result-wide v0

    cmp-long v0, v6, v0

    if-gez v0, :cond_5

    invoke-virtual {v4}, Ldv1;->a()V

    :cond_5
    move-object v0, v4

    goto :goto_0

    :cond_6
    sget-object v8, Lsu0;->n:Lbh8;

    if-ne v0, v8, :cond_13

    invoke-static {p1}, Lzya;->b(Le02;)Le02;

    move-result-object p1

    invoke-static {p1}, Le31;->c(Le02;)Lc31;

    move-result-object p1

    :try_start_0
    iput-object p1, p0, Lmu0$a;->c:Lc31;

    move-object v8, p0

    invoke-virtual/range {v3 .. v8}, Lmu0;->J(Lq91;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    iget-object v0, v3, Lmu0;->c:Lnl3;

    if-ne p0, v1, :cond_7

    invoke-virtual {v8, v4, v5}, Lmu0$a;->a(Lhl7;I)V

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_7

    :cond_7
    if-ne p0, v10, :cond_12

    invoke-virtual {v3}, Lmu0;->s()J

    move-result-wide v1

    cmp-long p0, v6, v1

    if-gez p0, :cond_8

    invoke-virtual {v4}, Ldv1;->a()V

    :cond_8
    sget-object p0, Lmu0;->j:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lq91;

    :goto_2
    invoke-virtual {v3}, Lmu0;->w()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object p0, v8, Lmu0$a;->c:Lc31;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v9, v8, Lmu0$a;->c:Lc31;

    sget-object v0, Lsu0;->l:Lbh8;

    iput-object v0, v8, Lmu0$a;->b:Ljava/lang/Object;

    invoke-virtual {v3}, Lmu0;->n()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_9

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lc31;->resumeWith(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_9
    new-instance v1, Lk57$a;

    invoke-direct {v1, v0}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lc31;->resumeWith(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_a
    sget-object v1, Lmu0;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v6

    sget v1, Lsu0;->b:I

    int-to-long v1, v1

    div-long v4, v6, v1

    rem-long v1, v6, v1

    long-to-int v1, v1

    iget-wide v10, p0, Lhl7;->e:J

    cmp-long v2, v10, v4

    if-eqz v2, :cond_c

    invoke-virtual {v3, v4, v5, p0}, Lmu0;->j(JLq91;)Lq91;

    move-result-object v2

    if-nez v2, :cond_b

    goto :goto_2

    :cond_b
    move-object v4, v2

    :goto_3
    move v5, v1

    goto :goto_4

    :cond_c
    move-object v4, p0

    goto :goto_3

    :goto_4
    invoke-virtual/range {v3 .. v8}, Lmu0;->J(Lq91;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v2, v4

    sget-object v1, Lsu0;->m:Lbh8;

    if-ne p0, v1, :cond_d

    invoke-virtual {v8, v2, v5}, Lmu0$a;->a(Lhl7;I)V

    goto :goto_6

    :cond_d
    sget-object v1, Lsu0;->o:Lbh8;

    if-ne p0, v1, :cond_f

    invoke-virtual {v3}, Lmu0;->s()J

    move-result-wide v4

    cmp-long p0, v6, v4

    if-gez p0, :cond_e

    invoke-virtual {v2}, Ldv1;->a()V

    :cond_e
    move-object p0, v2

    goto :goto_2

    :cond_f
    sget-object v1, Lsu0;->n:Lbh8;

    if-eq p0, v1, :cond_11

    invoke-virtual {v2}, Ldv1;->a()V

    iput-object p0, v8, Lmu0$a;->b:Ljava/lang/Object;

    iput-object v9, v8, Lmu0$a;->c:Lc31;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eqz v0, :cond_10

    new-instance v9, Lku0;

    invoke-direct {v9, v0, p0}, Lku0;-><init>(Lnl3;Ljava/lang/Object;)V

    :cond_10
    :goto_5
    invoke-virtual {p1, v1, v9}, Lc31;->q(Ljava/lang/Object;Ldm3;)V

    goto :goto_6

    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "unexpected"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_12
    invoke-virtual {v4}, Ldv1;->a()V

    iput-object p0, v8, Lmu0$a;->b:Ljava/lang/Object;

    iput-object v9, v8, Lmu0$a;->c:Lc31;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eqz v0, :cond_10

    new-instance v9, Lku0;

    invoke-direct {v9, v0, p0}, Lku0;-><init>(Lnl3;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :goto_6
    invoke-virtual {p1}, Lc31;->s()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    return-object p0

    :goto_7
    invoke-virtual {p1}, Lc31;->A()V

    throw p0

    :cond_13
    move-object v8, p0

    invoke-virtual {v4}, Ldv1;->a()V

    iput-object v0, v8, Lmu0$a;->b:Ljava/lang/Object;

    :goto_8
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_14
    const-string p0, "unreachable"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v9
.end method

.method public final next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lmu0$a;->b:Ljava/lang/Object;

    sget-object v1, Lsu0;->p:Lbh8;

    if-eq v0, v1, :cond_1

    iput-object v1, p0, Lmu0$a;->b:Ljava/lang/Object;

    sget-object v1, Lsu0;->l:Lbh8;

    if-eq v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lmu0;->e:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    iget-object p0, p0, Lmu0$a;->d:Lmu0;

    invoke-virtual {p0}, Lmu0;->o()Ljava/lang/Throwable;

    move-result-object p0

    sget v0, Lp68;->a:I

    throw p0

    :cond_1
    const-string p0, "`hasNext()` has not been invoked"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
