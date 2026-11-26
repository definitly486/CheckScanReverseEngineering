.class public final Lcom/warefly/checkscan/core/ui/shadow/ShadowLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public b:F

.field public c:I

.field public d:F

.field public e:F

.field public f:F

.field public g:I

.field public final h:Landroid/graphics/Paint;

.field public final i:Landroid/graphics/Paint;

.field public final j:Landroid/graphics/Path;

.field public k:Landroid/graphics/RectF;

.field public l:Landroid/graphics/RectF;

.field public m:Landroid/graphics/Bitmap;

.field public final n:Landroid/graphics/Paint;

.field public o:I

.field public p:I

.field public q:I

.field public r:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 138
    invoke-direct {p0, p1, v0}, Lcom/warefly/checkscan/core/ui/shadow/ShadowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x41800000    # 16.0f

    iput v0, p0, Lcom/warefly/checkscan/core/ui/shadow/ShadowLayout;->b:F

    const v1, 0x29000b21

    iput v1, p0, Lcom/warefly/checkscan/core/ui/shadow/ShadowLayout;->c:I

    const/high16 v2, 0x40c00000    # 6.0f

    iput v2, p0, Lcom/warefly/checkscan/core/ui/shadow/ShadowLayout;->d:F

    const/4 v3, -0x1

    iput v3, p0, Lcom/warefly/checkscan/core/ui/shadow/ShadowLayout;->g:I

    new-instance v4, Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v4, p0, Lcom/warefly/checkscan/core/ui/shadow/ShadowLayout;->h:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v4, p0, Lcom/warefly/checkscan/core/ui/shadow/ShadowLayout;->i:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, p0, Lcom/warefly/checkscan/core/ui/shadow/ShadowLayout;->j:Landroid/graphics/Path;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Lcom/warefly/checkscan/core/ui/shadow/ShadowLayout;->k:Landroid/graphics/RectF;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Lcom/warefly/checkscan/core/ui/shadow/ShadowLayout;->l:Landroid/graphics/RectF;

    new-instance v4, Landroid/graphics/Paint;

    const/4 v6, 0x3

    invoke-direct {v4, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v4, p0, Lcom/warefly/checkscan/core/ui/shadow/ShadowLayout;->n:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v4, Lax6;->d:[I

    const/4 v7, 0x0

    invoke-virtual {p1, p2, v4, v7, v7}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x2

    :try_start_0
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Lcom/warefly/checkscan/core/ui/shadow/ShadowLayout;->setCornerRadius(F)V

    invoke-virtual {p1, v5, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/warefly/checkscan/core/ui/shadow/ShadowLayout;->setShadowColor(I)V

    const/4 p2, 0x5

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Lcom/warefly/checkscan/core/ui/shadow/ShadowLayout;->setShadowRadius(F)V

    const/4 p2, 0x0

    invoke-virtual {p1, v6, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/warefly/checkscan/core/ui/shadow/ShadowLayout;->setShadowDx(F)V

    const/4 v0, 0x4

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Lcom/warefly/checkscan/core/ui/shadow/ShadowLayout;->setShadowDy(F)V

    invoke-virtual {p1, v7, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/warefly/checkscan/core/ui/shadow/ShadowLayout;->setBgColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/shadow/ShadowLayout;->b()V

    invoke-virtual {p0, v7}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method

.method private final getShadowSpace()I
    .locals 2

    iget v0, p0, Lcom/warefly/checkscan/core/ui/shadow/ShadowLayout;->d:F

    iget v1, p0, Lcom/warefly/checkscan/core/ui/shadow/ShadowLayout;->e:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget p0, p0, Lcom/warefly/checkscan/core/ui/shadow/ShadowLayout;->f:F

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    add-float/2addr p0, v0

    float-to-int p0, p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method


# virtual methods
.method public final a()V
    .locals 5

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/shadow/ShadowLayout;->getShadowSpace()I

    move-result v0

    iget v1, p0, Lcom/warefly/checkscan/core/ui/shadow/ShadowLayout;->o:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/warefly/checkscan/core/ui/shadow/ShadowLayout;->p:I

    add-int/2addr v2, v0

    iget v3, p0, Lcom/warefly/checkscan/core/ui/shadow/ShadowLayout;->q:I

    add-int/2addr v3, v0

    iget v4, p0, Lcom/warefly/checkscan/core/ui/shadow/ShadowLayout;->r:I

    add-int/2addr v4, v0

    invoke-super {p0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/warefly/checkscan/core/ui/shadow/ShadowLayout;->i:Landroid/graphics/Paint;

    iget v1, p0, Lcom/warefly/checkscan/core/ui/shadow/ShadowLayout;->g:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/shadow/ShadowLayout;->a()V

    iget-object v0, p0, Lcom/warefly/checkscan/core/ui/shadow/ShadowLayout;->m:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/warefly/checkscan/core/ui/shadow/ShadowLayout;->m:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/core/ui/shadow/ShadowLayout;->m:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/warefly/checkscan/core/ui/shadow/ShadowLayout;->n:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    iget-object v0, p0, Lcom/warefly/checkscan/core/ui/shadow/ShadowLayout;->k:Landroid/graphics/RectF;

    iget v1, p0, Lcom/warefly/checkscan/core/ui/shadow/ShadowLayout;->b:F

    iget-object v2, p0, Lcom/warefly/checkscan/core/ui/shadow/ShadowLayout;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget-object v1, p0, Lcom/warefly/checkscan/core/ui/shadow/ShadowLayout;->j:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    :try_start_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw p0
.end method

.method public final getBgColor()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/core/ui/shadow/ShadowLayout;->g:I

    return p0
.end method

.method public final getCornerRadius()F
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/core/ui/shadow/ShadowLayout;->b:F

    return p0
.end method

.method public final getShadowColor()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/core/ui/shadow/ShadowLayout;->c:I

    return p0
.end method

.method public final getShadowDx()F
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/core/ui/shadow/ShadowLayout;->e:F

    return p0
.end method

.method public final getShadowDy()F
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/core/ui/shadow/ShadowLayout;->f:F

    return p0
.end method

.method public final getShadowRadius()F
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/core/ui/shadow/ShadowLayout;->d:F

    return p0
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/warefly/checkscan/core/ui/shadow/ShadowLayout;->m:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/warefly/checkscan/core/ui/shadow/ShadowLayout;->m:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/shadow/ShadowLayout;->getShadowSpace()I

    move-result p3

    int-to-float p3, p3

    new-instance p4, Landroid/graphics/RectF;

    int-to-float v0, p1

    sub-float/2addr v0, p3

    int-to-float v1, p2

    sub-float/2addr v1, p3

    invoke-direct {p4, p3, p3, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p4, p0, Lcom/warefly/checkscan/core/ui/shadow/ShadowLayout;->k:Landroid/graphics/RectF;

    new-instance p3, Landroid/graphics/RectF;

    iget-object p4, p0, Lcom/warefly/checkscan/core/ui/shadow/ShadowLayout;->k:Landroid/graphics/RectF;

    iget v0, p4, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/warefly/checkscan/core/ui/shadow/ShadowLayout;->e:F

    add-float/2addr v0, v1

    iget v2, p4, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/warefly/checkscan/core/ui/shadow/ShadowLayout;->f:F

    add-float/2addr v2, v3

    iget v4, p4, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v1

    iget p4, p4, Landroid/graphics/RectF;->bottom:F

    add-float/2addr p4, v3

    invoke-direct {p3, v0, v2, v4, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p3, p0, Lcom/warefly/checkscan/core/ui/shadow/ShadowLayout;->l:Landroid/graphics/RectF;

    iget-object p3, p0, Lcom/warefly/checkscan/core/ui/shadow/ShadowLayout;->j:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    iget-object p4, p0, Lcom/warefly/checkscan/core/ui/shadow/ShadowLayout;->k:Landroid/graphics/RectF;

    iget v0, p0, Lcom/warefly/checkscan/core/ui/shadow/ShadowLayout;->b:F

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p3, p4, v0, v0, v1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object p3, p0, Lcom/warefly/checkscan/core/ui/shadow/ShadowLayout;->m:Landroid/graphics/Bitmap;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget p3, p0, Lcom/warefly/checkscan/core/ui/shadow/ShadowLayout;->c:I

    iget-object p4, p0, Lcom/warefly/checkscan/core/ui/shadow/ShadowLayout;->h:Landroid/graphics/Paint;

    invoke-virtual {p4, p3}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p3, Landroid/graphics/BlurMaskFilter;

    iget v0, p0, Lcom/warefly/checkscan/core/ui/shadow/ShadowLayout;->d:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, v0, v1

    if-gez v2, :cond_2

    move v0, v1

    :cond_2
    sget-object v1, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {p3, v0, v1}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {p4, p3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    iget-object p3, p0, Lcom/warefly/checkscan/core/ui/shadow/ShadowLayout;->l:Landroid/graphics/RectF;

    iget v0, p0, Lcom/warefly/checkscan/core/ui/shadow/ShadowLayout;->b:F

    invoke-virtual {p2, p3, v0, v0, p4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iput-object p1, p0, Lcom/warefly/checkscan/core/ui/shadow/ShadowLayout;->m:Landroid/graphics/Bitmap;

    :cond_3
    :goto_0
    return-void
.end method

.method public final setBgColor(I)V
    .locals 1

    iput p1, p0, Lcom/warefly/checkscan/core/ui/shadow/ShadowLayout;->g:I

    iget-object v0, p0, Lcom/warefly/checkscan/core/ui/shadow/ShadowLayout;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setCornerRadius(F)V
    .locals 0

    iput p1, p0, Lcom/warefly/checkscan/core/ui/shadow/ShadowLayout;->b:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    iput p1, p0, Lcom/warefly/checkscan/core/ui/shadow/ShadowLayout;->o:I

    iput p2, p0, Lcom/warefly/checkscan/core/ui/shadow/ShadowLayout;->p:I

    iput p3, p0, Lcom/warefly/checkscan/core/ui/shadow/ShadowLayout;->q:I

    iput p4, p0, Lcom/warefly/checkscan/core/ui/shadow/ShadowLayout;->r:I

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/shadow/ShadowLayout;->a()V

    return-void
.end method

.method public setPaddingRelative(IIII)V
    .locals 0

    iput p1, p0, Lcom/warefly/checkscan/core/ui/shadow/ShadowLayout;->o:I

    iput p2, p0, Lcom/warefly/checkscan/core/ui/shadow/ShadowLayout;->p:I

    iput p3, p0, Lcom/warefly/checkscan/core/ui/shadow/ShadowLayout;->q:I

    iput p4, p0, Lcom/warefly/checkscan/core/ui/shadow/ShadowLayout;->r:I

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/shadow/ShadowLayout;->a()V

    return-void
.end method

.method public final setShadowColor(I)V
    .locals 0

    iput p1, p0, Lcom/warefly/checkscan/core/ui/shadow/ShadowLayout;->c:I

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/shadow/ShadowLayout;->b()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setShadowDx(F)V
    .locals 0

    iput p1, p0, Lcom/warefly/checkscan/core/ui/shadow/ShadowLayout;->e:F

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/shadow/ShadowLayout;->b()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public final setShadowDy(F)V
    .locals 0

    iput p1, p0, Lcom/warefly/checkscan/core/ui/shadow/ShadowLayout;->f:F

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/shadow/ShadowLayout;->b()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public final setShadowRadius(F)V
    .locals 0

    iput p1, p0, Lcom/warefly/checkscan/core/ui/shadow/ShadowLayout;->d:F

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/shadow/ShadowLayout;->b()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
