.class public final Lyads/wn5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final b:Lyads/kn;

.field public final c:Lyads/ys;

.field public final d:Lyads/xn5;

.field public final e:Lyads/rd3;

.field public final f:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Lyads/kn;Lyads/ys;Lyads/xn5;Lyads/rd3;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/wn5;->b:Lyads/kn;

    iput-object p2, p0, Lyads/wn5;->c:Lyads/ys;

    iput-object p3, p0, Lyads/wn5;->d:Lyads/xn5;

    iput-object p4, p0, Lyads/wn5;->e:Lyads/rd3;

    iput-object p5, p0, Lyads/wn5;->f:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/ImageView;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lyads/wn5;->f:Landroid/graphics/drawable/Drawable;

    instance-of v3, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_0

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_26

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_1

    goto/16 :goto_f

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    if-eqz v3, :cond_26

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_f

    :cond_2
    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-direct {v3, v7, v7, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v5

    cmpg-float v5, v5, v7

    if-nez v5, :cond_3

    goto/16 :goto_f

    :cond_3
    iget-object v5, v0, Lyads/wn5;->b:Lyads/kn;

    iget-object v6, v0, Lyads/wn5;->e:Lyads/rd3;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v6, Lyads/rd3;->e:Lyads/zn5;

    if-eqz v5, :cond_4

    iget-object v5, v5, Lyads/zn5;->e:Lyads/pn;

    if-nez v5, :cond_5

    :cond_4
    move/from16 v19, v7

    goto/16 :goto_a

    :cond_5
    iget-object v6, v5, Lyads/pn;->d:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v6, :cond_6

    iget-object v10, v5, Lyads/pn;->a:Ljava/lang/String;

    if-eqz v10, :cond_6

    invoke-virtual {v6, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    move v6, v9

    goto :goto_1

    :cond_6
    move v6, v8

    :goto_1
    iget-object v10, v5, Lyads/pn;->c:Ljava/lang/String;

    if-eqz v10, :cond_7

    iget-object v5, v5, Lyads/pn;->b:Ljava/lang/String;

    if-eqz v5, :cond_7

    invoke-virtual {v10, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    move v5, v9

    goto :goto_2

    :cond_7
    move v5, v8

    :goto_2
    if-nez v6, :cond_8

    if-eqz v5, :cond_4

    :cond_8
    iget-object v5, v0, Lyads/wn5;->b:Lyads/kn;

    iget-object v6, v0, Lyads/wn5;->e:Lyads/rd3;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v6, Lyads/rd3;->e:Lyads/zn5;

    if-eqz v5, :cond_9

    iget-object v11, v5, Lyads/zn5;->e:Lyads/pn;

    if-nez v11, :cond_a

    :cond_9
    :goto_3
    move/from16 v19, v7

    const/high16 v18, 0x3f800000    # 1.0f

    goto/16 :goto_6

    :cond_a
    iget-object v5, v5, Lyads/zn5;->f:Lyads/rn5;

    if-nez v5, :cond_b

    goto :goto_3

    :cond_b
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v12

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v13

    iget v14, v6, Lyads/rd3;->a:I

    int-to-float v14, v14

    iget v6, v6, Lyads/rd3;->b:I

    int-to-float v6, v6

    iget v15, v5, Lyads/rn5;->c:I

    int-to-float v15, v15

    iget v4, v5, Lyads/rn5;->d:I

    int-to-float v4, v4

    cmpg-float v17, v12, v7

    if-nez v17, :cond_c

    goto :goto_4

    :cond_c
    cmpg-float v17, v13, v7

    if-nez v17, :cond_d

    goto :goto_4

    :cond_d
    cmpg-float v17, v14, v7

    if-nez v17, :cond_e

    goto :goto_4

    :cond_e
    cmpg-float v17, v6, v7

    if-nez v17, :cond_f

    goto :goto_4

    :cond_f
    cmpg-float v17, v15, v7

    if-nez v17, :cond_10

    goto :goto_4

    :cond_10
    cmpg-float v17, v4, v7

    if-nez v17, :cond_11

    :goto_4
    goto :goto_3

    :cond_11
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v17

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v18

    div-float v17, v17, v18

    const/high16 v18, 0x3f800000    # 1.0f

    iget v10, v5, Lyads/rn5;->c:I

    move/from16 v19, v7

    iget v7, v5, Lyads/rn5;->d:I

    div-int/2addr v10, v7

    int-to-float v7, v10

    cmpl-float v7, v17, v7

    if-lez v7, :cond_12

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget v5, v5, Lyads/rn5;->d:I

    goto :goto_5

    :cond_12
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v5, v5, Lyads/rn5;->c:I

    :goto_5
    int-to-float v5, v5

    div-float/2addr v3, v5

    cmpg-float v3, v3, v18

    if-gtz v3, :cond_14

    div-float/2addr v12, v13

    div-float/2addr v15, v4

    cmpl-float v3, v12, v15

    if-lez v3, :cond_13

    iget-object v3, v11, Lyads/pn;->b:Ljava/lang/String;

    iget-object v4, v11, Lyads/pn;->c:Ljava/lang/String;

    invoke-static {v3, v4}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    iget-object v4, v11, Lyads/pn;->b:Ljava/lang/String;

    goto :goto_7

    :cond_13
    iget-object v3, v11, Lyads/pn;->a:Ljava/lang/String;

    iget-object v4, v11, Lyads/pn;->d:Ljava/lang/String;

    invoke-static {v3, v4}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    iget-object v4, v11, Lyads/pn;->a:Ljava/lang/String;

    goto :goto_7

    :cond_14
    div-float/2addr v12, v13

    div-float/2addr v14, v6

    cmpl-float v3, v12, v14

    if-lez v3, :cond_15

    iget-object v3, v11, Lyads/pn;->b:Ljava/lang/String;

    iget-object v4, v11, Lyads/pn;->c:Ljava/lang/String;

    invoke-static {v3, v4}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    iget-object v4, v11, Lyads/pn;->b:Ljava/lang/String;

    goto :goto_7

    :cond_15
    iget-object v3, v11, Lyads/pn;->a:Ljava/lang/String;

    iget-object v4, v11, Lyads/pn;->d:Ljava/lang/String;

    invoke-static {v3, v4}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    iget-object v4, v11, Lyads/pn;->a:Ljava/lang/String;

    goto :goto_7

    :cond_16
    :goto_6
    const/4 v4, 0x0

    :goto_7
    iget-object v3, v0, Lyads/wn5;->e:Lyads/rd3;

    iget-object v3, v3, Lyads/rd3;->e:Lyads/zn5;

    if-eqz v3, :cond_26

    iget-object v3, v3, Lyads/zn5;->f:Lyads/rn5;

    if-nez v3, :cond_17

    goto/16 :goto_f

    :cond_17
    iget-object v0, v0, Lyads/wn5;->d:Lyads/xn5;

    if-eqz v4, :cond_1e

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v10, v10

    iget v11, v3, Lyads/rn5;->c:I

    int-to-float v12, v11

    iget v13, v3, Lyads/rn5;->d:I

    int-to-float v14, v13

    cmpg-float v15, v6, v19

    if-nez v15, :cond_18

    goto/16 :goto_f

    :cond_18
    cmpg-float v15, v14, v19

    if-nez v15, :cond_19

    goto/16 :goto_f

    :cond_19
    cmpg-float v15, v10, v19

    if-nez v15, :cond_1a

    goto/16 :goto_f

    :cond_1a
    div-float v15, v5, v6

    div-float v16, v12, v14

    cmpg-float v16, v15, v16

    if-gez v16, :cond_1b

    div-float v12, v5, v12

    goto :goto_8

    :cond_1b
    div-float v12, v6, v14

    :goto_8
    cmpg-float v14, v12, v18

    if-gtz v14, :cond_1c

    goto :goto_9

    :cond_1c
    div-float v12, v7, v10

    cmpg-float v12, v15, v12

    if-gez v12, :cond_1d

    div-float v12, v5, v7

    goto :goto_9

    :cond_1d
    div-float v12, v6, v10

    :goto_9
    iget v7, v3, Lyads/rn5;->a:I

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v11, v7

    int-to-float v7, v11

    mul-float/2addr v7, v12

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v5, v10

    sub-float/2addr v5, v7

    iget v7, v3, Lyads/rn5;->b:I

    div-int/lit8 v13, v13, 0x2

    add-int/2addr v13, v7

    int-to-float v7, v13

    mul-float/2addr v7, v12

    div-float/2addr v6, v10

    sub-float/2addr v6, v7

    iget-object v7, v0, Lyads/xn5;->a:Landroid/graphics/Matrix;

    invoke-virtual {v7, v12, v12}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v7, v0, Lyads/xn5;->a:Landroid/graphics/Matrix;

    invoke-virtual {v7, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    sget-object v5, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v5, v0, Lyads/xn5;->a:Landroid/graphics/Matrix;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "YadPreferenceFile"

    invoke-static {v4, v5}, Lyads/bv3;->a(Landroid/content/Context;Ljava/lang/String;)Lyads/zu3;

    move-result-object v4

    check-cast v4, Lyads/av3;

    const-string v5, "preference_smart_centers_debug_enabled"

    invoke-virtual {v4, v5, v8}, Lyads/av3;->a(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_26

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v2, v4, v9}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v5, v0, Lyads/xn5;->c:Landroid/graphics/Rect;

    iget v6, v3, Lyads/rn5;->a:I

    iget v7, v3, Lyads/rn5;->b:I

    iget v8, v3, Lyads/rn5;->c:I

    add-int/2addr v8, v6

    iget v3, v3, Lyads/rn5;->d:I

    add-int/2addr v3, v7

    invoke-virtual {v5, v6, v7, v8, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, v0, Lyads/xn5;->b:Landroid/graphics/Paint;

    invoke-virtual {v4, v5, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :cond_1e
    invoke-virtual {v0, v1, v2, v3}, Lyads/xn5;->a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lyads/rn5;)V

    return-void

    :goto_a
    iget-object v4, v0, Lyads/wn5;->c:Lyads/ys;

    iget-object v5, v0, Lyads/wn5;->e:Lyads/rd3;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Landroid/graphics/RectF;

    iget v6, v5, Lyads/rd3;->a:I

    int-to-float v6, v6

    iget v7, v5, Lyads/rd3;->b:I

    int-to-float v7, v7

    move/from16 v8, v19

    invoke-direct {v4, v8, v8, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v5, v5, Lyads/rd3;->e:Lyads/zn5;

    if-eqz v5, :cond_25

    iget-object v5, v5, Lyads/zn5;->g:Ljava/util/ArrayList;

    if-eqz v5, :cond_25

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1f

    const/4 v4, 0x0

    goto :goto_d

    :cond_1f
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    :cond_20
    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_24

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lyads/rn5;

    check-cast v6, Lyads/rn5;

    invoke-static {v6, v3, v4}, Lyads/vn5;->a(Lyads/rn5;Landroid/graphics/RectF;Landroid/graphics/RectF;)F

    move-result v8

    invoke-static {v7, v3, v4}, Lyads/vn5;->a(Lyads/rn5;Landroid/graphics/RectF;Landroid/graphics/RectF;)F

    move-result v9

    const v10, 0x7f7fffff    # Float.MAX_VALUE

    cmpg-float v10, v8, v10

    if-nez v10, :cond_21

    goto :goto_c

    :cond_21
    cmpg-float v10, v8, v9

    if-nez v10, :cond_22

    iget v8, v6, Lyads/rn5;->e:I

    iget v9, v7, Lyads/rn5;->e:I

    if-le v8, v9, :cond_23

    goto :goto_b

    :cond_22
    cmpl-float v8, v8, v9

    if-lez v8, :cond_20

    :cond_23
    :goto_c
    move-object v6, v7

    goto :goto_b

    :cond_24
    move-object v4, v6

    :goto_d
    check-cast v4, Lyads/rn5;

    goto :goto_e

    :cond_25
    const/4 v4, 0x0

    :goto_e
    if-eqz v4, :cond_26

    iget-object v0, v0, Lyads/wn5;->d:Lyads/xn5;

    invoke-virtual {v0, v1, v2, v4}, Lyads/xn5;->a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lyads/rn5;)V

    :cond_26
    :goto_f
    return-void
.end method

.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 2

    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/widget/ImageView;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_4

    :cond_1
    sub-int v0, p4, p2

    sub-int/2addr p8, p6

    const/4 p6, 0x1

    const/4 v1, 0x0

    if-ne v0, p8, :cond_3

    sub-int p8, p5, p3

    sub-int/2addr p9, p7

    if-eq p8, p9, :cond_2

    goto :goto_1

    :cond_2
    move p7, v1

    goto :goto_2

    :cond_3
    :goto_1
    move p7, p6

    :goto_2
    if-eq p5, p3, :cond_4

    if-eq p2, p4, :cond_4

    goto :goto_3

    :cond_4
    move p6, v1

    :goto_3
    if-eqz p7, :cond_5

    if-eqz p6, :cond_5

    invoke-virtual {p0, p1}, Lyads/wn5;->a(Landroid/widget/ImageView;)V

    :cond_5
    :goto_4
    return-void
.end method
