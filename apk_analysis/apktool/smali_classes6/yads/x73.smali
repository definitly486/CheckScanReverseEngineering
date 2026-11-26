.class public final Lyads/x73;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public final b:Lyads/u85;

.field public final c:Lyads/u85;

.field public final d:Lyads/u85;

.field public final e:Lyads/z73;

.field public final f:Lyads/z73;

.field public final synthetic g:Lyads/b83;


# direct methods
.method public constructor <init>(Lyads/b83;)V
    .locals 2

    iput-object p1, p0, Lyads/x73;->g:Lyads/b83;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput p1, p0, Lyads/x73;->a:I

    new-instance p1, Lyads/u85;

    new-instance v0, Lb80;

    const/16 v1, 0x9

    invoke-direct {v0, p0, v1}, Lb80;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p1, v0}, Lyads/u85;-><init>(Lll3;)V

    iput-object p1, p0, Lyads/x73;->b:Lyads/u85;

    new-instance p1, Lyads/u85;

    new-instance v0, Ljf;

    const/16 v1, 0x8

    invoke-direct {v0, p0, v1}, Ljf;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p1, v0}, Lyads/u85;-><init>(Lll3;)V

    iput-object p1, p0, Lyads/x73;->c:Lyads/u85;

    new-instance p1, Lyads/u85;

    new-instance v0, Lqj;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lqj;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p1, v0}, Lyads/u85;-><init>(Lll3;)V

    iput-object p1, p0, Lyads/x73;->d:Lyads/u85;

    new-instance p1, Lyads/z73;

    invoke-direct {p1}, Lyads/z73;-><init>()V

    iput-object p1, p0, Lyads/x73;->e:Lyads/z73;

    new-instance p1, Lyads/z73;

    invoke-direct {p1}, Lyads/z73;-><init>()V

    iput-object p1, p0, Lyads/x73;->f:Lyads/z73;

    return-void
.end method

.method public static a(Ljava/util/List;)I
    .locals 1

    .line 268
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 269
    :cond_0
    invoke-static {p0}, Lqn1;->b0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/y73;

    .line 270
    iget v0, p0, Lyads/y73;->a:I

    .line 271
    iget p0, p0, Lyads/y73;->c:I

    add-int/2addr v0, p0

    return v0
.end method

