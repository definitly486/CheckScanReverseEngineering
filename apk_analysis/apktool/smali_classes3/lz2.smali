.class public final Llz2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le94;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llz2$a;
    }
.end annotation


# instance fields
.field public final a:Lsy6;

.field public final b:Lgk;

.field public final c:Lnj;

.field public final d:Lp95;


# direct methods
.method public constructor <init>(Lsy6;Lgk;Lnj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llz2;->a:Lsy6;

    iput-object p2, p0, Llz2;->b:Lgk;

    iput-object p3, p0, Llz2;->c:Lnj;

    new-instance p2, Lp95;

    invoke-direct {p2, p1, p3}, Lp95;-><init>(Lsy6;Lnj;)V

    iput-object p2, p0, Llz2;->d:Lp95;

    return-void
.end method


# virtual methods
.method public final a(Lfz6;Lf02;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    move-object/from16 v0, p2

    iget-object v2, v1, Llz2;->d:Lp95;

    instance-of v3, v0, Lqz2;

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Lqz2;

    iget v4, v3, Lqz2;->o:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lqz2;->o:I

    :goto_0
    move-object v9, v3

    goto :goto_1

    :cond_0
    new-instance v3, Lqz2;

    invoke-direct {v3, v1, v0}, Lqz2;-><init>(Llz2;Lf02;)V

    goto :goto_0

    :goto_1
    iget-object v0, v9, Lqz2;->m:Ljava/lang/Object;

    sget-object v10, La32;->COROUTINE_SUSPENDED:La32;

    iget v3, v9, Lqz2;->o:I

    const/4 v4, 0x0

    const/4 v11, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v11, :cond_1

    iget-object v1, v9, Lqz2;->l:Lfz6;

    :try_start_0
    invoke-static {v0}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    move-object v7, v1

    goto/16 :goto_7

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {v0}, Lr57;->b(Ljava/lang/Object;)V

    move-object v12, v10

    :try_start_1
    iget-object v10, v7, Lfz6;->d:Lb24;

    iget-object v0, v10, Lb24;->b:Ljava/lang/Object;

    iget-object v3, v7, Lfz6;->e:Lt18;

    iget-object v5, v7, Lfz6;->f:La13;

    iget-object v6, v1, Llz2;->c:Lnj;

    invoke-virtual {v6, v10, v3}, Lnj;->c(Lb24;Lt18;)Lzz5;

    move-result-object v6

    iget-object v8, v6, Lzz5;->c:Lmd7;

    iget-object v13, v1, Llz2;->a:Lsy6;

    iget-object v13, v13, Lsy6;->d:Lfs1;

    iget-object v13, v13, Lfs1;->b:Ljava/util/List;

    move-object v14, v13

    check-cast v14, Ljava/util/Collection;

    invoke-interface {v14}, Ljava/util/Collection;->size()I

    move-result v14

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v14, :cond_4

    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v15, v16

    check-cast v15, Lb36;

    iget-object v11, v15, Lb36;->b:Ljava/lang/Object;

    check-cast v11, Lg05;

    iget-object v15, v15, Lb36;->c:Ljava/lang/Object;

    check-cast v15, Lne4;

    invoke-interface {v15, v0}, Lne4;->e(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v11, v0, v6}, Lg05;->a(Ljava/lang/Object;Lzz5;)Lb99;

    move-result-object v11

    if-eqz v11, :cond_3

    move-object v0, v11

    :cond_3
    add-int/lit8 v4, v4, 0x1

    const/4 v11, 0x1

    goto :goto_2

    :cond_4
    move-object v11, v12

    invoke-virtual {v2, v10, v0, v6, v5}, Lp95;->b(Lb24;Ljava/lang/Object;Lzz5;La13;)Lo95$b;

    move-result-object v12

    if-eqz v12, :cond_5

    invoke-virtual {v2, v10, v12, v3, v8}, Lp95;->a(Lb24;Lo95$b;Lt18;Lmd7;)Lo95$c;

    move-result-object v2

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_7

    :cond_5
    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_9

    iget-object v0, v2, Lo95$c;->b:Ljava/util/Map;

    new-instance v8, Lzc8;

    iget-object v9, v2, Lo95$c;->a:Lx04;

    sget-object v11, Lz82;->MEMORY_CACHE:Lz82;

    const-string v1, "coil#disk_cache_key"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_6

    check-cast v1, Ljava/lang/String;

    move-object v13, v1

    goto :goto_4

    :cond_6
    const/4 v13, 0x0

    :goto_4
    const-string v1, "coil#is_sampled"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_7

    move-object v4, v0

    check-cast v4, Ljava/lang/Boolean;

    goto :goto_5

    :cond_7
    const/4 v4, 0x0

    :goto_5
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    move v14, v15

    goto :goto_6

    :cond_8
    const/4 v14, 0x0

    :goto_6
    iget-boolean v15, v7, Lfz6;->g:Z

    invoke-direct/range {v8 .. v15}, Lzc8;-><init>(Lx04;Lb24;Lz82;Lo95$b;Ljava/lang/String;ZZ)V

    return-object v8

    :cond_9
    move-object v2, v10

    iget-object v10, v2, Lb24;->g:Lo22;

    move-object v3, v0

    new-instance v0, Lrz2;

    const/4 v8, 0x0

    move-object v4, v6

    move-object v6, v12

    invoke-direct/range {v0 .. v8}, Lrz2;-><init>(Llz2;Lb24;Ljava/lang/Object;Lzz5;La13;Lo95$b;Le94$a;Le02;)V

    iput-object v7, v9, Lqz2;->l:Lfz6;

    const/4 v1, 0x1

    iput v1, v9, Lqz2;->o:I

    invoke-static {v10, v0, v9}, Lav0;->d(Lo22;Lbm3;Le02;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v0, v11, :cond_a

    return-object v11

    :cond_a
    return-object v0

    :goto_7
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_b

    invoke-interface {v7}, Le94$a;->getRequest()Lb24;

    move-result-object v1

    invoke-static {v1, v0}, Lrb9;->a(Lb24;Ljava/lang/Throwable;)Lu03;

    move-result-object v0

    return-object v0

    :cond_b
    throw v0
.end method

.method public final b(Lx48;Lfs1;Lb24;Ljava/lang/Object;Lzz5;La13;Lf02;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p7, Lmz2;

    if-eqz v0, :cond_0

    move-object v0, p7

    check-cast v0, Lmz2;

    iget v1, v0, Lmz2;->v:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lmz2;->v:I

    goto :goto_0

    :cond_0
    new-instance v0, Lmz2;

    invoke-direct {v0, p0, p7}, Lmz2;-><init>(Llz2;Lf02;)V

    :goto_0
    iget-object p0, v0, Lmz2;->t:Ljava/lang/Object;

    sget-object p7, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, v0, Lmz2;->v:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v3, :cond_1

    iget p1, v0, Lmz2;->s:I

    iget-object p2, v0, Lmz2;->q:La13;

    iget-object p3, v0, Lmz2;->p:Lzz5;

    iget-object p4, v0, Lmz2;->o:Ljava/lang/Object;

    iget-object p5, v0, Lmz2;->n:Lb24;

    iget-object p6, v0, Lmz2;->m:Lfs1;

    iget-object v1, v0, Lmz2;->l:Lx48;

    invoke-static {p0}, Lr57;->b(Ljava/lang/Object;)V

    move-object v5, p6

    move-object p6, p2

    move-object p2, v5

    move-object v5, p5

    move-object p5, p3

    move-object p3, v5

    goto :goto_4

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v2

    :cond_2
    invoke-static {p0}, Lr57;->b(Ljava/lang/Object;)V

    const/4 p0, 0x0

    :goto_1
    iget-object v1, p2, Lfs1;->g:Lfh8;

    invoke-virtual {v1}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_2
    if-ge p0, v1, :cond_4

    iget-object v4, p2, Lfs1;->g:Lfh8;

    invoke-virtual {v4}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ltd2$a;

    invoke-interface {v4, p1, p5}, Ltd2$a;->a(Lx48;Lzz5;)Ltd2;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance v1, Lb36;

    invoke-direct {v1, v4, p0}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    :cond_4
    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_9

    iget-object p0, v1, Lb36;->b:Ljava/lang/Object;

    check-cast p0, Ltd2;

    iget-object v1, v1, Lb36;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, v0, Lmz2;->l:Lx48;

    iput-object p2, v0, Lmz2;->m:Lfs1;

    iput-object p3, v0, Lmz2;->n:Lb24;

    iput-object p4, v0, Lmz2;->o:Ljava/lang/Object;

    iput-object p5, v0, Lmz2;->p:Lzz5;

    iput-object p6, v0, Lmz2;->q:La13;

    iput-object p0, v0, Lmz2;->r:Ltd2;

    iput v1, v0, Lmz2;->s:I

    iput v3, v0, Lmz2;->v:I

    invoke-interface {p0, v0}, Ltd2;->a(Lf02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p7, :cond_5

    return-object p7

    :cond_5
    move v5, v1

    move-object v1, p1

    move p1, v5

    :goto_4
    check-cast p0, Lqd2;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p0, :cond_8

    new-instance p1, Llz2$a;

    iget-object p2, p0, Lqd2;->a:Lx04;

    iget-boolean p0, p0, Lqd2;->b:Z

    iget-object p3, v1, Lx48;->c:Lz82;

    iget-object p4, v1, Lx48;->a:Lh24;

    instance-of p5, p4, Ln93;

    if-eqz p5, :cond_6

    check-cast p4, Ln93;

    goto :goto_5

    :cond_6
    move-object p4, v2

    :goto_5
    if-eqz p4, :cond_7

    iget-object v2, p4, Ln93;->d:Ljava/lang/String;

    :cond_7
    invoke-direct {p1, p2, p0, p3, v2}, Llz2$a;-><init>(Lx04;ZLz82;Ljava/lang/String;)V

    return-object p1

    :cond_8
    move p0, p1

    move-object p1, v1

    goto/16 :goto_1

    :cond_9
    const-string p0, "Unable to create a decoder that supports: "

    invoke-static {p4, p0}, Lvh;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2
.end method

.method public final c(Lb24;Ljava/lang/Object;Lzz5;La13;Lf02;)Ljava/lang/Object;
    .locals 15

    move-object/from16 v1, p5

    instance-of v2, v1, Lnz2;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lnz2;

    iget v3, v2, Lnz2;->u:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lnz2;->u:I

    :goto_0
    move-object v6, v2

    goto :goto_1

    :cond_0
    new-instance v2, Lnz2;

    invoke-direct {v2, p0, v1}, Lnz2;-><init>(Llz2;Lf02;)V

    goto :goto_0

    :goto_1
    iget-object v1, v6, Lnz2;->s:Ljava/lang/Object;

    sget-object v9, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v6, Lnz2;->u:I

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v3, 0x1

    const/4 v12, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v3, :cond_3

    if-eq v2, v11, :cond_2

    if-ne v2, v10, :cond_1

    invoke-static {v1}, Lr57;->b(Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-object v12

    :cond_2
    iget-object v2, v6, Lnz2;->o:Lr07;

    iget-object v0, v6, Lnz2;->n:Ljava/lang/Object;

    check-cast v0, Lr07;

    iget-object v3, v6, Lnz2;->m:Ljava/lang/Object;

    check-cast v3, La13;

    iget-object v4, v6, Lnz2;->l:Lb24;

    :try_start_0
    invoke-static {v1}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v14, v6

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    :cond_3
    iget-object v2, v6, Lnz2;->r:Lr07;

    iget-object v3, v6, Lnz2;->q:Lr07;

    iget-object v4, v6, Lnz2;->p:Lr07;

    iget-object v5, v6, Lnz2;->o:Lr07;

    iget-object v7, v6, Lnz2;->n:Ljava/lang/Object;

    check-cast v7, La13;

    iget-object v8, v6, Lnz2;->m:Ljava/lang/Object;

    iget-object v13, v6, Lnz2;->l:Lb24;

    :try_start_1
    invoke-static {v1}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v14, v6

    move-object v6, v5

    move-object v5, v8

    move-object v8, v4

    move-object v4, v13

    goto/16 :goto_2

    :catchall_1
    move-exception v0

    move-object v2, v3

    goto/16 :goto_a

    :cond_4
    invoke-static {v1}, Lr57;->b(Ljava/lang/Object;)V

    new-instance v7, Lr07;

    invoke-direct {v7}, Lr07;-><init>()V

    move-object/from16 v1, p3

    iput-object v1, v7, Lr07;->b:Ljava/lang/Object;

    new-instance v8, Lr07;

    invoke-direct {v8}, Lr07;-><init>()V

    iget-object v1, p0, Llz2;->a:Lsy6;

    iget-object v1, v1, Lsy6;->d:Lfs1;

    iput-object v1, v8, Lr07;->b:Ljava/lang/Object;

    new-instance v13, Lr07;

    invoke-direct {v13}, Lr07;-><init>()V

    :try_start_2
    iget-object v1, p0, Llz2;->c:Lnj;

    iget-object v2, v7, Lr07;->b:Ljava/lang/Object;

    check-cast v2, Lzz5;

    invoke-virtual {v1, v2}, Lnj;->d(Lzz5;)Lzz5;

    move-result-object v1

    iput-object v1, v7, Lr07;->b:Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v8, Lr07;->b:Ljava/lang/Object;

    check-cast v1, Lfs1;

    iget-object v2, v7, Lr07;->b:Ljava/lang/Object;

    move-object v4, v2

    check-cast v4, Lzz5;

    move-object/from16 v2, p1

    iput-object v2, v6, Lnz2;->l:Lb24;

    move-object/from16 v5, p2

    iput-object v5, v6, Lnz2;->m:Ljava/lang/Object;

    move-object/from16 v14, p4

    iput-object v14, v6, Lnz2;->n:Ljava/lang/Object;

    iput-object v7, v6, Lnz2;->o:Lr07;

    iput-object v8, v6, Lnz2;->p:Lr07;

    iput-object v13, v6, Lnz2;->q:Lr07;

    iput-object v13, v6, Lnz2;->r:Lr07;

    iput v3, v6, Lnz2;->u:I

    move-object v0, p0

    move-object v3, v5

    move-object v5, v14

    invoke-virtual/range {v0 .. v6}, Llz2;->d(Lfs1;Lb24;Ljava/lang/Object;Lzz5;La13;Lf02;)Ljava/lang/Object;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v14, v6

    if-ne v1, v9, :cond_5

    goto/16 :goto_8

    :cond_5
    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object v6, v7

    move-object v2, v13

    move-object v3, v2

    move-object/from16 v7, p4

    :goto_2
    :try_start_3
    iput-object v1, v2, Lr07;->b:Ljava/lang/Object;

    iget-object v0, v3, Lr07;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lb83;

    instance-of v2, v1, Lx48;

    if-eqz v2, :cond_7

    iget-object v13, v4, Lb24;->h:Lo22;

    new-instance v0, Loz2;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v2, v3

    move-object v3, v8

    const/4 v8, 0x0

    move-object v1, p0

    :try_start_4
    invoke-direct/range {v0 .. v8}, Loz2;-><init>(Llz2;Lr07;Lr07;Lb24;Ljava/lang/Object;Lr07;La13;Le02;)V

    iput-object v4, v14, Lnz2;->l:Lb24;

    iput-object v7, v14, Lnz2;->m:Ljava/lang/Object;

    iput-object v6, v14, Lnz2;->n:Ljava/lang/Object;

    iput-object v2, v14, Lnz2;->o:Lr07;

    iput-object v12, v14, Lnz2;->p:Lr07;

    iput-object v12, v14, Lnz2;->q:Lr07;

    iput-object v12, v14, Lnz2;->r:Lr07;

    iput v11, v14, Lnz2;->u:I

    invoke-static {v13, v0, v14}, Lav0;->d(Lo22;Lbm3;Le02;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v9, :cond_6

    goto :goto_8

    :cond_6
    move-object v0, v6

    move-object v3, v7

    :goto_3
    check-cast v1, Llz2$a;

    move-object v6, v0

    move-object v7, v3

    :goto_4
    move-object v3, v2

    goto :goto_5

    :cond_7
    move-object v2, v3

    instance-of v1, v1, Lk14;

    if-eqz v1, :cond_c

    new-instance v1, Llz2$a;

    move-object v3, v0

    check-cast v3, Lk14;

    iget-object v3, v3, Lk14;->a:Lx04;

    move-object v5, v0

    check-cast v5, Lk14;

    iget-boolean v5, v5, Lk14;->b:Z

    check-cast v0, Lk14;

    iget-object v0, v0, Lk14;->c:Lz82;

    invoke-direct {v1, v3, v5, v0, v12}, Llz2$a;-><init>(Lx04;ZLz82;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :goto_5
    iget-object v0, v3, Lr07;->b:Ljava/lang/Object;

    instance-of v2, v0, Lx48;

    if-eqz v2, :cond_8

    check-cast v0, Lx48;

    goto :goto_6

    :cond_8
    move-object v0, v12

    :goto_6
    if-eqz v0, :cond_9

    iget-object v0, v0, Lx48;->a:Lh24;

    if-eqz v0, :cond_9

    :try_start_5
    invoke-static {v0}, Lrk3;->d(Ljava/lang/AutoCloseable;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_7

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    :cond_9
    :goto_7
    iget-object v0, v6, Lr07;->b:Ljava/lang/Object;

    check-cast v0, Lzz5;

    iput-object v12, v14, Lnz2;->l:Lb24;

    iput-object v12, v14, Lnz2;->m:Ljava/lang/Object;

    iput-object v12, v14, Lnz2;->n:Ljava/lang/Object;

    iput-object v12, v14, Lnz2;->o:Lr07;

    iput-object v12, v14, Lnz2;->p:Lr07;

    iput-object v12, v14, Lnz2;->q:Lr07;

    iput-object v12, v14, Lnz2;->r:Lr07;

    iput v10, v14, Lnz2;->u:I

    invoke-static {v1, v4, v0, v7, v14}, Ltz2;->a(Llz2$a;Lb24;Lzz5;La13;Lf02;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v9, :cond_a

    :goto_8
    return-object v9

    :cond_a
    :goto_9
    check-cast v1, Llz2$a;

    iget-object v0, v1, Llz2$a;->a:Lx04;

    sget-object v2, Lsb9;->a:[Landroid/graphics/Bitmap$Config;

    instance-of v2, v0, Ldj0;

    if-eqz v2, :cond_b

    check-cast v0, Ldj0;

    iget-object v0, v0, Ldj0;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    :cond_b
    return-object v1

    :cond_c
    :try_start_6
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_2
    move-exception v0

    move-object v2, v13

    :goto_a
    iget-object v1, v2, Lr07;->b:Ljava/lang/Object;

    instance-of v2, v1, Lx48;

    if-eqz v2, :cond_d

    move-object v12, v1

    check-cast v12, Lx48;

    :cond_d
    if-eqz v12, :cond_e

    iget-object v1, v12, Lx48;->a:Lh24;

    if-eqz v1, :cond_e

    :try_start_7
    invoke-static {v1}, Lrk3;->d(Ljava/lang/AutoCloseable;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_b

    :catch_2
    move-exception v0

    throw v0

    :catch_3
    :cond_e
    :goto_b
    throw v0
.end method

.method public final d(Lfs1;Lb24;Ljava/lang/Object;Lzz5;La13;Lf02;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p6, Lpz2;

    if-eqz v0, :cond_0

    move-object v0, p6

    check-cast v0, Lpz2;

    iget v1, v0, Lpz2;->u:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lpz2;->u:I

    goto :goto_0

    :cond_0
    new-instance v0, Lpz2;

    invoke-direct {v0, p0, p6}, Lpz2;-><init>(Llz2;Lf02;)V

    :goto_0
    iget-object p6, v0, Lpz2;->s:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lpz2;->u:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget p1, v0, Lpz2;->r:I

    iget-object p2, v0, Lpz2;->p:La13;

    iget-object p3, v0, Lpz2;->o:Lzz5;

    iget-object p4, v0, Lpz2;->n:Ljava/lang/Object;

    iget-object p5, v0, Lpz2;->m:Lb24;

    iget-object v2, v0, Lpz2;->l:Lfs1;

    invoke-static {p6}, Lr57;->b(Ljava/lang/Object;)V

    move-object v7, v2

    move v2, p1

    move-object p1, v7

    move-object v7, p5

    move-object p5, p2

    move-object p2, v7

    move-object v7, p4

    move-object p4, p3

    move-object p3, v7

    goto/16 :goto_4

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p6}, Lr57;->b(Ljava/lang/Object;)V

    const/4 p6, 0x0

    :goto_1
    iget-object v2, p1, Lfs1;->f:Lfh8;

    invoke-virtual {v2}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_2
    if-ge p6, v2, :cond_4

    iget-object v5, p1, Lfs1;->f:Lfh8;

    invoke-virtual {v5}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lb36;

    iget-object v6, v5, Lb36;->b:Ljava/lang/Object;

    check-cast v6, Lu83$a;

    iget-object v5, v5, Lb36;->c:Ljava/lang/Object;

    check-cast v5, Lne4;

    invoke-interface {v5, p3}, Lne4;->e(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, p0, Llz2;->a:Lsy6;

    invoke-interface {v6, p3, p4, v5}, Lu83$a;->a(Ljava/lang/Object;Lzz5;Lsy6;)Lu83;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    new-instance v2, Lb36;

    invoke-direct {v2, v5, p6}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    add-int/lit8 p6, p6, 0x1

    goto :goto_2

    :cond_4
    move-object v2, v3

    :goto_3
    if-eqz v2, :cond_9

    iget-object p6, v2, Lb36;->b:Ljava/lang/Object;

    check-cast p6, Lu83;

    iget-object v2, v2, Lb36;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    add-int/2addr v2, v4

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, v0, Lpz2;->l:Lfs1;

    iput-object p2, v0, Lpz2;->m:Lb24;

    iput-object p3, v0, Lpz2;->n:Ljava/lang/Object;

    iput-object p4, v0, Lpz2;->o:Lzz5;

    iput-object p5, v0, Lpz2;->p:La13;

    iput-object p6, v0, Lpz2;->q:Lu83;

    iput v2, v0, Lpz2;->r:I

    iput v4, v0, Lpz2;->u:I

    invoke-interface {p6, v0}, Lu83;->a(Lpz2;)Ljava/lang/Object;

    move-result-object p6

    if-ne p6, v1, :cond_5

    return-object v1

    :cond_5
    :goto_4
    check-cast p6, Lb83;

    :try_start_0
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p6, :cond_6

    return-object p6

    :cond_6
    move p6, v2

    goto :goto_1

    :catchall_0
    move-exception p0

    instance-of p1, p6, Lx48;

    if-eqz p1, :cond_7

    move-object v3, p6

    check-cast v3, Lx48;

    :cond_7
    if-eqz v3, :cond_8

    iget-object p1, v3, Lx48;->a:Lh24;

    if-eqz p1, :cond_8

    :try_start_1
    invoke-static {p1}, Lrk3;->d(Ljava/lang/AutoCloseable;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_0
    move-exception p0

    throw p0

    :catch_1
    :cond_8
    :goto_5
    throw p0

    :cond_9
    const-string p0, "Unable to create a fetcher that supports: "

    invoke-static {p3, p0}, Lvh;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v3
.end method
