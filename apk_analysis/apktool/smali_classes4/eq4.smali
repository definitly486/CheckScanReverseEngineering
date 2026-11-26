.class public final Leq4;
.super Lka1;
.source "SourceFile"


# instance fields
.field public final p:Ljava/lang/String;

.field public final q:Landroid/graphics/Path;

.field public r:Lcom/hookedonplay/decoviewlib/DecoView$c;

.field public s:Lcom/hookedonplay/decoviewlib/DecoView$d;


# direct methods
.method public constructor <init>(Lpq7;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lka1;-><init>(Lpq7;II)V

    const-class p1, Leq4;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Leq4;->p:Ljava/lang/String;

    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Leq4;->q:Landroid/graphics/Path;

    sget-object p2, Lcom/hookedonplay/decoviewlib/DecoView$c;->GRAVITY_HORIZONTAL_CENTER:Lcom/hookedonplay/decoviewlib/DecoView$c;

    iput-object p2, p0, Leq4;->r:Lcom/hookedonplay/decoviewlib/DecoView$c;

    sget-object p2, Lcom/hookedonplay/decoviewlib/DecoView$d;->GRAVITY_VERTICAL_CENTER:Lcom/hookedonplay/decoviewlib/DecoView$d;

    iput-object p2, p0, Leq4;->s:Lcom/hookedonplay/decoviewlib/DecoView$d;

    const-string p0, "LineSeries is experimental. Not all functionality is implemented."

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10

    iget-object v0, p0, Lka1;->b:Lpq7;

    iget v1, v0, Lpq7;->b:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_0

    iget v7, v0, Lpq7;->a:I

    iget v8, v0, Lpq7;->b:I

    new-instance v2, Landroid/graphics/LinearGradient;

    iget-object v0, p0, Lka1;->h:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    iget v4, v0, Landroid/graphics/RectF;->top:F

    iget v5, v0, Landroid/graphics/RectF;->right:F

    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iget-object p0, p0, Lka1;->l:Landroid/graphics/Paint;

    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_0
    return-void
.end method

.method public final c(Landroid/graphics/Canvas;Landroid/graphics/RectF;)Z
    .locals 12

    invoke-super {p0, p1, p2}, Lka1;->c(Landroid/graphics/Canvas;Landroid/graphics/RectF;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    :cond_0
    iget-object p2, p0, Lka1;->b:Lpq7;

    invoke-virtual {p2}, Lpq7;->a()Landroid/graphics/PointF;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lpq7;->a()Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-virtual {p2}, Lpq7;->a()Landroid/graphics/PointF;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p2}, Lpq7;->a()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    iget v4, p2, Lpq7;->c:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iget v6, p0, Lka1;->f:F

    iget v7, p2, Lpq7;->d:F

    sub-float/2addr v7, v2

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v7, 0x3c23d70a    # 0.01f

    cmpg-float v2, v2, v7

    if-gez v2, :cond_3

    move v6, v7

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v7, v4, v5

    sub-float/2addr v2, v7

    mul-float/2addr v2, v6

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v7

    mul-float/2addr v8, v6

    add-float/2addr v2, v4

    add-float/2addr v8, v4

    iget-object p2, p2, Lpq7;->h:Lpq7$b;

    sget-object v6, Lpq7$b;->STYLE_LINE_HORIZONTAL:Lpq7$b;

    const-string v7, ")"

    iget-object v9, p0, Leq4;->p:Ljava/lang/String;

    const/4 v10, 0x3

    const/4 v11, 0x2

    if-ne p2, v6, :cond_7

    sget-object p2, Leq4$a;->a:[I

    iget-object v1, p0, Leq4;->s:Lcom/hookedonplay/decoviewlib/DecoView$d;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget p2, p2, v1

    if-eq p2, v0, :cond_6

    if-eq p2, v11, :cond_5

    if-eq p2, v10, :cond_4

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Invalid Gravity set, VERTICAL_CENTER set ("

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Leq4;->s:Lcom/hookedonplay/decoviewlib/DecoView$d;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v9, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result p2

    div-int/2addr p2, v11

    int-to-float p2, p2

    :goto_2
    add-float v8, p2, v3

    :goto_3
    move p2, v8

    goto :goto_5

    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr p2, v4

    sub-float v8, p2, v3

    goto :goto_3

    :cond_6
    div-float p2, v4, v5

    goto :goto_2

    :cond_7
    sget-object p2, Leq4$a;->b:[I

    iget-object v2, p0, Leq4;->r:Lcom/hookedonplay/decoviewlib/DecoView$c;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget p2, p2, v2

    if-eq p2, v0, :cond_a

    if-eq p2, v11, :cond_9

    if-eq p2, v10, :cond_8

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "Invalid Gravity set, HORIZONTAL_CENTER set ("

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Leq4;->r:Lcom/hookedonplay/decoviewlib/DecoView$c;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v9, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result p2

    div-int/2addr p2, v11

    int-to-float p2, p2

    add-float v2, p2, v1

    :goto_4
    move p2, v8

    move v8, v4

    move v4, v2

    goto :goto_5

    :cond_9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr p2, v4

    sub-float v2, p2, v1

    goto :goto_4

    :cond_a
    add-float v2, v4, v1

    goto :goto_4

    :goto_5
    iget-object v1, p0, Leq4;->q:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    invoke-virtual {v1, v4, v8}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v1, v2, p2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p0, p0, Lka1;->l:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return v0
.end method