.method public static final a(Lyads/x73;)Ljava/util/List;
    .locals 15

    iget-object v0, p0, Lyads/x73;->g:Lyads/b83;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lkx2;->b:Lkx2;

    return-object p0

    :cond_0
    iget v0, p0, Lyads/x73;->a:I

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lyads/x73;->g:Lyads/b83;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-array v2, v0, [I

    new-array v3, v0, [I

    iget-object p0, p0, Lyads/x73;->g:Lyads/b83;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :goto_0
    if-ge v7, v4, :cond_7

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_6

    invoke-static {v3}, Lyr;->Y([I)Ljava/lang/Integer;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    :goto_1
    move-object v10, v8

    goto :goto_2

    :cond_1
    move v9, v5

    goto :goto_1

    :goto_2
    invoke-static {v9, v3}, Lyr;->P(I[I)I

    move-result v8

    add-int/2addr v6, v9

    invoke-static {v5, v0}, Lkx6;->n(II)Ly74;

    move-result-object v11

    iget v12, v11, Lw74;->b:I

    iget v11, v11, Lw74;->c:I

    if-gt v12, v11, :cond_2

    :goto_3
    aget v13, v3, v12

    sub-int/2addr v13, v9

    invoke-static {v5, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    aput v13, v3, v12

    if-eq v12, v11, :cond_2

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_2
    sget v9, Lyads/yh2;->b:I

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v9, Lyads/ro1;

    invoke-virtual {v9}, Lyads/ro1;->a()I

    move-result v10

    sub-int v11, v0, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-virtual {v9}, Lyads/ro1;->c()I

    move-result v11

    move v9, v6

    new-instance v6, Lyads/v73;

    invoke-direct/range {v6 .. v11}, Lyads/v73;-><init>(IIIII)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int v6, v8, v10

    :goto_4
    if-ge v8, v6, :cond_5

    aget v10, v3, v8

    if-lez v10, :cond_4

    aget v10, v2, v8

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lyads/v73;

    iget v12, v10, Lyads/v73;->b:I

    iget v13, v10, Lyads/v73;->d:I

    add-int/2addr v13, v12

    :goto_5
    if-ge v12, v13, :cond_3

    aget v14, v3, v12

    aput v5, v3, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_3
    iget v12, v10, Lyads/v73;->c:I

    sub-int v12, v9, v12

    iput v12, v10, Lyads/v73;->e:I

    :cond_4
    aput v7, v2, v8

    aput v11, v3, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_5
    move v6, v9

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_7
    const/4 p0, 0x1

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_7

    :cond_8
    aget v2, v3, v5

    if-ge v2, p0, :cond_9

    move v2, p0

    :cond_9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v4, Ly74;

    sub-int/2addr v0, p0

    invoke-direct {v4, p0, v0, p0}, Lw74;-><init>(III)V

    invoke-virtual {v4}, Lw74;->b()Lx74;

    move-result-object v0

    :cond_a
    :goto_6
    iget-boolean v4, v0, Lx74;->d:Z

    if-eqz v4, :cond_c

    invoke-virtual {v0}, Lx74;->nextInt()I

    move-result v4

    aget v4, v3, v4

    if-ge v4, p0, :cond_b

    move v4, p0

    :cond_b
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Integer;->compareTo(Ljava/lang/Object;)I

    move-result v6

    if-lez v6, :cond_a

    move-object v2, v4

    goto :goto_6

    :cond_c
    move-object v0, v2

    :goto_7
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :cond_d
    invoke-static {v1}, Lqn1;->b0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/v73;

    iget v0, v0, Lyads/v73;->c:I

    add-int/2addr v0, p0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    :goto_8
    if-ge v5, p0, :cond_f

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/v73;

    iget v3, v2, Lyads/v73;->c:I

    iget v4, v2, Lyads/v73;->e:I

    add-int/2addr v4, v3

    if-le v4, v0, :cond_e

    sub-int v3, v0, v3

    iput v3, v2, Lyads/v73;->e:I

    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_f
    return-object v1
.end method

.method public static a(Ljava/util/ArrayList;Lyads/z73;)V
    .locals 10

    .line 276
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    move v4, v3

    move v5, v2

    move v6, v5

    :goto_0
    if-ge v3, v0, :cond_1

    .line 277
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 278
    check-cast v7, Lyads/y73;

    .line 279
    invoke-virtual {v7}, Lyads/y73;->c()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 280
    iget v8, v7, Lyads/y73;->d:F

    add-float/2addr v6, v8

    .line 281
    iget v7, v7, Lyads/y73;->c:I

    int-to-float v7, v7

    div-float/2addr v7, v8

    .line 282
    invoke-static {v5, v7}, Ljava/lang/Math;->max(FF)F

    move-result v5

    goto :goto_1

    .line 283
    :cond_0
    iget v7, v7, Lyads/y73;->c:I

    add-int/2addr v4, v7

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 284
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v3, v1

    move v7, v3

    :goto_2
    if-ge v3, v0, :cond_3

    .line 285
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 286
    check-cast v8, Lyads/y73;

    .line 287
    invoke-virtual {v8}, Lyads/y73;->c()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 288
    iget v8, v8, Lyads/y73;->d:F

    mul-float/2addr v8, v5

    float-to-double v8, v8

    .line 289
    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-float v8, v8

    float-to-int v8, v8

    goto :goto_3

    .line 290
    :cond_2
    iget v8, v8, Lyads/y73;->c:I

    :goto_3
    add-int/2addr v7, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 291
    :cond_3
    iget p1, p1, Lyads/z73;->a:I

    invoke-static {p1, v7}, Ljava/lang/Math;->max(II)I

    move-result p1

    sub-int/2addr p1, v4

    .line 292
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v6

    .line 293
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_4
    if-ge v1, v0, :cond_5

    .line 294
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 295
    check-cast v3, Lyads/y73;

    .line 296
    invoke-virtual {v3}, Lyads/y73;->c()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 297
    iget v4, v3, Lyads/y73;->d:F

    mul-float/2addr v4, p1

    float-to-double v4, v4

    .line 298
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-float v4, v4

    float-to-int v4, v4

    .line 299
    iget v5, v3, Lyads/y73;->c:I

    iget v6, v3, Lyads/y73;->b:I

    sub-int/2addr v5, v6

    sub-int v5, v4, v5

    const/4 v6, 0x4

    .line 300
    invoke-static {v3, v5, v4, v2, v6}, Lyads/y73;->a(Lyads/y73;IIFI)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    return-void
.end method

.method public static final b(Lyads/x73;)Ljava/util/List;
    .locals 19

    move-object/from16 v0, p0

    iget v1, v0, Lyads/x73;->a:I

    iget-object v2, v0, Lyads/x73;->e:Lyads/z73;

    iget-object v3, v0, Lyads/x73;->b:Lyads/u85;

    invoke-virtual {v3}, Lyads/u85;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v1, :cond_0

    new-instance v7, Lyads/y73;

    invoke-direct {v7}, Lyads/y73;-><init>()V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lyads/x73;->g:Lyads/b83;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    move v7, v5

    :goto_1
    const/4 v8, 0x1

    if-ge v7, v6, :cond_3

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lyads/v73;

    iget v10, v9, Lyads/v73;->a:I

    invoke-virtual {v1, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    sget v11, Lyads/yh2;->b:I

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v11, Lyads/ro1;

    iget v12, v9, Lyads/v73;->b:I

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    iget v13, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v14, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v9, v9, Lyads/v73;->d:I

    iget v11, v11, Lyads/ro1;->d:F

    if-ne v9, v8, :cond_1

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lyads/y73;

    add-int/2addr v13, v10

    add-int/2addr v13, v14

    iget v9, v8, Lyads/y73;->b:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, v8, Lyads/y73;->b:I

    iget v9, v8, Lyads/y73;->c:I

    invoke-static {v9, v13}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, v8, Lyads/y73;->c:I

    iget v9, v8, Lyads/y73;->d:F

    invoke-static {v9, v11}, Ljava/lang/Math;->max(FF)F

    move-result v9

    iput v9, v8, Lyads/y73;->d:F

    goto :goto_3

    :cond_1
    add-int/lit8 v8, v9, -0x1

    int-to-float v9, v9

    div-float/2addr v11, v9

    if-ltz v8, :cond_2

    move v9, v5

    :goto_2
    add-int v10, v12, v9

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lyads/y73;

    const/4 v13, 0x3

    invoke-static {v10, v5, v5, v11, v13}, Lyads/y73;->a(Lyads/y73;IIFI)V

    if-eq v9, v8, :cond_2

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v0, Lyads/x73;->g:Lyads/b83;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    move v7, v5

    :goto_4
    if-ge v7, v6, :cond_5

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lyads/v73;

    iget v10, v9, Lyads/v73;->a:I

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    sget v11, Lyads/yh2;->b:I

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v11, Lyads/ro1;

    new-instance v12, Lyads/w73;

    iget v13, v9, Lyads/v73;->b:I

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    iget v15, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v10, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v9, v9, Lyads/v73;->d:I

    iget v11, v11, Lyads/ro1;->d:F

    move/from16 v17, v9

    move/from16 v16, v10

    move/from16 v18, v11

    invoke-direct/range {v12 .. v18}, Lyads/w73;-><init>(IIIIIF)V

    if-le v9, v8, :cond_4

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_5
    sget-object v0, Lyads/a83;->b:Lyads/a83;

    invoke-static {v0, v1}, Lnn1;->J(Ljava/util/Comparator;Ljava/util/List;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v3, v5

    :goto_5
    if-ge v3, v0, :cond_f

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lyads/w73;

    iget v7, v6, Lyads/w73;->a:I

    iget v9, v6, Lyads/w73;->e:I

    add-int/2addr v9, v7

    sub-int/2addr v9, v8

    invoke-virtual {v6}, Lyads/w73;->a()I

    move-result v10

    const/4 v11, 0x0

    if-gt v7, v9, :cond_8

    move v15, v5

    move v13, v7

    move v12, v10

    move v14, v11

    :goto_6
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v5, v16

    check-cast v5, Lyads/y73;

    iget v8, v5, Lyads/y73;->c:I

    sub-int/2addr v10, v8

    invoke-virtual {v5}, Lyads/y73;->c()Z

    move-result v8

    if-eqz v8, :cond_6

    iget v5, v5, Lyads/y73;->d:F

    add-float/2addr v14, v5

    goto :goto_7

    :cond_6
    iget v8, v5, Lyads/y73;->b:I

    if-nez v8, :cond_7

    add-int/lit8 v15, v15, 0x1

    :cond_7
    iget v5, v5, Lyads/y73;->c:I

    sub-int/2addr v12, v5

    :goto_7
    if-eq v13, v9, :cond_9

    add-int/lit8 v13, v13, 0x1

    const/4 v5, 0x0

    const/4 v8, 0x1

    goto :goto_6

    :cond_8
    move v12, v10

    move v14, v11

    const/4 v15, 0x0

    :cond_9
    cmpl-float v5, v14, v11

    if-lez v5, :cond_b

    if-gt v7, v9, :cond_e

    :goto_8
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lyads/y73;

    invoke-virtual {v5}, Lyads/y73;->c()Z

    move-result v6

    if-eqz v6, :cond_a

    iget v6, v5, Lyads/y73;->d:F

    div-float/2addr v6, v14

    int-to-float v10, v12

    mul-float/2addr v6, v10

    move/from16 p0, v9

    float-to-double v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-float v6, v8

    float-to-int v6, v6

    iget v8, v5, Lyads/y73;->c:I

    iget v9, v5, Lyads/y73;->b:I

    sub-int/2addr v8, v9

    sub-int v8, v6, v8

    const/4 v13, 0x4

    invoke-static {v5, v8, v6, v11, v13}, Lyads/y73;->a(Lyads/y73;IIFI)V

    move/from16 v9, p0

    :cond_a
    if-eq v7, v9, :cond_e

    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_b
    if-lez v10, :cond_e

    if-gt v7, v9, :cond_e

    :goto_9
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lyads/y73;

    if-lez v15, :cond_d

    iget v8, v5, Lyads/y73;->b:I

    if-nez v8, :cond_c

    invoke-virtual {v5}, Lyads/y73;->c()Z

    move-result v8

    if-nez v8, :cond_c

    div-int v8, v10, v15

    iget v12, v5, Lyads/y73;->b:I

    add-int/2addr v12, v8

    iget v14, v5, Lyads/y73;->c:I

    add-int/2addr v14, v8

    const/4 v13, 0x4

    invoke-static {v5, v12, v14, v11, v13}, Lyads/y73;->a(Lyads/y73;IIFI)V

    goto :goto_a

    :cond_c
    const/4 v13, 0x4

    goto :goto_a

    :cond_d
    const/4 v13, 0x4

    iget v8, v6, Lyads/w73;->e:I

    div-int v8, v10, v8

    iget v12, v5, Lyads/y73;->b:I

    add-int/2addr v12, v8

    iget v14, v5, Lyads/y73;->c:I

    add-int/2addr v14, v8

    invoke-static {v5, v12, v14, v11, v13}, Lyads/y73;->a(Lyads/y73;IIFI)V

    :goto_a
    if-eq v7, v9, :cond_e

    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    :cond_e
    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x0

    const/4 v8, 0x1

    goto/16 :goto_5

    :cond_f
    invoke-static {v4, v2}, Lyads/x73;->a(Ljava/util/ArrayList;Lyads/z73;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v5, 0x0

    :goto_b
    if-ge v5, v0, :cond_10

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/y73;

    iput v1, v2, Lyads/y73;->a:I

    iget v2, v2, Lyads/y73;->c:I

    add-int/2addr v1, v2

    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_10
    return-object v4
.end method

.method public static final c(Lyads/x73;)Ljava/util/List;
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lyads/x73;->b:Lyads/u85;

    invoke-virtual {v1}, Lyads/u85;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lqn1;->b0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/v73;

    iget v2, v1, Lyads/v73;->c:I

    iget v1, v1, Lyads/v73;->e:I

    add-int/2addr v2, v1

    :goto_0
    iget-object v1, v0, Lyads/x73;->f:Lyads/z73;

    iget-object v4, v0, Lyads/x73;->b:Lyads/u85;

    invoke-virtual {v4}, Lyads/u85;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    move v6, v3

    :goto_1
    if-ge v6, v2, :cond_1

    new-instance v7, Lyads/y73;

    invoke-direct {v7}, Lyads/y73;-><init>()V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    iget-object v2, v0, Lyads/x73;->g:Lyads/b83;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    move v7, v3

    :goto_2
    const/4 v8, 0x1

    if-ge v7, v6, :cond_4

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lyads/v73;

    iget v10, v9, Lyads/v73;->a:I

    invoke-virtual {v2, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    sget v11, Lyads/yh2;->b:I

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v11, Lyads/ro1;

    iget v12, v9, Lyads/v73;->c:I

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    iget v13, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v14, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v9, v9, Lyads/v73;->e:I

    iget v11, v11, Lyads/ro1;->c:F

    if-ne v9, v8, :cond_2

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lyads/y73;

    add-int/2addr v13, v10

    add-int/2addr v13, v14

    iget v9, v8, Lyads/y73;->b:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, v8, Lyads/y73;->b:I

    iget v9, v8, Lyads/y73;->c:I

    invoke-static {v9, v13}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, v8, Lyads/y73;->c:I

    iget v9, v8, Lyads/y73;->d:F

    invoke-static {v9, v11}, Ljava/lang/Math;->max(FF)F

    move-result v9

    iput v9, v8, Lyads/y73;->d:F

    goto :goto_4

    :cond_2
    add-int/lit8 v8, v9, -0x1

    int-to-float v9, v9

    div-float/2addr v11, v9

    if-ltz v8, :cond_3

    move v9, v3

    :goto_3
    add-int v10, v12, v9

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lyads/y73;

    const/4 v13, 0x3

    invoke-static {v10, v3, v3, v11, v13}, Lyads/y73;->a(Lyads/y73;IIFI)V

    if-eq v9, v8, :cond_3

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_3
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v0, Lyads/x73;->g:Lyads/b83;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    move v7, v3

    :goto_5
    if-ge v7, v6, :cond_6

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lyads/v73;

    iget v10, v9, Lyads/v73;->a:I

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    sget v11, Lyads/yh2;->b:I

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v11, Lyads/ro1;

    new-instance v12, Lyads/w73;

    iget v13, v9, Lyads/v73;->c:I

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    iget v15, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v10, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v9, v9, Lyads/v73;->e:I

    iget v11, v11, Lyads/ro1;->c:F

    move/from16 v17, v9

    move/from16 v16, v10

    move/from16 v18, v11

    invoke-direct/range {v12 .. v18}, Lyads/w73;-><init>(IIIIIF)V

    if-le v9, v8, :cond_5

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_6
    sget-object v0, Lyads/a83;->b:Lyads/a83;

    invoke-static {v0, v2}, Lnn1;->J(Ljava/util/Comparator;Ljava/util/List;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v4, v3

    :goto_6
    if-ge v4, v0, :cond_10

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lyads/w73;

    iget v7, v6, Lyads/w73;->a:I

    iget v9, v6, Lyads/w73;->e:I

    add-int/2addr v9, v7

    sub-int/2addr v9, v8

    invoke-virtual {v6}, Lyads/w73;->a()I

    move-result v10

    const/4 v11, 0x0

    if-gt v7, v9, :cond_9

    move v15, v3

    move v13, v7

    move v12, v10

    move v14, v11

    :goto_7
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v3, v16

    check-cast v3, Lyads/y73;

    iget v8, v3, Lyads/y73;->c:I

    sub-int/2addr v10, v8

    invoke-virtual {v3}, Lyads/y73;->c()Z

    move-result v8

    if-eqz v8, :cond_7

    iget v3, v3, Lyads/y73;->d:F

    add-float/2addr v14, v3

    goto :goto_8

    :cond_7
    iget v8, v3, Lyads/y73;->b:I

    if-nez v8, :cond_8

    add-int/lit8 v15, v15, 0x1

    :cond_8
    iget v3, v3, Lyads/y73;->c:I

    sub-int/2addr v12, v3

    :goto_8
    if-eq v13, v9, :cond_a

    add-int/lit8 v13, v13, 0x1

    const/4 v3, 0x0

    const/4 v8, 0x1

    goto :goto_7

    :cond_9
    move v12, v10

    move v14, v11

    const/4 v15, 0x0

    :cond_a
    cmpl-float v3, v14, v11

    if-lez v3, :cond_c

    if-gt v7, v9, :cond_f

    :goto_9
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/y73;

    invoke-virtual {v3}, Lyads/y73;->c()Z

    move-result v6

    if-eqz v6, :cond_b

    iget v6, v3, Lyads/y73;->d:F

    div-float/2addr v6, v14

    int-to-float v10, v12

    mul-float/2addr v6, v10

    move/from16 p0, v9

    float-to-double v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-float v6, v8

    float-to-int v6, v6

    iget v8, v3, Lyads/y73;->c:I

    iget v9, v3, Lyads/y73;->b:I

    sub-int/2addr v8, v9

    sub-int v8, v6, v8

    const/4 v13, 0x4

    invoke-static {v3, v8, v6, v11, v13}, Lyads/y73;->a(Lyads/y73;IIFI)V

    move/from16 v9, p0

    :cond_b
    if-eq v7, v9, :cond_f

    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    :cond_c
    if-lez v10, :cond_f

    if-gt v7, v9, :cond_f

    :goto_a
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/y73;

    if-lez v15, :cond_e

    iget v8, v3, Lyads/y73;->b:I

    if-nez v8, :cond_d

    invoke-virtual {v3}, Lyads/y73;->c()Z

    move-result v8

    if-nez v8, :cond_d

    div-int v8, v10, v15

    iget v12, v3, Lyads/y73;->b:I

    add-int/2addr v12, v8

    iget v14, v3, Lyads/y73;->c:I

    add-int/2addr v14, v8

    const/4 v13, 0x4

    invoke-static {v3, v12, v14, v11, v13}, Lyads/y73;->a(Lyads/y73;IIFI)V

    goto :goto_b

    :cond_d
    const/4 v13, 0x4

    goto :goto_b

    :cond_e
    const/4 v13, 0x4

    iget v8, v6, Lyads/w73;->e:I

    div-int v8, v10, v8

    iget v12, v3, Lyads/y73;->b:I

    add-int/2addr v12, v8

    iget v14, v3, Lyads/y73;->c:I

    add-int/2addr v14, v8

    invoke-static {v3, v12, v14, v11, v13}, Lyads/y73;->a(Lyads/y73;IIFI)V

    :goto_b
    if-eq v7, v9, :cond_f

    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    :cond_f
    add-int/lit8 v4, v4, 0x1

    const/4 v3, 0x0

    const/4 v8, 0x1

    goto/16 :goto_6

    :cond_10
    invoke-static {v5, v1}, Lyads/x73;->a(Ljava/util/ArrayList;Lyads/z73;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v0, :cond_11

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/y73;

    iput v1, v2, Lyads/y73;->a:I

    iget v2, v2, Lyads/y73;->c:I

    add-int/2addr v1, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_11
    return-object v5
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 272
    iget-object v0, p0, Lyads/x73;->c:Lyads/u85;

    const/4 v1, 0x0

    .line 273
    iput-object v1, v0, Lyads/u85;->b:Ljava/lang/Object;

    .line 274
    iget-object p0, p0, Lyads/x73;->d:Lyads/u85;

    .line 275
    iput-object v1, p0, Lyads/u85;->b:Ljava/lang/Object;

    return-void
.end method

.method public final b()V
    .locals 2

    .line 426
    iget-object v0, p0, Lyads/x73;->b:Lyads/u85;

    const/4 v1, 0x0

    .line 427
    iput-object v1, v0, Lyads/u85;->b:Ljava/lang/Object;

    .line 428
    invoke-virtual {p0}, Lyads/x73;->a()V

    return-void
.end method
