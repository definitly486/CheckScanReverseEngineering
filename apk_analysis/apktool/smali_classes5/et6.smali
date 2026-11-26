.class public final Let6;
.super Ld91;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ld91<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final e:Lgg3;


# direct methods
.method public constructor <init>(Lgg3;Lo22;ILcu0;)V
    .locals 0

    invoke-direct {p0, p2, p3, p4}, Ld91;-><init>(Lo22;ILcu0;)V

    iput-object p1, p0, Let6;->e:Lgg3;

    return-void
.end method


# virtual methods
.method public final collect(Lid3;Le02;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lid3<",
            "-TT;>;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-interface {p2}, Le02;->getContext()Lo22;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance v2, Lit1;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lit1;-><init>(I)V

    iget-object v3, p0, Ld91;->b:Lo22;

    invoke-interface {v3, v1, v2}, Lo22;->fold(Ljava/lang/Object;Lbm3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0, v3}, Lo22;->plus(Lo22;)Lo22;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-static {v0, v3, v1}, Lq22;->a(Lo22;Lo22;Z)Lo22;

    move-result-object v1

    :goto_0
    invoke-static {v1, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0, p1, p2}, Let6;->l(Lo22;Lid3;Le02;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_1

    return-object p0

    :cond_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_2
    invoke-super {p0, p1, p2}, Ld91;->collect(Lid3;Le02;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_3

    return-object p0

    :cond_3
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final h(Lug6;Le02;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lug6<",
            "-TT;>;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-interface {p1}, Ly22;->getCoroutineContext()Lo22;

    move-result-object v0

    new-instance v1, Lyo7;

    invoke-interface {p1}, Lug6;->getChannel()Lno7;

    move-result-object p1

    invoke-direct {v1, p1}, Lyo7;-><init>(Lno7;)V

    invoke-virtual {p0, v0, v1, p2}, Let6;->l(Lo22;Lid3;Le02;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final i(Lo22;ILcu0;)Ld91;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo22;",
            "I",
            "Lcu0;",
            ")",
            "Ld91<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Let6;

    iget-object p0, p0, Let6;->e:Lgg3;

    invoke-direct {v0, p0, p1, p2, p3}, Let6;-><init>(Lgg3;Lo22;ILcu0;)V

    return-object v0
.end method

.method public final l(Lo22;Lid3;Le02;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo22;",
            "Lid3<",
            "-TT;>;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    instance-of v2, v1, Let6$a;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Let6$a;

    iget v3, v2, Let6$a;->q:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Let6$a;->q:I

    goto :goto_0

    :cond_0
    new-instance v2, Let6$a;

    invoke-direct {v2, v0, v1}, Let6$a;-><init>(Let6;Le02;)V

    :goto_0
    iget-object v1, v2, Let6$a;->o:Ljava/lang/Object;

    sget-object v3, La32;->COROUTINE_SUSPENDED:La32;

    iget v4, v2, Let6$a;->q:I

    const/4 v5, 0x0

    const-string v6, "subscription"

    const-wide/16 v7, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eqz v4, :cond_4

    if-eq v4, v10, :cond_3

    if-ne v4, v9, :cond_2

    iget-wide v11, v2, Let6$a;->n:J

    iget-object v4, v2, Let6$a;->m:Lay6;

    iget-object v13, v2, Let6$a;->l:Lid3;

    :try_start_0
    invoke-static {v1}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    move-object v1, v13

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_2
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-object v5

    :cond_3
    iget-wide v11, v2, Let6$a;->n:J

    iget-object v4, v2, Let6$a;->m:Lay6;

    iget-object v13, v2, Let6$a;->l:Lid3;

    :try_start_1
    invoke-static {v1}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :cond_4
    invoke-static {v1}, Lr57;->b(Ljava/lang/Object;)V

    new-instance v1, Lay6;

    iget-object v4, v0, Ld91;->d:Lcu0;

    invoke-virtual {v0}, Let6;->m()J

    move-result-wide v11

    iget v13, v0, Ld91;->c:I

    invoke-direct {v1, v13, v4, v11, v12}, Lay6;-><init>(ILcu0;J)V

    sget-object v4, Lyx6;->a:[Lpy1;

    array-length v11, v4

    iget-object v12, v0, Let6;->e:Lgg3;

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v11, :cond_5

    aget-object v12, v4, v13

    invoke-interface {v12}, Lpy1;->a()Ldt6;

    move-result-object v12

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_5
    invoke-interface {v12, v1}, Ldt6;->a(Lwb8;)V

    move-object v4, v1

    move-wide v11, v7

    move-object/from16 v1, p2

    :cond_6
    :goto_2
    :try_start_2
    iput-object v1, v2, Let6$a;->l:Lid3;

    iput-object v4, v2, Let6$a;->m:Lay6;

    iput-wide v11, v2, Let6$a;->n:J

    iput v10, v2, Let6$a;->q:I

    invoke-virtual {v4, v2}, Lay6;->b(Lf02;)Ljava/lang/Object;

    move-result-object v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v13, v3, :cond_7

    goto :goto_4

    :cond_7
    move-object v15, v13

    move-object v13, v1

    move-object v1, v15

    :goto_3
    if-nez v1, :cond_9

    iget-object v0, v4, Lay6;->c:Lbc8;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Lbc8;->cancel()V

    sget-object v0, Lj59;->a:Lj59;

    return-object v0

    :cond_8
    invoke-static {v6}, Laa4;->j(Ljava/lang/String;)V

    throw v5

    :cond_9
    :try_start_3
    invoke-interface {v2}, Le02;->getContext()Lo22;

    move-result-object v14

    invoke-static {v14}, Lqb4;->e(Lo22;)V

    iput-object v13, v2, Let6$a;->l:Lid3;

    iput-object v4, v2, Let6$a;->m:Lay6;

    iput-wide v11, v2, Let6$a;->n:J

    iput v9, v2, Let6$a;->q:I

    invoke-interface {v13, v1, v2}, Lid3;->emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_1

    :goto_4
    return-object v3

    :goto_5
    const-wide/16 v13, 0x1

    add-long/2addr v11, v13

    invoke-virtual {v0}, Let6;->m()J

    move-result-wide v13

    cmp-long v13, v11, v13

    if-nez v13, :cond_6

    iget-object v11, v4, Lay6;->c:Lbc8;

    if-eqz v11, :cond_a

    iget-wide v12, v4, Lay6;->b:J

    invoke-interface {v11, v12, v13}, Lbc8;->request(J)V

    move-wide v11, v7

    goto :goto_2

    :cond_a
    invoke-static {v6}, Laa4;->j(Ljava/lang/String;)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_6
    iget-object v1, v4, Lay6;->c:Lbc8;

    if-eqz v1, :cond_b

    invoke-interface {v1}, Lbc8;->cancel()V

    throw v0

    :cond_b
    invoke-static {v6}, Laa4;->j(Ljava/lang/String;)V

    throw v5
.end method

.method public final m()J
    .locals 5

    iget-object v0, p0, Ld91;->d:Lcu0;

    sget-object v1, Lcu0;->SUSPEND:Lcu0;

    const-wide v2, 0x7fffffffffffffffL

    if-eq v0, v1, :cond_0

    return-wide v2

    :cond_0
    const/4 v0, -0x2

    iget p0, p0, Ld91;->c:I

    if-eq p0, v0, :cond_4

    const-wide/16 v0, 0x1

    if-eqz p0, :cond_3

    const v4, 0x7fffffff

    if-eq p0, v4, :cond_2

    int-to-long v2, p0

    cmp-long p0, v2, v0

    if-ltz p0, :cond_1

    return-wide v2

    :cond_1
    const-string p0, "Check failed."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_2
    return-wide v2

    :cond_3
    return-wide v0

    :cond_4
    sget-object p0, Lx81;->s1:Lx81$a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p0, Lx81$a;->b:I

    int-to-long v0, p0

    return-wide v0
.end method
