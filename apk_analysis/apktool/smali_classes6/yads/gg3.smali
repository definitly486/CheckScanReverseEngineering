.class public final Lyads/gg3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Ljava/util/ArrayList;

.field public final synthetic c:Lyads/hg3;


# direct methods
.method public constructor <init>(Lyads/hg3;)V
    .locals 0

    iput-object p1, p0, Lyads/gg3;->c:Lyads/hg3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lyads/gg3;->a:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lyads/gg3;->b:Ljava/util/ArrayList;

    return-void
.end method

.method public static final a(Lnm1;Lyads/fg3;)Z
    .locals 0

    .line 740
    iget p1, p1, Lyads/fg3;->c:F

    .line 741
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {p0, p1}, Lnm1;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public final a(IF)Ljava/util/List;
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lyads/gg3;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, v0, Lyads/gg3;->c:Lyads/hg3;

    iget v4, v3, Lyads/hg3;->g:I

    iget v5, v3, Lyads/hg3;->k:I

    const/4 v6, -0x1

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v8, 0x0

    if-gt v2, v4, :cond_0

    int-to-float v1, v5

    div-float/2addr v1, v7

    iget-object v2, v0, Lyads/gg3;->a:Ljava/util/ArrayList;

    invoke-static {v2}, Lqn1;->b0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/fg3;

    iget v3, v2, Lyads/fg3;->c:F

    iget-object v2, v2, Lyads/fg3;->d:Lyads/yf3;

    invoke-virtual {v2}, Lyads/yf3;->b()F

    move-result v2

    div-float/2addr v2, v7

    add-float/2addr v2, v3

    div-float/2addr v2, v7

    sub-float/2addr v1, v2

    goto :goto_3

    :cond_0
    int-to-float v2, v5

    div-float/2addr v2, v7

    iget-object v3, v3, Lyads/hg3;->d:Lyads/gs4;

    invoke-static {v3}, Lyads/oh6;->b(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-ne v1, v6, :cond_1

    move v1, v8

    goto :goto_0

    :cond_1
    iget-object v3, v0, Lyads/gg3;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/fg3;

    iget v1, v1, Lyads/fg3;->c:F

    :goto_0
    sub-float/2addr v2, v1

    iget-object v1, v0, Lyads/gg3;->c:Lyads/hg3;

    iget v3, v1, Lyads/hg3;->i:F

    mul-float v3, v3, p2

    add-float/2addr v3, v2

    move-object v2, v1

    move v1, v3

    goto :goto_2

    :cond_2
    if-ne v1, v6, :cond_3

    move v1, v8

    goto :goto_1

    :cond_3
    iget-object v3, v0, Lyads/gg3;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/fg3;

    iget v1, v1, Lyads/fg3;->c:F

    :goto_1
    sub-float/2addr v2, v1

    iget-object v1, v0, Lyads/gg3;->c:Lyads/hg3;

    iget v3, v1, Lyads/hg3;->i:F

    mul-float v3, v3, p2

    sub-float/2addr v2, v3

    move/from16 v18, v2

    move-object v2, v1

    move/from16 v1, v18

    :goto_2
    iget v3, v2, Lyads/hg3;->g:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_4

    iget v2, v2, Lyads/hg3;->i:F

    div-float/2addr v2, v7

    add-float/2addr v1, v2

    :cond_4
    :goto_3
    iget-object v2, v0, Lyads/gg3;->a:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/16 v5, 0x1b

    const/4 v9, 0x0

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyads/fg3;

    iget v10, v4, Lyads/fg3;->c:F

    add-float/2addr v10, v1

    invoke-static {v4, v10, v9, v8, v5}, Lyads/fg3;->a(Lyads/fg3;FLyads/yf3;FI)Lyads/fg3;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, v0, Lyads/gg3;->c:Lyads/hg3;

    iget v4, v3, Lyads/hg3;->g:I

    if-gt v2, v4, :cond_6

    goto/16 :goto_12

    :cond_6
    iget v2, v3, Lyads/hg3;->k:I

    int-to-float v2, v2

    new-instance v3, Lmm1;

    invoke-direct {v3, v8, v2}, Lmm1;-><init>(FF)V

    invoke-static {v1}, Lqn1;->T(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/fg3;

    iget v4, v2, Lyads/fg3;->c:F

    iget-object v2, v2, Lyads/fg3;->d:Lyads/yf3;

    invoke-virtual {v2}, Lyads/yf3;->b()F

    move-result v2

    div-float/2addr v2, v7

    sub-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v3, v2}, Lmm1;->contains(Ljava/lang/Comparable;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {v1}, Lqn1;->T(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/fg3;

    iget v10, v2, Lyads/fg3;->c:F

    iget-object v2, v2, Lyads/fg3;->d:Lyads/yf3;

    invoke-virtual {v2}, Lyads/yf3;->b()F

    move-result v2

    div-float/2addr v2, v7

    sub-float/2addr v10, v2

    neg-float v2, v10

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v11, 0x0

    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v13, v11, 0x1

    if-ltz v11, :cond_7

    check-cast v12, Lyads/fg3;

    iget v14, v12, Lyads/fg3;->c:F

    add-float/2addr v14, v2

    invoke-static {v12, v14, v9, v8, v5}, Lyads/fg3;->a(Lyads/fg3;FLyads/yf3;FI)Lyads/fg3;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v11, v13

    goto :goto_5

    :cond_7
    invoke-static {}, Lu96;->o()V

    throw v9

    :cond_8
    invoke-static {v1}, Lqn1;->b0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/fg3;

    iget v10, v2, Lyads/fg3;->c:F

    iget-object v2, v2, Lyads/fg3;->d:Lyads/yf3;

    invoke-virtual {v2}, Lyads/yf3;->b()F

    move-result v2

    div-float/2addr v2, v7

    add-float/2addr v2, v10

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v3, v2}, Lmm1;->contains(Ljava/lang/Comparable;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, v0, Lyads/gg3;->c:Lyads/hg3;

    iget v2, v2, Lyads/hg3;->k:I

    int-to-float v2, v2

    invoke-static {v1}, Lqn1;->b0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lyads/fg3;

    iget v11, v10, Lyads/fg3;->c:F

    iget-object v10, v10, Lyads/fg3;->d:Lyads/yf3;

    invoke-virtual {v10}, Lyads/yf3;->b()F

    move-result v10

    div-float/2addr v10, v7

    add-float/2addr v10, v11

    sub-float/2addr v2, v10

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v11, 0x0

    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v13, v11, 0x1

    if-ltz v11, :cond_9

    check-cast v12, Lyads/fg3;

    iget v14, v12, Lyads/fg3;->c:F

    add-float/2addr v14, v2

    invoke-static {v12, v14, v9, v8, v5}, Lyads/fg3;->a(Lyads/fg3;FLyads/yf3;FI)Lyads/fg3;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v11, v13

    goto :goto_6

    :cond_9
    invoke-static {}, Lu96;->o()V

    throw v9

    :cond_a
    new-instance v2, Lj48;

    const/4 v10, 0x3

    invoke-direct {v2, v3, v10}, Lj48;-><init>(Ljava/lang/Object;I)V

    invoke-static {v2, v1}, Lnn1;->y(Lnl3;Ljava/util/List;)V

    iget-object v2, v0, Lyads/gg3;->c:Lyads/hg3;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v10, 0x0

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    const/high16 v12, 0x3f800000    # 1.0f

    if-eqz v11, :cond_15

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v13, v10, 0x1

    if-ltz v10, :cond_14

    check-cast v11, Lyads/fg3;

    iget v14, v11, Lyads/fg3;->c:F

    iget-object v15, v0, Lyads/gg3;->c:Lyads/hg3;

    iget v4, v15, Lyads/hg3;->i:F

    add-float/2addr v4, v8

    cmpg-float v16, v14, v4

    if-gtz v16, :cond_b

    goto :goto_8

    :cond_b
    iget v15, v15, Lyads/hg3;->k:I

    int-to-float v15, v15

    sub-float/2addr v15, v14

    cmpl-float v14, v15, v4

    if-lez v14, :cond_c

    move v14, v4

    goto :goto_8

    :cond_c
    move v14, v15

    :goto_8
    cmpl-float v15, v14, v4

    if-lez v15, :cond_d

    goto :goto_9

    :cond_d
    sub-float/2addr v4, v8

    div-float/2addr v14, v4

    invoke-static {v14, v8, v12}, Lkx6;->d(FFF)F

    move-result v12

    :goto_9
    iget v4, v11, Lyads/fg3;->a:I

    if-eqz v4, :cond_e

    iget v14, v2, Lyads/hg3;->f:I

    add-int/lit8 v14, v14, -0x1

    if-eq v4, v14, :cond_e

    iget-boolean v4, v11, Lyads/fg3;->b:Z

    if-eqz v4, :cond_f

    :cond_e
    move/from16 v17, v7

    goto :goto_a

    :cond_f
    iget-object v4, v11, Lyads/fg3;->d:Lyads/yf3;

    invoke-virtual {v4}, Lyads/yf3;->b()F

    move-result v14

    mul-float/2addr v14, v12

    iget-object v15, v0, Lyads/gg3;->c:Lyads/hg3;

    iget-object v15, v15, Lyads/hg3;->a:Lyads/cg3;

    iget-object v15, v15, Lyads/cg3;->d:Lyads/bg3;

    invoke-virtual {v15}, Lyads/bg3;->b()Lyads/yf3;

    move-result-object v15

    invoke-virtual {v15}, Lyads/yf3;->b()F

    move-result v15

    cmpg-float v15, v14, v15

    const/4 v6, 0x7

    if-gtz v15, :cond_11

    iget-object v4, v0, Lyads/gg3;->c:Lyads/hg3;

    iget-object v4, v4, Lyads/hg3;->a:Lyads/cg3;

    iget-object v4, v4, Lyads/cg3;->d:Lyads/bg3;

    invoke-virtual {v4}, Lyads/bg3;->b()Lyads/yf3;

    move-result-object v4

    invoke-static {v11, v8, v4, v12, v6}, Lyads/fg3;->a(Lyads/fg3;FLyads/yf3;FI)Lyads/fg3;

    move-result-object v11

    :cond_10
    move/from16 v17, v7

    goto :goto_b

    :cond_11
    invoke-virtual {v4}, Lyads/yf3;->b()F

    move-result v15

    cmpg-float v15, v14, v15

    if-gez v15, :cond_10

    instance-of v15, v4, Lyads/xf3;

    if-eqz v15, :cond_12

    check-cast v4, Lyads/xf3;

    iget v15, v4, Lyads/xf3;->b:F

    move/from16 v17, v7

    iget v7, v4, Lyads/xf3;->a:F

    div-float v7, v14, v7

    mul-float/2addr v7, v15

    const/4 v15, 0x4

    invoke-static {v4, v14, v7, v15}, Lyads/xf3;->a(Lyads/xf3;FFI)Lyads/xf3;

    move-result-object v4

    invoke-static {v11, v8, v4, v12, v6}, Lyads/fg3;->a(Lyads/fg3;FLyads/yf3;FI)Lyads/fg3;

    move-result-object v11

    goto :goto_b

    :cond_12
    move/from16 v17, v7

    instance-of v7, v4, Lyads/wf3;

    if-eqz v7, :cond_13

    invoke-virtual {v4}, Lyads/yf3;->b()F

    move-result v4

    mul-float/2addr v4, v12

    div-float v4, v4, v17

    new-instance v7, Lyads/wf3;

    invoke-direct {v7, v4}, Lyads/wf3;-><init>(F)V

    invoke-static {v11, v8, v7, v12, v6}, Lyads/fg3;->a(Lyads/fg3;FLyads/yf3;FI)Lyads/fg3;

    move-result-object v11

    goto :goto_b

    :cond_13
    invoke-static {}, Lme0;->e()V

    return-object v9

    :goto_a
    const/16 v4, 0xf

    invoke-static {v11, v8, v9, v12, v4}, Lyads/fg3;->a(Lyads/fg3;FLyads/yf3;FI)Lyads/fg3;

    move-result-object v11

    :goto_b
    invoke-virtual {v1, v10, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v10, v13

    move/from16 v7, v17

    const/4 v6, -0x1

    goto/16 :goto_7

    :cond_14
    invoke-static {}, Lu96;->o()V

    throw v9

    :cond_15
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyads/fg3;

    iget v4, v4, Lyads/fg3;->e:F

    cmpg-float v4, v4, v12

    if-nez v4, :cond_16

    goto :goto_d

    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_17
    const/4 v3, -0x1

    :goto_d
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-ltz v3, :cond_18

    goto :goto_e

    :cond_18
    move-object v2, v9

    :goto_e
    if-eqz v2, :cond_1f

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    :cond_19
    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyads/fg3;

    iget v4, v4, Lyads/fg3;->e:F

    cmpg-float v4, v4, v12

    if-nez v4, :cond_19

    invoke-interface {v3}, Ljava/util/ListIterator;->nextIndex()I

    move-result v6

    goto :goto_f

    :cond_1a
    const/4 v6, -0x1

    :goto_f
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-ltz v6, :cond_1b

    goto :goto_10

    :cond_1b
    move-object v3, v9

    :goto_10
    if-eqz v3, :cond_1f

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v3, v3, 0x1

    iget-object v0, v0, Lyads/gg3;->c:Lyads/hg3;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v6, 0x0

    :goto_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v10, v6, 0x1

    if-ltz v6, :cond_1e

    check-cast v7, Lyads/fg3;

    if-ge v6, v2, :cond_1c

    invoke-static {v2, v1}, Lqn1;->W(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lyads/fg3;

    if-eqz v11, :cond_1d

    iget v11, v11, Lyads/fg3;->e:F

    sub-float v11, v12, v11

    iget v13, v0, Lyads/hg3;->i:F

    mul-float/2addr v13, v11

    iget v11, v7, Lyads/fg3;->c:F

    sub-float/2addr v11, v13

    invoke-static {v7, v11, v9, v8, v5}, Lyads/fg3;->a(Lyads/fg3;FLyads/yf3;FI)Lyads/fg3;

    move-result-object v11

    invoke-virtual {v1, v6, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    if-le v6, v3, :cond_1d

    invoke-static {v3, v1}, Lqn1;->W(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lyads/fg3;

    if-eqz v11, :cond_1d

    iget v11, v11, Lyads/fg3;->e:F

    sub-float v11, v12, v11

    iget v13, v0, Lyads/hg3;->i:F

    mul-float/2addr v13, v11

    iget v11, v7, Lyads/fg3;->c:F

    add-float/2addr v11, v13

    invoke-static {v7, v11, v9, v8, v5}, Lyads/fg3;->a(Lyads/fg3;FLyads/yf3;FI)Lyads/fg3;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    move v6, v10

    goto :goto_11

    :cond_1e
    invoke-static {}, Lu96;->o()V

    throw v9

    :cond_1f
    :goto_12
    return-object v1
.end method
