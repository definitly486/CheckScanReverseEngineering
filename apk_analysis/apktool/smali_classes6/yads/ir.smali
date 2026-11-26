.class public final Lyads/ir;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:F

.field public f:I

.field public g:[I

.field public h:[I

.field public i:[F

.field public j:I

.field public k:I

.field public l:I

.field public m:Landroid/animation/ValueAnimator;

.field public final n:Landroid/graphics/Paint;

.field public final o:Landroid/graphics/Path;

.field public final p:Landroid/graphics/RectF;

.field public final q:I

.field public final r:I

.field public s:Z

.field public t:F

.field public u:I

.field public v:Lyads/er;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    iput p1, p0, Lyads/ir;->b:I

    iput p1, p0, Lyads/ir;->c:I

    iput p1, p0, Lyads/ir;->d:I

    const/4 v0, 0x0

    iput v0, p0, Lyads/ir;->f:I

    iput p1, p0, Lyads/ir;->j:I

    iput p1, p0, Lyads/ir;->k:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lyads/ir;->t:F

    iput p1, p0, Lyads/ir;->u:I

    sget-object v1, Lyads/er;->b:Lyads/er;

    iput-object v1, p0, Lyads/ir;->v:Lyads/er;

    sget v1, Lcom/yandex/mobile/ads/R$id;->monetization_ads_divkit_tab_sliding_oval_indicator:I

    invoke-virtual {p0, v1}, Landroid/view/View;->setId(I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    iput v1, p0, Lyads/ir;->l:I

    iget-boolean v2, p0, Lyads/ir;->s:Z

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lyads/ir;->l:I

    :cond_0
    iput v1, p0, Lyads/ir;->l:I

    new-array v2, v1, [I

    iput-object v2, p0, Lyads/ir;->g:[I

    new-array v1, v1, [I

    iput-object v1, p0, Lyads/ir;->h:[I

    :goto_0
    iget v1, p0, Lyads/ir;->l:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lyads/ir;->g:[I

    aput p1, v1, v0

    iget-object v1, p0, Lyads/ir;->h:[I

    aput p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lyads/ir;->n:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lyads/ir;->p:Landroid/graphics/RectF;

    iput p2, p0, Lyads/ir;->q:I

    iput p3, p0, Lyads/ir;->r:I

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lyads/ir;->o:Landroid/graphics/Path;

    const/16 p1, 0x8

    new-array p1, p1, [F

    iput-object p1, p0, Lyads/ir;->i:[F

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 0

    .line 224
    iget-boolean p0, p0, Lyads/ir;->s:Z

    if-eqz p0, :cond_0

    const/4 p0, -0x1

    if-eq p1, p0, :cond_0

    mul-int/lit8 p1, p1, 0x2

    :cond_0
    return p1
.end method

.method public final a()V
    .locals 12

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget v1, p0, Lyads/ir;->l:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v0, v1, :cond_0

    iput v0, p0, Lyads/ir;->l:I

    new-array v1, v0, [I

    iput-object v1, p0, Lyads/ir;->g:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lyads/ir;->h:[I

    move v1, v2

    :goto_0
    iget v4, p0, Lyads/ir;->l:I

    if-ge v1, v4, :cond_0

    iget-object v4, p0, Lyads/ir;->g:[I

    aput v3, v4, v1

    iget-object v4, p0, Lyads/ir;->h:[I

    aput v3, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget v1, p0, Lyads/ir;->d:I

    invoke-virtual {p0, v1}, Lyads/ir;->a(I)I

    move-result v1

    :goto_1
    if-ge v2, v0, :cond_9

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Lyads/xu5;

    if-nez v5, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    if-lez v5, :cond_4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    iget-object v6, p0, Lyads/ir;->v:Lyads/er;

    sget-object v7, Lyads/er;->b:Lyads/er;

    if-ne v6, v7, :cond_3

    if-ne v2, v1, :cond_3

    iget v6, p0, Lyads/ir;->e:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3

    add-int/lit8 v6, v0, -0x1

    if-ge v2, v6, :cond_3

    iget-boolean v6, p0, Lyads/ir;->s:Z

    if-eqz v6, :cond_2

    add-int/lit8 v6, v2, 0x2

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v2, 0x1

    :goto_2
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iget v7, p0, Lyads/ir;->e:F

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    iget v8, p0, Lyads/ir;->e:F

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v10, v9, v8

    int-to-float v11, v5

    mul-float/2addr v10, v11

    add-float/2addr v10, v7

    float-to-int v7, v10

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v8, v6

    iget v6, p0, Lyads/ir;->e:F

    sub-float/2addr v9, v6

    int-to-float v6, v4

    mul-float/2addr v9, v6

    add-float/2addr v9, v8

    float-to-int v6, v9

    goto :goto_3

    :cond_3
    move v6, v4

    move v7, v5

    goto :goto_3

    :cond_4
    move v4, v3

    move v5, v4

    move v6, v5

    move v7, v6

    :goto_3
    iget-object v8, p0, Lyads/ir;->g:[I

    aget v9, v8, v2

    iget-object v10, p0, Lyads/ir;->h:[I

    aget v11, v10, v2

    if-ne v5, v9, :cond_5

    if-eq v4, v11, :cond_6

    :cond_5
    aput v5, v8, v2

    aput v4, v10, v2

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_6
    if-ne v2, v1, :cond_8

    iget v4, p0, Lyads/ir;->j:I

    if-ne v7, v4, :cond_7

    iget v4, p0, Lyads/ir;->k:I

    if-eq v6, v4, :cond_8

    :cond_7
    iput v7, p0, Lyads/ir;->j:I

    iput v6, p0, Lyads/ir;->k:I

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_8
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_9
    return-void
.end method

.method public final a(IIIILandroid/animation/ValueAnimator;)V
    .locals 0

    .line 233
    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p5

    sub-int/2addr p2, p1

    int-to-float p2, p2

    mul-float/2addr p2, p5

    .line 234
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    add-int/2addr p2, p1

    sub-int/2addr p4, p3

    int-to-float p1, p4

    mul-float/2addr p5, p1

    .line 235
    invoke-static {p5}, Ljava/lang/Math;->round(F)I

    move-result p1

    add-int/2addr p1, p3

    .line 236
    iget p3, p0, Lyads/ir;->j:I

    if-ne p2, p3, :cond_0

    iget p3, p0, Lyads/ir;->k:I

    if-eq p1, p3, :cond_1

    .line 237
    :cond_0
    iput p2, p0, Lyads/ir;->j:I

    .line 238
    iput p1, p0, Lyads/ir;->k:I

    .line 239
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 240
    :cond_1
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method public final a(IJ)V
    .locals 10

    .line 184
    iget-object v0, p0, Lyads/ir;->m:Landroid/animation/ValueAnimator;

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object p2, p0, Lyads/ir;->m:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 186
    iget-object p2, p0, Lyads/ir;->m:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p2

    sub-float p2, v1, p2

    .line 187
    iget-object p3, p0, Lyads/ir;->m:Landroid/animation/ValueAnimator;

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v2

    long-to-float p3, v2

    mul-float/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    int-to-long p2, p2

    :cond_0
    move-wide v4, p2

    .line 188
    invoke-virtual {p0, p1}, Lyads/ir;->a(I)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_1

    .line 189
    invoke-virtual {p0}, Lyads/ir;->a()V

    return-void

    .line 190
    :cond_1
    iget-object p3, p0, Lyads/ir;->v:Lyads/er;

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    if-eqz p3, :cond_6

    const/4 p2, 0x1

    if-eq p3, p2, :cond_5

    .line 191
    iget-object p3, p0, Lyads/ir;->m:Landroid/animation/ValueAnimator;

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 192
    iget-object p3, p0, Lyads/ir;->m:Landroid/animation/ValueAnimator;

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 193
    :cond_2
    iput p1, p0, Lyads/ir;->d:I

    const/4 p1, 0x0

    .line 194
    iput p1, p0, Lyads/ir;->e:F

    .line 195
    invoke-virtual {p0}, Lyads/ir;->a()V

    .line 196
    iget p1, p0, Lyads/ir;->e:F

    sub-float/2addr v1, p1

    .line 197
    iget p1, p0, Lyads/ir;->t:F

    cmpl-float p1, v1, p1

    if-eqz p1, :cond_4

    .line 198
    iput v1, p0, Lyads/ir;->t:F

    .line 199
    iget p1, p0, Lyads/ir;->d:I

    add-int/2addr p1, p2

    .line 200
    iget p2, p0, Lyads/ir;->l:I

    if-ge p1, p2, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, -0x1

    :goto_0
    iput p1, p0, Lyads/ir;->u:I

    .line 201
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_4
    return-void

    .line 202
    :cond_5
    invoke-virtual {p0, p1, v4, v5}, Lyads/ir;->b(IJ)V

    return-void

    .line 203
    :cond_6
    iget v6, p0, Lyads/ir;->j:I

    iget v7, p0, Lyads/ir;->k:I

    .line 204
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 205
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v9

    move-object v2, p0

    move v3, p1

    .line 206
    invoke-virtual/range {v2 .. v9}, Lyads/ir;->a(IJIIII)V

    return-void
.end method

.method public final a(IJIIII)V
    .locals 2

    if-ne p4, p6, :cond_1

    if-eq p5, p7, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    const/4 v0, 0x2

    .line 225
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 226
    sget-object v1, Lyads/nr;->G:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 227
    invoke-virtual {v0, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 228
    new-instance p2, Lgz9;

    move p3, p6

    move p6, p5

    move p5, p3

    move-object p3, p0

    invoke-direct/range {p2 .. p7}, Lgz9;-><init>(Lyads/ir;IIII)V

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 229
    new-instance p0, Lyads/gr;

    invoke-direct {p0, p3}, Lyads/gr;-><init>(Lyads/ir;)V

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 230
    iput p1, p3, Lyads/ir;->u:I

    .line 231
    iput-object v0, p3, Lyads/ir;->m:Landroid/animation/ValueAnimator;

    .line 232
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final synthetic a(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 241
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    .line 242
    iput v0, p0, Lyads/ir;->t:F

    .line 243
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method public final a(Landroid/graphics/Canvas;IIFIF)V
    .locals 5

    if-ltz p2, :cond_5

    if-le p3, p2, :cond_5

    .line 207
    iget-object v0, p0, Lyads/ir;->p:Landroid/graphics/RectF;

    int-to-float p2, p2

    iget v1, p0, Lyads/ir;->q:I

    int-to-float v1, v1

    int-to-float p3, p3

    iget v2, p0, Lyads/ir;->r:I

    int-to-float v2, v2

    sub-float/2addr p4, v2

    invoke-virtual {v0, p2, v1, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 208
    iget-object p2, p0, Lyads/ir;->p:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p2

    .line 209
    iget-object p3, p0, Lyads/ir;->p:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result p3

    const/16 p4, 0x8

    .line 210
    new-array v0, p4, [F

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p4, :cond_4

    .line 211
    iget-object v2, p0, Lyads/ir;->i:[F

    aget v2, v2, v1

    const/4 v3, 0x0

    cmpg-float v4, p3, v3

    if-lez v4, :cond_3

    cmpg-float v4, p2, v3

    if-gtz v4, :cond_0

    goto :goto_1

    .line 212
    :cond_0
    invoke-static {p3, p2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v4, v2, v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    cmpl-float v4, v2, v3

    if-lez v4, :cond_2

    .line 213
    sget v4, Lyads/rv3;->a:I

    .line 214
    sget-object v4, Lyads/vj5;->b:[Lyads/vj5;

    .line 215
    :cond_2
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 216
    :cond_3
    :goto_1
    aput v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 217
    :cond_4
    iget-object p2, p0, Lyads/ir;->o:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    .line 218
    iget-object p2, p0, Lyads/ir;->o:Landroid/graphics/Path;

    iget-object p3, p0, Lyads/ir;->p:Landroid/graphics/RectF;

    sget-object p4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p2, p3, v0, p4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 219
    iget-object p2, p0, Lyads/ir;->o:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    .line 220
    iget-object p2, p0, Lyads/ir;->n:Landroid/graphics/Paint;

    invoke-virtual {p2, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 221
    iget-object p2, p0, Lyads/ir;->n:Landroid/graphics/Paint;

    invoke-virtual {p2}, Landroid/graphics/Paint;->getAlpha()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, p6

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 222
    iget-object p3, p0, Lyads/ir;->n:Landroid/graphics/Paint;

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 223
    iget-object p2, p0, Lyads/ir;->o:Landroid/graphics/Path;

    iget-object p0, p0, Lyads/ir;->n:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_5
    return-void
.end method

.method public final a(Lyads/er;)V
    .locals 1

    .line 180
    iget-object v0, p0, Lyads/ir;->v:Lyads/er;

    if-eq v0, p1, :cond_0

    .line 181
    iput-object p1, p0, Lyads/ir;->v:Lyads/er;

    .line 182
    iget-object p1, p0, Lyads/ir;->m:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 183
    iget-object p0, p0, Lyads/ir;->m:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gez p2, :cond_0

    move p2, v0

    :cond_0
    if-nez p2, :cond_2

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v3, p0, Lyads/ir;->f:I

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {p0, v0, v2}, Landroid/view/ViewGroup;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    check-cast p3, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v1, p3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_2
    iget v0, p0, Lyads/ir;->f:I

    check-cast p3, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v0, p3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final b(IJ)V
    .locals 2

    iget v0, p0, Lyads/ir;->d:I

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    sget-object v1, Lyads/nr;->G:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p2, Lhz9;

    invoke-direct {p2, p0}, Lhz9;-><init>(Lyads/ir;)V

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p2, Lyads/hr;

    invoke-direct {p2, p0}, Lyads/hr;-><init>(Lyads/ir;)V

    invoke-virtual {v0, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput p1, p0, Lyads/ir;->u:I

    iput-object v0, p0, Lyads/ir;->m:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 10

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget v0, p0, Lyads/ir;->c:I

    const/4 v8, -0x1

    if-eq v0, v8, :cond_0

    iget v0, p0, Lyads/ir;->l:I

    const/4 v1, 0x0

    move v9, v1

    :goto_0
    if-ge v9, v0, :cond_0

    iget-object v1, p0, Lyads/ir;->g:[I

    aget v3, v1, v9

    iget-object v1, p0, Lyads/ir;->h:[I

    aget v4, v1, v9

    iget v6, p0, Lyads/ir;->c:I

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lyads/ir;->a(Landroid/graphics/Canvas;IIFIF)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    move-object v1, p0

    move-object v2, p1

    iget p0, v1, Lyads/ir;->b:I

    if-eq p0, v8, :cond_3

    iget p0, v1, Lyads/ir;->d:I

    invoke-virtual {v1, p0}, Lyads/ir;->a(I)I

    move-result p0

    iget p1, v1, Lyads/ir;->u:I

    invoke-virtual {v1, p1}, Lyads/ir;->a(I)I

    move-result p1

    iget-object v0, v1, Lyads/ir;->v:Lyads/er;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v3, v1, Lyads/ir;->g:[I

    const/4 v4, 0x1

    if-eq v0, v4, :cond_1

    aget v3, v3, p0

    iget-object p1, v1, Lyads/ir;->h:[I

    aget v4, p1, p0

    iget v6, v1, Lyads/ir;->b:I

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v7}, Lyads/ir;->a(Landroid/graphics/Canvas;IIFIF)V

    goto :goto_1

    :cond_1
    aget v3, v3, p0

    iget-object v0, v1, Lyads/ir;->h:[I

    aget v4, v0, p0

    iget v6, v1, Lyads/ir;->b:I

    iget v7, v1, Lyads/ir;->t:F

    invoke-virtual/range {v1 .. v7}, Lyads/ir;->a(Landroid/graphics/Canvas;IIFIF)V

    iget p0, v1, Lyads/ir;->u:I

    if-eq p0, v8, :cond_3

    iget-object p0, v1, Lyads/ir;->g:[I

    aget v3, p0, p1

    iget-object p0, v1, Lyads/ir;->h:[I

    aget v4, p0, p1

    iget v6, v1, Lyads/ir;->b:I

    iget p0, v1, Lyads/ir;->t:F

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float v7, p1, p0

    invoke-virtual/range {v1 .. v7}, Lyads/ir;->a(Landroid/graphics/Canvas;IIFIF)V

    goto :goto_1

    :cond_2
    iget v3, v1, Lyads/ir;->j:I

    iget v4, v1, Lyads/ir;->k:I

    iget v6, v1, Lyads/ir;->b:I

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v7}, Lyads/ir;->a(Landroid/graphics/Canvas;IIFIF)V

    :cond_3
    :goto_1
    invoke-super {v1, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lyads/ir;->a()V

    iget-object p1, p0, Lyads/ir;->m:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lyads/ir;->m:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object p1, p0, Lyads/ir;->m:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p2, p1

    iget-object p1, p0, Lyads/ir;->m:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide p3

    long-to-float p1, p3

    mul-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget p2, p0, Lyads/ir;->u:I

    int-to-long p3, p1

    invoke-virtual {p0, p2, p3, p4}, Lyads/ir;->a(IJ)V

    :cond_0
    return-void
.end method
