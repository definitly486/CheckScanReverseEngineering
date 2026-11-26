.class public final Lcj4;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Ljj4;",
        "Lwr5<",
        "+",
        "Laj4$a;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic f:Laj4;


# direct methods
.method public constructor <init>(Laj4;)V
    .locals 0

    iput-object p1, p0, Lcj4;->f:Laj4;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26

    move-object/from16 v0, p1

    check-cast v0, Ljj4;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v2, p0

    iget-object v2, v2, Lcj4;->f:Laj4;

    iget-object v3, v2, Laj4;->f:Lhi0;

    invoke-virtual {v0}, Ljj4;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lhi0;->onNext(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljj4;->d()Lc06;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lc06;->c()Ljava/lang/Boolean;

    move-result-object v3

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v3, v5}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    new-instance v3, Lij4;

    invoke-virtual {v0}, Ljj4;->d()Lc06;

    move-result-object v5

    invoke-virtual {v5}, Lc06;->f()Lb06;

    move-result-object v5

    invoke-direct {v3, v5}, Lij4;-><init>(Lb06;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v3, Lnk4;

    invoke-virtual {v0}, Ljj4;->j()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lnk4;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljj4;->i()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v3, v6}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    new-instance v8, Lyj4;

    invoke-direct {v8, v7}, Lyj4;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljj4;->g()Ljj4$d;

    move-result-object v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v0}, Ljj4;->g()Ljj4$d;

    move-result-object v7

    if-eqz v7, :cond_26

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Lvi4;

    invoke-direct {v9}, Lvi4;-><init>()V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljj4;->f()Ljava/util/List;

    move-result-object v9

    check-cast v9, Ljava/lang/Iterable;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v12, v11

    check-cast v12, Ljj4$c;

    invoke-virtual {v12}, Ljj4$c;->e()Lqv6;

    move-result-object v12

    sget-object v13, Lqv6;->MULTI_CHOICE_IMAGE:Lqv6;

    if-ne v12, v13, :cond_4

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_6
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    const/4 v12, 0x2

    const-string v13, ""

    if-eqz v11, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljj4$c;

    invoke-virtual {v11}, Ljj4$c;->b()Ljava/util/List;

    move-result-object v14

    check-cast v14, Ljava/util/Collection;

    if-eqz v14, :cond_6

    invoke-interface {v14}, Ljava/util/Collection;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v11}, Ljj4$c;->d()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11}, Ljj4$c;->c()Z

    move-result v15

    invoke-virtual {v11}, Ljj4$c;->a()Ljava/lang/String;

    move-result-object v5

    new-instance v4, Lrk4;

    invoke-direct {v4, v14, v5, v15}, Lrk4;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v11}, Ljj4$c;->b()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v4, v6}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v14

    invoke-direct {v5, v14}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljj4$b;

    invoke-virtual {v11}, Ljj4$c;->a()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v14}, Ljj4$b;->a()Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_8

    move-object/from16 v18, v13

    goto :goto_6

    :cond_8
    move-object/from16 v18, v15

    :goto_6
    invoke-virtual {v14}, Ljj4$b;->b()Ljava/lang/String;

    move-result-object v16

    new-instance v15, Lwi4;

    const/16 v17, 0x0

    const/16 v20, 0x1

    invoke-direct/range {v15 .. v20}, Lwi4;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    invoke-static {v12, v5}, Lqn1;->L(ILjava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v4, v6}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v5, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    new-instance v12, Lti4;

    invoke-static {v11}, Lqn1;->T(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lwi4;

    invoke-static {v11}, Lqn1;->c0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lwi4;

    invoke-direct {v12, v13, v11}, Lti4;-><init>(Lwi4;Lwi4;)V

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_a
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_4

    :cond_b
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljj4;->f()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_c
    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Ljj4$c;

    invoke-virtual {v10}, Ljj4$c;->e()Lqv6;

    move-result-object v10

    sget-object v11, Lqv6;->MULTI_CHOICE_TEXT:Lqv6;

    if-ne v10, v11, :cond_c

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_d
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_e
    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljj4$c;

    invoke-virtual {v9}, Ljj4$c;->b()Ljava/util/List;

    move-result-object v10

    check-cast v10, Ljava/util/Collection;

    if-eqz v10, :cond_e

    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_f

    goto :goto_9

    :cond_f
    invoke-virtual {v9}, Ljj4$c;->d()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Ljj4$c;->c()Z

    move-result v11

    invoke-virtual {v9}, Ljj4$c;->a()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Lrk4;

    invoke-direct {v15, v10, v14, v11}, Lrk4;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9}, Ljj4$c;->b()Ljava/util/List;

    move-result-object v10

    check-cast v10, Ljava/lang/Iterable;

    new-instance v11, Ljava/util/ArrayList;

    invoke-static {v10, v6}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v14

    invoke-direct {v11, v14}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_10

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljj4$b;

    invoke-virtual {v9}, Ljj4$c;->a()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v9}, Ljj4$c;->d()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v14}, Ljj4$b;->b()Ljava/lang/String;

    move-result-object v19

    new-instance v15, Lhi4;

    const/16 v17, 0x0

    const/16 v20, 0x1

    invoke-direct/range {v15 .. v20}, Lhi4;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_10
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_9

    :cond_11
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljj4;->e()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u2028"

    const-string v9, "\n"

    invoke-static {v4, v5, v9}, Lra8;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v9, 0x0

    if-nez v5, :cond_12

    new-instance v5, Lrk4;

    new-instance v10, Ljava/lang/String;

    invoke-direct {v10}, Ljava/lang/String;-><init>()V

    const/4 v11, 0x0

    invoke-direct {v5, v4, v10, v11}, Lrk4;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_b

    :cond_12
    move-object v5, v9

    :goto_b
    if-eqz v5, :cond_13

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    invoke-virtual {v0}, Ljj4;->f()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljj4$c;

    iget-object v11, v2, Laj4;->b:Li3;

    iget-object v14, v2, Laj4;->c:Ljf6;

    invoke-virtual {v10}, Ljj4$c;->e()Lqv6;

    move-result-object v15

    sget-object v16, Laj4$b;->a:[I

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    aget v15, v16, v15

    const/4 v6, 0x1

    if-eq v15, v6, :cond_1a

    if-eq v15, v12, :cond_18

    const/4 v6, 0x3

    if-eq v15, v6, :cond_16

    const/4 v6, 0x4

    if-eq v15, v6, :cond_14

    move-object v6, v9

    goto/16 :goto_13

    :cond_14
    new-instance v17, Lvk4;

    invoke-virtual {v10}, Ljj4$c;->a()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v10}, Ljj4$c;->c()Z

    move-result v19

    invoke-virtual {v10}, Ljj4$c;->d()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v10}, Ljj4$c;->f()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_15

    move-object/from16 v21, v13

    goto :goto_d

    :cond_15
    move-object/from16 v21, v6

    :goto_d
    const/16 v22, 0x0

    const/16 v23, 0x5

    invoke-direct/range {v17 .. v23}, Lvk4;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZI)V

    :goto_e
    move-object/from16 v6, v17

    goto/16 :goto_13

    :cond_16
    invoke-interface {v14}, Ljf6;->U0()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Li3;->d(Ljava/lang/String;)Z

    move-result v23

    new-instance v17, Lik4;

    invoke-virtual {v10}, Ljj4$c;->a()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v10}, Ljj4$c;->c()Z

    move-result v19

    invoke-virtual {v10}, Ljj4$c;->d()Ljava/lang/String;

    move-result-object v20

    if-eqz v23, :cond_17

    invoke-interface {v14}, Ljf6;->U0()Ljava/lang/String;

    move-result-object v6

    :goto_f
    move-object/from16 v21, v6

    goto :goto_10

    :cond_17
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6}, Ljava/lang/String;-><init>()V

    goto :goto_f

    :goto_10
    invoke-virtual {v10}, Ljj4$c;->e()Lqv6;

    move-result-object v6

    invoke-static {v6}, Laj4;->c(Lqv6;)I

    move-result v22

    invoke-virtual {v10}, Ljj4$c;->e()Lqv6;

    move-result-object v24

    invoke-direct/range {v17 .. v24}, Lik4;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IZLqv6;)V

    goto :goto_e

    :cond_18
    new-instance v18, Lik4;

    invoke-virtual {v10}, Ljj4$c;->a()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v10}, Ljj4$c;->c()Z

    move-result v20

    invoke-virtual {v10}, Ljj4$c;->d()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v10}, Ljj4$c;->f()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_19

    move-object/from16 v22, v13

    goto :goto_11

    :cond_19
    move-object/from16 v22, v6

    :goto_11
    invoke-virtual {v10}, Ljj4$c;->e()Lqv6;

    move-result-object v6

    invoke-static {v6}, Laj4;->c(Lqv6;)I

    move-result v23

    const/16 v24, 0x0

    invoke-virtual {v10}, Ljj4$c;->e()Lqv6;

    move-result-object v25

    invoke-direct/range {v18 .. v25}, Lik4;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IZLqv6;)V

    move-object/from16 v6, v18

    goto :goto_13

    :cond_1a
    invoke-interface {v14}, Ljf6;->c0()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Li3;->c(Ljava/lang/String;)Z

    move-result v6

    new-instance v17, Lik4;

    invoke-virtual {v10}, Ljj4$c;->a()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v10}, Ljj4$c;->c()Z

    move-result v19

    invoke-virtual {v10}, Ljj4$c;->d()Ljava/lang/String;

    move-result-object v20

    if-eqz v6, :cond_1c

    invoke-interface {v14}, Ljf6;->c0()Ljava/lang/String;

    move-result-object v6

    :cond_1b
    move-object/from16 v21, v6

    goto :goto_12

    :cond_1c
    invoke-virtual {v10}, Ljj4$c;->f()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1b

    move-object/from16 v21, v13

    :goto_12
    invoke-virtual {v10}, Ljj4$c;->e()Lqv6;

    move-result-object v6

    invoke-static {v6}, Laj4;->c(Lqv6;)I

    move-result v22

    const/16 v23, 0x0

    invoke-virtual {v10}, Ljj4$c;->e()Lqv6;

    move-result-object v24

    invoke-direct/range {v17 .. v24}, Lik4;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IZLqv6;)V

    goto/16 :goto_e

    :goto_13
    if-eqz v6, :cond_1d

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1d
    const/16 v6, 0xa

    goto/16 :goto_c

    :cond_1e
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v5

    :cond_1f
    invoke-interface {v5}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v6

    const/4 v10, -0x1

    if-eqz v6, :cond_20

    invoke-interface {v5}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lyi4;

    instance-of v6, v6, Lik4;

    if-eqz v6, :cond_1f

    invoke-interface {v5}, Ljava/util/ListIterator;->nextIndex()I

    move-result v5

    goto :goto_14

    :cond_20
    move v5, v10

    :goto_14
    if-eq v5, v10, :cond_21

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v6, Lik4;

    const/16 v10, 0xff

    const/4 v11, 0x0

    invoke-static {v6, v9, v11, v10}, Lik4;->d(Lik4;Ljava/lang/String;ZI)Lik4;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    :cond_21
    const/4 v11, 0x0

    :goto_15
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljj4;->a()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v4, v6}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_16
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_22

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljj4$a;

    new-instance v12, Lmh4;

    invoke-virtual {v6}, Ljj4$a;->a()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6}, Ljj4$a;->b()Z

    move-result v14

    invoke-virtual {v6}, Ljj4$a;->c()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6}, Ljj4$a;->d()Z

    move-result v16

    const/16 v17, 0x1

    invoke-direct/range {v12 .. v17}, Lmh4;-><init>(Ljava/lang/String;ZLjava/lang/String;ZZ)V

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_22
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljj4;->b()I

    move-result v4

    invoke-static {v8}, Lqn1;->b0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lvi4;

    invoke-virtual {v7}, Ljj4$d;->c()Ljava/lang/String;

    move-result-object v6

    const/16 v9, 0x20

    if-eqz v6, :cond_24

    new-instance v4, Lej4;

    invoke-virtual {v7}, Ljj4$d;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7}, Ljj4$d;->b()Ljava/lang/String;

    move-result-object v7

    if-nez v5, :cond_23

    goto :goto_17

    :cond_23
    move v9, v11

    :goto_17
    invoke-direct {v4, v6, v7, v9}, Lej4;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_19

    :cond_24
    invoke-virtual {v7}, Ljj4$d;->a()Z

    move-result v6

    const/4 v10, 0x1

    xor-int/2addr v6, v10

    invoke-virtual {v7}, Ljj4$d;->b()Ljava/lang/String;

    move-result-object v7

    if-nez v5, :cond_25

    goto :goto_18

    :cond_25
    move v9, v11

    :goto_18
    new-instance v5, Lqj4;

    invoke-direct {v5, v7, v4, v9, v6}, Lqj4;-><init>(Ljava/lang/String;IIZ)V

    move-object v4, v5

    :goto_19
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lth4;

    invoke-direct {v4}, Lth4;-><init>()V

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_26
    sget-object v8, Lkx2;->b:Lkx2;

    :goto_1a
    check-cast v8, Ljava/util/Collection;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v4, v2, Laj4;->e:Lhi0;

    invoke-virtual {v0}, Ljj4;->h()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual {v4, v1}, Lhi0;->onNext(Ljava/lang/Object;)V

    goto :goto_1b

    :cond_27
    invoke-virtual {v2, v1}, Laj4;->b(Ljava/util/ArrayList;)V

    :goto_1b
    new-instance v0, Lbj4;

    invoke-direct {v0, v3}, Lbj4;-><init>(Z)V

    new-instance v1, Lfl0;

    const/4 v6, 0x1

    invoke-direct {v1, v0, v6}, Lfl0;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Lpr5;

    invoke-direct {v0, v4, v1}, Lpr5;-><init>(Ltq5;Lxl3;)V

    return-object v0
.end method
