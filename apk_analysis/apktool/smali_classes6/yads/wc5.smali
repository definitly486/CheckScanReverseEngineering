.class public final Lyads/wc5;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field public a:Lyads/vc5;

.field public b:Lyads/tc5;

.field public c:Lyads/uc5;

.field public d:Landroid/graphics/Bitmap;

.field public final e:Landroid/graphics/Paint;

.field public final f:Landroid/graphics/Matrix;

.field public g:Z

.field public h:F

.field public i:F

.field public j:F

.field public k:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    sget-object v0, Lyads/vc5;->b:Lyads/vc5;

    iput-object v0, p0, Lyads/wc5;->a:Lyads/vc5;

    sget-object v0, Lyads/tc5;->b:Lyads/tc5;

    iput-object v0, p0, Lyads/wc5;->b:Lyads/tc5;

    sget-object v0, Lyads/uc5;->b:Lyads/uc5;

    iput-object v0, p0, Lyads/wc5;->c:Lyads/uc5;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lyads/wc5;->e:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lyads/wc5;->f:Landroid/graphics/Matrix;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lyads/wc5;->h:F

    iput v0, p0, Lyads/wc5;->i:F

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 10

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lyads/wc5;->d:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lyads/wc5;->d:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    if-lez v2, :cond_e

    if-gtz v0, :cond_2

    goto/16 :goto_7

    :cond_2
    iget-boolean v3, p0, Lyads/wc5;->g:Z

    if-eqz v3, :cond_c

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    int-to-float v0, v0

    div-float v5, v3, v0

    iput v5, p0, Lyads/wc5;->h:F

    int-to-float v2, v2

    div-float v5, v4, v2

    iput v5, p0, Lyads/wc5;->i:F

    iget-object v5, p0, Lyads/wc5;->a:Lyads/vc5;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v5, :cond_7

    if-eq v5, v7, :cond_5

    if-eq v5, v6, :cond_3

    goto :goto_2

    :cond_3
    iget v5, p0, Lyads/wc5;->h:F

    iget v8, p0, Lyads/wc5;->i:F

    cmpg-float v9, v5, v8

    if-gez v9, :cond_4

    move v5, v8

    :cond_4
    iput v5, p0, Lyads/wc5;->h:F

    iput v5, p0, Lyads/wc5;->i:F

    goto :goto_2

    :cond_5
    iget v5, p0, Lyads/wc5;->h:F

    iget v8, p0, Lyads/wc5;->i:F

    cmpl-float v9, v5, v8

    if-lez v9, :cond_6

    move v5, v8

    :cond_6
    iput v5, p0, Lyads/wc5;->h:F

    iput v5, p0, Lyads/wc5;->i:F

    goto :goto_2

    :cond_7
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, p0, Lyads/wc5;->h:F

    iput v5, p0, Lyads/wc5;->i:F

    :goto_2
    iget v5, p0, Lyads/wc5;->h:F

    mul-float/2addr v0, v5

    iget v5, p0, Lyads/wc5;->i:F

    mul-float/2addr v2, v5

    iget-object v5, p0, Lyads/wc5;->b:Lyads/tc5;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v9, 0x0

    if-eq v5, v7, :cond_9

    if-eq v5, v6, :cond_8

    move v3, v9

    goto :goto_4

    :cond_8
    sub-float/2addr v3, v0

    iget v0, p0, Lyads/wc5;->h:F

    :goto_3
    div-float/2addr v3, v0

    goto :goto_4

    :cond_9
    sub-float/2addr v3, v0

    div-float/2addr v3, v8

    iget v0, p0, Lyads/wc5;->h:F

    goto :goto_3

    :goto_4
    iput v3, p0, Lyads/wc5;->j:F

    iget-object v0, p0, Lyads/wc5;->c:Lyads/uc5;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eq v0, v7, :cond_b

    if-eq v0, v6, :cond_a

    goto :goto_6

    :cond_a
    sub-float/2addr v4, v2

    iget v0, p0, Lyads/wc5;->i:F

    :goto_5
    div-float v9, v4, v0

    goto :goto_6

    :cond_b
    sub-float/2addr v4, v2

    div-float/2addr v4, v8

    iget v0, p0, Lyads/wc5;->i:F

    goto :goto_5

    :goto_6
    iput v9, p0, Lyads/wc5;->k:F

    iput-boolean v1, p0, Lyads/wc5;->g:Z

    :cond_c
    iget v0, p0, Lyads/wc5;->h:F

    iget v1, p0, Lyads/wc5;->i:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    iget v0, p0, Lyads/wc5;->j:F

    iget v1, p0, Lyads/wc5;->k:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lyads/wc5;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_d

    iget-object v1, p0, Lyads/wc5;->f:Landroid/graphics/Matrix;

    iget-object p0, p0, Lyads/wc5;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_d
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_e
    :goto_7
    iget-object v0, p0, Lyads/wc5;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_f

    iget-object v1, p0, Lyads/wc5;->f:Landroid/graphics/Matrix;

    iget-object p0, p0, Lyads/wc5;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_f
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public final getOpacity()I
    .locals 0

    iget-object p0, p0, Lyads/wc5;->e:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getAlpha()I

    move-result p0

    return p0
.end method

.method public final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lyads/wc5;->g:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lyads/wc5;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
