.class public abstract Lrq;
.super Lka1;
.source "SourceFile"


# instance fields
.field public p:F

.field public q:F


# virtual methods
.method public final a()V
    .locals 6

    iget-object v0, p0, Lka1;->b:Lpq7;

    iget v1, v0, Lpq7;->b:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lka1;->k:I

    const/16 v3, 0x168

    const/4 v4, 0x2

    const/high16 v5, 0x43b40000    # 360.0f

    if-ge v2, v3, :cond_0

    iget v0, v0, Lpq7;->a:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    new-array v1, v4, [F

    fill-array-data v1, :array_0

    new-instance v2, Landroid/graphics/SweepGradient;

    iget-object v3, p0, Lka1;->h:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v4, p0, Lka1;->h:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-direct {v2, v3, v4, v0, v1}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iget v1, p0, Lka1;->j:I

    int-to-float v1, v1

    iget v3, p0, Lka1;->k:I

    int-to-float v3, v3

    sub-float/2addr v5, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v5, v3

    sub-float/2addr v1, v5

    iget-object v3, p0, Lka1;->h:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v4, p0, Lka1;->h:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-virtual {v0, v1, v3, v4}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    invoke-virtual {v2, v0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0

    :cond_0
    iget v0, v0, Lpq7;->a:I

    filled-new-array {v1, v0, v1}, [I

    move-result-object v0

    int-to-float v1, v2

    div-float/2addr v1, v5

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    const/4 v2, 0x3

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v5, 0x0

    aput v3, v2, v5

    const/4 v3, 0x1

    aput v1, v2, v3

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v2, v4

    new-instance v1, Landroid/graphics/SweepGradient;

    iget-object v3, p0, Lka1;->h:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v4, p0, Lka1;->h:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-direct {v1, v3, v4, v0, v2}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    move-object v2, v1

    :goto_0
    iget-object p0, p0, Lka1;->l:Landroid/graphics/Paint;

    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public c(Landroid/graphics/Canvas;Landroid/graphics/RectF;)Z
    .locals 8

    invoke-super {p0, p1, p2}, Lka1;->c(Landroid/graphics/Canvas;Landroid/graphics/RectF;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget p1, p0, Lka1;->d:F

    iget p2, p0, Lka1;->e:F

    iget-object v0, p0, Lka1;->b:Lpq7;

    iget v1, v0, Lpq7;->d:F

    iget v2, p0, Lka1;->g:F

    const/4 v3, 0x0

    sub-float/2addr p1, v3

    sub-float/2addr p2, v3

    sub-float/2addr v1, v3

    sub-float v4, p1, p2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    const-wide v6, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v4, v4, v6

    if-gez v4, :cond_1

    div-float/2addr p1, v1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lka1;->c:Lid2$b;

    sget-object v5, Lid2$b;->EVENT_HIDE:Lid2$b;

    if-eq v4, v5, :cond_2

    sget-object v5, Lid2$b;->EVENT_SHOW:Lid2$b;

    if-eq v4, v5, :cond_2

    sget-object v5, Lid2$b;->EVENT_COLOR_CHANGE:Lid2$b;

    if-ne v4, v5, :cond_3

    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    :cond_3
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    cmpg-double v4, v4, v6

    if-gez v4, :cond_4

    div-float p2, p1, v1

    mul-float/2addr v2, p1

    sub-float v1, p1, v2

    mul-float/2addr v1, p2

    div-float p1, v1, p1

    goto :goto_0

    :cond_4
    div-float v1, p2, v1

    sub-float v4, p2, p1

    mul-float/2addr v4, v2

    add-float/2addr v4, p1

    mul-float/2addr v4, v1

    div-float p1, v4, p2

    :goto_0
    iget p2, p0, Lka1;->k:I

    int-to-float p2, p2

    mul-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget-object v1, v0, Lpq7;->h:Lpq7$b;

    sget-object v2, Lpq7$b;->STYLE_PIE:Lpq7$b;

    iget-object v4, p0, Lka1;->l:Landroid/graphics/Paint;

    const v5, 0x3dcccccd    # 0.1f

    if-ne v1, v2, :cond_5

    move v1, v3

    goto :goto_1

    :cond_5
    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeCap()Landroid/graphics/Paint$Cap;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    move v1, v5

    :goto_1
    cmpg-float p2, p2, v1

    if-gez p2, :cond_7

    iget-object p1, v0, Lpq7;->h:Lpq7$b;

    if-ne p1, v2, :cond_6

    move p1, v3

    goto :goto_2

    :cond_6
    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeCap()Landroid/graphics/Paint$Cap;

    sget-object p1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    move p1, v5

    :cond_7
    :goto_2
    iput p1, p0, Lrq;->q:F

    iget p2, p0, Lka1;->j:I

    int-to-float p2, p2

    iput p2, p0, Lrq;->p:F

    cmpl-float p0, p1, v3

    if-nez p0, :cond_8

    :goto_3
    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method
