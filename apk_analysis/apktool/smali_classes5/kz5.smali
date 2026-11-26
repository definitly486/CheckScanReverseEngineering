.class public final Lkz5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkz5$a;
    }
.end annotation


# instance fields
.field public final a:Loz5;


# direct methods
.method public constructor <init>(Loz5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkz5;->a:Loz5;

    return-void
.end method

.method public static a(Lfz5;)Lkz5$a;
    .locals 28

    sget-object v0, Lpb2;->a:Lpb2;

    invoke-virtual/range {p0 .. p0}, Lfz5;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lpb2;->f(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lfz5;->b()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lry5;

    invoke-virtual {v4}, Lry5;->f()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    const/4 v6, 0x0

    if-eqz v5, :cond_f

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_e

    :cond_0
    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    invoke-virtual {v5}, Ljava/util/Random;->nextLong()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Lry5;->j(J)V

    invoke-virtual {v4}, Lry5;->c()J

    move-result-wide v10

    invoke-virtual {v4}, Lry5;->b()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4}, Lry5;->h()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4}, Lry5;->i()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4}, Lry5;->f()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_9

    check-cast v5, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v5, v3}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcz5;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Lcz5;->c()J

    move-result-wide v16

    invoke-virtual {v8}, Lcz5;->b()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v8}, Lcz5;->g()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v8}, Lcz5;->f()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v8}, Lcz5;->h()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v8}, Lcz5;->d()Li88;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Li88;->c()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v23, v9

    goto :goto_2

    :cond_1
    move-object/from16 v23, v6

    :goto_2
    invoke-virtual {v8}, Lcz5;->d()Li88;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Li88;->a()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v24, v9

    goto :goto_3

    :cond_2
    move-object/from16 v24, v6

    :goto_3
    invoke-virtual {v8}, Lcz5;->e()Lcz5$a;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Lcz5$a;->b()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v25, v9

    goto :goto_4

    :cond_3
    move-object/from16 v25, v6

    :goto_4
    invoke-virtual {v8}, Lcz5;->e()Lcz5$a;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-virtual {v9}, Lcz5$a;->a()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v26, v9

    goto :goto_5

    :cond_4
    move-object/from16 v26, v6

    :goto_5
    invoke-virtual {v8}, Lcz5;->a()Lqy5;

    move-result-object v9

    if-nez v9, :cond_5

    sget-object v9, Lqy5;->UNKNOWN:Lqy5;

    :cond_5
    move-object/from16 v27, v9

    invoke-virtual {v8}, Lcz5;->d()Li88;

    move-result-object v8

    if-eqz v8, :cond_7

    invoke-virtual {v8}, Li88;->b()Lm88;

    move-result-object v8

    if-nez v8, :cond_6

    goto :goto_7

    :cond_6
    :goto_6
    move-object/from16 v22, v8

    goto :goto_8

    :cond_7
    :goto_7
    sget-object v8, Lm88;->UNKNOWN:Lm88;

    goto :goto_6

    :goto_8
    new-instance v15, Lez5;

    invoke-direct/range {v15 .. v27}, Lez5;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lm88;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lqy5;)V

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_8
    move-object v15, v7

    goto :goto_9

    :cond_9
    move-object v15, v6

    :goto_9
    invoke-virtual {v4}, Lry5;->d()Li88;

    move-result-object v5

    if-eqz v5, :cond_b

    invoke-virtual {v5}, Li88;->b()Lm88;

    move-result-object v5

    if-nez v5, :cond_a

    goto :goto_b

    :cond_a
    :goto_a
    move-object/from16 v16, v5

    goto :goto_c

    :cond_b
    :goto_b
    sget-object v5, Lm88;->UNKNOWN:Lm88;

    goto :goto_a

    :goto_c
    invoke-virtual {v4}, Lry5;->d()Li88;

    move-result-object v5

    if-eqz v5, :cond_c

    invoke-virtual {v5}, Li88;->c()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v17, v5

    goto :goto_d

    :cond_c
    move-object/from16 v17, v6

    :goto_d
    invoke-virtual {v4}, Lry5;->d()Li88;

    move-result-object v5

    if-eqz v5, :cond_d

    invoke-virtual {v5}, Li88;->a()Ljava/lang/String;

    move-result-object v6

    :cond_d
    move-object/from16 v18, v6

    invoke-virtual {v4}, Lry5;->a()Lqy5;

    move-result-object v4

    if-nez v4, :cond_e

    sget-object v4, Lqy5;->UNKNOWN:Lqy5;

    :cond_e
    move-object/from16 v19, v4

    new-instance v9, Lxy5;

    invoke-direct/range {v9 .. v19}, Lxy5;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lm88;Ljava/lang/String;Ljava/lang/String;Lqy5;)V

    goto/16 :goto_19

    :cond_f
    :goto_e
    new-instance v10, Lez5;

    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    invoke-virtual {v5}, Ljava/util/Random;->nextLong()J

    move-result-wide v11

    invoke-virtual {v4}, Lry5;->b()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4}, Lry5;->h()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4}, Lry5;->g()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4}, Lry5;->i()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v4}, Lry5;->d()Li88;

    move-result-object v5

    if-eqz v5, :cond_11

    invoke-virtual {v5}, Li88;->b()Lm88;

    move-result-object v5

    if-nez v5, :cond_10

    goto :goto_10

    :cond_10
    :goto_f
    move-object/from16 v17, v5

    goto :goto_11

    :cond_11
    :goto_10
    sget-object v5, Lm88;->UNKNOWN:Lm88;

    goto :goto_f

    :goto_11
    invoke-virtual {v4}, Lry5;->d()Li88;

    move-result-object v5

    if-eqz v5, :cond_13

    invoke-virtual {v5}, Li88;->c()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_12

    goto :goto_13

    :cond_12
    :goto_12
    move-object/from16 v18, v5

    goto :goto_14

    :cond_13
    :goto_13
    const-string v5, ""

    goto :goto_12

    :goto_14
    invoke-virtual {v4}, Lry5;->d()Li88;

    move-result-object v5

    if-eqz v5, :cond_15

    invoke-virtual {v5}, Li88;->a()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_14

    goto :goto_16

    :cond_14
    :goto_15
    move-object/from16 v19, v5

    goto :goto_17

    :cond_15
    :goto_16
    const-string v5, "#0000000"

    goto :goto_15

    :goto_17
    invoke-virtual {v4}, Lry5;->e()Lcz5$a;

    move-result-object v5

    if-eqz v5, :cond_16

    invoke-virtual {v5}, Lcz5$a;->b()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v20, v5

    goto :goto_18

    :cond_16
    move-object/from16 v20, v6

    :goto_18
    invoke-virtual {v4}, Lry5;->e()Lcz5$a;

    move-result-object v5

    if-eqz v5, :cond_17

    invoke-virtual {v5}, Lcz5$a;->a()Ljava/lang/String;

    move-result-object v6

    :cond_17
    move-object/from16 v21, v6

    invoke-virtual {v4}, Lry5;->a()Lqy5;

    move-result-object v4

    if-nez v4, :cond_18

    sget-object v4, Lqy5;->UNKNOWN:Lqy5;

    :cond_18
    move-object/from16 v22, v4

    invoke-direct/range {v10 .. v22}, Lez5;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lm88;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lqy5;)V

    move-object v9, v10

    :goto_19
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_19
    new-instance v1, Lkz5$a;

    invoke-direct {v1, v0, v2}, Lkz5$a;-><init>(Ljava/util/Date;Ljava/util/ArrayList;)V

    return-object v1
.end method

.method public static b(Lj26;)Ljava/util/ArrayList;
    .locals 2

    invoke-virtual {p0}, Lj26;->a()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfz5;

    invoke-static {v1}, Lkz5;->a(Lfz5;)Lkz5$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
