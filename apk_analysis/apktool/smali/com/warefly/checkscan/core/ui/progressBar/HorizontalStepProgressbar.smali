.class public final Lcom/warefly/checkscan/core/ui/progressBar/HorizontalStepProgressbar;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public final d:Ljava/util/ArrayList;

.field public final e:F

.field public final f:I

.field public final g:F

.field public final h:Lfh8;

.field public final i:Lfh8;

.field public final j:Lfh8;

.field public final k:Lfh8;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, -0x1

    iput p2, p0, Lcom/warefly/checkscan/core/ui/progressBar/HorizontalStepProgressbar;->b:I

    const/4 p2, 0x1

    iput p2, p0, Lcom/warefly/checkscan/core/ui/progressBar/HorizontalStepProgressbar;->c:I

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/warefly/checkscan/core/ui/progressBar/HorizontalStepProgressbar;->d:Ljava/util/ArrayList;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    const/4 p2, 0x6

    invoke-static {p2}, Lpl2;->e(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/warefly/checkscan/core/ui/progressBar/HorizontalStepProgressbar;->e:F

    const/16 p2, 0x8

    invoke-static {p2}, Lpl2;->e(I)I

    move-result p2

    iput p2, p0, Lcom/warefly/checkscan/core/ui/progressBar/HorizontalStepProgressbar;->f:I

    const/high16 p2, 0x41a00000    # 20.0f

    iput p2, p0, Lcom/warefly/checkscan/core/ui/progressBar/HorizontalStepProgressbar;->g:F

    new-instance p2, Lcom/warefly/checkscan/core/ui/progressBar/HorizontalStepProgressbar$a;

    invoke-direct {p2, p0}, Lcom/warefly/checkscan/core/ui/progressBar/HorizontalStepProgressbar$a;-><init>(Lcom/warefly/checkscan/core/ui/progressBar/HorizontalStepProgressbar;)V

    new-instance v0, Lfh8;

    invoke-direct {v0, p2}, Lfh8;-><init>(Lll3;)V

    iput-object v0, p0, Lcom/warefly/checkscan/core/ui/progressBar/HorizontalStepProgressbar;->h:Lfh8;

    new-instance p2, Lcom/warefly/checkscan/core/ui/progressBar/HorizontalStepProgressbar$b;

    invoke-direct {p2, p0}, Lcom/warefly/checkscan/core/ui/progressBar/HorizontalStepProgressbar$b;-><init>(Lcom/warefly/checkscan/core/ui/progressBar/HorizontalStepProgressbar;)V

    new-instance v0, Lfh8;

    invoke-direct {v0, p2}, Lfh8;-><init>(Lll3;)V

    iput-object v0, p0, Lcom/warefly/checkscan/core/ui/progressBar/HorizontalStepProgressbar;->i:Lfh8;

    new-instance p2, Lcom/warefly/checkscan/core/ui/progressBar/HorizontalStepProgressbar$d;

    invoke-direct {p2, p0, p1}, Lcom/warefly/checkscan/core/ui/progressBar/HorizontalStepProgressbar$d;-><init>(Lcom/warefly/checkscan/core/ui/progressBar/HorizontalStepProgressbar;Landroid/content/Context;)V

    new-instance v0, Lfh8;

    invoke-direct {v0, p2}, Lfh8;-><init>(Lll3;)V

    iput-object v0, p0, Lcom/warefly/checkscan/core/ui/progressBar/HorizontalStepProgressbar;->j:Lfh8;

    new-instance p2, Lcom/warefly/checkscan/core/ui/progressBar/HorizontalStepProgressbar$c;

    invoke-direct {p2, p0, p1}, Lcom/warefly/checkscan/core/ui/progressBar/HorizontalStepProgressbar$c;-><init>(Lcom/warefly/checkscan/core/ui/progressBar/HorizontalStepProgressbar;Landroid/content/Context;)V

    new-instance p1, Lfh8;

    invoke-direct {p1, p2}, Lfh8;-><init>(Lll3;)V

    iput-object p1, p0, Lcom/warefly/checkscan/core/ui/progressBar/HorizontalStepProgressbar;->k:Lfh8;

    return-void
.end method

.method private final getDesireHeight()I
    .locals 3

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/progressBar/HorizontalStepProgressbar;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v1, v0

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/progressBar/HorizontalStepProgressbar;->getSubTextPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v2, v0

    add-float/2addr v2, v1

    iget v0, p0, Lcom/warefly/checkscan/core/ui/progressBar/HorizontalStepProgressbar;->f:I

    int-to-float v0, v0

    add-float/2addr v2, v0

    iget p0, p0, Lcom/warefly/checkscan/core/ui/progressBar/HorizontalStepProgressbar;->e:F

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p0, v0

    add-float/2addr p0, v2

    invoke-static {p0}, Lw65;->b(F)I

    move-result p0

    return p0
.end method

.method private final getPaint()Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/core/ui/progressBar/HorizontalStepProgressbar;->h:Lfh8;

    invoke-virtual {p0}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Paint;

    return-object p0
.end method

.method private final getProgressPaint()Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/core/ui/progressBar/HorizontalStepProgressbar;->i:Lfh8;

    invoke-virtual {p0}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Paint;

    return-object p0
.end method

.method private final getSubTextPaint()Landroid/text/TextPaint;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/core/ui/progressBar/HorizontalStepProgressbar;->k:Lfh8;

    invoke-virtual {p0}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/text/TextPaint;

    return-object p0
.end method

.method private final getTextPaint()Landroid/text/TextPaint;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/core/ui/progressBar/HorizontalStepProgressbar;->j:Lfh8;

    invoke-virtual {p0}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/text/TextPaint;

    return-object p0
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-direct {v0}, Lcom/warefly/checkscan/core/ui/progressBar/HorizontalStepProgressbar;->getDesireHeight()I

    move-result v1

    int-to-float v1, v1

    iget v9, v0, Lcom/warefly/checkscan/core/ui/progressBar/HorizontalStepProgressbar;->e:F

    const/high16 v10, 0x40000000    # 2.0f

    mul-float v11, v9, v10

    sub-float v3, v1, v11

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-direct {v0}, Lcom/warefly/checkscan/core/ui/progressBar/HorizontalStepProgressbar;->getDesireHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float v5, v1, v9

    iget v6, v0, Lcom/warefly/checkscan/core/ui/progressBar/HorizontalStepProgressbar;->g:F

    invoke-direct {v0}, Lcom/warefly/checkscan/core/ui/progressBar/HorizontalStepProgressbar;->getPaint()Landroid/graphics/Paint;

    move-result-object v8

    const/4 v2, 0x0

    move v7, v6

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lcom/warefly/checkscan/core/ui/progressBar/HorizontalStepProgressbar;->b:I

    int-to-float v3, v3

    div-float v8, v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    iget v3, v0, Lcom/warefly/checkscan/core/ui/progressBar/HorizontalStepProgressbar;->c:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    sub-float v12, v2, v9

    invoke-direct {v0}, Lcom/warefly/checkscan/core/ui/progressBar/HorizontalStepProgressbar;->getDesireHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v9

    div-float v3, v9, v10

    sub-float/2addr v2, v3

    iget v3, v0, Lcom/warefly/checkscan/core/ui/progressBar/HorizontalStepProgressbar;->b:I

    const/4 v4, 0x1

    if-gt v4, v3, :cond_1

    :goto_0
    int-to-float v5, v4

    mul-float/2addr v5, v8

    sub-float/2addr v5, v9

    cmpl-float v6, v5, v12

    if-lez v6, :cond_0

    invoke-direct {v0}, Lcom/warefly/checkscan/core/ui/progressBar/HorizontalStepProgressbar;->getPaint()Landroid/graphics/Paint;

    move-result-object v6

    goto :goto_1

    :cond_0
    invoke-direct {v0}, Lcom/warefly/checkscan/core/ui/progressBar/HorizontalStepProgressbar;->getProgressPaint()Landroid/graphics/Paint;

    move-result-object v6

    :goto_1
    invoke-virtual {v1, v5, v2, v9, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    if-eq v4, v3, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {v0}, Lcom/warefly/checkscan/core/ui/progressBar/HorizontalStepProgressbar;->getDesireHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40400000    # 3.0f

    mul-float/2addr v3, v9

    sub-float/2addr v2, v3

    iget v3, v0, Lcom/warefly/checkscan/core/ui/progressBar/HorizontalStepProgressbar;->f:I

    int-to-float v3, v3

    sub-float v10, v2, v3

    invoke-direct {v0}, Lcom/warefly/checkscan/core/ui/progressBar/HorizontalStepProgressbar;->getSubTextPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    iget v3, v2, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v3, v2

    sub-float v6, v10, v3

    iget-object v2, v0, Lcom/warefly/checkscan/core/ui/progressBar/HorizontalStepProgressbar;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const/4 v2, 0x0

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v14, v2, 0x1

    if-ltz v2, :cond_4

    check-cast v3, Lb36;

    iget-object v2, v3, Lb36;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v3, Lb36;->c:Ljava/lang/Object;

    move-object v15, v3

    check-cast v15, Ljava/lang/String;

    invoke-direct {v0}, Lcom/warefly/checkscan/core/ui/progressBar/HorizontalStepProgressbar;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    invoke-direct {v0}, Lcom/warefly/checkscan/core/ui/progressBar/HorizontalStepProgressbar;->getSubTextPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4, v15}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v16

    cmpl-float v4, v3, v8

    if-lez v4, :cond_2

    invoke-direct {v0}, Lcom/warefly/checkscan/core/ui/progressBar/HorizontalStepProgressbar;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v3

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v2, v3, v8, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    int-to-float v3, v14

    mul-float/2addr v3, v8

    invoke-direct {v0}, Lcom/warefly/checkscan/core/ui/progressBar/HorizontalStepProgressbar;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    sub-float v5, v3, v5

    invoke-direct {v0}, Lcom/warefly/checkscan/core/ui/progressBar/HorizontalStepProgressbar;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v7

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    move v4, v6

    goto :goto_3

    :cond_2
    move v4, v6

    int-to-float v5, v14

    mul-float/2addr v5, v8

    sub-float/2addr v5, v3

    invoke-direct {v0}, Lcom/warefly/checkscan/core/ui/progressBar/HorizontalStepProgressbar;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v1, v2, v5, v4, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_3
    cmpl-float v2, v16, v8

    if-lez v2, :cond_3

    invoke-direct {v0}, Lcom/warefly/checkscan/core/ui/progressBar/HorizontalStepProgressbar;->getSubTextPaint()Landroid/text/TextPaint;

    move-result-object v2

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v15, v2, v8, v3}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v2

    move v6, v4

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    int-to-float v3, v14

    mul-float/2addr v3, v8

    invoke-direct {v0}, Lcom/warefly/checkscan/core/ui/progressBar/HorizontalStepProgressbar;->getSubTextPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    sub-float v5, v3, v5

    invoke-direct {v0}, Lcom/warefly/checkscan/core/ui/progressBar/HorizontalStepProgressbar;->getSubTextPaint()Landroid/text/TextPaint;

    move-result-object v7

    const/4 v3, 0x0

    move/from16 v17, v10

    move v10, v6

    move/from16 v6, v17

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    goto :goto_4

    :cond_3
    move v6, v10

    move v10, v4

    int-to-float v2, v14

    mul-float/2addr v2, v8

    sub-float v2, v2, v16

    invoke-direct {v0}, Lcom/warefly/checkscan/core/ui/progressBar/HorizontalStepProgressbar;->getSubTextPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v1, v15, v2, v6, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_4
    move v2, v10

    move v10, v6

    move v6, v2

    move v2, v14

    goto/16 :goto_2

    :cond_4
    invoke-static {}, Lu96;->o()V

    const/4 v0, 0x0

    throw v0

    :cond_5
    invoke-direct {v0}, Lcom/warefly/checkscan/core/ui/progressBar/HorizontalStepProgressbar;->getDesireHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v11

    invoke-direct {v0}, Lcom/warefly/checkscan/core/ui/progressBar/HorizontalStepProgressbar;->getDesireHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float v4, v3, v9

    iget v5, v0, Lcom/warefly/checkscan/core/ui/progressBar/HorizontalStepProgressbar;->g:F

    invoke-direct {v0}, Lcom/warefly/checkscan/core/ui/progressBar/HorizontalStepProgressbar;->getProgressPaint()Landroid/graphics/Paint;

    move-result-object v7

    const/4 v1, 0x0

    move v6, v5

    move-object/from16 v0, p1

    move v3, v12

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {v0, p1}, Landroid/view/View;->resolveSize(II)I

    move-result p1

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/progressBar/HorizontalStepProgressbar;->getDesireHeight()I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View;->resolveSize(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public final setCurrentProgress(I)V
    .locals 1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x64

    if-le p1, v0, :cond_1

    move p1, v0

    :cond_1
    iput p1, p0, Lcom/warefly/checkscan/core/ui/progressBar/HorizontalStepProgressbar;->c:I

    return-void
.end method

.method public final setProgressColor(I)V
    .locals 0

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/progressBar/HorizontalStepProgressbar;->getProgressPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public final setTitles(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lb36<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/core/ui/progressBar/HorizontalStepProgressbar;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/warefly/checkscan/core/ui/progressBar/HorizontalStepProgressbar;->b:I

    return-void
.end method
