.class public final Lcom/warefly/checkscan/core/ui/progressBar/HorizontalProgressBarDefault;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public final d:F

.field public final e:Lfh8;

.field public final f:Lfh8;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/warefly/checkscan/core/ui/progressBar/HorizontalProgressBarDefault;->b:I

    const/16 p1, 0x64

    iput p1, p0, Lcom/warefly/checkscan/core/ui/progressBar/HorizontalProgressBarDefault;->c:I

    const/high16 p1, 0x41a00000    # 20.0f

    iput p1, p0, Lcom/warefly/checkscan/core/ui/progressBar/HorizontalProgressBarDefault;->d:F

    new-instance p1, Lcom/warefly/checkscan/core/ui/progressBar/HorizontalProgressBarDefault$a;

    invoke-direct {p1, p0}, Lcom/warefly/checkscan/core/ui/progressBar/HorizontalProgressBarDefault$a;-><init>(Lcom/warefly/checkscan/core/ui/progressBar/HorizontalProgressBarDefault;)V

    new-instance p2, Lfh8;

    invoke-direct {p2, p1}, Lfh8;-><init>(Lll3;)V

    iput-object p2, p0, Lcom/warefly/checkscan/core/ui/progressBar/HorizontalProgressBarDefault;->e:Lfh8;

    new-instance p1, Lcom/warefly/checkscan/core/ui/progressBar/HorizontalProgressBarDefault$b;

    invoke-direct {p1, p0}, Lcom/warefly/checkscan/core/ui/progressBar/HorizontalProgressBarDefault$b;-><init>(Lcom/warefly/checkscan/core/ui/progressBar/HorizontalProgressBarDefault;)V

    new-instance p2, Lfh8;

    invoke-direct {p2, p1}, Lfh8;-><init>(Lll3;)V

    iput-object p2, p0, Lcom/warefly/checkscan/core/ui/progressBar/HorizontalProgressBarDefault;->f:Lfh8;

    return-void
.end method

.method private final getPaint()Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/core/ui/progressBar/HorizontalProgressBarDefault;->e:Lfh8;

    invoke-virtual {p0}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Paint;

    return-object p0
.end method

.method private final getProgressPaint()Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/core/ui/progressBar/HorizontalProgressBarDefault;->f:Lfh8;

    invoke-virtual {p0}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Paint;

    return-object p0
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v5, v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v6, v1

    iget v7, v0, Lcom/warefly/checkscan/core/ui/progressBar/HorizontalProgressBarDefault;->d:F

    invoke-direct {v0}, Lcom/warefly/checkscan/core/ui/progressBar/HorizontalProgressBarDefault;->getPaint()Landroid/graphics/Paint;

    move-result-object v9

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v8, v7

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    iget v1, v0, Lcom/warefly/checkscan/core/ui/progressBar/HorizontalProgressBarDefault;->b:I

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lcom/warefly/checkscan/core/ui/progressBar/HorizontalProgressBarDefault;->c:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float v13, v2, v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v14, v1

    iget v15, v0, Lcom/warefly/checkscan/core/ui/progressBar/HorizontalProgressBarDefault;->d:F

    invoke-direct {v0}, Lcom/warefly/checkscan/core/ui/progressBar/HorizontalProgressBarDefault;->getProgressPaint()Landroid/graphics/Paint;

    move-result-object v17

    const/4 v11, 0x0

    const/4 v12, 0x0

    move/from16 v16, v15

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v17}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v1, v2

    invoke-static {v0, p1}, Landroid/view/View;->resolveSize(II)I

    move-result p1

    invoke-static {v1, p2}, Landroid/view/View;->resolveSize(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public final setCurrentProgress(I)V
    .locals 0

    iput p1, p0, Lcom/warefly/checkscan/core/ui/progressBar/HorizontalProgressBarDefault;->b:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setMaxProgress(I)V
    .locals 0

    iput p1, p0, Lcom/warefly/checkscan/core/ui/progressBar/HorizontalProgressBarDefault;->c:I

    return-void
.end method
