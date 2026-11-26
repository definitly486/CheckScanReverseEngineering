.class public final Lyads/ml6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/v75;


# instance fields
.field public final a:Lyads/pl6;

.field public final b:Lyads/nl6;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/t96;Lyads/pl6;)V
    .locals 1

    new-instance v0, Lyads/nl6;

    invoke-direct {v0, p1, p2}, Lyads/nl6;-><init>(Landroid/content/Context;Lyads/t96;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lyads/ml6;->a:Lyads/pl6;

    iput-object v0, p0, Lyads/ml6;->b:Lyads/nl6;

    return-void
.end method


# virtual methods
.method public final a(Lyads/z96;)V
    .locals 0

    iget-object p0, p0, Lyads/ml6;->a:Lyads/pl6;

    invoke-virtual {p0, p1}, Lyads/pl6;->a(Lyads/z96;)V

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Lyads/v76;

    iget-object v1, v1, Lyads/v76;->a:Lyads/q76;

    iget-object v1, v1, Lyads/q76;->b:Ljava/util/List;

    iget-object v2, v0, Lyads/ml6;->b:Lyads/nl6;

    iget-object v3, v2, Lyads/nl6;->a:Lyads/tl6;

    iget-object v3, v3, Lyads/tl6;->a:Lyads/t96;

    iget-object v3, v3, Lyads/t96;->m:Lyads/rl6;

    if-eqz v3, :cond_12

    iget-boolean v4, v3, Lyads/rl6;->b:Z

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v4, v2, Lyads/nl6;->b:Lyads/lc6;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lyads/lc6;->a(Ljava/util/List;)Lyads/kc6;

    move-result-object v1

    iget-object v1, v1, Lyads/kc6;->a:Ljava/util/List;

    :goto_0
    iget-boolean v3, v3, Lyads/rl6;->a:Z

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    invoke-static {v1, v3}, Lqn1;->o0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v1

    :goto_1
    iget-object v2, v2, Lyads/nl6;->c:Lyads/il6;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lyads/t96;

    iget-object v6, v2, Lyads/il6;->b:Lyads/gl6;

    iget-object v6, v6, Lyads/gl6;->a:Lyads/t96;

    iget-object v6, v6, Lyads/t96;->b:Ljava/util/ArrayList;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lyads/p90;

    iget-object v9, v9, Lyads/p90;->d:Ljava/util/ArrayList;

    invoke-static {v9, v7}, Lnn1;->s(Ljava/lang/Iterable;Ljava/util/Collection;)V

    goto :goto_3

    :cond_2
    iget-object v8, v5, Lyads/t96;->b:Ljava/util/ArrayList;

    new-instance v9, Ljava/util/ArrayList;

    invoke-static {v8, v4}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    sget-object v11, Lkx2;->b:Lkx2;

    if-eqz v10, :cond_d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lyads/p90;

    iget-object v12, v10, Lyads/p90;->c:Ljava/util/ArrayList;

    new-instance v13, Ljava/util/ArrayList;

    invoke-static {v12, v4}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lyads/cb3;

    iget-object v14, v14, Lyads/cb3;->a:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_3
    invoke-static {v13}, Lqn1;->x0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v12

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lyads/p90;

    iget-object v15, v15, Lyads/p90;->c:Ljava/util/ArrayList;

    invoke-static {v15, v13}, Lnn1;->s(Ljava/lang/Iterable;Ljava/util/Collection;)V

    goto :goto_6

    :cond_4
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_7
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    move-object v4, v15

    check-cast v4, Lyads/cb3;

    iget-object v4, v4, Lyads/cb3;->a:Ljava/lang/String;

    invoke-interface {v12, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    const/16 v4, 0xa

    goto :goto_7

    :cond_6
    iget-object v4, v10, Lyads/p90;->d:Ljava/util/ArrayList;

    iget-object v12, v10, Lyads/p90;->a:Ljava/util/ArrayList;

    iget-object v13, v10, Lyads/p90;->b:Ljava/util/ArrayList;

    invoke-static {v13, v12}, Lqn1;->h0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v12

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v26, v1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v16, v4

    iget-object v4, v10, Lyads/p90;->h:Ljava/lang/String;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v12, v10, Lyads/p90;->c:Ljava/util/ArrayList;

    if-nez v12, :cond_7

    move-object v12, v11

    :cond_7
    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v12, v10, Lyads/p90;->f:Ljava/lang/String;

    move-object/from16 v23, v4

    iget-object v4, v10, Lyads/p90;->g:Lyads/dm5;

    move-object/from16 v22, v4

    iget v4, v10, Lyads/p90;->i:I

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-nez v16, :cond_8

    goto :goto_8

    :cond_8
    move-object/from16 v11, v16

    :goto_8
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v10, v10, Lyads/p90;->j:Ljava/lang/String;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_9
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_a

    move-object/from16 v19, v1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move/from16 v24, v4

    instance-of v4, v1, Lyads/zz3;

    if-eqz v4, :cond_9

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    move-object/from16 v1, v19

    move/from16 v4, v24

    goto :goto_9

    :cond_a
    move-object/from16 v19, v1

    move/from16 v24, v4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_b
    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    instance-of v14, v13, Lyads/nn3;

    if-eqz v14, :cond_b

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_c
    new-instance v4, Lyads/p90;

    const/16 v20, 0x0

    move-object/from16 v17, v1

    move-object/from16 v25, v10

    move-object/from16 v16, v11

    move-object/from16 v21, v12

    move-object/from16 v18, v15

    move-object v15, v4

    invoke-direct/range {v15 .. v25}, Lyads/p90;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lyads/s90;Ljava/lang/String;Lyads/dm5;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v26

    const/16 v4, 0xa

    goto/16 :goto_4

    :cond_d
    move-object/from16 v26, v1

    iget-object v1, v2, Lyads/il6;->c:Lyads/hl6;

    iget-object v4, v2, Lyads/il6;->a:Lyads/t96;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v5, Lyads/t96;->d:Lyads/ba6;

    iget-object v4, v4, Lyads/t96;->d:Lyads/ba6;

    iget-object v6, v1, Lyads/ba6;->a:Ljava/util/List;

    iget-object v7, v4, Lyads/ba6;->a:Ljava/util/List;

    invoke-static {v7, v6}, Lqn1;->h0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v1, v1, Lyads/ba6;->b:Ljava/util/List;

    iget-object v4, v4, Lyads/ba6;->b:Ljava/util/List;

    invoke-static {v4, v1}, Lqn1;->h0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v4, Lyads/ba6;

    invoke-direct {v4, v6, v1}, Lyads/ba6;-><init>(Ljava/util/List;Ljava/util/List;)V

    iget-object v1, v2, Lyads/il6;->d:Lyads/jl6;

    iget-object v6, v2, Lyads/il6;->a:Lyads/t96;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    filled-new-array {v5, v6}, [Lyads/t96;

    move-result-object v1

    invoke-static {v1}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lyads/t96;

    iget-object v7, v7, Lyads/t96;->j:Lyads/jh6;

    if-eqz v7, :cond_e

    iget-object v7, v7, Lyads/jh6;->a:Ljava/util/ArrayList;

    goto :goto_c

    :cond_e
    const/4 v7, 0x0

    :goto_c
    if-nez v7, :cond_f

    move-object v7, v11

    :cond_f
    invoke-static {v7, v6}, Lnn1;->s(Ljava/lang/Iterable;Ljava/util/Collection;)V

    goto :goto_b

    :cond_10
    new-instance v1, Lyads/jh6;

    invoke-direct {v1, v6}, Lyads/jh6;-><init>(Ljava/util/ArrayList;)V

    iget-object v6, v5, Lyads/t96;->c:Ljava/util/LinkedHashMap;

    iget-object v7, v2, Lyads/il6;->a:Lyads/t96;

    iget-object v8, v7, Lyads/t96;->c:Ljava/util/LinkedHashMap;

    iget-object v10, v5, Lyads/t96;->n:Ljava/util/ArrayList;

    iget-object v7, v7, Lyads/t96;->n:Ljava/util/ArrayList;

    invoke-static {v7, v10}, Lqn1;->h0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v7

    new-instance v10, Lyads/s96;

    iget-object v11, v2, Lyads/il6;->e:Landroid/content/Context;

    iget-boolean v12, v5, Lyads/t96;->a:Z

    invoke-direct {v10, v11, v12}, Lyads/s96;-><init>(Landroid/content/Context;Z)V

    iget-object v11, v5, Lyads/t96;->l:Ljava/lang/String;

    iput-object v11, v10, Lyads/s96;->k:Ljava/lang/String;

    iget-object v11, v10, Lyads/s96;->l:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v10, v6}, Lyads/s96;->a(Ljava/util/LinkedHashMap;)Lyads/s96;

    move-result-object v6

    iget-object v9, v5, Lyads/t96;->e:Ljava/lang/String;

    iput-object v9, v6, Lyads/s96;->d:Ljava/lang/String;

    iget-object v9, v5, Lyads/t96;->f:Ljava/lang/String;

    iput-object v9, v6, Lyads/s96;->e:Ljava/lang/String;

    iget-object v9, v5, Lyads/t96;->g:Ljava/lang/String;

    iput-object v9, v6, Lyads/s96;->f:Ljava/lang/String;

    iget-object v9, v5, Lyads/t96;->h:Ljava/lang/String;

    iput-object v9, v6, Lyads/s96;->g:Ljava/lang/String;

    iget-object v9, v5, Lyads/t96;->i:Ljava/lang/String;

    iput-object v9, v6, Lyads/s96;->h:Ljava/lang/String;

    iput-object v4, v6, Lyads/s96;->o:Lyads/ba6;

    iput-object v1, v6, Lyads/s96;->i:Lyads/jh6;

    iget-object v1, v5, Lyads/t96;->m:Lyads/rl6;

    iput-object v1, v6, Lyads/s96;->c:Lyads/rl6;

    invoke-virtual {v6, v8}, Lyads/s96;->a(Ljava/util/LinkedHashMap;)Lyads/s96;

    move-result-object v1

    iget-object v4, v1, Lyads/s96;->m:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v1}, Lyads/s96;->a()Lyads/t96;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v26

    const/16 v4, 0xa

    goto/16 :goto_2

    :cond_11
    move-object v1, v3

    :cond_12
    iget-object v0, v0, Lyads/ml6;->a:Lyads/pl6;

    invoke-virtual {v0, v1}, Lyads/pl6;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
