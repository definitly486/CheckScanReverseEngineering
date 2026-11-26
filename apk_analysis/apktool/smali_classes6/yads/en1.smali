.class public final Lyads/en1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/vq0;

.field public final b:Lyads/w41;


# direct methods
.method public constructor <init>(Lyads/vq0;Lyads/w41;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/en1;->a:Lyads/vq0;

    iput-object p2, p0, Lyads/en1;->b:Lyads/w41;

    return-void
.end method


# virtual methods
.method public final a(Lyads/cb1;Ljava/util/List;Lyads/fs2;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lyads/en1;->a:Lyads/vq0;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v4, v1, Lyads/cb1;->a:Lyads/br0;

    iget-wide v6, v1, Lyads/cb1;->b:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lyads/br0;->a()Lyads/p41;

    move-result-object v8

    instance-of v9, v8, Lyads/z22;

    if-eqz v9, :cond_0

    check-cast v8, Lyads/z22;

    invoke-static {v8}, Lyads/du1;->a(Lyads/z22;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_0
    invoke-interface {v8}, Lyads/p41;->a()Ljava/lang/String;

    move-result-object v8

    :goto_0
    if-nez v8, :cond_1

    invoke-static {v3}, Lyads/bz;->a(I)V

    sget-object v8, Lyads/bz;->a:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    :cond_1
    filled-new-array {v5, v8}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    new-instance v5, Lyads/n32;

    sget-object v8, Lkx2;->b:Lkx2;

    const/16 v10, 0x8

    invoke-direct/range {v5 .. v10}, Lyads/n32;-><init>(JLjava/util/List;Ljava/util/List;I)V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_10

    const/4 v8, 0x1

    if-eq v6, v8, :cond_f

    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lyads/n32;

    check-cast v9, Lyads/n32;

    iget-wide v11, v9, Lyads/n32;->a:J

    iget-wide v13, v10, Lyads/n32;->a:J

    cmp-long v11, v11, v13

    if-eqz v11, :cond_2

    move-object/from16 v20, v4

    move/from16 v19, v8

    const/4 v9, 0x0

    const/16 v18, 0x0

    move v4, v3

    goto/16 :goto_9

    :cond_2
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    iget-object v11, v9, Lyads/n32;->b:Ljava/util/List;

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v12, v3

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v14, v12, 0x1

    if-ltz v12, :cond_4

    check-cast v13, Lb36;

    const/16 v18, 0x0

    iget-object v7, v10, Lyads/n32;->b:Ljava/util/List;

    invoke-static {v12, v7}, Lqn1;->W(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lb36;

    if-eqz v7, :cond_6

    invoke-static {v13, v7}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v12, v14

    goto :goto_2

    :cond_4
    const/16 v18, 0x0

    invoke-static {}, Lu96;->o()V

    throw v18

    :cond_5
    const/16 v18, 0x0

    :cond_6
    :goto_3
    new-instance v12, Lyads/n32;

    iget-wide v13, v9, Lyads/n32;->a:J

    iget-object v7, v9, Lyads/n32;->c:Ljava/util/List;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move/from16 v16, v3

    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move/from16 v19, v8

    move-object/from16 v8, v17

    check-cast v8, Lb36;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v17

    add-int/lit8 v3, v17, -0x1

    move-object/from16 v20, v4

    move/from16 v4, v16

    :goto_5
    if-ge v4, v3, :cond_8

    move/from16 p2, v3

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move/from16 v16, v4

    iget-object v4, v8, Lb36;->b:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v3, v4}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    add-int/lit8 v3, v16, 0x1

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move/from16 v17, v3

    iget-object v3, v8, Lb36;->c:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    move/from16 v16, v17

    :goto_6
    move/from16 v8, v19

    move-object/from16 v4, v20

    const/4 v3, 0x0

    goto :goto_4

    :cond_7
    add-int/lit8 v4, v16, 0x1

    move/from16 v3, p2

    goto :goto_5

    :cond_8
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v16

    goto :goto_6

    :cond_9
    move-object/from16 v20, v4

    move/from16 v19, v8

    add-int/lit8 v3, v16, 0x1

    const/4 v4, 0x0

    invoke-interface {v7, v4, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v16

    iget-boolean v3, v9, Lyads/n32;->d:Z

    if-nez v3, :cond_b

    iget-boolean v3, v10, Lyads/n32;->d:Z

    if-eqz v3, :cond_a

    goto :goto_7

    :cond_a
    move/from16 v17, v4

    goto :goto_8

    :cond_b
    :goto_7
    move/from16 v17, v19

    :goto_8
    invoke-direct/range {v12 .. v17}, Lyads/n32;-><init>(JLjava/util/List;Ljava/util/List;Z)V

    move-object v9, v12

    :goto_9
    move v3, v4

    if-nez v9, :cond_c

    move-object v9, v5

    :cond_c
    move/from16 v8, v19

    move-object/from16 v4, v20

    goto/16 :goto_1

    :cond_d
    move-object/from16 v20, v4

    const/16 v18, 0x0

    move-object v3, v9

    check-cast v3, Lyads/n32;

    goto :goto_a

    :cond_e
    const-string v0, "Empty collection can\'t be reduced."

    invoke-static {v0}, Ln1;->e(Ljava/lang/String;)V

    return-void

    :cond_f
    move-object/from16 v20, v4

    const/16 v18, 0x0

    invoke-static/range {p2 .. p2}, Lqn1;->T(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/n32;

    goto :goto_a

    :cond_10
    move-object/from16 v20, v4

    const/16 v18, 0x0

    move-object v3, v5

    :goto_a
    iget-object v4, v3, Lyads/n32;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1c

    invoke-static {v2, v3}, Lyads/du1;->a(Landroid/view/View;Lyads/n32;)Lyads/k32;

    move-result-object v4

    if-nez v4, :cond_12

    invoke-virtual {v3}, Lyads/n32;->d()Lyads/n32;

    move-result-object v6

    iget-object v7, v6, Lyads/n32;->b:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_11

    iget-wide v7, v1, Lyads/cb1;->b:J

    iget-wide v9, v3, Lyads/n32;->a:J

    cmp-long v7, v7, v9

    if-nez v7, :cond_11

    goto :goto_d

    :cond_11
    invoke-static {v2, v6}, Lyads/du1;->a(Landroid/view/View;Lyads/n32;)Lyads/k32;

    move-result-object v6

    if-nez v6, :cond_12

    goto :goto_d

    :cond_12
    if-eqz v4, :cond_13

    iget-object v6, v4, Lyads/k32;->l:Lyads/xh1;

    iget-object v6, v6, Lyads/xh1;->c:Lyads/br0;

    check-cast v6, Lyads/gq0;

    if-nez v6, :cond_19

    :cond_13
    iget-object v1, v1, Lyads/cb1;->a:Lyads/br0;

    iget-object v6, v3, Lyads/n32;->b:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_14

    goto :goto_b

    :cond_14
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_15
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_17

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lb36;

    iget-object v7, v7, Lb36;->b:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    if-eqz v1, :cond_16

    move-object/from16 v8, p3

    invoke-static {v1, v7, v8}, Lyads/du1;->a(Lyads/br0;Ljava/lang/String;Lyads/fs2;)Lyads/br0;

    move-result-object v1

    if-nez v1, :cond_15

    :cond_16
    :goto_b
    move-object/from16 v1, v18

    :cond_17
    instance-of v6, v1, Lyads/gq0;

    if-eqz v6, :cond_18

    check-cast v1, Lyads/gq0;

    move-object v6, v1

    goto :goto_c

    :cond_18
    move-object/from16 v6, v18

    :goto_c
    if-nez v6, :cond_19

    :goto_d
    move-object/from16 v7, v18

    goto :goto_e

    :cond_19
    new-instance v7, Lb36;

    invoke-direct {v7, v4, v6}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_e
    if-nez v7, :cond_1a

    return-void

    :cond_1a
    iget-object v1, v7, Lb36;->b:Ljava/lang/Object;

    check-cast v1, Lyads/k32;

    iget-object v4, v7, Lb36;->c:Ljava/lang/Object;

    check-cast v4, Lyads/gq0;

    if-eqz v1, :cond_1c

    iget-object v2, v1, Lyads/k32;->m:Lyads/n32;

    if-nez v2, :cond_1b

    move-object v5, v3

    goto :goto_f

    :cond_1b
    move-object v5, v2

    :goto_f
    move-object v2, v1

    goto :goto_10

    :cond_1c
    move-object/from16 v4, v20

    :goto_10
    invoke-static {v2}, Lyads/pq;->a(Landroid/view/View;)Lyads/tt;

    move-result-object v1

    if-nez v1, :cond_1d

    iget-object v1, v0, Lyads/en1;->a:Lyads/vq0;

    iget-object v1, v1, Lyads/vq0;->B:Lyads/tt;

    :cond_1d
    iget-object v3, v0, Lyads/en1;->b:Lyads/w41;

    invoke-virtual {v5}, Lyads/n32;->d()Lyads/n32;

    move-result-object v5

    invoke-virtual {v3, v1, v2, v4, v5}, Lyads/w41;->a(Lyads/tt;Landroid/view/View;Lyads/br0;Lyads/n32;)V

    iget-object v0, v0, Lyads/en1;->b:Lyads/w41;

    invoke-virtual {v0}, Lyads/w41;->a()V

    return-void
.end method
