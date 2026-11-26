.class public final Lyads/zs1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager2/widget/ViewPager2$PageTransformer;


# instance fields
.field public final a:Landroidx/recyclerview/widget/RecyclerView;

.field public final b:Lyads/fs2;

.field public final c:Landroid/util/SparseArray;

.field public final d:I

.field public final e:Lyads/xq1;

.field public final f:Lyads/xs1;

.field public final g:Z


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Lyads/fs2;Landroid/util/SparseArray;ILyads/xq1;Lyads/xs1;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/zs1;->a:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lyads/zs1;->b:Lyads/fs2;

    iput-object p3, p0, Lyads/zs1;->c:Landroid/util/SparseArray;

    iput p4, p0, Lyads/zs1;->d:I

    iput-object p5, p0, Lyads/zs1;->e:Lyads/xq1;

    iput-object p6, p0, Lyads/zs1;->f:Lyads/xs1;

    iput-boolean p7, p0, Lyads/zs1;->g:Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;FD)V
    .locals 4

    .line 725
    iget-object v0, p0, Lyads/zs1;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    .line 726
    iget-object v1, p0, Lyads/zs1;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    instance-of v2, v1, Lyads/wr1;

    if-eqz v2, :cond_0

    check-cast v1, Lyads/wr1;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    return-void

    .line 727
    :cond_1
    iget-object v1, v1, Lyads/wr1;->o:Lyads/vr1;

    .line 728
    invoke-virtual {v1, v0}, Lyads/vr1;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/cn1;

    .line 729
    iget-object v0, v0, Lyads/cn1;->a:Lyads/br0;

    .line 730
    invoke-virtual {v0}, Lyads/br0;->a()Lyads/p41;

    move-result-object v0

    invoke-interface {v0}, Lyads/p41;->u()Lyads/as2;

    move-result-object v0

    iget-object p0, p0, Lyads/zs1;->b:Lyads/fs2;

    invoke-virtual {v0, p0}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 731
    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    sub-double/2addr p3, v0

    invoke-static {p3, p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide p3

    float-to-double v0, p2

    mul-double/2addr p3, v0

    add-double/2addr p3, v2

    double-to-float p0, p3

    .line 732
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public final a(Landroid/view/View;FLyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;)V
    .locals 4

    const/high16 v0, -0x40800000    # -1.0f

    cmpg-float v1, p2, v0

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    move v0, v1

    .line 711
    :cond_1
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 712
    iget-object v2, p0, Lyads/zs1;->b:Lyads/fs2;

    invoke-virtual {p3, v2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lyads/o11;

    invoke-static {p3}, Lyads/jf2;->a(Lyads/o11;)Landroid/view/animation/Interpolator;

    move-result-object p3

    .line 713
    invoke-interface {p3, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p3

    sub-float/2addr v1, p3

    const/4 p3, 0x0

    cmpl-float p2, p2, p3

    .line 714
    iget-object p3, p0, Lyads/zs1;->b:Lyads/fs2;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    if-lez p2, :cond_3

    .line 715
    invoke-virtual {p4, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p2

    invoke-virtual {p0, p1, v1, p2, p3}, Lyads/zs1;->a(Landroid/view/View;FD)V

    .line 716
    iget-object p0, p0, Lyads/zs1;->b:Lyads/fs2;

    invoke-virtual {p5, p0}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p2

    cmpg-double p0, p2, v2

    if-nez p0, :cond_2

    goto :goto_1

    .line 717
    :cond_2
    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->min(DD)D

    move-result-wide p4

    sub-double/2addr p2, v2

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide p2

    float-to-double p6, v1

    mul-double/2addr p2, p6

    add-double/2addr p2, p4

    double-to-float p0, p2

    .line 718
    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleX(F)V

    .line 719
    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleY(F)V

    return-void

    .line 720
    :cond_3
    invoke-virtual {p6, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p2

    invoke-virtual {p0, p1, v1, p2, p3}, Lyads/zs1;->a(Landroid/view/View;FD)V

    .line 721
    iget-object p0, p0, Lyads/zs1;->b:Lyads/fs2;

    invoke-virtual {p7, p0}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p2

    cmpg-double p0, p2, v2

    if-nez p0, :cond_4

    :goto_1
    return-void

    .line 722
    :cond_4
    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->min(DD)D

    move-result-wide p4

    sub-double/2addr p2, v2

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide p2

    float-to-double p6, v1

    mul-double/2addr p2, p6

    add-double/2addr p2, p4

    double-to-float p0, p2

    .line 723
    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleX(F)V

    .line 724
    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public final a(Landroid/view/View;FZ)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Lyads/zs1;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    iget v4, v0, Lyads/zs1;->d:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    goto/16 :goto_16

    :cond_1
    iget-object v5, v0, Lyads/zs1;->f:Lyads/xs1;

    iget-object v6, v0, Lyads/zs1;->e:Lyads/xq1;

    instance-of v6, v6, Lyads/vq1;

    const/4 v7, 0x0

    cmpg-float v8, v2, v7

    const/4 v9, 0x1

    if-nez v8, :cond_2

    move/from16 p3, v7

    move/from16 v14, p3

    move v12, v8

    goto :goto_2

    :cond_2
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v10

    float-to-int v10, v10

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-int v11, v11

    if-gt v9, v11, :cond_3

    move v13, v3

    move v14, v7

    move v12, v9

    :goto_0
    invoke-virtual {v5, v13, v10}, Lyads/xs1;->a(II)F

    move-result v15

    add-float/2addr v14, v15

    sub-int/2addr v13, v10

    if-eq v12, v11, :cond_4

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_3
    move v13, v3

    move v14, v7

    :cond_4
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v11

    move/from16 p3, v7

    move v12, v8

    float-to-double v7, v11

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-float v7, v7

    sub-float/2addr v11, v7

    cmpl-float v7, v11, p3

    if-lez v7, :cond_5

    invoke-virtual {v5, v13, v10}, Lyads/xs1;->a(II)F

    move-result v7

    mul-float/2addr v7, v11

    goto :goto_1

    :cond_5
    move/from16 v7, p3

    :goto_1
    add-float/2addr v14, v7

    :goto_2
    if-eqz v6, :cond_6

    goto/16 :goto_14

    :cond_6
    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-float v8, v10

    float-to-int v8, v8

    sub-int v8, v3, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-float v6, v6

    float-to-int v6, v6

    sub-int v6, v3, v6

    iget v7, v5, Lyads/xs1;->a:I

    int-to-float v7, v7

    iget-object v10, v5, Lyads/xs1;->d:Lyads/ts1;

    iget v11, v10, Lyads/ts1;->g:F

    sub-float/2addr v7, v11

    iget v10, v10, Lyads/ts1;->h:F

    sub-float/2addr v7, v10

    iget-object v10, v5, Lyads/xs1;->c:Lyads/ys1;

    invoke-virtual {v10, v8}, Lyads/ys1;->a(I)Ljava/lang/Float;

    move-result-object v10

    if-eqz v10, :cond_21

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    cmpl-float v13, v10, v7

    if-ltz v13, :cond_7

    :goto_3
    move/from16 v16, v9

    :goto_4
    const/high16 v17, 0x3f800000    # 1.0f

    goto :goto_7

    :cond_7
    if-eq v8, v6, :cond_8

    iget v13, v5, Lyads/xs1;->b:F

    iget-object v15, v5, Lyads/xs1;->c:Lyads/ys1;

    invoke-virtual {v15, v6}, Lyads/ys1;->a(I)Ljava/lang/Float;

    move-result-object v15

    if-eqz v15, :cond_21

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    add-float/2addr v15, v13

    add-float/2addr v10, v15

    cmpl-float v13, v10, v7

    if-ltz v13, :cond_8

    goto :goto_3

    :cond_8
    add-int/lit8 v13, v8, -0x1

    :goto_5
    if-ge v4, v13, :cond_a

    iget v15, v5, Lyads/xs1;->b:F

    move/from16 v16, v9

    iget-object v9, v5, Lyads/xs1;->c:Lyads/ys1;

    invoke-virtual {v9, v13}, Lyads/ys1;->a(I)Ljava/lang/Float;

    move-result-object v9

    if-eqz v9, :cond_b

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    add-float/2addr v9, v15

    add-float/2addr v10, v9

    cmpl-float v9, v10, v7

    if-ltz v9, :cond_9

    goto :goto_4

    :cond_9
    add-int/lit8 v13, v13, -0x1

    move/from16 v9, v16

    goto :goto_5

    :cond_a
    move/from16 v16, v9

    :cond_b
    add-int/lit8 v9, v6, 0x1

    iget-object v13, v5, Lyads/xs1;->f:Lyads/wr1;

    iget-object v13, v13, Lyads/wr1;->o:Lyads/vr1;

    invoke-virtual {v13}, Lv;->size()I

    move-result v13

    :goto_6
    if-ge v9, v13, :cond_21

    iget v15, v5, Lyads/xs1;->b:F

    const/high16 v17, 0x3f800000    # 1.0f

    iget-object v11, v5, Lyads/xs1;->c:Lyads/ys1;

    invoke-virtual {v11, v9}, Lyads/ys1;->a(I)Ljava/lang/Float;

    move-result-object v11

    if-eqz v11, :cond_21

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    add-float/2addr v11, v15

    add-float/2addr v10, v11

    cmpl-float v11, v10, v7

    if-ltz v11, :cond_20

    :goto_7
    iget-boolean v7, v5, Lyads/xs1;->e:Z

    if-eqz v7, :cond_c

    goto/16 :goto_14

    :cond_c
    iget-object v7, v5, Lyads/xs1;->g:Lyads/rr1;

    sget-object v9, Lyads/rr1;->e:Lyads/rr1;

    if-ne v7, v9, :cond_d

    goto/16 :goto_b

    :cond_d
    if-gtz v12, :cond_e

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v7

    float-to-double v9, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    double-to-float v9, v9

    sub-float/2addr v7, v9

    goto :goto_8

    :cond_e
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v7

    float-to-double v9, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    double-to-float v9, v9

    sub-float/2addr v7, v9

    cmpl-float v9, v7, p3

    if-lez v9, :cond_f

    sub-float v7, v17, v7

    goto :goto_8

    :cond_f
    move/from16 v7, p3

    :goto_8
    iget-object v9, v5, Lyads/xs1;->c:Lyads/ys1;

    invoke-virtual {v9, v8}, Lyads/ys1;->c(I)Ljava/lang/Float;

    move-result-object v9

    if-eqz v9, :cond_10

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    iget-object v10, v5, Lyads/xs1;->c:Lyads/ys1;

    invoke-virtual {v10, v6}, Lyads/ys1;->c(I)Ljava/lang/Float;

    move-result-object v10

    if-eqz v10, :cond_10

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    sub-float v11, v17, v7

    mul-float/2addr v11, v9

    mul-float/2addr v10, v7

    add-float/2addr v10, v11

    iget-object v9, v5, Lyads/xs1;->d:Lyads/ts1;

    iget v9, v9, Lyads/ts1;->g:F

    sub-float/2addr v10, v9

    goto :goto_9

    :cond_10
    move/from16 v10, p3

    :goto_9
    cmpg-float v9, v10, p3

    if-nez v9, :cond_11

    goto :goto_b

    :cond_11
    iget-object v9, v5, Lyads/xs1;->c:Lyads/ys1;

    invoke-virtual {v9, v8}, Lyads/ys1;->a(I)Ljava/lang/Float;

    move-result-object v9

    if-eqz v9, :cond_15

    invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F

    move-result v9

    mul-float/2addr v9, v7

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v7, v9, v7

    if-ltz v7, :cond_12

    goto :goto_b

    :cond_12
    add-int/lit8 v7, v8, -0x1

    :goto_a
    if-ge v4, v7, :cond_14

    iget-object v11, v5, Lyads/xs1;->c:Lyads/ys1;

    invoke-virtual {v11, v7}, Lyads/ys1;->a(I)Ljava/lang/Float;

    move-result-object v11

    if-eqz v11, :cond_15

    invoke-virtual {v11}, Ljava/lang/Number;->floatValue()F

    move-result v11

    iget v12, v5, Lyads/xs1;->b:F

    add-float/2addr v11, v12

    add-float/2addr v9, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v11

    cmpl-float v11, v9, v11

    if-ltz v11, :cond_13

    goto :goto_b

    :cond_13
    add-int/lit8 v7, v7, -0x1

    goto :goto_a

    :cond_14
    sub-float/2addr v9, v10

    goto :goto_c

    :cond_15
    :goto_b
    move/from16 v9, p3

    :goto_c
    cmpg-float v4, v9, p3

    if-nez v4, :cond_1f

    iget-object v4, v5, Lyads/xs1;->g:Lyads/rr1;

    sget-object v7, Lyads/rr1;->g:Lyads/rr1;

    if-ne v4, v7, :cond_16

    goto/16 :goto_f

    :cond_16
    iget-object v4, v5, Lyads/xs1;->c:Lyads/ys1;

    invoke-virtual {v4, v8}, Lyads/ys1;->b(I)Ljava/lang/Float;

    move-result-object v4

    if-eqz v4, :cond_1d

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v7, v5, Lyads/xs1;->c:Lyads/ys1;

    invoke-virtual {v7, v6}, Lyads/ys1;->b(I)Ljava/lang/Float;

    move-result-object v7

    if-eqz v7, :cond_1d

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    cmpl-float v8, v2, p3

    if-lez v8, :cond_17

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-float v8, v8

    sub-float/2addr v2, v8

    goto :goto_d

    :cond_17
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-float v8, v8

    sub-float/2addr v2, v8

    cmpl-float v8, v2, p3

    if-lez v8, :cond_18

    sub-float v2, v17, v2

    goto :goto_d

    :cond_18
    move/from16 v2, p3

    :goto_d
    mul-float/2addr v4, v2

    move/from16 v8, v17

    invoke-static {v8, v2, v7, v4}, Li8;->b(FFFF)F

    move-result v4

    iget-object v7, v5, Lyads/xs1;->d:Lyads/ts1;

    iget v7, v7, Lyads/ts1;->h:F

    sub-float/2addr v4, v7

    cmpg-float v7, v4, p3

    if-nez v7, :cond_19

    goto :goto_f

    :cond_19
    iget-object v7, v5, Lyads/xs1;->c:Lyads/ys1;

    invoke-virtual {v7, v6}, Lyads/ys1;->a(I)Ljava/lang/Float;

    move-result-object v7

    if-eqz v7, :cond_1d

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    mul-float/2addr v7, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v7, v2

    if-ltz v2, :cond_1a

    goto :goto_f

    :cond_1a
    add-int/lit8 v6, v6, 0x1

    iget-object v2, v5, Lyads/xs1;->f:Lyads/wr1;

    iget-object v2, v2, Lyads/wr1;->o:Lyads/vr1;

    invoke-virtual {v2}, Lv;->size()I

    move-result v2

    :goto_e
    if-ge v6, v2, :cond_1c

    iget-object v8, v5, Lyads/xs1;->c:Lyads/ys1;

    invoke-virtual {v8, v6}, Lyads/ys1;->a(I)Ljava/lang/Float;

    move-result-object v8

    if-eqz v8, :cond_1d

    invoke-virtual {v8}, Ljava/lang/Number;->floatValue()F

    move-result v8

    iget v9, v5, Lyads/xs1;->b:F

    add-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v8, v7, v8

    if-ltz v8, :cond_1b

    goto :goto_f

    :cond_1b
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :cond_1c
    sub-float/2addr v4, v7

    goto :goto_10

    :cond_1d
    :goto_f
    move/from16 v4, p3

    :goto_10
    cmpg-float v2, v4, p3

    if-nez v2, :cond_1e

    goto/16 :goto_14

    :cond_1e
    move v7, v4

    goto/16 :goto_15

    :cond_1f
    move v7, v9

    goto/16 :goto_15

    :cond_20
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_6

    :cond_21
    if-gtz v12, :cond_22

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v9, v2

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    double-to-float v7, v9

    sub-float/2addr v2, v7

    goto :goto_11

    :cond_22
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v9, v2

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    double-to-float v7, v9

    sub-float/2addr v2, v7

    cmpl-float v7, v2, p3

    if-lez v7, :cond_23

    const/high16 v17, 0x3f800000    # 1.0f

    sub-float v2, v17, v2

    goto :goto_11

    :cond_23
    move/from16 v2, p3

    :goto_11
    iget-object v7, v5, Lyads/xs1;->c:Lyads/ys1;

    invoke-virtual {v7, v8}, Lyads/ys1;->a(I)Ljava/lang/Float;

    move-result-object v7

    if-eqz v7, :cond_26

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    mul-float/2addr v7, v2

    add-int/lit8 v9, v8, -0x1

    :goto_12
    iget-object v10, v5, Lyads/xs1;->c:Lyads/ys1;

    if-ge v4, v9, :cond_24

    invoke-virtual {v10, v9}, Lyads/ys1;->a(I)Ljava/lang/Float;

    move-result-object v10

    if-eqz v10, :cond_26

    invoke-virtual {v10}, Ljava/lang/Number;->floatValue()F

    move-result v10

    iget v11, v5, Lyads/xs1;->b:F

    add-float/2addr v10, v11

    add-float/2addr v7, v10

    add-int/lit8 v9, v9, -0x1

    goto :goto_12

    :cond_24
    invoke-virtual {v10, v8}, Lyads/ys1;->c(I)Ljava/lang/Float;

    move-result-object v4

    if-eqz v4, :cond_25

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v8, v5, Lyads/xs1;->c:Lyads/ys1;

    invoke-virtual {v8, v6}, Lyads/ys1;->c(I)Ljava/lang/Float;

    move-result-object v6

    if-eqz v6, :cond_25

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    const/high16 v17, 0x3f800000    # 1.0f

    sub-float v11, v17, v2

    mul-float/2addr v11, v4

    mul-float/2addr v6, v2

    add-float/2addr v6, v11

    iget-object v2, v5, Lyads/xs1;->d:Lyads/ts1;

    iget v2, v2, Lyads/ts1;->g:F

    sub-float v2, v6, v2

    goto :goto_13

    :cond_25
    move/from16 v2, p3

    :goto_13
    sub-float/2addr v7, v2

    goto :goto_15

    :cond_26
    :goto_14
    move/from16 v7, p3

    :goto_15
    sub-float v4, v14, v7

    :goto_16
    neg-float v2, v4

    iget-boolean v4, v0, Lyads/zs1;->g:Z

    if-eqz v4, :cond_27

    iget-object v4, v0, Lyads/zs1;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v4}, Lyads/oh6;->b(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_27

    neg-float v2, v2

    :cond_27
    iget-object v4, v0, Lyads/zs1;->c:Landroid/util/SparseArray;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-boolean v0, v0, Lyads/zs1;->g:Z

    if-eqz v0, :cond_28

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    return-void

    :cond_28
    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public final transformPage(Landroid/view/View;F)V
    .locals 10

    iget-object v1, p0, Lyads/zs1;->e:Lyads/xq1;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lyads/xq1;->a()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    instance-of v2, v1, Lyads/hr1;

    const/4 v8, 0x0

    if-eqz v2, :cond_1

    check-cast v1, Lyads/hr1;

    iget-object v3, v1, Lyads/hr1;->a:Lyads/as2;

    iget-object v4, v1, Lyads/hr1;->b:Lyads/as2;

    iget-object v5, v1, Lyads/hr1;->c:Lyads/as2;

    iget-object v6, v1, Lyads/hr1;->d:Lyads/as2;

    iget-object v7, v1, Lyads/hr1;->e:Lyads/as2;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v7}, Lyads/zs1;->a(Landroid/view/View;FLyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;)V

    invoke-virtual {p0, p1, p2, v8}, Lyads/zs1;->a(Landroid/view/View;FZ)V

    return-void

    :cond_1
    instance-of v4, v1, Lyads/br1;

    if-eqz v4, :cond_4

    move-object v9, v1

    check-cast v9, Lyads/br1;

    iget-object v3, v9, Lyads/br1;->a:Lyads/as2;

    iget-object v4, v9, Lyads/br1;->b:Lyads/as2;

    iget-object v5, v9, Lyads/br1;->c:Lyads/as2;

    iget-object v6, v9, Lyads/br1;->d:Lyads/as2;

    iget-object v7, v9, Lyads/br1;->e:Lyads/as2;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v7}, Lyads/zs1;->a(Landroid/view/View;FLyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;)V

    const/4 v3, 0x0

    cmpl-float v4, p2, v3

    if-gtz v4, :cond_3

    cmpg-float v4, p2, v3

    if-gez v4, :cond_2

    iget-object v4, v9, Lyads/br1;->f:Lyads/as2;

    iget-object v5, p0, Lyads/zs1;->b:Lyads/fs2;

    invoke-virtual {v4, v5}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    invoke-virtual {p0, p1, p2, v3}, Lyads/zs1;->a(Landroid/view/View;FZ)V

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationZ(F)V

    return-void

    :cond_3
    :goto_1
    invoke-virtual {p0, p1, p2, v8}, Lyads/zs1;->a(Landroid/view/View;FZ)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationZ(F)V

    return-void

    :cond_4
    invoke-virtual {p0, p1, p2, v8}, Lyads/zs1;->a(Landroid/view/View;FZ)V

    return-void
.end method
