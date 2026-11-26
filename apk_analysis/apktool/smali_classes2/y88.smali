.class public final Ly88;
.super Landroid/text/style/ReplacementSpan;
.source "SourceFile"

# interfaces
.implements Landroid/text/style/LineHeightSpan;


# instance fields
.field public final b:I

.field public final c:F


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v1, v0

    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    iput p1, p0, Ly88;->b:I

    iput v1, p0, Ly88;->c:F

    return-void
.end method


# virtual methods
.method public final chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p6, :cond_0

    iget p0, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget p1, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int p2, p0, p1

    int-to-float p2, p2

    const p3, 0x3cdb6dba

    mul-float/2addr p2, p3

    const/high16 p3, 0x40000000    # 2.0f

    mul-float/2addr p2, p3

    float-to-int p2, p2

    add-int/2addr p1, p2

    iput p1, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget p1, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    add-int/2addr p1, p2

    iput p1, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget p1, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr p1, p2

    iput p1, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr p0, p2

    iput p0, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    :cond_0
    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 13

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v0, p5

    move/from16 v4, p6

    move/from16 v5, p8

    move-object/from16 v6, p9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v7, p0, Ly88;->b:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    sub-int v7, v5, v4

    int-to-float v7, v7

    const v8, 0x3cdb6dba

    mul-float/2addr v8, v7

    const-string v9, "__"

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    invoke-virtual {v6, p2, v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    const-string v12, "x2"

    invoke-virtual {v6, v12}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v12

    cmpg-float v10, v10, v12

    if-nez v10, :cond_0

    const/4 v11, 0x0

    :cond_0
    if-eqz v11, :cond_1

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v10

    goto :goto_0

    :cond_1
    move v10, v9

    :goto_0
    invoke-static {v10, v9}, Ljava/lang/Math;->max(FF)F

    move-result v9

    iget p0, p0, Ly88;->c:F

    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr p0, v10

    add-float/2addr p0, v9

    div-float/2addr v7, v10

    sub-float v9, v7, v8

    new-instance v11, Landroid/graphics/RectF;

    int-to-float v4, v4

    mul-float v12, v10, v8

    add-float/2addr v12, v4

    add-float v4, v0, p0

    int-to-float v5, v5

    invoke-direct {v11, v0, v12, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v11, v9, v9, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    const/4 v4, -0x1

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v6}, Landroid/graphics/Paint;->getTextSize()F

    move-result v4

    const v9, 0x3f4ccccd    # 0.8f

    mul-float/2addr v4, v9

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v6, p2, v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v4

    invoke-virtual {v6}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Paint$FontMetrics;->descent:F

    invoke-virtual {v6}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v9, v11

    div-float/2addr v9, v10

    invoke-virtual {v6}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float/2addr v9, v11

    sub-float/2addr p0, v4

    div-float/2addr p0, v10

    add-float v4, p0, v0

    add-float/2addr v8, v5

    sub-float/2addr v8, v7

    add-float v5, v8, v9

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result p2

    const-string p3, "__"

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    iget p0, p0, Ly88;->c:F

    mul-float/2addr p2, p0

    add-float/2addr p2, p1

    float-to-int p0, p2

    return p0
.end method
