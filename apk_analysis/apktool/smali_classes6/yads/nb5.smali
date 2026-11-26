.class public final Lyads/nb5;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field public final a:Lyads/mb5;

.field public final b:Landroid/graphics/Paint;

.field public final c:Landroid/graphics/Paint;

.field public final d:F

.field public final e:F

.field public final f:F

.field public final g:F

.field public final h:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Lyads/mb5;)V
    .locals 6

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-object p1, p0, Lyads/nb5;->a:Lyads/mb5;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v2, p1, Lyads/mb5;->c:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iput-object v0, p0, Lyads/nb5;->b:Landroid/graphics/Paint;

    iget v0, p1, Lyads/mb5;->d:F

    iget v2, p1, Lyads/mb5;->b:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    cmpl-float v2, v0, v2

    const/4 v4, 0x0

    if-ltz v2, :cond_0

    iget v2, p0, Lyads/nb5;->d:F

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    sub-float v2, v0, v2

    iput v2, p0, Lyads/nb5;->f:F

    iget v2, p1, Lyads/mb5;->a:F

    div-float/2addr v2, v3

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_1

    iget v2, p0, Lyads/nb5;->d:F

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_1
    sub-float/2addr v0, v2

    iput v0, p0, Lyads/nb5;->g:F

    new-instance v0, Landroid/graphics/RectF;

    iget v2, p1, Lyads/mb5;->a:F

    iget v5, p1, Lyads/mb5;->b:F

    invoke-direct {v0, v4, v4, v2, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lyads/nb5;->h:Landroid/graphics/RectF;

    iget-object v2, p1, Lyads/mb5;->e:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    iget-object v2, p1, Lyads/mb5;->f:Ljava/lang/Float;

    if-eqz v2, :cond_2

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p1, Lyads/mb5;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p1, Lyads/mb5;->f:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iput-object v2, p0, Lyads/nb5;->c:Landroid/graphics/Paint;

    iget-object p1, p1, Lyads/mb5;->f:Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    div-float/2addr p1, v3

    iput p1, p0, Lyads/nb5;->d:F

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lyads/nb5;->e:F

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Lyads/nb5;->c:Landroid/graphics/Paint;

    iput v4, p0, Lyads/nb5;->d:F

    iput v4, p0, Lyads/nb5;->e:F

    :goto_2
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 7

    iget v0, p0, Lyads/nb5;->e:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lyads/nb5;->h:Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    add-float/2addr v3, v0

    iget v4, v1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    add-float/2addr v4, v0

    iget v5, v1, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    sub-float/2addr v5, v0

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lyads/nb5;->h:Landroid/graphics/RectF;

    iget v1, p0, Lyads/nb5;->f:F

    iget v2, p0, Lyads/nb5;->g:F

    iget-object v3, p0, Lyads/nb5;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lyads/nb5;->c:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    iget v1, p0, Lyads/nb5;->d:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lyads/nb5;->h:Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    add-float/2addr v4, v1

    iget v5, v2, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    add-float/2addr v5, v1

    iget v6, v2, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    sub-float/2addr v6, v1

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    sub-float/2addr v2, v1

    invoke-virtual {v3, v4, v5, v6, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lyads/nb5;->h:Landroid/graphics/RectF;

    iget-object p0, p0, Lyads/nb5;->a:Lyads/mb5;

    iget p0, p0, Lyads/mb5;->d:F

    invoke-virtual {p1, v1, p0, p0, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public final getIntrinsicHeight()I
    .locals 0

    iget-object p0, p0, Lyads/nb5;->a:Lyads/mb5;

    iget p0, p0, Lyads/mb5;->b:F

    float-to-int p0, p0

    return p0
.end method

.method public final getIntrinsicWidth()I
    .locals 0

    iget-object p0, p0, Lyads/nb5;->a:Lyads/mb5;

    iget p0, p0, Lyads/mb5;->a:F

    float-to-int p0, p0

    return p0
.end method

.method public final getOpacity()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public final setAlpha(I)V
    .locals 0

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
