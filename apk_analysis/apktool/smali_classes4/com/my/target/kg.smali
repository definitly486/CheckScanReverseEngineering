.class public Lcom/my/target/kg;
.super Lcom/my/target/hg;
.source "SourceFile"


# static fields
.field public static final synthetic T:I


# virtual methods
.method public final onLayout(ZIIII)V
    .locals 28

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    iget-object v5, v0, Lcom/my/target/hg;->f:Lcom/my/target/dg;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    sub-int v6, v4, v2

    invoke-static {v5, v6, v1}, Ll3a;->u(Landroid/view/View;II)V

    :cond_0
    sub-int v6, v3, v1

    sub-int v7, v4, v2

    iget-object v8, v0, Lcom/my/target/hg;->k:Lcom/my/target/zh;

    iget-object v9, v0, Lcom/my/target/hg;->l:Lcom/my/target/m;

    iget-object v11, v0, Lcom/my/target/hg;->g:Lcom/my/target/c3;

    iget-object v12, v0, Lcom/my/target/hg;->b:Lcom/my/target/e6;

    iget-object v13, v0, Lcom/my/target/hg;->o:Landroid/view/View;

    iget-object v14, v0, Lcom/my/target/hg;->n:Landroid/view/View;

    iget-object v15, v0, Lcom/my/target/hg;->u:Lcom/my/target/fk;

    const/16 p1, 0x1

    iget-object v10, v0, Lcom/my/target/hg;->d:Lcom/my/target/e6;

    move-object/from16 v16, v5

    iget-object v5, v0, Lcom/my/target/hg;->e:Lcom/my/target/bg;

    move-object/from16 v17, v8

    iget-object v8, v0, Lcom/my/target/hg;->p:Landroid/view/View;

    move-object/from16 v18, v9

    iget v9, v0, Lcom/my/target/hg;->F:I

    move/from16 v19, v9

    const/16 v20, 0x2

    iget v9, v0, Lcom/my/target/hg;->B:I

    move/from16 v21, v9

    iget-object v9, v0, Lcom/my/target/hg;->j:Lcom/my/target/zh;

    move-object/from16 v22, v11

    iget-object v11, v0, Lcom/my/target/hg;->L:Landroid/view/View;

    if-ge v6, v7, :cond_d

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_1

    sub-int v7, v21, v19

    add-int v15, v2, v7

    sub-int v7, v6, v7

    invoke-static {v10, v15, v7}, Ll3a;->m(Landroid/view/View;II)V

    goto :goto_0

    :cond_1
    add-int v7, v2, v21

    sub-int v10, v6, v21

    invoke-static {v15, v7, v10}, Ll3a;->m(Landroid/view/View;II)V

    :goto_0
    invoke-static {v5, v2, v1}, Ll3a;->r(Landroid/view/View;II)V

    iget v7, v0, Lcom/my/target/hg;->G:I

    sub-int v7, v4, v7

    iget-object v10, v0, Lcom/my/target/hg;->q:Landroid/widget/Button;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    sub-int v15, v7, v15

    move-object/from16 v23, v5

    const/4 v5, 0x0

    invoke-static {v10, v5, v15, v3, v7}, Ll3a;->j(Landroid/view/View;IIII)V

    invoke-static {v11, v1, v2, v3, v4}, Ll3a;->j(Landroid/view/View;IIII)V

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    if-lez v5, :cond_2

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    if-lez v5, :cond_2

    invoke-static {v9, v1, v2, v3, v4}, Ll3a;->j(Landroid/view/View;IIII)V

    :cond_2
    if-eqz v11, :cond_3

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v2

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-eqz v11, :cond_4

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v5

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    if-eqz v11, :cond_5

    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v7

    goto :goto_3

    :cond_5
    const/4 v7, 0x0

    :goto_3
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v15

    filled-new-array {v7, v15}, [I

    move-result-object v7

    invoke-static {v7}, Ll3a;->e([I)I

    move-result v7

    if-eqz v11, :cond_6

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v15

    :goto_4
    move-object/from16 v24, v10

    goto :goto_5

    :cond_6
    const/4 v15, 0x0

    goto :goto_4

    :goto_5
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    filled-new-array {v15, v10}, [I

    move-result-object v10

    invoke-static {v10}, Ll3a;->e([I)I

    move-result v10

    invoke-virtual {v14, v2, v5, v7, v10}, Landroid/view/View;->layout(IIII)V

    iget-object v2, v0, Lcom/my/target/hg;->s:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    div-int/lit8 v7, v21, 0x2

    add-int/2addr v7, v5

    iget-object v5, v0, Lcom/my/target/hg;->r:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-nez v14, :cond_7

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    add-int v14, v14, v21

    add-int/2addr v7, v14

    :cond_7
    mul-int/lit8 v14, v21, 0x2

    sub-int/2addr v6, v14

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    sub-int v14, v6, v14

    div-int/lit8 v14, v14, 0x2

    add-int v14, v14, v21

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    sub-int/2addr v6, v15

    div-int/lit8 v6, v6, 0x2

    add-int v6, v6, v21

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v15

    filled-new-array {v15, v10}, [I

    move-result-object v15

    invoke-static {v15}, Ll3a;->e([I)I

    move-result v15

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getTop()I

    move-result v25

    move/from16 p3, v15

    sub-int v15, v25, p3

    if-ge v7, v15, :cond_8

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getTop()I

    move-result v15

    sub-int v15, v15, p3

    sub-int/2addr v15, v7

    div-int/lit8 v15, v15, 0x2

    add-int v15, v15, p3

    invoke-static {v5, v15, v14}, Ll3a;->r(Landroid/view/View;II)V

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v7

    iget v14, v0, Lcom/my/target/hg;->K:I

    add-int/2addr v7, v14

    filled-new-array {v15, v7}, [I

    move-result-object v7

    invoke-static {v7}, Ll3a;->e([I)I

    move-result v7

    invoke-static {v2, v7, v6}, Ll3a;->r(Landroid/view/View;II)V

    goto :goto_6

    :cond_8
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getTop()I

    move-result v7

    sub-int v7, v7, v21

    invoke-static {v2, v7, v6}, Ll3a;->u(Landroid/view/View;II)V

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v6, v6, v6}, Landroid/view/View;->layout(IIII)V

    :goto_6
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    if-lez v6, :cond_9

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v2

    goto :goto_7

    :cond_9
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    if-lez v5, :cond_a

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    goto :goto_7

    :cond_a
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getTop()I

    move-result v2

    :goto_7
    sub-int v2, v2, v21

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-static {v13, v5, v6}, Ll3a;->r(Landroid/view/View;II)V

    invoke-static {v8, v2, v1}, Ll3a;->r(Landroid/view/View;II)V

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    sub-int v2, v21, v19

    sub-int/2addr v1, v2

    sub-int v2, v3, v2

    invoke-static {v12, v1, v2}, Ll3a;->s(Landroid/view/View;II)V

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-double v1, v1

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-double v5, v5

    const-wide v7, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v5, v7

    cmpl-double v1, v1, v5

    if-lez v1, :cond_b

    move/from16 v10, p1

    :goto_8
    move-object/from16 v5, v22

    goto :goto_9

    :cond_b
    const/4 v10, 0x0

    goto :goto_8

    :goto_9
    invoke-virtual {v5, v10}, Lcom/my/target/c3;->c(Z)V

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v1

    goto :goto_a

    :cond_c
    move v1, v4

    :goto_a
    sub-int v1, v1, v21

    sub-int v2, v3, v21

    move-object/from16 v3, v18

    invoke-static {v3, v1, v2}, Ll3a;->s(Landroid/view/View;II)V

    move-object/from16 v2, v17

    move/from16 v3, v21

    invoke-static {v2, v1, v3}, Ll3a;->u(Landroid/view/View;II)V

    move-object v0, v11

    :goto_b
    const/4 v1, 0x0

    goto/16 :goto_15

    :cond_d
    move-object/from16 v23, v5

    move/from16 v16, v7

    move-object/from16 v7, v18

    move-object/from16 v5, v22

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v18

    move-object/from16 v22, v7

    iget v7, v0, Lcom/my/target/hg;->J:I

    if-nez v18, :cond_e

    sub-int v18, v7, v19

    move-object/from16 v24, v8

    add-int v8, v2, v18

    move-object/from16 v25, v5

    sub-int v5, v6, v18

    invoke-static {v10, v8, v5}, Ll3a;->m(Landroid/view/View;II)V

    goto :goto_c

    :cond_e
    move-object/from16 v25, v5

    move-object/from16 v24, v8

    add-int v5, v2, v7

    sub-int v8, v6, v7

    invoke-static {v15, v5, v8}, Ll3a;->m(Landroid/view/View;II)V

    :goto_c
    invoke-virtual {v0, v6}, Lcom/my/target/hg;->c(I)Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v1

    invoke-static {v9, v1, v2, v5, v4}, Ll3a;->j(Landroid/view/View;IIII)V

    if-eqz v11, :cond_f

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    goto :goto_d

    :cond_f
    const/4 v5, 0x0

    :goto_d
    add-int/2addr v5, v1

    invoke-static {v11, v1, v2, v5, v4}, Ll3a;->j(Landroid/view/View;IIII)V

    if-eqz v11, :cond_10

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v1

    goto :goto_e

    :cond_10
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v1

    :goto_e
    if-eqz v11, :cond_11

    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v5

    goto :goto_f

    :cond_11
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v5

    :goto_f
    if-eqz v11, :cond_12

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v6

    goto :goto_10

    :cond_12
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v6

    :goto_10
    if-eqz v11, :cond_13

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v8

    :goto_11
    move-object/from16 v18, v10

    goto :goto_12

    :cond_13
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v8

    goto :goto_11

    :goto_12
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v10

    filled-new-array {v5, v10}, [I

    move-result-object v10

    invoke-static {v10}, Ll3a;->e([I)I

    move-result v10

    add-int/2addr v10, v7

    move-object/from16 v26, v15

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    move-object/from16 v27, v11

    iget-object v11, v0, Lcom/my/target/hg;->t:Landroid/widget/TextView;

    move-object/from16 v16, v11

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    filled-new-array {v15, v11}, [I

    move-result-object v11

    invoke-static {v11}, Ll3a;->e([I)I

    move-result v11

    add-int v11, v11, v19

    move/from16 v15, v20

    new-array v0, v15, [Landroid/view/View;

    const/4 v15, 0x0

    aput-object v17, v0, v15

    aput-object v16, v0, p1

    move/from16 v15, v19

    invoke-static {v7, v10, v11, v15, v0}, Ll3a;->g(IIII[Landroid/view/View;)V

    invoke-virtual {v14, v1, v8, v5, v6}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v0

    filled-new-array {v5, v0}, [I

    move-result-object v0

    invoke-static {v0}, Ll3a;->e([I)I

    move-result v0

    move-object/from16 v6, v23

    invoke-virtual {v6, v0, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    const/4 v0, 0x0

    invoke-virtual {v13, v0, v0, v0, v0}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int v2, v7, v15

    sub-int/2addr v1, v2

    sub-int v2, v4, v2

    invoke-static {v12, v2, v1}, Ll3a;->s(Landroid/view/View;II)V

    move-object/from16 v5, v25

    invoke-virtual {v5, v0}, Lcom/my/target/c3;->c(Z)V

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v0

    move-object/from16 v8, v24

    invoke-static {v8, v4, v0}, Ll3a;->r(Landroid/view/View;II)V

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int v0, v0, v21

    add-int/2addr v0, v15

    :goto_13
    move-object/from16 v10, v22

    goto :goto_14

    :cond_14
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int v0, v0, v21

    goto :goto_13

    :cond_15
    sub-int v0, v3, v7

    goto :goto_13

    :goto_14
    invoke-static {v10, v7, v0}, Ll3a;->m(Landroid/view/View;II)V

    move-object/from16 v0, v27

    goto/16 :goto_b

    :cond_16
    move-object/from16 v27, v11

    move-object/from16 v0, v17

    move/from16 v15, v19

    move-object/from16 v10, v22

    move-object/from16 v6, v23

    move-object/from16 v8, v24

    move-object/from16 v5, v25

    invoke-static {v0, v7, v7}, Ll3a;->r(Landroid/view/View;II)V

    move/from16 v0, v16

    invoke-static {v6, v0, v1}, Ll3a;->u(Landroid/view/View;II)V

    invoke-static {v9, v1, v2, v3, v4}, Ll3a;->j(Landroid/view/View;IIII)V

    move-object/from16 v0, v27

    invoke-static {v0, v1, v2, v3, v4}, Ll3a;->j(Landroid/view/View;IIII)V

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v11

    invoke-virtual {v14, v1, v2, v4, v11}, Landroid/view/View;->layout(IIII)V

    const/4 v1, 0x0

    invoke-virtual {v13, v1, v1, v1, v1}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-static {v8, v2, v4}, Ll3a;->r(Landroid/view/View;II)V

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v4, v21, v15

    sub-int/2addr v2, v4

    sub-int v6, v7, v15

    sub-int v6, v3, v6

    invoke-static {v12, v2, v6}, Ll3a;->s(Landroid/view/View;II)V

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v4

    sub-int/2addr v3, v7

    invoke-static {v10, v2, v3}, Ll3a;->s(Landroid/view/View;II)V

    move/from16 v2, p1

    invoke-virtual {v5, v2}, Lcom/my/target/c3;->c(Z)V

    :goto_15
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    goto :goto_16

    :cond_17
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v2

    :goto_16
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    goto :goto_17

    :cond_18
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v3

    :goto_17
    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    goto :goto_18

    :cond_19
    move v5, v1

    :goto_18
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v4

    filled-new-array {v5, v4}, [I

    move-result-object v4

    invoke-static {v4}, Ll3a;->e([I)I

    move-result v4

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    goto :goto_19

    :cond_1a
    move v0, v1

    :goto_19
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-static {v0}, Ll3a;->e([I)I

    move-result v0

    move-object/from16 v1, p0

    iget-object v5, v1, Lcom/my/target/hg;->m:Landroid/widget/ProgressBar;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1b

    invoke-static {v5, v2, v3, v4, v0}, Ll3a;->j(Landroid/view/View;IIII)V

    :cond_1b
    iget-object v5, v1, Lcom/my/target/hg;->h:Lcom/my/target/g5;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_1c

    return-void

    :cond_1c
    iget-object v1, v1, Lcom/my/target/hg;->i:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_1d

    invoke-static {v5, v2, v3, v4, v0}, Ll3a;->j(Landroid/view/View;IIII)V

    return-void

    :cond_1d
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int v6, v6, v21

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v6

    sub-int/2addr v4, v2

    sub-int/2addr v4, v7

    const/16 v20, 0x2

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v2

    sub-int/2addr v0, v3

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v3

    invoke-static {v5, v0, v4}, Ll3a;->r(Landroid/view/View;II)V

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v2

    add-int v2, v2, v21

    invoke-static {v1, v0, v2}, Ll3a;->r(Landroid/view/View;II)V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 17

    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    iget v3, v0, Lcom/my/target/hg;->M:I

    if-lez v3, :cond_1

    iget v4, v0, Lcom/my/target/hg;->N:I

    if-lez v4, :cond_1

    int-to-float v3, v3

    int-to-float v4, v4

    div-float v5, v3, v4

    int-to-float v6, v1

    div-float v3, v6, v3

    int-to-float v7, v2

    div-float v4, v7, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    cmpl-float v3, v4, v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    cmpl-float v3, v5, v3

    if-lez v3, :cond_0

    div-float/2addr v6, v5

    float-to-int v3, v6

    move v4, v3

    move v3, v1

    goto :goto_1

    :cond_0
    mul-float/2addr v7, v5

    float-to-int v3, v7

    :goto_0
    move v4, v2

    goto :goto_1

    :cond_1
    move v3, v1

    goto :goto_0

    :goto_1
    iget-object v5, v0, Lcom/my/target/hg;->L:Landroid/view/View;

    const/high16 v6, -0x80000000

    invoke-static {v5, v3, v4, v6}, Ll3a;->i(Landroid/view/View;III)V

    iget-object v7, v0, Lcom/my/target/hg;->j:Lcom/my/target/zh;

    invoke-static {v7, v3, v4, v6}, Ll3a;->i(Landroid/view/View;III)V

    iget-object v8, v0, Lcom/my/target/hg;->n:Landroid/view/View;

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v8, v3, v4, v9}, Ll3a;->i(Landroid/view/View;III)V

    iget v3, v0, Lcom/my/target/hg;->H:I

    iget-object v4, v0, Lcom/my/target/hg;->k:Lcom/my/target/zh;

    invoke-static {v4, v3, v3, v6}, Ll3a;->i(Landroid/view/View;III)V

    iget v3, v0, Lcom/my/target/hg;->F:I

    mul-int/lit8 v3, v3, 0x2

    iget v8, v0, Lcom/my/target/hg;->E:I

    add-int/2addr v3, v8

    iget-object v10, v0, Lcom/my/target/hg;->b:Lcom/my/target/e6;

    invoke-static {v10, v3, v3, v9}, Ll3a;->i(Landroid/view/View;III)V

    iget-object v10, v0, Lcom/my/target/hg;->d:Lcom/my/target/e6;

    invoke-static {v10, v3, v3, v9}, Ll3a;->i(Landroid/view/View;III)V

    iget-object v10, v0, Lcom/my/target/hg;->u:Lcom/my/target/fk;

    invoke-static {v10, v8, v8, v9}, Ll3a;->i(Landroid/view/View;III)V

    iget-object v10, v0, Lcom/my/target/hg;->l:Lcom/my/target/m;

    invoke-static {v10, v3, v3, v9}, Ll3a;->i(Landroid/view/View;III)V

    const/16 v3, 0x8

    iget-object v11, v0, Lcom/my/target/hg;->t:Landroid/widget/TextView;

    iget-object v12, v0, Lcom/my/target/hg;->p:Landroid/view/View;

    iget-object v13, v0, Lcom/my/target/hg;->o:Landroid/view/View;

    const/4 v14, 0x0

    iget-object v15, v0, Lcom/my/target/hg;->e:Lcom/my/target/bg;

    iget-object v9, v0, Lcom/my/target/hg;->s:Landroid/widget/TextView;

    iget-object v6, v0, Lcom/my/target/hg;->r:Landroid/widget/TextView;

    if-ge v1, v2, :cond_7

    invoke-virtual {v15, v14}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v12, v14}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v11, v3}, Landroid/view/View;->setVisibility(I)V

    sub-int v8, v1, v8

    const/high16 v11, -0x80000000

    invoke-static {v15, v8, v2, v11}, Ll3a;->i(Landroid/view/View;III)V

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v13, v1, v8, v11}, Ll3a;->i(Landroid/view/View;III)V

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    goto :goto_2

    :cond_2
    move v5, v14

    :goto_2
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    filled-new-array {v5, v7}, [I

    move-result-object v5

    invoke-static {v5}, Ll3a;->e([I)I

    move-result v5

    int-to-double v7, v5

    const-wide v15, 0x3ff999999999999aL    # 1.6

    mul-double/2addr v7, v15

    int-to-double v14, v2

    cmpl-double v5, v7, v14

    if-lez v5, :cond_3

    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    const/4 v5, 0x0

    invoke-virtual {v9, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_3
    const/4 v5, 0x0

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_4
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v9, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_5
    invoke-virtual {v9, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    :goto_4
    iget v3, v0, Lcom/my/target/hg;->B:I

    mul-int/lit8 v5, v3, 0x2

    mul-int/lit8 v3, v3, 0x4

    sub-int v3, v1, v3

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v3, v7

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    const/high16 v4, -0x80000000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget v7, v0, Lcom/my/target/hg;->I:I

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v7, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    iget-object v8, v0, Lcom/my/target/hg;->q:Landroid/widget/Button;

    invoke-virtual {v8, v3, v7}, Landroid/view/View;->measure(II)V

    sub-int v3, v1, v5

    sub-int v5, v2, v5

    invoke-static {v6, v3, v5, v4}, Ll3a;->i(Landroid/view/View;III)V

    invoke-static {v9, v3, v5, v4}, Ll3a;->i(Landroid/view/View;III)V

    invoke-static {v12, v1, v2, v11}, Ll3a;->i(Landroid/view/View;III)V

    goto :goto_7

    :cond_7
    const/high16 v4, -0x80000000

    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v9, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v13, v3}, Landroid/view/View;->setVisibility(I)V

    const/4 v6, 0x0

    invoke-virtual {v15, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v1}, Lcom/my/target/hg;->c(I)Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {v11, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v12, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-static {v11, v1, v2, v4}, Ll3a;->i(Landroid/view/View;III)V

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    goto :goto_5

    :cond_8
    const/4 v14, 0x0

    :goto_5
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    filled-new-array {v14, v3}, [I

    move-result-object v3

    invoke-static {v3}, Ll3a;->e([I)I

    move-result v3

    sub-int v3, v1, v3

    invoke-static {v15, v3, v3, v4}, Ll3a;->i(Landroid/view/View;III)V

    goto :goto_6

    :cond_9
    invoke-virtual {v11, v3}, Landroid/view/View;->setVisibility(I)V

    const/4 v5, 0x0

    invoke-virtual {v12, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-static {v15, v1, v2, v4}, Ll3a;->i(Landroid/view/View;III)V

    :goto_6
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v12, v3, v4, v11}, Ll3a;->i(Landroid/view/View;III)V

    :goto_7
    iget-object v3, v0, Lcom/my/target/hg;->h:Lcom/my/target/g5;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    iget v5, v0, Lcom/my/target/hg;->C:I

    if-nez v4, :cond_a

    invoke-static {v3, v5, v5, v11}, Ll3a;->i(Landroid/view/View;III)V

    iget-object v4, v0, Lcom/my/target/hg;->i:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_a

    const/high16 v6, -0x80000000

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-static {v3, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v4, v6, v3}, Landroid/view/View;->measure(II)V

    :cond_a
    iget-object v3, v0, Lcom/my/target/hg;->m:Landroid/widget/ProgressBar;

    invoke-static {v3, v5, v5, v11}, Ll3a;->i(Landroid/view/View;III)V

    iget-object v3, v0, Lcom/my/target/hg;->f:Lcom/my/target/dg;

    iget v4, v0, Lcom/my/target/hg;->D:I

    invoke-static {v3, v1, v4, v11}, Ll3a;->i(Landroid/view/View;III)V

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setBanner(Lxda;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/my/target/hg;->setBanner(Lxda;)V

    iget-object v0, p1, Lxda;->Z:Lkha;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/my/target/hg;->f:Lcom/my/target/dg;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/my/target/hg;->b:Lcom/my/target/e6;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v3, v0, Lkha;->X:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/my/target/hg;->w:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v3, v2}, Lcom/my/target/e6;->a(Landroid/graphics/Bitmap;Z)V

    const-string v3, "sound_off"

    invoke-virtual {v1, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/my/target/hg;->v:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v3, v2}, Lcom/my/target/e6;->a(Landroid/graphics/Bitmap;Z)V

    const-string v3, "sound_on"

    invoke-virtual {v1, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v3, p0, Lcom/my/target/hg;->h:Lcom/my/target/g5;

    iget-object v4, p0, Lcom/my/target/hg;->x:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Lcom/my/target/g5;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iput v2, p0, Lcom/my/target/hg;->P:I

    iget-object v2, v0, Lkha;->h0:Lxha;

    check-cast v2, Lrn9;

    iget-object v0, v0, Lkha;->S:Lh14;

    if-eqz v2, :cond_2

    iget v3, v2, Lxha;->b:I

    iput v3, p0, Lcom/my/target/hg;->M:I

    iget v2, v2, Lxha;->c:I

    iput v2, p0, Lcom/my/target/hg;->N:I

    :cond_2
    iget v2, p0, Lcom/my/target/hg;->M:I

    if-lez v2, :cond_3

    iget v3, p0, Lcom/my/target/hg;->N:I

    if-gtz v3, :cond_4

    :cond_3
    if-eqz v0, :cond_4

    iget v2, v0, Lxha;->b:I

    iput v2, p0, Lcom/my/target/hg;->M:I

    iget v0, v0, Lxha;->c:I

    iput v0, p0, Lcom/my/target/hg;->N:I

    :cond_4
    if-lez v2, :cond_5

    iget v0, p0, Lcom/my/target/hg;->N:I

    if-gtz v0, :cond_7

    :cond_5
    iget-object p1, p1, Lao9;->p:Lh14;

    if-eqz p1, :cond_7

    iget v0, p1, Lxha;->b:I

    iput v0, p0, Lcom/my/target/hg;->M:I

    iget v2, p1, Lxha;->c:I

    iput v2, p0, Lcom/my/target/hg;->N:I

    if-lez v0, :cond_6

    if-gtz v2, :cond_7

    :cond_6
    iget-object p1, p1, Lxha;->d:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/my/target/hg;->M:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/my/target/hg;->N:I

    :cond_7
    iget-boolean p1, p0, Lcom/my/target/hg;->R:Z

    iget-object v0, p0, Lcom/my/target/hg;->L:Landroid/view/View;

    iget-object v2, p0, Lcom/my/target/hg;->n:Landroid/view/View;

    if-eqz p1, :cond_9

    new-instance p1, Lbo6;

    const/4 v3, 0x1

    invoke-direct {p1, p0, v3}, Lbo6;-><init>(Landroid/view/KeyEvent$Callback;I)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/my/target/hg;->A:Lcom/my/target/c1;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v1, Lco6;

    const/4 v3, 0x2

    invoke-direct {v1, p0, v3}, Lco6;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    invoke-virtual {v2, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance p1, Lv0a;

    invoke-direct {p1, p0}, Lv0a;-><init>(Lcom/my/target/kg;)V

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_9
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v0, :cond_a

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
