.class public final Lym0;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.bonuses.domain.BonusBlockInteractor$loadBonusesBlocks$2"
    f = "BonusBlockInteractor.kt"
    l = {
        0x63
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Ljava/util/List<",
        "+",
        "Lak0;",
        ">;",
        "Le02<",
        "-",
        "Lj59;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public l:Lwl0;

.field public m:Ljava/util/Iterator;

.field public n:Z

.field public o:I

.field public p:I

.field public q:I

.field public synthetic r:Ljava/lang/Object;

.field public final synthetic s:Lwl0;

.field public final synthetic t:Z


# direct methods
.method public constructor <init>(Lwl0;ZLe02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwl0;",
            "Z",
            "Le02<",
            "-",
            "Lym0;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lym0;->s:Lwl0;

    iput-boolean p2, p0, Lym0;->t:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Le02<",
            "*>;)",
            "Le02<",
            "Lj59;",
            ">;"
        }
    .end annotation

    new-instance v0, Lym0;

    iget-object v1, p0, Lym0;->s:Lwl0;

    iget-boolean p0, p0, Lym0;->t:Z

    invoke-direct {v0, v1, p0, p2}, Lym0;-><init>(Lwl0;ZLe02;)V

    iput-object p1, v0, Lym0;->r:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lym0;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lym0;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lym0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lym0;->q:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v6, :cond_0

    iget v2, v0, Lym0;->p:I

    iget v7, v0, Lym0;->o:I

    iget-boolean v8, v0, Lym0;->n:Z

    iget-object v9, v0, Lym0;->m:Ljava/util/Iterator;

    iget-object v10, v0, Lym0;->l:Lwl0;

    iget-object v11, v0, Lym0;->r:Ljava/lang/Object;

    check-cast v11, Ljava/util/List;

    invoke-static/range {p1 .. p1}, Lr57;->b(Ljava/lang/Object;)V

    move-object/from16 v19, v5

    const/16 v18, 0x0

    goto/16 :goto_14

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-object v5

    :cond_1
    invoke-static/range {p1 .. p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object v2, v0, Lym0;->r:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v2

    check-cast v8, Ljava/lang/Iterable;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lak0;

    invoke-virtual {v10}, Lak0;->f()Lak0$a;

    move-result-object v10

    if-nez v10, :cond_2

    const/4 v10, -0x1

    goto :goto_1

    :cond_2
    sget-object v11, Lwl0$a;->a:[I

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v10, v11, v10

    :goto_1
    packed-switch v10, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object v10, Lvu5;->a:Lvu5;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_1
    sget-object v10, Lyp6;->a:Lyp6;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_2
    sget-object v10, Lbv2;->a:Lbv2;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_3
    sget-object v10, Lxv3;->a:Lxv3;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_4
    sget-object v10, Lrc8;->a:Lrc8;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_5
    sget-object v10, Lg63;->a:Lg63;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_6
    new-instance v10, Lwf6;

    invoke-direct {v10}, Lwf6;-><init>()V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_7
    sget-object v10, Lis3;->a:Lis3;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_8
    sget-object v10, Li71;->a:Li71;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_9
    sget-object v10, Lu58;->a:Lu58;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_a
    sget-object v10, Ljw0;->a:Ljw0;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object v9, v0, Lym0;->s:Lwl0;

    iget-object v10, v9, Lwl0;->g:Lz68;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10, v5, v7}, Lz68;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    iget-boolean v8, v0, Lym0;->t:Z

    move-object v11, v2

    move-object v10, v9

    const/4 v2, 0x0

    move-object v9, v7

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v12, v2, 0x1

    if-ltz v2, :cond_2c

    check-cast v7, Lak0;

    iput-object v11, v0, Lym0;->r:Ljava/lang/Object;

    iput-object v10, v0, Lym0;->l:Lwl0;

    iput-object v9, v0, Lym0;->m:Ljava/util/Iterator;

    iput-boolean v8, v0, Lym0;->n:Z

    iput v12, v0, Lym0;->o:I

    iput v2, v0, Lym0;->p:I

    iput v6, v0, Lym0;->q:I

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7}, Lak0;->a()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7}, Lak0;->b()I

    move-result v15

    invoke-virtual {v7}, Lak0;->c()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v7}, Lak0;->d()Lak0$a;

    move-result-object v17

    invoke-virtual {v7}, Lak0;->e()Ljava/util/List;

    move-result-object v7

    const-string v18, ""

    if-nez v16, :cond_4

    move-object/from16 p1, v18

    goto :goto_3

    :cond_4
    move-object/from16 p1, v16

    :goto_3
    if-nez v14, :cond_5

    move-object/from16 v14, v18

    :cond_5
    if-nez v17, :cond_6

    const/4 v3, -0x1

    :goto_4
    const/16 v18, 0x0

    goto :goto_5

    :cond_6
    sget-object v16, Lwl0$a;->a:[I

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->ordinal()I

    move-result v18

    aget v16, v16, v18

    move/from16 v3, v16

    goto :goto_4

    :goto_5
    const/4 v4, 0x2

    move-object/from16 v19, v5

    const/4 v5, 0x6

    const/4 v6, 0x5

    if-eq v3, v4, :cond_a

    const/4 v4, 0x3

    if-eq v3, v4, :cond_9

    if-eq v3, v6, :cond_8

    if-eq v3, v5, :cond_7

    sget-object v3, Lsq0;->NOT_IMPLEMENTED:Lsq0;

    goto :goto_6

    :cond_7
    sget-object v3, Lsq0;->FAVORITE_PREVIEWS:Lsq0;

    goto :goto_6

    :cond_8
    sget-object v3, Lsq0;->TOP_FLOW:Lsq0;

    goto :goto_6

    :cond_9
    sget-object v3, Lsq0;->CATEGORIES:Lsq0;

    goto :goto_6

    :cond_a
    sget-object v3, Lsq0;->SPECIALS:Lsq0;

    :goto_6
    if-nez v17, :cond_b

    const/4 v4, -0x1

    goto :goto_7

    :cond_b
    sget-object v4, Lwl0$a;->a:[I

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->ordinal()I

    move-result v20

    aget v4, v4, v20

    :goto_7
    if-eq v4, v6, :cond_e

    if-eq v4, v5, :cond_e

    invoke-static/range {p1 .. p1}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    invoke-static {v14}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    new-instance v4, Lqw8;

    move-object/from16 v5, p1

    invoke-direct {v4, v15, v5, v14, v3}, Lqw8;-><init>(ILjava/lang/String;Ljava/lang/String;Lsq0;)V

    const/4 v3, 0x1

    new-array v5, v3, [Lpz3;

    aput-object v4, v5, v18

    invoke-static {v5}, Lu96;->k([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v4

    goto :goto_8

    :cond_c
    move-object/from16 v5, p1

    const/4 v3, 0x1

    invoke-static {v5}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d

    new-instance v4, Lhw8;

    invoke-direct {v4, v5}, Lhw8;-><init>(Ljava/lang/String;)V

    new-array v5, v3, [Lpz3;

    aput-object v4, v5, v18

    invoke-static {v5}, Lu96;->k([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v4

    goto :goto_8

    :cond_d
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :goto_8
    const/4 v14, 0x1

    goto :goto_a

    :cond_e
    move-object/from16 v5, p1

    iget-object v4, v10, Lwl0;->b:Ljf6;

    invoke-interface {v4}, Ljf6;->V()Z

    move-result v4

    const-string v6, "\u0421\u043c\u043e\u0442\u0440\u0435\u0442\u044c \u0432\u0441\u0435"

    if-eqz v4, :cond_10

    invoke-static {v14}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_f

    move-object v14, v6

    :cond_f
    new-instance v4, Lww8;

    invoke-direct {v4, v15, v5, v14, v3}, Lww8;-><init>(ILjava/lang/String;Ljava/lang/String;Lsq0;)V

    const/4 v14, 0x1

    new-array v3, v14, [Lpz3;

    aput-object v4, v3, v18

    invoke-static {v3}, Lu96;->k([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    :goto_9
    move-object v4, v3

    goto :goto_a

    :cond_10
    const/4 v14, 0x1

    new-instance v4, Lqw8;

    invoke-direct {v4, v15, v5, v6, v3}, Lqw8;-><init>(ILjava/lang/String;Ljava/lang/String;Lsq0;)V

    new-array v3, v14, [Lpz3;

    aput-object v4, v3, v18

    invoke-static {v3}, Lu96;->k([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_9

    :goto_a
    if-nez v17, :cond_11

    const/4 v3, -0x1

    goto :goto_b

    :cond_11
    sget-object v3, Lwl0$a;->a:[I

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v3, v3, v5

    :goto_b
    sget-object v5, Lkx2;->b:Lkx2;

    packed-switch v3, :pswitch_data_1

    goto/16 :goto_12

    :pswitch_b
    if-nez v7, :cond_12

    move-object v7, v5

    :cond_12
    check-cast v7, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_13
    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lak0$b;

    invoke-virtual {v5}, Lak0$b;->d()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_14

    new-instance v7, Lwu5$a;

    invoke-virtual {v5}, Lak0$b;->c()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5}, Lak0$b;->b()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v15, v5, v6}, Lwu5$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_14
    move-object/from16 v7, v19

    :goto_d
    if-eqz v7, :cond_13

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_15
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_16

    new-instance v4, Lwu5;

    invoke-direct {v4, v3}, Lwu5;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_16
    iget-object v3, v10, Lwl0;->g:Lz68;

    :goto_e
    invoke-virtual {v3}, Lz68;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/util/List;

    check-cast v5, Ljava/util/Collection;

    invoke-static {v5}, Lqn1;->v0(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move/from16 v7, v18

    :goto_f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_18

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lpz3;

    instance-of v14, v15, Lvu5;

    if-nez v14, :cond_19

    instance-of v14, v15, Lwu5;

    if-eqz v14, :cond_17

    goto :goto_10

    :cond_17
    add-int/lit8 v7, v7, 0x1

    const/4 v14, 0x1

    goto :goto_f

    :cond_18
    const/4 v7, -0x1

    :cond_19
    :goto_10
    invoke-static {v5}, Lu96;->f(Ljava/util/Collection;)Ly74;

    move-result-object v6

    invoke-virtual {v6, v7}, Ly74;->c(I)Z

    move-result v6

    if-eqz v6, :cond_1a

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v5, v7, v13}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    goto :goto_11

    :cond_1a
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_11
    invoke-virtual {v3, v4, v5}, Lz68;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    :goto_12
    sget-object v3, Lj59;->a:Lj59;

    goto/16 :goto_13

    :cond_1b
    const/4 v14, 0x1

    goto :goto_e

    :pswitch_c
    invoke-virtual {v10, v13, v0}, Lwl0;->c(Ljava/util/ArrayList;Lf02;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, La32;->COROUTINE_SUSPENDED:La32;

    if-ne v3, v4, :cond_1c

    goto/16 :goto_13

    :cond_1c
    sget-object v3, Lj59;->a:Lj59;

    goto/16 :goto_13

    :pswitch_d
    invoke-virtual {v10, v13, v0}, Lwl0;->d(Ljava/util/ArrayList;Lf02;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, La32;->COROUTINE_SUSPENDED:La32;

    if-ne v3, v4, :cond_1d

    goto/16 :goto_13

    :cond_1d
    sget-object v3, Lj59;->a:Lj59;

    goto/16 :goto_13

    :pswitch_e
    invoke-virtual {v10, v13, v8, v0}, Lwl0;->g(Ljava/util/ArrayList;ZLf02;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, La32;->COROUTINE_SUSPENDED:La32;

    if-ne v3, v4, :cond_1e

    goto/16 :goto_13

    :cond_1e
    sget-object v3, Lj59;->a:Lj59;

    goto :goto_13

    :pswitch_f
    invoke-virtual {v10, v13, v0}, Lwl0;->i(Ljava/util/ArrayList;Lf02;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, La32;->COROUTINE_SUSPENDED:La32;

    if-ne v3, v4, :cond_1f

    goto :goto_13

    :cond_1f
    sget-object v3, Lj59;->a:Lj59;

    goto :goto_13

    :pswitch_10
    invoke-virtual {v10, v13, v4, v0}, Lwl0;->e(Ljava/util/ArrayList;Ljava/util/ArrayList;Lf02;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, La32;->COROUTINE_SUSPENDED:La32;

    if-ne v3, v4, :cond_20

    goto :goto_13

    :cond_20
    sget-object v3, Lj59;->a:Lj59;

    goto :goto_13

    :pswitch_11
    invoke-virtual {v10, v13, v15, v4, v0}, Lwl0;->j(Ljava/util/ArrayList;ILjava/util/ArrayList;Lf02;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, La32;->COROUTINE_SUSPENDED:La32;

    if-ne v3, v4, :cond_21

    goto :goto_13

    :cond_21
    sget-object v3, Lj59;->a:Lj59;

    goto :goto_13

    :pswitch_12
    if-nez v7, :cond_22

    move-object v7, v5

    :cond_22
    invoke-virtual {v10, v13, v7, v4, v0}, Lwl0;->f(Ljava/util/ArrayList;Ljava/util/List;Ljava/util/ArrayList;Lf02;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, La32;->COROUTINE_SUSPENDED:La32;

    if-ne v3, v4, :cond_23

    goto :goto_13

    :cond_23
    sget-object v3, Lj59;->a:Lj59;

    goto :goto_13

    :pswitch_13
    invoke-virtual {v10, v13, v4, v0}, Lwl0;->b(Ljava/util/ArrayList;Ljava/util/ArrayList;Lf02;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, La32;->COROUTINE_SUSPENDED:La32;

    if-ne v3, v4, :cond_24

    goto :goto_13

    :cond_24
    sget-object v3, Lj59;->a:Lj59;

    goto :goto_13

    :pswitch_14
    invoke-virtual {v10, v13, v4, v8, v0}, Lwl0;->h(Ljava/util/ArrayList;Ljava/util/ArrayList;ZLf02;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, La32;->COROUTINE_SUSPENDED:La32;

    if-ne v3, v4, :cond_25

    goto :goto_13

    :cond_25
    sget-object v3, Lj59;->a:Lj59;

    goto :goto_13

    :pswitch_15
    invoke-virtual {v10, v13, v0}, Lwl0;->a(Ljava/util/ArrayList;Lf02;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, La32;->COROUTINE_SUSPENDED:La32;

    if-ne v3, v4, :cond_26

    goto :goto_13

    :cond_26
    sget-object v3, Lj59;->a:Lj59;

    :goto_13
    if-ne v3, v1, :cond_27

    return-object v1

    :cond_27
    move v7, v12

    :goto_14
    invoke-static {v11}, Lu96;->g(Ljava/util/List;)I

    move-result v3

    if-ne v3, v2, :cond_2b

    iget-object v2, v10, Lwl0;->g:Lz68;

    :cond_28
    invoke-virtual {v2}, Lz68;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/util/List;

    check-cast v4, Ljava/util/Collection;

    invoke-static {v4}, Lqn1;->v0(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_29
    :goto_15
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    instance-of v13, v12, Lis4;

    if-eqz v13, :cond_29

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_2a
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {v2, v3, v4}, Lz68;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    :cond_2b
    move v2, v7

    move-object/from16 v5, v19

    const/4 v6, 0x1

    goto/16 :goto_2

    :cond_2c
    move-object/from16 v19, v5

    invoke-static {}, Lu96;->o()V

    throw v19

    :cond_2d
    sget-object v0, Lj59;->a:Lj59;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch
.end method
