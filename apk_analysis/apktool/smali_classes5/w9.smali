.class public final Lw9;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Lrx5;",
        "Lqx5;",
        ">;"
    }
.end annotation


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 27

    move-object/from16 v0, p1

    check-cast v0, Lrx5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lrx5;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lrx5;->a()Ljx5;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v4, Lq00;

    invoke-virtual {v1}, Ljx5;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Ljx5;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Ljx5;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v5, v6, v1}, Lq00;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v0}, Lrx5;->n()Ljava/lang/String;

    move-result-object v1

    const-string v5, ""

    if-nez v1, :cond_1

    move-object v1, v5

    :cond_1
    invoke-virtual {v0}, Lrx5;->l()Ljava/lang/String;

    move-result-object v7

    move-object v6, v5

    invoke-virtual {v0}, Lrx5;->c()Z

    move-result v5

    invoke-virtual {v0}, Lrx5;->i()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_2

    move-object v8, v6

    :cond_2
    invoke-virtual {v0}, Lrx5;->d()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Lrx5;->b()Lox5;

    move-result-object v10

    if-eqz v10, :cond_4

    new-instance v11, Lnx5;

    invoke-virtual {v10}, Lox5;->a()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10}, Lox5;->b()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_3

    move-object v10, v6

    :cond_3
    invoke-direct {v11, v12, v10}, Lnx5;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const/4 v11, 0x0

    :goto_1
    invoke-virtual {v0}, Lrx5;->m()Ljava/util/List;

    move-result-object v10

    const/16 v12, 0xa

    sget-object v13, Lkx2;->b:Lkx2;

    const/4 v14, 0x3

    if-nez v10, :cond_6

    :cond_5
    move-object v10, v13

    goto :goto_3

    :cond_6
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    if-le v15, v14, :cond_5

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v15

    invoke-static {v10, v14, v15}, Lor4;->a(Ljava/util/List;II)Ljava/util/List;

    move-result-object v10

    check-cast v10, Ljava/lang/Iterable;

    new-instance v15, Ljava/util/ArrayList;

    invoke-static {v10, v12}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v15, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lvx5;

    invoke-static {v10}, Lx9;->a(Lvx5;)Lux5;

    move-result-object v10

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    move-object v10, v15

    :goto_3
    invoke-virtual {v0}, Lrx5;->m()Ljava/util/List;

    move-result-object v3

    const/4 v15, 0x0

    if-nez v3, :cond_8

    goto :goto_6

    :cond_8
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-le v13, v14, :cond_9

    invoke-static {v3, v15, v14}, Lor4;->a(Ljava/util/List;II)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    new-instance v13, Ljava/util/ArrayList;

    invoke-static {v3, v12}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v13, v12}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lvx5;

    invoke-static {v12}, Lx9;->a(Lvx5;)Lux5;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    check-cast v3, Ljava/lang/Iterable;

    new-instance v13, Ljava/util/ArrayList;

    invoke-static {v3, v12}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v13, v12}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lvx5;

    invoke-static {v12}, Lx9;->a(Lvx5;)Lux5;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_a
    :goto_6
    invoke-virtual {v0}, Lrx5;->k()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_c

    const-class v12, Lg57;

    invoke-static {v12, v3}, Lht3;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg57;

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Lg57;->b()Lh57;

    move-result-object v3

    if-nez v3, :cond_b

    goto :goto_8

    :cond_b
    :goto_7
    move-object v12, v3

    goto :goto_9

    :cond_c
    :goto_8
    sget-object v3, Lh57;->NO_RESTRICTION:Lh57;

    goto :goto_7

    :goto_9
    invoke-virtual {v0}, Lrx5;->o()Lry8;

    move-result-object v3

    invoke-virtual {v3}, Lry8;->a()Z

    move-result v14

    if-eqz v14, :cond_d

    invoke-virtual {v3}, Lry8;->c()Z

    move-result v14

    if-eqz v14, :cond_d

    invoke-virtual {v3}, Lry8;->b()Z

    move-result v14

    if-eqz v14, :cond_e

    :cond_d
    invoke-virtual {v3}, Lry8;->a()Z

    move-result v14

    if-eqz v14, :cond_f

    invoke-virtual {v3}, Lry8;->c()Z

    move-result v14

    if-nez v14, :cond_f

    invoke-virtual {v3}, Lry8;->b()Z

    move-result v14

    if-nez v14, :cond_f

    :cond_e
    sget-object v3, Lsy8;->Mobile:Lsy8;

    goto :goto_a

    :cond_f
    invoke-virtual {v3}, Lry8;->b()Z

    move-result v14

    if-eqz v14, :cond_10

    invoke-virtual {v3}, Lry8;->c()Z

    move-result v14

    if-nez v14, :cond_10

    invoke-virtual {v3}, Lry8;->a()Z

    move-result v14

    if-eqz v14, :cond_12

    :cond_10
    invoke-virtual {v3}, Lry8;->b()Z

    move-result v14

    if-eqz v14, :cond_11

    invoke-virtual {v3}, Lry8;->c()Z

    move-result v14

    if-eqz v14, :cond_11

    invoke-virtual {v3}, Lry8;->a()Z

    move-result v14

    if-eqz v14, :cond_12

    :cond_11
    invoke-virtual {v3}, Lry8;->c()Z

    move-result v14

    if-eqz v14, :cond_13

    invoke-virtual {v3}, Lry8;->a()Z

    move-result v3

    if-nez v3, :cond_13

    :cond_12
    sget-object v3, Lsy8;->Desktop:Lsy8;

    goto :goto_a

    :cond_13
    sget-object v3, Lsy8;->App:Lsy8;

    :goto_a
    new-instance v14, Ldn1$c;

    invoke-virtual {v0}, Lrx5;->h()Lsx5$c;

    move-result-object v16

    if-eqz v16, :cond_14

    invoke-virtual/range {v16 .. v16}, Lsx5$c;->c()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v15, v16

    goto :goto_b

    :cond_14
    const/4 v15, 0x0

    :goto_b
    invoke-virtual {v0}, Lrx5;->h()Lsx5$c;

    move-result-object v16

    if-eqz v16, :cond_15

    invoke-virtual/range {v16 .. v16}, Lsx5$c;->d()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v26, v16

    move-object/from16 v16, v0

    move-object/from16 v0, v26

    goto :goto_c

    :cond_15
    move-object/from16 v16, v0

    const/4 v0, 0x0

    :goto_c
    invoke-virtual/range {v16 .. v16}, Lrx5;->h()Lsx5$c;

    move-result-object v17

    if-eqz v17, :cond_16

    invoke-virtual/range {v17 .. v17}, Lsx5$c;->a()Lsx5$a;

    move-result-object v17

    if-eqz v17, :cond_16

    invoke-virtual/range {v17 .. v17}, Lsx5$a;->a()Ldn1$a;

    move-result-object v17

    move-object/from16 v26, v17

    move-object/from16 v17, v1

    move-object/from16 v1, v26

    goto :goto_d

    :cond_16
    move-object/from16 v17, v1

    const/4 v1, 0x0

    :goto_d
    invoke-direct {v14, v15, v0, v1}, Ldn1$c;-><init>(Ljava/lang/String;Ljava/lang/String;Ldn1$a;)V

    invoke-virtual/range {v16 .. v16}, Lrx5;->f()Lc06;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lc06;->c()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    move/from16 v20, v15

    goto :goto_e

    :cond_17
    const/16 v20, 0x0

    :goto_e
    invoke-virtual/range {v16 .. v16}, Lrx5;->f()Lc06;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lc06;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_18
    const/4 v0, 0x0

    :goto_f
    if-nez v0, :cond_19

    move-object/from16 v21, v6

    goto :goto_10

    :cond_19
    move-object/from16 v21, v0

    :goto_10
    invoke-virtual/range {v16 .. v16}, Lrx5;->f()Lc06;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lc06;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_1a
    const/4 v0, 0x0

    :goto_11
    if-nez v0, :cond_1b

    move-object/from16 v22, v6

    goto :goto_12

    :cond_1b
    move-object/from16 v22, v0

    :goto_12
    invoke-virtual/range {v16 .. v16}, Lrx5;->f()Lc06;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lc06;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    :cond_1c
    const/4 v0, 0x0

    :goto_13
    if-nez v0, :cond_1d

    move-object/from16 v23, v6

    goto :goto_14

    :cond_1d
    move-object/from16 v23, v0

    :goto_14
    invoke-virtual/range {v16 .. v16}, Lrx5;->f()Lc06;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Lc06;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    :cond_1e
    const/4 v0, 0x0

    :goto_15
    if-nez v0, :cond_1f

    move-object/from16 v19, v6

    goto :goto_16

    :cond_1f
    move-object/from16 v19, v0

    :goto_16
    new-instance v15, Lb06;

    move-object/from16 v18, v15

    invoke-direct/range {v18 .. v23}, Lb06;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lzn6;

    invoke-virtual/range {v16 .. v16}, Lrx5;->j()Lao6;

    move-result-object v1

    if-eqz v1, :cond_20

    invoke-virtual {v1}, Lao6;->a()Ljava/lang/String;

    move-result-object v1

    goto :goto_17

    :cond_20
    const/4 v1, 0x0

    :goto_17
    if-nez v1, :cond_21

    move-object v1, v6

    :cond_21
    invoke-virtual/range {v16 .. v16}, Lrx5;->j()Lao6;

    move-result-object v18

    if-eqz v18, :cond_22

    invoke-virtual/range {v18 .. v18}, Lao6;->b()Ljava/lang/String;

    move-result-object v18

    goto :goto_18

    :cond_22
    const/16 v18, 0x0

    :goto_18
    move-object/from16 p1, v2

    if-nez v18, :cond_23

    move-object v2, v6

    goto :goto_19

    :cond_23
    move-object/from16 v2, v18

    :goto_19
    invoke-virtual/range {v16 .. v16}, Lrx5;->j()Lao6;

    move-result-object v18

    if-eqz v18, :cond_24

    invoke-virtual/range {v18 .. v18}, Lao6;->c()Ljava/lang/String;

    move-result-object v18

    goto :goto_1a

    :cond_24
    const/16 v18, 0x0

    :goto_1a
    move-object/from16 v19, v3

    if-nez v18, :cond_25

    move-object v3, v6

    goto :goto_1b

    :cond_25
    move-object/from16 v3, v18

    :goto_1b
    invoke-direct {v0, v1, v2, v3}, Lzn6;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Lrx5;->g()Lxh6;

    move-result-object v1

    if-eqz v1, :cond_26

    new-instance v2, Lwh6;

    invoke-virtual {v1}, Lxh6;->a()I

    move-result v1

    invoke-direct {v2, v1}, Lwh6;-><init>(I)V

    goto :goto_1c

    :cond_26
    const/4 v2, 0x0

    :goto_1c
    invoke-virtual/range {v16 .. v16}, Lrx5;->h()Lsx5$c;

    move-result-object v1

    if-eqz v1, :cond_29

    invoke-virtual {v1}, Lsx5$c;->b()Lfw3;

    move-result-object v1

    if-eqz v1, :cond_29

    new-instance v3, Lew3;

    invoke-virtual {v1}, Lfw3;->a()Ljava/lang/String;

    move-result-object v16

    if-nez v16, :cond_27

    goto :goto_1d

    :cond_27
    move-object/from16 v6, v16

    :goto_1d
    invoke-virtual {v1}, Lfw3;->b()Lme6;

    move-result-object v1

    if-eqz v1, :cond_28

    new-instance v20, Ldn1$b;

    invoke-virtual {v1}, Lme6;->c()Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual {v1}, Lme6;->b()Ljava/lang/String;

    move-result-object v22

    invoke-virtual {v1}, Lme6;->d()Ljava/lang/Boolean;

    move-result-object v23

    invoke-virtual {v1}, Lme6;->e()Ljava/lang/String;

    move-result-object v24

    invoke-virtual {v1}, Lme6;->a()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v20 .. v25}, Ldn1$b;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, v20

    goto :goto_1e

    :cond_28
    const/4 v1, 0x0

    :goto_1e
    invoke-direct {v3, v6, v1}, Lew3;-><init>(Ljava/lang/String;Ldn1$b;)V

    move-object/from16 v18, v3

    goto :goto_1f

    :cond_29
    const/16 v18, 0x0

    :goto_1f
    new-instance v1, Lqx5;

    move-object/from16 v16, v0

    move-object v3, v4

    move-object v6, v8

    move-object v8, v9

    move-object v9, v11

    move-object v11, v13

    move-object/from16 v4, v17

    move-object/from16 v13, v19

    move-object/from16 v17, v2

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v18}, Lqx5;-><init>(Ljava/lang/String;Lq00;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnx5;Ljava/util/List;Ljava/util/List;Lh57;Lsy8;Ldn1$c;Lb06;Lzn6;Lwh6;Lew3;)V

    return-object v1
.end method
