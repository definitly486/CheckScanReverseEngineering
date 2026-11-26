.class public Lzs7;
.super Lp1;
.source "SourceFile"

# interfaces
.implements Lvg5;
.implements Lhd3;
.implements Lwm3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzs7$a;,
        Lzs7$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lp1<",
        "Lct7;",
        ">;",
        "Lvg5<",
        "TT;>;",
        "Lhd3;",
        "Lwm3<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final f:I

.field public final g:I

.field public final h:Lcu0;

.field public i:[Ljava/lang/Object;

.field public j:J

.field public k:J

.field public l:I

.field public m:I


# direct methods
.method public constructor <init>(IILcu0;)V
    .locals 0

    invoke-direct {p0}, Lp1;-><init>()V

    iput p1, p0, Lzs7;->f:I

    iput p2, p0, Lzs7;->g:I

    iput-object p3, p0, Lzs7;->h:Lcu0;

    return-void
.end method

.method public static m(Lzs7;Lid3;Le02;)La32;
    .locals 8

    instance-of v0, p2, Lat7;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lat7;

    iget v1, v0, Lat7;->r:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lat7;->r:I

    goto :goto_0

    :cond_0
    new-instance v0, Lat7;

    invoke-direct {v0, p0, p2}, Lat7;-><init>(Lzs7;Le02;)V

    :goto_0
    iget-object p2, v0, Lat7;->p:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lat7;->r:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lat7;->o:Lmb4;

    iget-object p1, v0, Lat7;->n:Lct7;

    iget-object v2, v0, Lat7;->m:Lid3;

    iget-object v5, v0, Lat7;->l:Lzs7;

    :goto_1
    :try_start_0
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_7

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    iget-object p0, v0, Lat7;->o:Lmb4;

    iget-object p1, v0, Lat7;->n:Lct7;

    iget-object v2, v0, Lat7;->m:Lid3;

    iget-object v5, v0, Lat7;->l:Lzs7;

    goto :goto_1

    :goto_2
    move-object p2, v2

    move-object v2, p0

    move-object p0, v5

    goto :goto_4

    :cond_3
    iget-object p1, v0, Lat7;->n:Lct7;

    iget-object p0, v0, Lat7;->m:Lid3;

    iget-object v2, v0, Lat7;->l:Lzs7;

    :try_start_1
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object p2, p0

    move-object p0, v2

    goto :goto_3

    :catchall_1
    move-exception p0

    move-object v5, v2

    goto/16 :goto_7

    :cond_4
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lp1;->g()Lr1;

    move-result-object p2

    check-cast p2, Lct7;

    :try_start_2
    instance-of v2, p1, Lub8;

    if-eqz v2, :cond_5

    move-object v2, p1

    check-cast v2, Lub8;

    iput-object p0, v0, Lat7;->l:Lzs7;

    iput-object p1, v0, Lat7;->m:Lid3;

    iput-object p2, v0, Lat7;->n:Lct7;

    iput v5, v0, Lat7;->r:I

    invoke-virtual {v2, v0}, Lub8;->c(Lf02;)Ljava/lang/Object;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-ne v2, v1, :cond_5

    goto :goto_6

    :catchall_2
    move-exception p1

    move-object v5, p0

    move-object p0, p1

    move-object p1, p2

    goto :goto_7

    :cond_5
    move-object v7, p2

    move-object p2, p1

    move-object p1, v7

    :goto_3
    :try_start_3
    invoke-interface {v0}, Le02;->getContext()Lo22;

    move-result-object v2

    sget-object v5, Lmb4$a;->b:Lmb4$a;

    invoke-interface {v2, v5}, Lo22;->get(Lo22$b;)Lo22$a;

    move-result-object v2

    check-cast v2, Lmb4;

    :cond_6
    :goto_4
    invoke-virtual {p0, p1}, Lzs7;->u(Lct7;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lbt7;->b:Lbh8;

    if-ne v5, v6, :cond_7

    iput-object p0, v0, Lat7;->l:Lzs7;

    iput-object p2, v0, Lat7;->m:Lid3;

    iput-object p1, v0, Lat7;->n:Lct7;

    iput-object v2, v0, Lat7;->o:Lmb4;

    iput v4, v0, Lat7;->r:I

    invoke-virtual {p0, p1, v0}, Lzs7;->k(Lct7;Lat7;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_6

    goto :goto_6

    :catchall_3
    move-exception p2

    move-object v5, p0

    move-object p0, p2

    goto :goto_7

    :cond_7
    if-eqz v2, :cond_9

    invoke-interface {v2}, Lmb4;->isActive()Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_5

    :cond_8
    invoke-interface {v2}, Lmb4;->y()Ljava/util/concurrent/CancellationException;

    move-result-object p2

    throw p2

    :cond_9
    :goto_5
    iput-object p0, v0, Lat7;->l:Lzs7;

    iput-object p2, v0, Lat7;->m:Lid3;

    iput-object p1, v0, Lat7;->n:Lct7;

    iput-object v2, v0, Lat7;->o:Lmb4;

    iput v3, v0, Lat7;->r:I

    invoke-interface {p2, v5, v0}, Lid3;->emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-ne v5, v1, :cond_6

    :goto_6
    return-object v1

    :goto_7
    invoke-virtual {v5, p1}, Lp1;->j(Lr1;)V

    throw p0
.end method


# virtual methods
.method public final b()V
    .locals 13

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lzs7;->q()J

    move-result-wide v0

    iget v2, p0, Lzs7;->l:I

    int-to-long v2, v2

    add-long v5, v0, v2

    iget-wide v7, p0, Lzs7;->k:J

    invoke-virtual {p0}, Lzs7;->q()J

    move-result-wide v0

    iget v2, p0, Lzs7;->l:I

    int-to-long v2, v2

    add-long v9, v0, v2

    invoke-virtual {p0}, Lzs7;->q()J

    move-result-wide v0

    iget v2, p0, Lzs7;->l:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget v2, p0, Lzs7;->m:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    int-to-long v2, v2

    add-long v11, v0, v2

    move-object v4, p0

    :try_start_1
    invoke-virtual/range {v4 .. v12}, Lzs7;->v(JJJJ)V

    sget-object p0, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    return-void

    :catchall_0
    move-exception v0

    :goto_0
    move-object p0, v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v4, p0

    goto :goto_0

    :goto_1
    monitor-exit v4

    throw p0
.end method

.method public final c(Lo22;ILcu0;)Lhd3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo22;",
            "I",
            "Lcu0;",
            ")",
            "Lhd3<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lbt7;->d(Lys7;Lo22;ILcu0;)Lhd3;

    move-result-object p0

    return-object p0
.end method

.method public final collect(Lid3;Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lid3<",
            "-TT;>;",
            "Le02<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lzs7;->m(Lzs7;Lid3;Le02;)La32;

    move-result-object p0

    return-object p0
.end method

.method public final e(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    sget-object v0, Lq1;->b:[Le02;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lzs7;->s(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lzs7;->p([Le02;)[Le02;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    move p1, v1

    :goto_0
    monitor-exit p0

    array-length p0, v0

    :goto_1
    if-ge v1, p0, :cond_2

    aget-object v2, v0, v1

    if-eqz v2, :cond_1

    sget-object v3, Lj59;->a:Lj59;

    invoke-interface {v2, v3}, Le02;->resumeWith(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return p1

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public final emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lzs7;->e(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_0
    new-instance v5, Lc31;

    invoke-static {p2}, Lzya;->b(Le02;)Le02;

    move-result-object p2

    const/4 v6, 0x1

    invoke-direct {v5, v6, p2}, Lc31;-><init>(ILe02;)V

    invoke-virtual {v5}, Lc31;->u()V

    sget-object p2, Lq1;->b:[Le02;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lzs7;->s(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v0, :cond_1

    :try_start_1
    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {v5, p1}, Lc31;->resumeWith(Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lzs7;->p([Le02;)[Le02;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p2, 0x0

    move-object v1, p0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v1, p0

    goto/16 :goto_5

    :cond_1
    :try_start_2
    new-instance v0, Lzs7$a;

    invoke-virtual {p0}, Lzs7;->q()J

    move-result-wide v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    iget v3, p0, Lzs7;->l:I

    iget v4, p0, Lzs7;->m:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    add-int/2addr v3, v4

    int-to-long v3, v3

    add-long v2, v1, v3

    move-object v1, p0

    move-object v4, p1

    :try_start_4
    invoke-direct/range {v0 .. v5}, Lzs7$a;-><init>(Lzs7;JLjava/lang/Object;Lc31;)V

    invoke-virtual {v1, v0}, Lzs7;->o(Ljava/lang/Object;)V

    iget p0, v1, Lzs7;->m:I

    add-int/2addr p0, v6

    iput p0, v1, Lzs7;->m:I

    iget p0, v1, Lzs7;->g:I

    if-nez p0, :cond_2

    invoke-virtual {v1, p2}, Lzs7;->p([Le02;)[Le02;

    move-result-object p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :goto_0
    move-object p1, v0

    goto :goto_5

    :cond_2
    :goto_1
    move-object p1, p2

    move-object p2, v0

    :goto_2
    monitor-exit v1

    if-eqz p2, :cond_3

    new-instance p0, Lkp2;

    invoke-direct {p0, p2}, Lkp2;-><init>(Lhp2;)V

    invoke-virtual {v5, p0}, Lc31;->w(Lno5;)V

    :cond_3
    array-length p0, p1

    const/4 p2, 0x0

    :goto_3
    if-ge p2, p0, :cond_5

    aget-object v0, p1, p2

    if-eqz v0, :cond_4

    sget-object v1, Lj59;->a:Lj59;

    invoke-interface {v0, v1}, Le02;->resumeWith(Ljava/lang/Object;)V

    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {v5}, Lc31;->s()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_6

    goto :goto_4

    :cond_6
    sget-object p0, Lj59;->a:Lj59;

    :goto_4
    if-ne p0, p1, :cond_7

    return-object p0

    :cond_7
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :catchall_2
    move-exception v0

    move-object v1, p0

    move-object p0, v0

    move-object p1, p0

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v1, p0

    goto :goto_0

    :goto_5
    monitor-exit v1

    throw p1
.end method

.method public final h()Lr1;
    .locals 0

    new-instance p0, Lct7;

    invoke-direct {p0}, Lct7;-><init>()V

    return-object p0
.end method

.method public final i()[Lr1;
    .locals 0

    const/4 p0, 0x2

    new-array p0, p0, [Lct7;

    return-object p0
.end method

.method public final k(Lct7;Lat7;)Ljava/lang/Object;
    .locals 5

    new-instance v0, Lc31;

    invoke-static {p2}, Lzya;->b(Le02;)Le02;

    move-result-object p2

    const/4 v1, 0x1

    invoke-direct {v0, v1, p2}, Lc31;-><init>(ILe02;)V

    invoke-virtual {v0}, Lc31;->u()V

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lzs7;->t(Lct7;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-gez p2, :cond_0

    iput-object v0, p1, Lct7;->b:Lc31;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {v0, p1}, Lc31;->resumeWith(Ljava/lang/Object;)V

    :goto_0
    sget-object p1, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    invoke-virtual {v0}, Lc31;->s()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_1

    return-object p0

    :cond_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final l()V
    .locals 8

    iget v0, p0, Lzs7;->g:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget v0, p0, Lzs7;->m:I

    if-gt v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lzs7;->i:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    iget v2, p0, Lzs7;->m:I

    if-lez v2, :cond_1

    invoke-virtual {p0}, Lzs7;->q()J

    move-result-wide v2

    iget v4, p0, Lzs7;->l:I

    iget v5, p0, Lzs7;->m:I

    add-int/2addr v4, v5

    int-to-long v6, v4

    add-long/2addr v2, v6

    const-wide/16 v6, 0x1

    sub-long/2addr v2, v6

    long-to-int v2, v2

    array-length v3, v0

    sub-int/2addr v3, v1

    and-int/2addr v2, v3

    aget-object v2, v0, v2

    sget-object v3, Lbt7;->b:Lbh8;

    if-ne v2, v3, :cond_1

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lzs7;->m:I

    invoke-virtual {p0}, Lzs7;->q()J

    move-result-wide v2

    iget v4, p0, Lzs7;->l:I

    iget v5, p0, Lzs7;->m:I

    add-int/2addr v4, v5

    int-to-long v4, v4

    add-long/2addr v2, v4

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Lbt7;->e([Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final n()V
    .locals 10

    iget-object v0, p0, Lzs7;->i:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lzs7;->q()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lbt7;->e([Ljava/lang/Object;JLjava/lang/Object;)V

    iget v0, p0, Lzs7;->l:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lzs7;->l:I

    invoke-virtual {p0}, Lzs7;->q()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iget-wide v2, p0, Lzs7;->j:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_0

    iput-wide v0, p0, Lzs7;->j:J

    :cond_0
    iget-wide v2, p0, Lzs7;->k:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_3

    iget v2, p0, Lp1;->c:I

    if-eqz v2, :cond_2

    iget-object v2, p0, Lp1;->b:[Lr1;

    if-eqz v2, :cond_2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    if-eqz v5, :cond_1

    check-cast v5, Lct7;

    iget-wide v6, v5, Lct7;->a:J

    const-wide/16 v8, 0x0

    cmp-long v8, v8, v6

    if-gtz v8, :cond_1

    cmp-long v6, v6, v0

    if-gez v6, :cond_1

    iput-wide v0, v5, Lct7;->a:J

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iput-wide v0, p0, Lzs7;->k:J

    :cond_3
    return-void
.end method

.method public final o(Ljava/lang/Object;)V
    .locals 6

    iget v0, p0, Lzs7;->l:I

    iget v1, p0, Lzs7;->m:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lzs7;->i:[Ljava/lang/Object;

    const/4 v2, 0x2

    if-nez v1, :cond_0

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2, v1}, Lzs7;->r(II[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    array-length v3, v1

    if-lt v0, v3, :cond_1

    array-length v3, v1

    mul-int/2addr v3, v2

    invoke-virtual {p0, v0, v3, v1}, Lzs7;->r(II[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lzs7;->q()J

    move-result-wide v2

    int-to-long v4, v0

    add-long/2addr v2, v4

    invoke-static {v1, v2, v3, p1}, Lbt7;->e([Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public final p([Le02;)[Le02;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Le02<",
            "Lj59;",
            ">;)[",
            "Le02<",
            "Lj59;",
            ">;"
        }
    .end annotation

    array-length v0, p1

    iget v1, p0, Lp1;->c:I

    if-eqz v1, :cond_3

    iget-object v1, p0, Lp1;->b:[Lr1;

    if-eqz v1, :cond_3

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    if-eqz v4, :cond_2

    check-cast v4, Lct7;

    iget-object v5, v4, Lct7;->b:Lc31;

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v4}, Lzs7;->t(Lct7;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-ltz v6, :cond_2

    array-length v6, p1

    if-lt v0, v6, :cond_1

    array-length v6, p1

    const/4 v7, 0x2

    mul-int/2addr v6, v7

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {p1, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    :cond_1
    move-object v6, p1

    check-cast v6, [Le02;

    add-int/lit8 v7, v0, 0x1

    aput-object v5, v6, v0

    const/4 v0, 0x0

    iput-object v0, v4, Lct7;->b:Lc31;

    move v0, v7

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    check-cast p1, [Le02;

    return-object p1
.end method

.method public final q()J
    .locals 4

    iget-wide v0, p0, Lzs7;->k:J

    iget-wide v2, p0, Lzs7;->j:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final r(II[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6

    if-lez p2, :cond_2

    new-array p2, p2, [Ljava/lang/Object;

    iput-object p2, p0, Lzs7;->i:[Ljava/lang/Object;

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lzs7;->q()J

    move-result-wide v0

    const/4 p0, 0x0

    :goto_0
    if-ge p0, p1, :cond_1

    int-to-long v2, p0

    add-long/2addr v2, v0

    long-to-int v4, v2

    array-length v5, p3

    add-int/lit8 v5, v5, -0x1

    and-int/2addr v4, v5

    aget-object v4, p3, v4

    invoke-static {p2, v2, v3, v4}, Lbt7;->e([Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p2

    :cond_2
    const-string p0, "Buffer size overflow"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final s(Ljava/lang/Object;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget v1, p0, Lp1;->c:I

    iget v2, p0, Lzs7;->f:I

    const/4 v9, 0x1

    if-nez v1, :cond_2

    if-nez v2, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual/range {p0 .. p1}, Lzs7;->o(Ljava/lang/Object;)V

    iget v1, p0, Lzs7;->l:I

    add-int/2addr v1, v9

    iput v1, p0, Lzs7;->l:I

    if-le v1, v2, :cond_1

    invoke-virtual {p0}, Lzs7;->n()V

    :cond_1
    invoke-virtual {p0}, Lzs7;->q()J

    move-result-wide v1

    iget v3, p0, Lzs7;->l:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lzs7;->k:J

    return v9

    :cond_2
    iget v1, p0, Lzs7;->l:I

    iget v3, p0, Lzs7;->g:I

    if-lt v1, v3, :cond_5

    iget-wide v4, p0, Lzs7;->k:J

    iget-wide v6, p0, Lzs7;->j:J

    cmp-long v1, v4, v6

    if-gtz v1, :cond_5

    sget-object v1, Lzs7$b;->a:[I

    iget-object v4, p0, Lzs7;->h:Lcu0;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v1, v1, v4

    if-eq v1, v9, :cond_4

    const/4 v4, 0x2

    if-eq v1, v4, :cond_7

    const/4 v4, 0x3

    if-ne v1, v4, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {}, Lme0;->e()V

    const/4 v0, 0x0

    return v0

    :cond_4
    const/4 v0, 0x0

    return v0

    :cond_5
    :goto_0
    invoke-virtual/range {p0 .. p1}, Lzs7;->o(Ljava/lang/Object;)V

    iget v1, p0, Lzs7;->l:I

    add-int/2addr v1, v9

    iput v1, p0, Lzs7;->l:I

    if-le v1, v3, :cond_6

    invoke-virtual {p0}, Lzs7;->n()V

    :cond_6
    invoke-virtual {p0}, Lzs7;->q()J

    move-result-wide v3

    iget v1, p0, Lzs7;->l:I

    int-to-long v5, v1

    add-long/2addr v3, v5

    iget-wide v5, p0, Lzs7;->j:J

    sub-long/2addr v3, v5

    long-to-int v1, v3

    if-le v1, v2, :cond_7

    const-wide/16 v1, 0x1

    add-long/2addr v1, v5

    iget-wide v3, p0, Lzs7;->k:J

    invoke-virtual {p0}, Lzs7;->q()J

    move-result-wide v5

    iget v7, p0, Lzs7;->l:I

    int-to-long v7, v7

    add-long/2addr v5, v7

    invoke-virtual {p0}, Lzs7;->q()J

    move-result-wide v7

    iget v10, p0, Lzs7;->l:I

    int-to-long v10, v10

    add-long/2addr v7, v10

    iget v10, p0, Lzs7;->m:I

    int-to-long v10, v10

    add-long/2addr v7, v10

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lzs7;->v(JJJJ)V

    :cond_7
    :goto_1
    return v9
.end method

.method public final t(Lct7;)J
    .locals 6

    iget-wide v0, p1, Lct7;->a:J

    invoke-virtual {p0}, Lzs7;->q()J

    move-result-wide v2

    iget p1, p0, Lzs7;->l:I

    int-to-long v4, p1

    add-long/2addr v2, v4

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    goto :goto_1

    :cond_0
    iget p1, p0, Lzs7;->g:I

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lzs7;->q()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-lez p1, :cond_2

    goto :goto_0

    :cond_2
    iget p0, p0, Lzs7;->m:I

    if-nez p0, :cond_3

    :goto_0
    const-wide/16 p0, -0x1

    return-wide p0

    :cond_3
    :goto_1
    return-wide v0
.end method

.method public final u(Lct7;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Lq1;->b:[Le02;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lzs7;->t(Lct7;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_0

    sget-object p1, Lbt7;->b:Lbh8;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    iget-wide v3, p1, Lct7;->a:J

    iget-object v0, p0, Lzs7;->i:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    long-to-int v5, v1

    array-length v6, v0

    add-int/lit8 v6, v6, -0x1

    and-int/2addr v5, v6

    aget-object v0, v0, v5

    instance-of v5, v0, Lzs7$a;

    if-eqz v5, :cond_1

    check-cast v0, Lzs7$a;

    iget-object v0, v0, Lzs7$a;->d:Ljava/lang/Object;

    :cond_1
    const-wide/16 v5, 0x1

    add-long/2addr v1, v5

    iput-wide v1, p1, Lct7;->a:J

    invoke-virtual {p0, v3, v4}, Lzs7;->w(J)[Le02;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, v0

    move-object v0, p1

    move-object p1, v7

    :goto_0
    monitor-exit p0

    array-length p0, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p0, :cond_3

    aget-object v2, v0, v1

    if-eqz v2, :cond_2

    sget-object v3, Lj59;->a:Lj59;

    invoke-interface {v2, v3}, Le02;->resumeWith(Ljava/lang/Object;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-object p1

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public final v(JJJJ)V
    .locals 6

    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-virtual {p0}, Lzs7;->q()J

    move-result-wide v2

    :goto_0
    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    iget-object v4, p0, Lzs7;->i:[Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    invoke-static {v4, v2, v3, v5}, Lbt7;->e([Ljava/lang/Object;JLjava/lang/Object;)V

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    goto :goto_0

    :cond_0
    iput-wide p1, p0, Lzs7;->j:J

    iput-wide p3, p0, Lzs7;->k:J

    sub-long p1, p5, v0

    long-to-int p1, p1

    iput p1, p0, Lzs7;->l:I

    sub-long/2addr p7, p5

    long-to-int p1, p7

    iput p1, p0, Lzs7;->m:I

    return-void
.end method

.method public final w(J)[Le02;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)[",
            "Le02<",
            "Lj59;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    sget-object v1, Lbt7;->b:Lbh8;

    sget-object v2, Lq1;->b:[Le02;

    iget-wide v3, v0, Lzs7;->k:J

    cmp-long v3, p1, v3

    if-lez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lzs7;->q()J

    move-result-wide v3

    iget v5, v0, Lzs7;->l:I

    int-to-long v5, v5

    add-long/2addr v5, v3

    iget v7, v0, Lzs7;->g:I

    const-wide/16 v8, 0x1

    if-nez v7, :cond_1

    iget v10, v0, Lzs7;->m:I

    if-lez v10, :cond_1

    add-long/2addr v5, v8

    :cond_1
    iget v10, v0, Lp1;->c:I

    const/4 v11, 0x0

    if-eqz v10, :cond_3

    iget-object v10, v0, Lp1;->b:[Lr1;

    if-eqz v10, :cond_3

    array-length v12, v10

    move v13, v11

    :goto_0
    if-ge v13, v12, :cond_3

    aget-object v14, v10, v13

    if-eqz v14, :cond_2

    check-cast v14, Lct7;

    iget-wide v14, v14, Lct7;->a:J

    const-wide/16 v16, 0x0

    cmp-long v16, v16, v14

    if-gtz v16, :cond_2

    cmp-long v16, v14, v5

    if-gez v16, :cond_2

    move-wide v5, v14

    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_3
    iget-wide v12, v0, Lzs7;->k:J

    cmp-long v10, v5, v12

    if-gtz v10, :cond_4

    :goto_1
    return-object v2

    :cond_4
    invoke-virtual {v0}, Lzs7;->q()J

    move-result-wide v12

    iget v10, v0, Lzs7;->l:I

    int-to-long v14, v10

    add-long/2addr v12, v14

    iget v10, v0, Lp1;->c:I

    iget v14, v0, Lzs7;->m:I

    if-lez v10, :cond_5

    move-wide/from16 p1, v8

    sub-long v8, v12, v5

    long-to-int v8, v8

    sub-int v8, v7, v8

    invoke-static {v14, v8}, Ljava/lang/Math;->min(II)I

    move-result v14

    goto :goto_2

    :cond_5
    move-wide/from16 p1, v8

    :goto_2
    iget v8, v0, Lzs7;->m:I

    int-to-long v8, v8

    add-long/2addr v8, v12

    if-lez v14, :cond_9

    new-array v2, v14, [Le02;

    iget-object v10, v0, Lzs7;->i:[Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-wide v15, v5

    move-wide v5, v12

    :goto_3
    cmp-long v17, v12, v8

    if-gez v17, :cond_8

    move-object/from16 v17, v2

    long-to-int v2, v12

    move/from16 v18, v2

    array-length v2, v10

    add-int/lit8 v2, v2, -0x1

    and-int v2, v18, v2

    aget-object v2, v10, v2

    if-eq v2, v1, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v2, Lzs7$a;

    move/from16 v18, v7

    add-int/lit8 v7, v11, 0x1

    move-wide/from16 v19, v8

    iget-object v8, v2, Lzs7$a;->e:Lc31;

    aput-object v8, v17, v11

    invoke-static {v10, v12, v13, v1}, Lbt7;->e([Ljava/lang/Object;JLjava/lang/Object;)V

    iget-object v2, v2, Lzs7$a;->d:Ljava/lang/Object;

    invoke-static {v10, v5, v6, v2}, Lbt7;->e([Ljava/lang/Object;JLjava/lang/Object;)V

    add-long v5, v5, p1

    if-ge v7, v14, :cond_6

    move v11, v7

    goto :goto_5

    :cond_6
    :goto_4
    move-wide v12, v5

    move-object/from16 v9, v17

    goto :goto_6

    :cond_7
    move/from16 v18, v7

    move-wide/from16 v19, v8

    :goto_5
    add-long v12, v12, p1

    move-object/from16 v2, v17

    move/from16 v7, v18

    move-wide/from16 v8, v19

    goto :goto_3

    :cond_8
    move-object/from16 v17, v2

    move/from16 v18, v7

    move-wide/from16 v19, v8

    goto :goto_4

    :cond_9
    move-wide v15, v5

    move/from16 v18, v7

    move-wide/from16 v19, v8

    move-object v9, v2

    :goto_6
    iget-wide v5, v0, Lzs7;->j:J

    iget v2, v0, Lzs7;->f:I

    int-to-long v7, v2

    sub-long v7, v12, v7

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    if-nez v18, :cond_a

    cmp-long v4, v2, v19

    if-gez v4, :cond_a

    iget-object v4, v0, Lzs7;->i:[Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    long-to-int v5, v2

    array-length v6, v4

    add-int/lit8 v6, v6, -0x1

    and-int/2addr v5, v6

    aget-object v4, v4, v5

    invoke-static {v4, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    add-long v12, v12, p1

    add-long v2, v2, p1

    :cond_a
    move-wide v1, v2

    move-wide v5, v12

    iget v3, v0, Lp1;->c:I

    if-nez v3, :cond_b

    move-wide v3, v5

    :goto_7
    move-wide/from16 v7, v19

    goto :goto_8

    :cond_b
    move-wide v3, v15

    goto :goto_7

    :goto_8
    invoke-virtual/range {v0 .. v8}, Lzs7;->v(JJJJ)V

    invoke-virtual {v0}, Lzs7;->l()V

    array-length v1, v9

    if-nez v1, :cond_c

    return-object v9

    :cond_c
    invoke-virtual {v0, v9}, Lzs7;->p([Le02;)[Le02;

    move-result-object v0

    return-object v0
.end method
