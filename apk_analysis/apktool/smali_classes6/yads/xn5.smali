.class public final Lyads/xn5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/graphics/Matrix;

.field public final b:Landroid/graphics/Paint;

.field public final c:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lyads/xn5;->a:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const-string v1, "#2E7D32"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iput-object v0, p0, Lyads/xn5;->b:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lyads/xn5;->c:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lyads/rn5;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    cmpg-float v9, v4, v7

    if-nez v9, :cond_0

    goto/16 :goto_6

    :cond_0
    cmpg-float v9, v6, v7

    if-nez v9, :cond_1

    goto/16 :goto_6

    :cond_1
    div-float v9, v3, v4

    div-float v10, v5, v6

    cmpl-float v9, v9, v10

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-lez v9, :cond_2

    move v9, v11

    goto :goto_0

    :cond_2
    move v9, v10

    :goto_0
    if-eqz v9, :cond_3

    div-float v12, v3, v5

    goto :goto_1

    :cond_3
    div-float v12, v4, v6

    :goto_1
    mul-float/2addr v5, v12

    mul-float/2addr v6, v12

    const/4 v13, 0x0

    const/high16 v14, 0x40000000    # 2.0f

    if-eqz v9, :cond_4

    move v15, v7

    move/from16 v16, v15

    goto :goto_3

    :cond_4
    iget v15, v2, Lyads/rn5;->a:I

    move/from16 v16, v7

    iget v7, v2, Lyads/rn5;->c:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v15

    int-to-float v7, v7

    mul-float/2addr v7, v12

    div-float v15, v3, v14

    sub-float/2addr v15, v7

    cmpl-float v7, v15, v16

    if-lez v7, :cond_5

    move-object v3, v8

    goto :goto_2

    :cond_5
    add-float v7, v15, v5

    cmpg-float v7, v7, v3

    if-gez v7, :cond_6

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    goto :goto_2

    :cond_6
    move-object v3, v13

    :goto_2
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v15

    :cond_7
    :goto_3
    if-eqz v9, :cond_b

    iget v3, v2, Lyads/rn5;->b:I

    iget v5, v2, Lyads/rn5;->d:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v3

    int-to-float v3, v5

    mul-float/2addr v3, v12

    div-float v5, v4, v14

    sub-float/2addr v5, v3

    cmpl-float v3, v5, v16

    if-lez v3, :cond_8

    goto :goto_4

    :cond_8
    add-float v3, v5, v6

    cmpg-float v3, v3, v4

    if-gez v3, :cond_9

    sub-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    goto :goto_4

    :cond_9
    move-object v8, v13

    :goto_4
    if-eqz v8, :cond_a

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v7

    goto :goto_5

    :cond_a
    move v7, v5

    goto :goto_5

    :cond_b
    move/from16 v7, v16

    :goto_5
    iget-object v3, v0, Lyads/xn5;->a:Landroid/graphics/Matrix;

    invoke-virtual {v3, v12, v12}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v3, v0, Lyads/xn5;->a:Landroid/graphics/Matrix;

    invoke-virtual {v3, v15, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    sget-object v3, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v3, v0, Lyads/xn5;->a:Landroid/graphics/Matrix;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "YadPreferenceFile"

    invoke-static {v3, v4}, Lyads/bv3;->a(Landroid/content/Context;Ljava/lang/String;)Lyads/zu3;

    move-result-object v3

    check-cast v3, Lyads/av3;

    const-string v4, "preference_smart_centers_debug_enabled"

    invoke-virtual {v3, v4, v10}, Lyads/av3;->a(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_c

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v4, p2

    invoke-virtual {v4, v3, v11}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v5, v0, Lyads/xn5;->c:Landroid/graphics/Rect;

    iget v6, v2, Lyads/rn5;->a:I

    iget v7, v2, Lyads/rn5;->b:I

    iget v8, v2, Lyads/rn5;->c:I

    add-int/2addr v8, v6

    iget v2, v2, Lyads/rn5;->d:I

    add-int/2addr v2, v7

    invoke-virtual {v5, v6, v7, v8, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, v0, Lyads/xn5;->b:Landroid/graphics/Paint;

    invoke-virtual {v4, v5, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_c
    :goto_6
    return-void
.end method
