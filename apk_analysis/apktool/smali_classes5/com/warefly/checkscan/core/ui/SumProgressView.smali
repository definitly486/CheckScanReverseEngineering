.class public final Lcom/warefly/checkscan/core/ui/SumProgressView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field public final b:Landroid/graphics/Paint;

.field public final c:Landroid/graphics/Paint;

.field public final d:Landroid/text/TextPaint;

.field public final e:Landroid/text/TextPaint;

.field public final f:F

.field public final g:F

.field public final h:F

.field public final i:Landroid/graphics/RectF;

.field public final j:Landroid/graphics/RectF;

.field public final k:F

.field public l:F

.field public m:F

.field public final n:Landroid/graphics/Rect;

.field public o:F

.field public p:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    const-string p2, "#EBF3FF"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 p2, 0x40a00000    # 5.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iput-object p1, p0, Lcom/warefly/checkscan/core/ui/SumProgressView;->b:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    const-string v2, "#3085FF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iput-object p1, p0, Lcom/warefly/checkscan/core/ui/SumProgressView;->c:Landroid/graphics/Paint;

    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->scaledDensity:F

    const/high16 v0, 0x41800000    # 16.0f

    mul-float/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iput-object p1, p0, Lcom/warefly/checkscan/core/ui/SumProgressView;->d:Landroid/text/TextPaint;

    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr v0, p2

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iput-object p1, p0, Lcom/warefly/checkscan/core/ui/SumProgressView;->e:Landroid/text/TextPaint;

    const/16 p1, 0x8

    invoke-static {p1}, Lpl2;->e(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/warefly/checkscan/core/ui/SumProgressView;->f:F

    invoke-static {p1}, Lpl2;->e(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/warefly/checkscan/core/ui/SumProgressView;->g:F

    invoke-static {p1}, Lpl2;->e(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/warefly/checkscan/core/ui/SumProgressView;->h:F

    new-instance p1, Landroid/graphics/RectF;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2, p2, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lcom/warefly/checkscan/core/ui/SumProgressView;->i:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1, p2, p2, p2, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lcom/warefly/checkscan/core/ui/SumProgressView;->j:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    const/high16 p2, 0x41c00000    # 24.0f

    mul-float/2addr p2, p1

    iput p2, p0, Lcom/warefly/checkscan/core/ui/SumProgressView;->k:F

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/core/ui/SumProgressView;->n:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/warefly/checkscan/core/ui/SumProgressView;->m:F

    iget v1, p0, Lcom/warefly/checkscan/core/ui/SumProgressView;->l:F

    iget-object v2, p0, Lcom/warefly/checkscan/core/ui/SumProgressView;->i:Landroid/graphics/RectF;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/warefly/checkscan/core/ui/SumProgressView;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/warefly/checkscan/core/ui/SumProgressView;->f:F

    invoke-virtual {p1, v2, v1, v1, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/warefly/checkscan/core/ui/SumProgressView;->p:F

    invoke-static {v0}, Lw65;->b(F)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " \u20bd"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v4, p0, Lcom/warefly/checkscan/core/ui/SumProgressView;->l:F

    iget v5, p0, Lcom/warefly/checkscan/core/ui/SumProgressView;->g:F

    sub-float/2addr v4, v5

    iget-object v6, p0, Lcom/warefly/checkscan/core/ui/SumProgressView;->e:Landroid/text/TextPaint;

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    sub-float/2addr v4, v7

    iget v7, p0, Lcom/warefly/checkscan/core/ui/SumProgressView;->m:F

    iget-object v8, p0, Lcom/warefly/checkscan/core/ui/SumProgressView;->n:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v7, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v7, v9

    invoke-virtual {p1, v2, v4, v7, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v2, p0, Lcom/warefly/checkscan/core/ui/SumProgressView;->o:F

    invoke-static {v2}, Lw65;->b(F)I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget-object v4, p0, Lcom/warefly/checkscan/core/ui/SumProgressView;->d:Landroid/text/TextPaint;

    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v2, v8}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/warefly/checkscan/core/ui/SumProgressView;->o:F

    iget v10, p0, Lcom/warefly/checkscan/core/ui/SumProgressView;->p:F

    div-float/2addr v7, v10

    mul-float/2addr v7, v6

    mul-float v6, v5, v9

    add-float/2addr v6, v2

    cmpg-float v10, v7, v6

    if-gez v10, :cond_0

    move v7, v6

    :cond_0
    iget v6, p0, Lcom/warefly/checkscan/core/ui/SumProgressView;->m:F

    iget-object v10, p0, Lcom/warefly/checkscan/core/ui/SumProgressView;->j:Landroid/graphics/RectF;

    invoke-virtual {v10, v3, v3, v7, v6}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v3, p0, Lcom/warefly/checkscan/core/ui/SumProgressView;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v1, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    sub-float/2addr v7, v2

    sub-float/2addr v7, v5

    iget p0, p0, Lcom/warefly/checkscan/core/ui/SumProgressView;->m:F

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr p0, v1

    div-float/2addr p0, v9

    invoke-virtual {p1, v0, v7, p0, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 1

    iget p2, p0, Lcom/warefly/checkscan/core/ui/SumProgressView;->h:F

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p2, v0

    iget v0, p0, Lcom/warefly/checkscan/core/ui/SumProgressView;->k:F

    add-float/2addr p2, v0

    iput p2, p0, Lcom/warefly/checkscan/core/ui/SumProgressView;->m:F

    invoke-static {p2}, Lw65;->b(F)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    int-to-float p1, p1

    iput p1, p0, Lcom/warefly/checkscan/core/ui/SumProgressView;->l:F

    const/4 p1, 0x1

    iget-object p3, p0, Lcom/warefly/checkscan/core/ui/SumProgressView;->n:Landroid/graphics/Rect;

    iget-object p4, p0, Lcom/warefly/checkscan/core/ui/SumProgressView;->d:Landroid/text/TextPaint;

    const-string v0, "\u20bd"

    const/4 v1, 0x0

    invoke-virtual {p4, v0, v1, p1, p3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    int-to-float p1, p2

    iput p1, p0, Lcom/warefly/checkscan/core/ui/SumProgressView;->m:F

    return-void
.end method

.method public final setCurrentProgress(I)V
    .locals 2

    int-to-float p1, p1

    iget v0, p0, Lcom/warefly/checkscan/core/ui/SumProgressView;->p:F

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    move p1, v0

    :cond_0
    iput p1, p0, Lcom/warefly/checkscan/core/ui/SumProgressView;->o:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setMaxProgress(I)V
    .locals 0

    int-to-float p1, p1

    iput p1, p0, Lcom/warefly/checkscan/core/ui/SumProgressView;->p:F

    return-void
.end method
