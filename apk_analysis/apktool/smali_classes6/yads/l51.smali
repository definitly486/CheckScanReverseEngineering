.class public final Lyads/l51;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/hs2;


# instance fields
.field public final a:Lyads/vq0;

.field public final b:Landroid/view/View;

.field public c:Lyads/f51;

.field public final d:Lyads/h51;

.field public final e:Lcl4;

.field public final f:Lcl4;

.field public final g:Lyads/j51;

.field public h:F

.field public i:[F

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public final o:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lyads/vq0;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/l51;->a:Lyads/vq0;

    iput-object p2, p0, Lyads/l51;->b:Landroid/view/View;

    new-instance p1, Lyads/h51;

    invoke-direct {p1, p0}, Lyads/h51;-><init>(Lyads/l51;)V

    iput-object p1, p0, Lyads/l51;->d:Lyads/h51;

    new-instance p1, Law4;

    const/16 p2, 0x8

    invoke-direct {p1, p0, p2}, Law4;-><init>(Ljava/lang/Object;I)V

    new-instance p2, Lfh8;

    invoke-direct {p2, p1}, Lfh8;-><init>(Lll3;)V

    iput-object p2, p0, Lyads/l51;->e:Lcl4;

    new-instance p1, Ljs3;

    const/4 p2, 0x5

    invoke-direct {p1, p0, p2}, Ljs3;-><init>(Ljava/lang/Object;I)V

    new-instance p2, Lfh8;

    invoke-direct {p2, p1}, Lfh8;-><init>(Lll3;)V

    iput-object p2, p0, Lyads/l51;->f:Lcl4;

    new-instance p1, Lyads/j51;

    invoke-direct {p1}, Lyads/j51;-><init>()V

    iput-object p1, p0, Lyads/l51;->g:Lyads/j51;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lyads/l51;->n:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lyads/l51;->o:Ljava/util/ArrayList;

    return-void
.end method

.method public static final a(Lyads/l51;Lyads/f51;Lyads/fs2;Ljava/lang/Object;)Lj59;
    .locals 0

    .line 699
    invoke-virtual {p0, p1, p2}, Lyads/l51;->a(Lyads/f51;Lyads/fs2;)V

    .line 700
    iget-object p0, p0, Lyads/l51;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 701
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lyads/l51;)Lyads/g51;
    .locals 1

    .line 698
    new-instance v0, Lyads/g51;

    invoke-direct {v0, p0}, Lyads/g51;-><init>(Lyads/l51;)V

    return-object v0
.end method

.method public static final b(Lyads/l51;)Lyads/k51;
    .locals 1

    .line 428
    new-instance v0, Lyads/k51;

    invoke-direct {v0, p0}, Lyads/k51;-><init>(Lyads/l51;)V

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;)V
    .locals 1

    .line 702
    invoke-virtual {p0}, Lyads/l51;->g()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 703
    :cond_0
    iget-object p0, p0, Lyads/l51;->d:Lyads/h51;

    .line 704
    iget-object p0, p0, Lyads/h51;->a:Landroid/graphics/Path;

    .line 705
    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    return-void
.end method

