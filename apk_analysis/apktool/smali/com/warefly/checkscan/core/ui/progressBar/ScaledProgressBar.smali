.class public final Lcom/warefly/checkscan/core/ui/progressBar/ScaledProgressBar;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field public final b:Lfh8;

.field public final c:Lfh8;

.field public d:I

.field public e:Landroid/graphics/drawable/Drawable;

.field public f:I

.field public final g:F

.field public final h:F

.field public final i:F

.field public final j:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 152
    invoke-direct {p0, p1, v0}, Lcom/warefly/checkscan/core/ui/progressBar/ScaledProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x7f040523

    .line 151
    invoke-direct {p0, p1, p2, v0}, Lcom/warefly/checkscan/core/ui/progressBar/ScaledProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x7f15015c

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    sget-object p3, Lcom/warefly/checkscan/core/ui/progressBar/ScaledProgressBar$a;->f:Lcom/warefly/checkscan/core/ui/progressBar/ScaledProgressBar$a;

    invoke-static {p3}, Lnm4;->b(Lll3;)Lfh8;

    move-result-object p3

    iput-object p3, p0, Lcom/warefly/checkscan/core/ui/progressBar/ScaledProgressBar;->b:Lfh8;

    sget-object p3, Lcom/warefly/checkscan/core/ui/progressBar/ScaledProgressBar$b;->f:Lcom/warefly/checkscan/core/ui/progressBar/ScaledProgressBar$b;

    invoke-static {p3}, Lnm4;->b(Lll3;)Lfh8;

    move-result-object p3

    iput-object p3, p0, Lcom/warefly/checkscan/core/ui/progressBar/ScaledProgressBar;->c:Lfh8;

    const/4 p3, 0x0

    invoke-static {p3}, Lpl2;->e(I)I

    move-result v1

    iput v1, p0, Lcom/warefly/checkscan/core/ui/progressBar/ScaledProgressBar;->d:I

    const/4 v1, 0x7

    invoke-static {v1}, Lpl2;->e(I)I

    move-result v2

    iput v2, p0, Lcom/warefly/checkscan/core/ui/progressBar/ScaledProgressBar;->f:I

    const/high16 v2, 0x41e00000    # 28.0f

    invoke-static {v2}, Lpl2;->d(F)F

    move-result v3

    iput v3, p0, Lcom/warefly/checkscan/core/ui/progressBar/ScaledProgressBar;->g:F

    const/high16 v3, 0x41c00000    # 24.0f

    invoke-static {v3}, Lpl2;->d(F)F

    move-result v3

    iput v3, p0, Lcom/warefly/checkscan/core/ui/progressBar/ScaledProgressBar;->h:F

    const/high16 v3, 0x42100000    # 36.0f

    invoke-static {v3}, Lpl2;->d(F)F

    move-result v3

    iput v3, p0, Lcom/warefly/checkscan/core/ui/progressBar/ScaledProgressBar;->i:F

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/warefly/checkscan/core/ui/progressBar/ScaledProgressBar;->j:Landroid/graphics/Rect;

    sget-object v3, Lax6;->c:[I

    const v4, 0x7f040523

    invoke-virtual {p1, p2, v3, v4, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x4

    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/warefly/checkscan/core/ui/progressBar/ScaledProgressBar;->d:I

    const/4 v0, 0x2

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/warefly/checkscan/core/ui/progressBar/ScaledProgressBar;->f:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Lcom/warefly/checkscan/core/ui/progressBar/ScaledProgressBar;->g:F

    const/4 p3, 0x5

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/warefly/checkscan/core/ui/progressBar/ScaledProgressBar;->e:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/progressBar/ScaledProgressBar;->getProgressIndicatorPaint()Landroid/graphics/Paint;

    move-result-object p3

    const v0, 0x7f0604f8

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/progressBar/ScaledProgressBar;->getIndicatorPaint()Landroid/graphics/Paint;

    move-result-object p0

    const p3, 0x7f060021

    invoke-static {p1, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    const/4 p3, 0x1

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private final getIndicatorPaint()Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/core/ui/progressBar/ScaledProgressBar;->b:Lfh8;

    invoke-virtual {p0}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Paint;

    return-object p0
.end method

.method private final getProgressIndicatorPaint()Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/core/ui/progressBar/ScaledProgressBar;->c:Lfh8;

    invoke-virtual {p0}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Paint;

    return-object p0
.end method

.method private final getScaleValue()I
    .locals 1

    iget v0, p0, Lcom/warefly/checkscan/core/ui/progressBar/ScaledProgressBar;->d:I

    iget p0, p0, Lcom/warefly/checkscan/core/ui/progressBar/ScaledProgressBar;->f:I

    if-le v0, p0, :cond_0

    return p0

    :cond_0
    return v0
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v9, 0x41800000    # 16.0f

    invoke-static {v9}, Lpl2;->d(F)F

    move-result v2

    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v2, v10

    sub-float/2addr v1, v2

    const/16 v11, 0xa

    invoke-static {v11}, Lpl2;->e(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v10

    sub-float v12, v1, v2

    const/high16 v13, 0x41c00000    # 24.0f

    invoke-static {v13}, Lpl2;->d(F)F

    move-result v1

    float-to-int v1, v1

    const/16 v2, 0xb

    invoke-static {v2}, Lpl2;->e(I)I

    move-result v3

    add-int v14, v3, v1

    iget v1, v0, Lcom/warefly/checkscan/core/ui/progressBar/ScaledProgressBar;->i:F

    float-to-int v3, v1

    invoke-static {v13}, Lpl2;->d(F)F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v3, v4

    invoke-static {v2}, Lpl2;->e(I)I

    move-result v2

    add-int v15, v2, v3

    iget v2, v0, Lcom/warefly/checkscan/core/ui/progressBar/ScaledProgressBar;->f:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float v2, v12, v2

    invoke-direct {v0}, Lcom/warefly/checkscan/core/ui/progressBar/ScaledProgressBar;->getScaleValue()I

    move-result v4

    sub-int/2addr v4, v3

    int-to-float v4, v4

    mul-float/2addr v2, v4

    invoke-static {v9}, Lpl2;->d(F)F

    move-result v4

    add-float/2addr v4, v2

    div-float/2addr v1, v10

    sub-float/2addr v4, v1

    float-to-int v2, v4

    invoke-static {v11}, Lpl2;->e(I)I

    move-result v4

    add-int/2addr v4, v2

    iget v2, v0, Lcom/warefly/checkscan/core/ui/progressBar/ScaledProgressBar;->f:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float v2, v12, v2

    invoke-direct {v0}, Lcom/warefly/checkscan/core/ui/progressBar/ScaledProgressBar;->getScaleValue()I

    move-result v5

    sub-int/2addr v5, v3

    int-to-float v5, v5

    mul-float/2addr v2, v5

    invoke-static {v9}, Lpl2;->d(F)F

    move-result v5

    add-float/2addr v5, v2

    add-float/2addr v5, v1

    float-to-int v1, v5

    invoke-static {v11}, Lpl2;->e(I)I

    move-result v2

    add-int/2addr v2, v1

    add-int v1, v14, v15

    int-to-float v1, v1

    iget v5, v0, Lcom/warefly/checkscan/core/ui/progressBar/ScaledProgressBar;->h:F

    sub-float v6, v1, v5

    div-float/2addr v6, v10

    add-float/2addr v1, v5

    div-float v5, v1, v10

    invoke-static {v11}, Lpl2;->e(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-static {v11}, Lpl2;->e(I)I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    move v8, v3

    move v3, v6

    iget v6, v0, Lcom/warefly/checkscan/core/ui/progressBar/ScaledProgressBar;->g:F

    move/from16 v16, v8

    invoke-direct {v0}, Lcom/warefly/checkscan/core/ui/progressBar/ScaledProgressBar;->getIndicatorPaint()Landroid/graphics/Paint;

    move-result-object v8

    move/from16 v17, v4

    move v4, v7

    move v7, v6

    move/from16 v18, v10

    move/from16 v10, v16

    move/from16 v16, v11

    move/from16 v11, v17

    move/from16 v17, v13

    move v13, v2

    move v2, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    invoke-direct {v0}, Lcom/warefly/checkscan/core/ui/progressBar/ScaledProgressBar;->getScaleValue()I

    move-result v1

    if-le v1, v10, :cond_0

    invoke-static/range {v16 .. v16}, Lpl2;->e(I)I

    move-result v1

    int-to-float v2, v1

    add-int v1, v13, v11

    int-to-float v1, v1

    div-float v4, v1, v18

    iget v6, v0, Lcom/warefly/checkscan/core/ui/progressBar/ScaledProgressBar;->g:F

    invoke-direct {v0}, Lcom/warefly/checkscan/core/ui/progressBar/ScaledProgressBar;->getProgressIndicatorPaint()Landroid/graphics/Paint;

    move-result-object v8

    move v7, v6

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    iget-object v2, v0, Lcom/warefly/checkscan/core/ui/progressBar/ScaledProgressBar;->e:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, v0, Lcom/warefly/checkscan/core/ui/progressBar/ScaledProgressBar;->j:Landroid/graphics/Rect;

    iput v11, v3, Landroid/graphics/Rect;->left:I

    iput v13, v3, Landroid/graphics/Rect;->right:I

    iput v14, v3, Landroid/graphics/Rect;->top:I

    iput v15, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :goto_1
    invoke-direct {v0}, Lcom/warefly/checkscan/core/ui/progressBar/ScaledProgressBar;->getScaleValue()I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/warefly/checkscan/core/ui/progressBar/ScaledProgressBar;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    iget v2, v0, Lcom/warefly/checkscan/core/ui/progressBar/ScaledProgressBar;->f:I

    if-gt v10, v2, :cond_4

    move v3, v10

    :goto_2
    iget v4, v0, Lcom/warefly/checkscan/core/ui/progressBar/ScaledProgressBar;->f:I

    sub-int/2addr v4, v10

    int-to-float v4, v4

    div-float v4, v12, v4

    add-int/lit8 v5, v3, -0x1

    int-to-float v5, v5

    mul-float/2addr v4, v5

    invoke-static {v9}, Lpl2;->d(F)F

    move-result v5

    add-float/2addr v5, v4

    invoke-static/range {v16 .. v16}, Lpl2;->e(I)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v5, v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v17 .. v17}, Lpl2;->d(F)F

    move-result v6

    invoke-direct {v0}, Lcom/warefly/checkscan/core/ui/progressBar/ScaledProgressBar;->getScaleValue()I

    move-result v7

    const/4 v8, 0x2

    if-gt v3, v7, :cond_3

    invoke-direct {v0}, Lcom/warefly/checkscan/core/ui/progressBar/ScaledProgressBar;->getProgressIndicatorPaint()Landroid/graphics/Paint;

    move-result-object v7

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    invoke-static {v8, v9, v11}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v8, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    sget-object v8, Lj59;->a:Lj59;

    goto :goto_3

    :cond_3
    invoke-direct {v0}, Lcom/warefly/checkscan/core/ui/progressBar/ScaledProgressBar;->getIndicatorPaint()Landroid/graphics/Paint;

    move-result-object v7

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    invoke-static {v8, v9, v11}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v8, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    sget-object v8, Lj59;->a:Lj59;

    :goto_3
    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    if-eq v3, v2, :cond_4

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final onMeasure(II)V
    .locals 3

    iget v0, p0, Lcom/warefly/checkscan/core/ui/progressBar/ScaledProgressBar;->i:F

    float-to-int v0, v0

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v1}, Lpl2;->d(F)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    const/16 v1, 0xb

    invoke-static {v1}, Lpl2;->e(I)I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_1

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, p2

    goto :goto_0

    :cond_1
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_0
    invoke-virtual {p0, p1, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public final setMaxScaleValue(I)V
    .locals 0

    iput p1, p0, Lcom/warefly/checkscan/core/ui/progressBar/ScaledProgressBar;->f:I

    return-void
.end method

.method public final setScaleValue(I)V
    .locals 0

    iput p1, p0, Lcom/warefly/checkscan/core/ui/progressBar/ScaledProgressBar;->d:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setThumb(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/warefly/checkscan/core/ui/progressBar/ScaledProgressBar;->e:Landroid/graphics/drawable/Drawable;

    return-void
.end method
