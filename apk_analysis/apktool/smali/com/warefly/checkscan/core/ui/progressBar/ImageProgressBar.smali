.class public final Lcom/warefly/checkscan/core/ui/progressBar/ImageProgressBar;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field public final b:F

.field public c:F

.field public final d:F

.field public final e:Landroid/graphics/drawable/Drawable;

.field public final f:Landroid/graphics/Paint;

.field public final g:Landroid/graphics/Paint;

.field public final h:Landroid/graphics/RectF;

.field public final i:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 156
    invoke-direct {p0, p1, v0}, Lcom/warefly/checkscan/core/ui/progressBar/ImageProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x7f0402da

    .line 155
    invoke-direct {p0, p1, p2, v0}, Lcom/warefly/checkscan/core/ui/progressBar/ImageProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x7f150159

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/16 p3, 0x8

    invoke-static {p3}, Lpl2;->e(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/warefly/checkscan/core/ui/progressBar/ImageProgressBar;->b:F

    const/high16 v1, -0x3c790000    # -270.0f

    iput v1, p0, Lcom/warefly/checkscan/core/ui/progressBar/ImageProgressBar;->d:F

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v5, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iput-object v2, p0, Lcom/warefly/checkscan/core/ui/progressBar/ImageProgressBar;->f:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iput-object v5, p0, Lcom/warefly/checkscan/core/ui/progressBar/ImageProgressBar;->g:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Lcom/warefly/checkscan/core/ui/progressBar/ImageProgressBar;->h:Landroid/graphics/RectF;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/warefly/checkscan/core/ui/progressBar/ImageProgressBar;->i:Landroid/graphics/Rect;

    sget-object v4, Lax6;->a:[I

    const v6, 0x7f0402da

    invoke-virtual {p1, p2, v4, v6, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p3}, Lpl2;->e(I)I

    move-result p3

    int-to-float p3, p3

    const/4 v0, 0x2

    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Lcom/warefly/checkscan/core/ui/progressBar/ImageProgressBar;->b:F

    const/4 v0, 0x3

    const/4 v4, 0x0

    invoke-virtual {p2, v0, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/warefly/checkscan/core/ui/progressBar/ImageProgressBar;->c:F

    const/4 v0, 0x5

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/warefly/checkscan/core/ui/progressBar/ImageProgressBar;->d:F

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/warefly/checkscan/core/ui/progressBar/ImageProgressBar;->e:Landroid/graphics/drawable/Drawable;

    const p0, 0x7f0604a3

    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    const/4 v0, 0x4

    invoke-virtual {p2, v0, p0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p0

    invoke-virtual {v2, p0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const p0, 0x7f060034

    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    const/4 p1, 0x0

    invoke-virtual {p2, p1, p0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p0

    invoke-virtual {v5, p0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v5, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/warefly/checkscan/core/ui/progressBar/ImageProgressBar;->b:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, v0, v1

    div-float v3, v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v5, v0, v1

    sub-float/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v0, v1

    sub-float/2addr v5, v0

    iget-object v7, p0, Lcom/warefly/checkscan/core/ui/progressBar/ImageProgressBar;->h:Landroid/graphics/RectF;

    invoke-virtual {v7, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/warefly/checkscan/core/ui/progressBar/ImageProgressBar;->g:Landroid/graphics/Paint;

    iget v8, p0, Lcom/warefly/checkscan/core/ui/progressBar/ImageProgressBar;->d:F

    const/high16 v9, 0x43b40000    # 360.0f

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget p1, p0, Lcom/warefly/checkscan/core/ui/progressBar/ImageProgressBar;->c:F

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    const/high16 v0, 0x43b40000    # 360.0f

    mul-float v9, p1, v0

    iget-object v11, p0, Lcom/warefly/checkscan/core/ui/progressBar/ImageProgressBar;->f:Landroid/graphics/Paint;

    iget v8, p0, Lcom/warefly/checkscan/core/ui/progressBar/ImageProgressBar;->d:F

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v0, v2, p1, v1}, Lrg;->b(FFFF)F

    move-result p1

    float-to-int p1, p1

    iget-object v0, p0, Lcom/warefly/checkscan/core/ui/progressBar/ImageProgressBar;->i:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    add-float/2addr v3, p1

    div-float/2addr v3, v1

    float-to-int p1, v3

    iput p1, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f0ccccd    # 0.55f

    invoke-static {v2, v3, p1, v1}, Lrg;->b(FFFF)F

    move-result p1

    float-to-int p1, p1

    iput p1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    add-float/2addr v2, p1

    div-float/2addr v2, v1

    float-to-int p1, v2

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object p0, p0, Lcom/warefly/checkscan/core/ui/progressBar/ImageProgressBar;->e:Landroid/graphics/drawable/Drawable;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public final setProgress(F)V
    .locals 0

    iput p1, p0, Lcom/warefly/checkscan/core/ui/progressBar/ImageProgressBar;->c:F

    return-void
.end method

.method public final setProgressColor(I)V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/core/ui/progressBar/ImageProgressBar;->f:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