.method public final a(Lyads/f51;Lyads/fs2;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lyads/l51;->b:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    iget-object v5, v1, Lyads/f51;->e:Lyads/l42;

    if-eqz v5, :cond_0

    invoke-static {v5, v2, v3}, Lyads/n51;->a(Lyads/l42;Lyads/fs2;Landroid/util/DisplayMetrics;)F

    move-result v5

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    iput v5, v0, Lyads/l51;->h:F

    cmpl-float v5, v5, v4

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-lez v5, :cond_1

    move v5, v6

    goto :goto_1

    :cond_1
    move v5, v7

    :goto_1
    iput-boolean v5, v0, Lyads/l51;->k:Z

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    if-eqz v5, :cond_4

    if-eqz v1, :cond_2

    iget-object v5, v1, Lyads/f51;->e:Lyads/l42;

    if-eqz v5, :cond_2

    iget-object v5, v5, Lyads/l42;->a:Lyads/as2;

    if-eqz v5, :cond_2

    invoke-virtual {v5, v2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    goto :goto_2

    :cond_2
    move v5, v7

    :goto_2
    iget-object v10, v0, Lyads/l51;->e:Lcl4;

    invoke-interface {v10}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lyads/g51;

    iget v11, v0, Lyads/l51;->h:F

    iget-object v12, v10, Lyads/g51;->a:Landroid/graphics/Paint;

    iget v13, v10, Lyads/g51;->d:F

    iget-object v14, v10, Lyads/g51;->h:Lyads/l51;

    iget v14, v14, Lyads/l51;->h:F

    const v15, 0x3dcccccd    # 0.1f

    mul-float/2addr v14, v15

    invoke-static {v8, v14}, Ljava/lang/Math;->max(FF)F

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v13

    add-float/2addr v13, v11

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v10, v10, Lyads/g51;->a:Landroid/graphics/Paint;

    invoke-virtual {v10, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v5, v0, Lyads/l51;->e:Lcl4;

    invoke-interface {v5}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lyads/g51;

    if-eqz v1, :cond_3

    iget-object v10, v1, Lyads/f51;->e:Lyads/l42;

    if-eqz v10, :cond_3

    iget-object v10, v10, Lyads/l42;->b:Lyads/s42;

    goto :goto_3

    :cond_3
    move-object v10, v9

    :goto_3
    instance-of v10, v10, Lyads/q42;

    iput-boolean v10, v5, Lyads/g51;->c:Z

    :cond_4
    if-eqz v1, :cond_12

    iget-object v5, v0, Lyads/l51;->b:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5, v3}, Lyads/pq;->a(Ljava/lang/Number;Landroid/util/DisplayMetrics;)F

    move-result v5

    invoke-static {v5}, Lw65;->b(F)I

    move-result v5

    int-to-float v5, v5

    iget-object v10, v0, Lyads/l51;->b:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v10, v3}, Lyads/pq;->a(Ljava/lang/Number;Landroid/util/DisplayMetrics;)F

    move-result v10

    invoke-static {v10}, Lw65;->b(F)I

    move-result v10

    int-to-float v10, v10

    iget-object v11, v1, Lyads/f51;->b:Lyads/p91;

    if-eqz v11, :cond_5

    iget-object v11, v11, Lyads/p91;->c:Lyads/as2;

    if-nez v11, :cond_6

    :cond_5
    iget-object v11, v1, Lyads/f51;->a:Lyads/as2;

    :cond_6
    if-eqz v11, :cond_7

    invoke-virtual {v11, v2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    goto :goto_4

    :cond_7
    move-object v11, v9

    :goto_4
    invoke-static {v11, v3}, Lyads/uq;->a(Ljava/lang/Long;Landroid/util/DisplayMetrics;)I

    move-result v11

    int-to-float v11, v11

    iget-object v12, v1, Lyads/f51;->b:Lyads/p91;

    if-eqz v12, :cond_8

    iget-object v12, v12, Lyads/p91;->d:Lyads/as2;

    if-nez v12, :cond_9

    :cond_8
    iget-object v12, v1, Lyads/f51;->a:Lyads/as2;

    :cond_9
    if-eqz v12, :cond_a

    invoke-virtual {v12, v2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    goto :goto_5

    :cond_a
    move-object v12, v9

    :goto_5
    invoke-static {v12, v3}, Lyads/uq;->a(Ljava/lang/Long;Landroid/util/DisplayMetrics;)I

    move-result v12

    int-to-float v12, v12

    iget-object v13, v1, Lyads/f51;->b:Lyads/p91;

    if-eqz v13, :cond_b

    iget-object v13, v13, Lyads/p91;->a:Lyads/as2;

    if-nez v13, :cond_c

    :cond_b
    iget-object v13, v1, Lyads/f51;->a:Lyads/as2;

    :cond_c
    if-eqz v13, :cond_d

    invoke-virtual {v13, v2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    goto :goto_6

    :cond_d
    move-object v13, v9

    :goto_6
    invoke-static {v13, v3}, Lyads/uq;->a(Ljava/lang/Long;Landroid/util/DisplayMetrics;)I

    move-result v13

    int-to-float v13, v13

    iget-object v14, v1, Lyads/f51;->b:Lyads/p91;

    if-eqz v14, :cond_e

    iget-object v14, v14, Lyads/p91;->b:Lyads/as2;

    if-nez v14, :cond_f

    :cond_e
    iget-object v14, v1, Lyads/f51;->a:Lyads/as2;

    :cond_f
    if-eqz v14, :cond_10

    invoke-virtual {v14, v2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    goto :goto_7

    :cond_10
    move-object v14, v9

    :goto_7
    invoke-static {v14, v3}, Lyads/uq;->a(Ljava/lang/Long;Landroid/util/DisplayMetrics;)I

    move-result v3

    int-to-float v3, v3

    add-float v14, v11, v12

    add-float v15, v13, v3

    add-float v16, v11, v13

    add-float v17, v12, v3

    div-float v14, v5, v14

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    div-float/2addr v5, v15

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    div-float v15, v10, v16

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    div-float v10, v10, v17

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    filled-new-array {v14, v5, v15, v10}, [Ljava/lang/Float;

    move-result-object v5

    invoke-static {v5}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v10

    cmpl-float v10, v10, v4

    if-lez v10, :cond_11

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v10

    cmpg-float v8, v10, v8

    if-gez v8, :cond_11

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v8

    mul-float/2addr v11, v8

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v8

    mul-float/2addr v12, v8

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v8

    mul-float/2addr v13, v8

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    mul-float/2addr v3, v5

    :cond_11
    const/16 v5, 0x8

    new-array v5, v5, [F

    aput v11, v5, v7

    aput v11, v5, v6

    const/4 v8, 0x2

    aput v12, v5, v8

    const/4 v8, 0x3

    aput v12, v5, v8

    const/4 v8, 0x4

    aput v3, v5, v8

    const/4 v8, 0x5

    aput v3, v5, v8

    const/4 v3, 0x6

    aput v13, v5, v3

    const/4 v3, 0x7

    aput v13, v5, v3

    goto :goto_8

    :cond_12
    move-object v5, v9

    :goto_8
    iput-object v5, v0, Lyads/l51;->i:[F

    if-eqz v5, :cond_16

    array-length v3, v5

    if-eqz v3, :cond_15

    aget v3, v5, v7

    array-length v8, v5

    move v10, v7

    :goto_9
    if-ge v10, v8, :cond_14

    aget v11, v5, v10

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_13

    move v3, v7

    goto :goto_a

    :cond_13
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    :cond_14
    move v3, v6

    :goto_a
    xor-int/2addr v3, v6

    goto :goto_b

    :cond_15
    const-string v0, "Array is empty."

    invoke-static {v0}, Lag;->g(Ljava/lang/String;)V

    return-void

    :cond_16
    move v3, v7

    :goto_b
    iput-boolean v3, v0, Lyads/l51;->j:Z

    iget-boolean v3, v0, Lyads/l51;->l:Z

    if-eqz v1, :cond_17

    iget-object v5, v1, Lyads/f51;->c:Lyads/as2;

    if-eqz v5, :cond_17

    invoke-virtual {v5, v2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    goto :goto_c

    :cond_17
    move v5, v7

    :goto_c
    iput-boolean v5, v0, Lyads/l51;->m:Z

    if-eqz v5, :cond_19

    if-eqz v1, :cond_18

    iget-object v5, v1, Lyads/f51;->d:Lyads/xz1;

    goto :goto_d

    :cond_18
    move-object v5, v9

    :goto_d
    if-nez v5, :cond_1a

    iget-object v5, v0, Lyads/l51;->b:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v5, v5, Lyads/uf1;

    if-eqz v5, :cond_19

    goto :goto_e

    :cond_19
    move v6, v7

    :cond_1a
    :goto_e
    iput-boolean v6, v0, Lyads/l51;->l:Z

    iget-object v5, v0, Lyads/l51;->b:Landroid/view/View;

    iget-boolean v7, v0, Lyads/l51;->m:Z

    if-nez v7, :cond_1b

    goto :goto_f

    :cond_1b
    if-eqz v6, :cond_1c

    :goto_f
    move v6, v4

    goto :goto_10

    :cond_1c
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/yandex/mobile/ads/R$dimen;->monetization_ads_divkit_div_shadow_elevation:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    :goto_10
    invoke-virtual {v5, v6}, Landroid/view/View;->setElevation(F)V

    iget-boolean v5, v0, Lyads/l51;->l:Z

    if-eqz v5, :cond_23

    iget-object v5, v0, Lyads/l51;->f:Lcl4;

    invoke-interface {v5}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lyads/k51;

    if-eqz v1, :cond_1d

    iget-object v1, v1, Lyads/f51;->d:Lyads/xz1;

    goto :goto_11

    :cond_1d
    move-object v1, v9

    :goto_11
    iget-object v6, v5, Lyads/k51;->j:Lyads/l51;

    iget-object v6, v6, Lyads/l51;->b:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    if-eqz v1, :cond_1e

    iget-object v7, v1, Lyads/xz1;->b:Lyads/as2;

    if-eqz v7, :cond_1e

    invoke-virtual {v7, v2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v7, v6}, Lyads/pq;->a(Ljava/lang/Number;Landroid/util/DisplayMetrics;)F

    move-result v7

    goto :goto_12

    :cond_1e
    iget v7, v5, Lyads/k51;->a:F

    :goto_12
    iput v7, v5, Lyads/k51;->b:F

    if-eqz v1, :cond_1f

    iget-object v7, v1, Lyads/xz1;->c:Lyads/as2;

    if-eqz v7, :cond_1f

    invoke-virtual {v7, v2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    goto :goto_13

    :cond_1f
    const/high16 v7, -0x1000000

    :goto_13
    iput v7, v5, Lyads/k51;->c:I

    if-eqz v1, :cond_20

    iget-object v7, v1, Lyads/xz1;->a:Lyads/as2;

    if-eqz v7, :cond_20

    invoke-virtual {v7, v2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v7

    double-to-float v7, v7

    goto :goto_14

    :cond_20
    const v7, 0x3e0f5c29    # 0.14f

    :goto_14
    iput v7, v5, Lyads/k51;->d:F

    if-eqz v1, :cond_21

    iget-object v7, v1, Lyads/xz1;->d:Lyads/nv1;

    if-eqz v7, :cond_21

    iget-object v7, v7, Lyads/nv1;->a:Lyads/ac1;

    if-eqz v7, :cond_21

    invoke-static {v7, v6, v2}, Lyads/pq;->a(Lyads/ac1;Landroid/util/DisplayMetrics;Lyads/fs2;)I

    move-result v4

    goto :goto_15

    :cond_21
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v4, v6}, Lyads/pq;->a(Ljava/lang/Number;Landroid/util/DisplayMetrics;)F

    move-result v4

    invoke-static {v4}, Lw65;->b(F)I

    move-result v4

    :goto_15
    int-to-float v4, v4

    iget v7, v5, Lyads/k51;->b:F

    sub-float/2addr v4, v7

    iput v4, v5, Lyads/k51;->h:F

    if-eqz v1, :cond_22

    iget-object v1, v1, Lyads/xz1;->d:Lyads/nv1;

    if-eqz v1, :cond_22

    iget-object v1, v1, Lyads/nv1;->b:Lyads/ac1;

    if-eqz v1, :cond_22

    invoke-static {v1, v6, v2}, Lyads/pq;->a(Lyads/ac1;Landroid/util/DisplayMetrics;Lyads/fs2;)I

    move-result v1

    goto :goto_16

    :cond_22
    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1, v6}, Lyads/pq;->a(Ljava/lang/Number;Landroid/util/DisplayMetrics;)F

    move-result v1

    invoke-static {v1}, Lw65;->b(F)I

    move-result v1

    :goto_16
    int-to-float v1, v1

    iget v2, v5, Lyads/k51;->b:F

    sub-float/2addr v1, v2

    iput v1, v5, Lyads/k51;->i:F

    :cond_23
    invoke-virtual {v0}, Lyads/l51;->d()V

    iget-boolean v1, v0, Lyads/l51;->l:Z

    if-nez v1, :cond_24

    if-eqz v3, :cond_26

    :cond_24
    iget-object v0, v0, Lyads/l51;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_25

    move-object v9, v0

    check-cast v9, Landroid/view/View;

    :cond_25
    if-eqz v9, :cond_26

    invoke-virtual {v9}, Landroid/view/View;->invalidate()V

    :cond_26
    return-void
.end method

.method public final b(Landroid/graphics/Canvas;)V
    .locals 1

    .line 422
    iget-boolean v0, p0, Lyads/l51;->k:Z

    if-nez v0, :cond_0

    return-void

    .line 423
    :cond_0
    iget-object v0, p0, Lyads/l51;->e:Lcl4;

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/g51;

    .line 424
    iget-object v0, v0, Lyads/g51;->b:Landroid/graphics/Path;

    .line 425
    iget-object p0, p0, Lyads/l51;->e:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/g51;

    .line 426
    iget-object p0, p0, Lyads/g51;->a:Landroid/graphics/Paint;

    .line 427
    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public final b(Lyads/f51;Lyads/fs2;)V
    .locals 3

    if-eqz p1, :cond_15

    iget-object v0, p1, Lyads/f51;->a:Lyads/as2;

    invoke-static {v0}, Lyads/ls2;->a(Lyads/as2;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lyads/f51;->b:Lyads/p91;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lyads/p91;->c:Lyads/as2;

    invoke-static {v1}, Lyads/ls2;->a(Lyads/as2;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v0, Lyads/p91;->d:Lyads/as2;

    invoke-static {v1}, Lyads/ls2;->a(Lyads/as2;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v0, Lyads/p91;->b:Lyads/as2;

    invoke-static {v1}, Lyads/ls2;->a(Lyads/as2;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, v0, Lyads/p91;->a:Lyads/as2;

    invoke-static {v0}, Lyads/ls2;->a(Lyads/as2;)Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_0
    iget-object v0, p1, Lyads/f51;->c:Lyads/as2;

    instance-of v0, v0, Lyads/xr2;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lyads/f51;->d:Lyads/xz1;

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    iget-object v1, v0, Lyads/xz1;->a:Lyads/as2;

    instance-of v1, v1, Lyads/xr2;

    if-eqz v1, :cond_5

    iget-object v1, v0, Lyads/xz1;->b:Lyads/as2;

    instance-of v1, v1, Lyads/xr2;

    if-eqz v1, :cond_5

    iget-object v1, v0, Lyads/xz1;->c:Lyads/as2;

    instance-of v1, v1, Lyads/xr2;

    if-eqz v1, :cond_5

    iget-object v0, v0, Lyads/xz1;->d:Lyads/nv1;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, v0, Lyads/nv1;->a:Lyads/ac1;

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    iget-object v2, v1, Lyads/ac1;->a:Lyads/as2;

    instance-of v2, v2, Lyads/xr2;

    if-eqz v2, :cond_5

    iget-object v1, v1, Lyads/ac1;->b:Lyads/as2;

    instance-of v1, v1, Lyads/xr2;

    if-eqz v1, :cond_5

    :goto_1
    iget-object v0, v0, Lyads/nv1;->b:Lyads/ac1;

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    iget-object v1, v0, Lyads/ac1;->a:Lyads/as2;

    instance-of v1, v1, Lyads/xr2;

    if-eqz v1, :cond_5

    iget-object v0, v0, Lyads/ac1;->b:Lyads/as2;

    instance-of v0, v0, Lyads/xr2;

    if-eqz v0, :cond_5

    :goto_2
    iget-object v0, p1, Lyads/f51;->e:Lyads/l42;

    invoke-static {v0}, Lyads/gb1;->a(Lyads/l42;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_11

    :cond_5
    new-instance v0, Lh1a;

    invoke-direct {v0, p0, p1, p2}, Lh1a;-><init>(Lyads/l51;Lyads/f51;Lyads/fs2;)V

    iget-object v1, p1, Lyads/f51;->a:Lyads/as2;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    invoke-virtual {v1, p2, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v1

    goto :goto_3

    :cond_6
    move-object v1, v2

    :goto_3
    invoke-interface {p0, v1}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object v1, p1, Lyads/f51;->b:Lyads/p91;

    if-eqz v1, :cond_7

    iget-object v1, v1, Lyads/p91;->c:Lyads/as2;

    if-eqz v1, :cond_7

    invoke-virtual {v1, p2, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v1

    goto :goto_4

    :cond_7
    move-object v1, v2

    :goto_4
    invoke-interface {p0, v1}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object v1, p1, Lyads/f51;->b:Lyads/p91;

    if-eqz v1, :cond_8

    iget-object v1, v1, Lyads/p91;->d:Lyads/as2;

    if-eqz v1, :cond_8

    invoke-virtual {v1, p2, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v1

    goto :goto_5

    :cond_8
    move-object v1, v2

    :goto_5
    invoke-interface {p0, v1}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object v1, p1, Lyads/f51;->b:Lyads/p91;

    if-eqz v1, :cond_9

    iget-object v1, v1, Lyads/p91;->b:Lyads/as2;

    if-eqz v1, :cond_9

    invoke-virtual {v1, p2, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v1

    goto :goto_6

    :cond_9
    move-object v1, v2

    :goto_6
    invoke-interface {p0, v1}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object v1, p1, Lyads/f51;->b:Lyads/p91;

    if-eqz v1, :cond_a

    iget-object v1, v1, Lyads/p91;->a:Lyads/as2;

    if-eqz v1, :cond_a

    invoke-virtual {v1, p2, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v1

    goto :goto_7

    :cond_a
    move-object v1, v2

    :goto_7
    invoke-interface {p0, v1}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object v1, p1, Lyads/f51;->c:Lyads/as2;

    invoke-virtual {v1, p2, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v1

    invoke-interface {p0, v1}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object v1, p1, Lyads/f51;->e:Lyads/l42;

    if-eqz v1, :cond_b

    iget-object v1, v1, Lyads/l42;->a:Lyads/as2;

    if-eqz v1, :cond_b

    invoke-virtual {v1, p2, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v1

    goto :goto_8

    :cond_b
    move-object v1, v2

    :goto_8
    invoke-interface {p0, v1}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object v1, p1, Lyads/f51;->e:Lyads/l42;

    if-eqz v1, :cond_c

    iget-object v1, v1, Lyads/l42;->d:Lyads/as2;

    if-eqz v1, :cond_c

    invoke-virtual {v1, p2, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v1

    goto :goto_9

    :cond_c
    move-object v1, v2

    :goto_9
    invoke-interface {p0, v1}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object v1, p1, Lyads/f51;->e:Lyads/l42;

    if-eqz v1, :cond_d

    iget-object v1, v1, Lyads/l42;->c:Lyads/as2;

    if-eqz v1, :cond_d

    invoke-virtual {v1, p2, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v1

    goto :goto_a

    :cond_d
    move-object v1, v2

    :goto_a
    invoke-interface {p0, v1}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object v1, p1, Lyads/f51;->d:Lyads/xz1;

    if-eqz v1, :cond_e

    iget-object v1, v1, Lyads/xz1;->a:Lyads/as2;

    if-eqz v1, :cond_e

    invoke-virtual {v1, p2, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v1

    goto :goto_b

    :cond_e
    move-object v1, v2

    :goto_b
    invoke-interface {p0, v1}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object v1, p1, Lyads/f51;->d:Lyads/xz1;

    if-eqz v1, :cond_f

    iget-object v1, v1, Lyads/xz1;->b:Lyads/as2;

    if-eqz v1, :cond_f

    invoke-virtual {v1, p2, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v1

    goto :goto_c

    :cond_f
    move-object v1, v2

    :goto_c
    invoke-interface {p0, v1}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object v1, p1, Lyads/f51;->d:Lyads/xz1;

    if-eqz v1, :cond_10

    iget-object v1, v1, Lyads/xz1;->c:Lyads/as2;

    if-eqz v1, :cond_10

    invoke-virtual {v1, p2, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v1

    goto :goto_d

    :cond_10
    move-object v1, v2

    :goto_d
    invoke-interface {p0, v1}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object v1, p1, Lyads/f51;->d:Lyads/xz1;

    if-eqz v1, :cond_11

    iget-object v1, v1, Lyads/xz1;->d:Lyads/nv1;

    if-eqz v1, :cond_11

    iget-object v1, v1, Lyads/nv1;->a:Lyads/ac1;

    if-eqz v1, :cond_11

    iget-object v1, v1, Lyads/ac1;->a:Lyads/as2;

    if-eqz v1, :cond_11

    invoke-virtual {v1, p2, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v1

    goto :goto_e

    :cond_11
    move-object v1, v2

    :goto_e
    invoke-interface {p0, v1}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object v1, p1, Lyads/f51;->d:Lyads/xz1;

    if-eqz v1, :cond_12

    iget-object v1, v1, Lyads/xz1;->d:Lyads/nv1;

    if-eqz v1, :cond_12

    iget-object v1, v1, Lyads/nv1;->a:Lyads/ac1;

    if-eqz v1, :cond_12

    iget-object v1, v1, Lyads/ac1;->b:Lyads/as2;

    if-eqz v1, :cond_12

    invoke-virtual {v1, p2, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v1

    goto :goto_f

    :cond_12
    move-object v1, v2

    :goto_f
    invoke-interface {p0, v1}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object v1, p1, Lyads/f51;->d:Lyads/xz1;

    if-eqz v1, :cond_13

    iget-object v1, v1, Lyads/xz1;->d:Lyads/nv1;

    if-eqz v1, :cond_13

    iget-object v1, v1, Lyads/nv1;->b:Lyads/ac1;

    if-eqz v1, :cond_13

    iget-object v1, v1, Lyads/ac1;->a:Lyads/as2;

    if-eqz v1, :cond_13

    invoke-virtual {v1, p2, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v1

    goto :goto_10

    :cond_13
    move-object v1, v2

    :goto_10
    invoke-interface {p0, v1}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object p1, p1, Lyads/f51;->d:Lyads/xz1;

    if-eqz p1, :cond_14

    iget-object p1, p1, Lyads/xz1;->d:Lyads/nv1;

    if-eqz p1, :cond_14

    iget-object p1, p1, Lyads/nv1;->b:Lyads/ac1;

    if-eqz p1, :cond_14

    iget-object p1, p1, Lyads/ac1;->b:Lyads/as2;

    if-eqz p1, :cond_14

    invoke-virtual {p1, p2, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v2

    :cond_14
    invoke-interface {p0, v2}, Lyads/hs2;->a(Lyads/tp0;)V

    :cond_15
    :goto_11
    return-void
.end method

.method public final c(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lyads/l51;->b:Landroid/view/View;

    invoke-static {v0}, Lyads/s16;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lyads/l51;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Lyads/r16;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lyads/s16;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lyads/l51;->l:Z

    if-nez v0, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lyads/l51;->f:Lcl4;

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/k51;

    iget v0, v0, Lyads/k51;->h:F

    iget-object v1, p0, Lyads/l51;->f:Lcl4;

    invoke-interface {v1}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/k51;

    iget v1, v1, Lyads/k51;->i:F

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :try_start_0
    iget-object v0, p0, Lyads/l51;->f:Lcl4;

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/k51;

    iget-object v0, v0, Lyads/k51;->g:Landroid/graphics/NinePatch;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lyads/l51;->f:Lcl4;

    invoke-interface {v1}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/k51;

    iget-object v1, v1, Lyads/k51;->f:Landroid/graphics/Rect;

    iget-object p0, p0, Lyads/l51;->f:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/k51;

    iget-object p0, p0, Lyads/k51;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1, p0}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :goto_1
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw p0
.end method

.method public final d()V
    .locals 13

    iget-object v0, p0, Lyads/l51;->i:[F

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v1, p0, Lyads/l51;->d:Lyads/h51;

    invoke-virtual {v1, v0}, Lyads/h51;->a([F)V

    iget v1, p0, Lyads/l51;->h:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    array-length v3, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const/4 v6, 0x0

    if-ge v5, v3, :cond_1

    aget v7, v0, v5

    sub-float/2addr v7, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    aput v6, v0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lyads/l51;->k:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lyads/l51;->e:Lcl4;

    invoke-interface {v1}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/g51;

    iget-object v3, v1, Lyads/g51;->h:Lyads/l51;

    iget v3, v3, Lyads/l51;->h:F

    iget v5, v1, Lyads/g51;->d:F

    const v7, 0x3dcccccd    # 0.1f

    mul-float/2addr v7, v3

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v8, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v5

    sub-float/2addr v3, v5

    div-float/2addr v3, v2

    iget-object v5, v1, Lyads/g51;->h:Lyads/l51;

    iget-object v5, v5, Lyads/l51;->b:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v7, v1, Lyads/g51;->h:Lyads/l51;

    iget-object v7, v7, Lyads/l51;->b:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, v1, Lyads/g51;->g:Landroid/graphics/RectF;

    sub-float/2addr v5, v3

    sub-float/2addr v7, v3

    invoke-virtual {v8, v3, v3, v5, v7}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v3, v1, Lyads/g51;->b:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    iget-object v3, v1, Lyads/g51;->b:Landroid/graphics/Path;

    iget-object v5, v1, Lyads/g51;->g:Landroid/graphics/RectF;

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v5, v0, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    iget-object v3, v1, Lyads/g51;->b:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    iget-object v3, v1, Lyads/g51;->a:Landroid/graphics/Paint;

    iget-boolean v5, v1, Lyads/g51;->c:Z

    if-eqz v5, :cond_6

    iget-object v5, v1, Lyads/g51;->g:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    iget-object v7, v1, Lyads/g51;->g:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    mul-float/2addr v5, v2

    mul-float/2addr v2, v7

    add-float/2addr v2, v5

    array-length v5, v0

    const/16 v7, 0x8

    const/4 v8, 0x2

    if-eq v5, v7, :cond_2

    sget v5, Lyads/cr3;->a:I

    sget-object v5, Lyads/vj5;->b:[Lyads/vj5;

    invoke-static {}, Lyads/cr3;->a()V

    goto :goto_2

    :cond_2
    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5, v8}, Lnh5;->a(III)I

    move-result v5

    if-ltz v5, :cond_3

    move v7, v4

    :goto_1
    aget v9, v0, v7

    add-int/lit8 v10, v7, 0x1

    aget v10, v0, v10

    sub-float/2addr v2, v9

    sub-float/2addr v2, v10

    mul-float/2addr v9, v9

    mul-float/2addr v10, v10

    add-float/2addr v10, v9

    float-to-double v9, v10

    const-wide/high16 v11, 0x4020000000000000L    # 8.0

    div-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    const-wide v11, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v9, v11

    double-to-float v9, v9

    add-float/2addr v2, v9

    if-eq v7, v5, :cond_3

    add-int/lit8 v7, v7, 0x2

    goto :goto_1

    :cond_3
    cmpg-float v5, v2, v6

    if-gez v5, :cond_4

    move v2, v6

    :cond_4
    :goto_2
    cmpl-float v5, v2, v6

    iget v7, v1, Lyads/g51;->e:F

    if-lez v5, :cond_5

    iget v1, v1, Lyads/g51;->f:F

    add-float v5, v7, v1

    div-float v9, v2, v5

    float-to-int v9, v9

    int-to-float v9, v9

    mul-float v10, v5, v9

    sub-float/2addr v2, v10

    mul-float v10, v2, v7

    div-float/2addr v10, v5

    mul-float/2addr v2, v1

    div-float/2addr v2, v5

    div-float/2addr v10, v9

    add-float/2addr v7, v10

    div-float/2addr v2, v9

    add-float/2addr v2, v1

    goto :goto_3

    :cond_5
    iget v2, v1, Lyads/g51;->f:F

    :goto_3
    new-instance v1, Landroid/graphics/DashPathEffect;

    new-array v5, v8, [F

    aput v7, v5, v4

    const/4 v4, 0x1

    aput v2, v5, v4

    invoke-direct {v1, v5, v6}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    :cond_7
    iget-boolean v1, p0, Lyads/l51;->l:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lyads/l51;->f:Lcl4;

    invoke-interface {v1}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/k51;

    invoke-virtual {v1, v0}, Lyads/k51;->a([F)V

    :cond_8
    :goto_5
    invoke-virtual {p0}, Lyads/l51;->e()V

    return-void
.end method

.method public final e()V
    .locals 5

    invoke-virtual {p0}, Lyads/l51;->g()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lyads/l51;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClipToOutline(Z)V

    iget-object v0, p0, Lyads/l51;->b:Landroid/view/View;

    iget-boolean p0, p0, Lyads/l51;->l:Z

    if-nez p0, :cond_1

    invoke-static {v0}, Lyads/s16;->a(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/view/ViewOutlineProvider;->BACKGROUND:Landroid/view/ViewOutlineProvider;

    :cond_1
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void

    :cond_2
    iget-object v0, p0, Lyads/l51;->i:[F

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    array-length v4, v0

    if-eqz v4, :cond_3

    aget v0, v0, v2

    goto :goto_1

    :cond_3
    const-string p0, "Array is empty."

    invoke-static {p0}, Lag;->g(Ljava/lang/String;)V

    return-void

    :cond_4
    move v0, v3

    :goto_1
    cmpg-float v3, v0, v3

    if-nez v3, :cond_7

    iget-object v0, p0, Lyads/l51;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClipToOutline(Z)V

    iget-object v0, p0, Lyads/l51;->b:Landroid/view/View;

    iget-boolean p0, p0, Lyads/l51;->l:Z

    if-nez p0, :cond_6

    invoke-static {v0}, Lyads/s16;->a(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_2

    :cond_5
    sget-object v1, Landroid/view/ViewOutlineProvider;->BACKGROUND:Landroid/view/ViewOutlineProvider;

    :cond_6
    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void

    :cond_7
    iget-object v1, p0, Lyads/l51;->g:Lyads/j51;

    iput v0, v1, Lyads/j51;->a:F

    iget-object v0, p0, Lyads/l51;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    iget-object v0, p0, Lyads/l51;->b:Landroid/view/View;

    iget-boolean p0, p0, Lyads/l51;->n:Z

    invoke-virtual {v0, p0}, Landroid/view/View;->setClipToOutline(Z)V

    return-void
.end method

.method public final f()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lyads/l51;->o:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final g()Z
    .locals 1

    iget-boolean v0, p0, Lyads/l51;->n:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lyads/l51;->a:Lyads/vq0;

    iget-boolean v0, v0, Lyads/vq0;->D:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lyads/l51;->l:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lyads/l51;->m:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lyads/l51;->j:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lyads/l51;->k:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object p0, p0, Lyads/l51;->b:Landroid/view/View;

    invoke-static {p0}, Lyads/s16;->a(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
