.class public Lyads/an2;
.super Lyads/tt5;
.source "SourceFile"


# instance fields
.field public c:Ljava/lang/CharSequence;

.field public d:Landroid/text/TextUtils$TruncateAt;

.field public e:Z

.field public f:Ljava/lang/CharSequence;

.field public g:Z

.field public h:I

.field public final i:I

.field public j:Ljava/lang/CharSequence;

.field public k:F

.field public l:Z

.field public final m:Lyads/zm;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 70
    invoke-direct {p0, p1, v2, v0, v1}, Lyads/an2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 68
    invoke-direct {p0, p1, p2, v0, v1}, Lyads/an2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Lyads/tt5;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v0, "\u2026"

    iput-object v0, p0, Lyads/an2;->c:Ljava/lang/CharSequence;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    iput-object v1, p0, Lyads/an2;->d:Landroid/text/TextUtils$TruncateAt;

    const/4 v1, -0x1

    iput v1, p0, Lyads/an2;->h:I

    iput v1, p0, Lyads/an2;->i:I

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lyads/an2;->k:F

    new-instance v1, Lyads/zm;

    invoke-direct {v1, p0}, Lyads/zm;-><init>(Lyads/an2;)V

    iput-object v1, p0, Lyads/an2;->m:Lyads/zm;

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/yandex/mobile/ads/R$styleable;->monetization_ads_divkit_EllipsizedTextView:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    :try_start_0
    sget p2, Lcom/yandex/mobile/ads/R$styleable;->monetization_ads_divkit_EllipsizedTextView_monetization_ads_divkit_ellipsis:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    invoke-virtual {p0, v0}, Lyads/an2;->setEllipsis(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p0

    :cond_1
    :goto_1
    iget-object p1, p0, Lyads/an2;->c:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lyads/an2;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    const/4 p3, 0x0

    .line 69
    invoke-direct {p0, p1, p2, p3}, Lyads/an2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;)V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/TextView;->getMaxLines()I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getMaxLines()I

    move-result v0

    const v2, 0x7fffffff

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "\u2026"

    invoke-static {p1, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lyads/an2;->d:Landroid/text/TextUtils$TruncateAt;

    invoke-super {p0, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_1

    :cond_1
    invoke-super {p0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lyads/an2;->l:Z

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lyads/an2;->k:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lyads/an2;->e:Z

    goto :goto_1

    :cond_2
    :goto_0
    invoke-super {p0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public final getText()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lyads/an2;->j:Ljava/lang/CharSequence;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object p0, p0, Lyads/an2;->m:Lyads/zm;

    iget-boolean v0, p0, Lyads/zm;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lyads/zm;->a()V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatTextView;->onDetachedFromWindow()V

    iget-object p0, p0, Lyads/an2;->m:Lyads/zm;

    iget-object v0, p0, Lyads/zm;->d:Lyads/sr4;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lyads/zm;->a:Lyads/an2;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lyads/zm;->d:Lyads/sr4;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lyads/zm;->d:Lyads/sr4;

    :cond_0
    return-void
.end method

.method public final onMeasure(II)V
    .locals 17

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p2}, Lyads/tt5;->onMeasure(II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget v3, v0, Lyads/an2;->h:I

    iget v4, v0, Lyads/an2;->i:I

    const/4 v5, 0x1

    if-ne v1, v3, :cond_0

    if-eq v2, v4, :cond_1

    :cond_0
    iput-boolean v5, v0, Lyads/an2;->l:Z

    :cond_1
    iget-boolean v1, v0, Lyads/an2;->l:Z

    if-eqz v1, :cond_17

    iget-object v1, v0, Lyads/an2;->f:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMaxLines()I

    move-result v2

    const/4 v3, 0x0

    if-ltz v2, :cond_4

    invoke-virtual {v0}, Landroid/widget/TextView;->getMaxLines()I

    move-result v2

    const v4, 0x7fffffff

    if-ne v2, v4, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, v0, Lyads/an2;->c:Ljava/lang/CharSequence;

    const-string v4, "\u2026"

    invoke-static {v2, v4}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_1

    :cond_4
    :goto_0
    move v2, v5

    :goto_1
    iget-object v4, v0, Lyads/an2;->f:Ljava/lang/CharSequence;

    const/4 v6, 0x0

    if-nez v4, :cond_5

    if-nez v2, :cond_15

    :cond_5
    iget-object v8, v0, Lyads/an2;->j:Ljava/lang/CharSequence;

    if-eqz v2, :cond_7

    if-eqz v8, :cond_6

    invoke-virtual {v8, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v5

    iput-boolean v1, v0, Lyads/an2;->e:Z

    goto :goto_2

    :cond_6
    move-object v8, v6

    :goto_2
    iput-object v8, v0, Lyads/an2;->f:Ljava/lang/CharSequence;

    iput-boolean v5, v0, Lyads/an2;->g:Z

    invoke-super {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-boolean v3, v0, Lyads/an2;->g:Z

    goto/16 :goto_c

    :cond_7
    if-eqz v8, :cond_14

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_8

    goto/16 :goto_a

    :cond_8
    iget-object v1, v0, Lyads/an2;->c:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_9

    goto :goto_3

    :cond_9
    invoke-virtual {v0}, Landroid/widget/TextView;->getMaxLines()I

    move-result v2

    if-nez v2, :cond_a

    goto :goto_3

    :cond_a
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v4

    sub-int v10, v2, v4

    if-gtz v10, :cond_b

    :goto_3
    move-object v10, v1

    move v2, v3

    goto/16 :goto_9

    :cond_b
    invoke-virtual {v0}, Landroid/widget/TextView;->getHyphenationFrequency()I

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-static {v8, v3, v2, v4, v10}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {v2, v4}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result v7

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v9

    invoke-virtual {v2, v7, v9}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/widget/TextView;->getHyphenationFrequency()I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v2

    move-object v7, v2

    move-object v13, v4

    :goto_4
    move v2, v10

    goto :goto_5

    :cond_c
    new-instance v7, Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    sget-object v11, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v12

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result v13

    const/4 v14, 0x1

    invoke-direct/range {v7 .. v14}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object v13, v11

    goto :goto_4

    :goto_5
    invoke-virtual {v7}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    add-int/lit8 v9, v4, -0x1

    invoke-virtual {v7, v9}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v9

    invoke-virtual {v0}, Landroid/widget/TextView;->getMaxLines()I

    move-result v10

    if-lt v4, v10, :cond_d

    invoke-virtual {v0}, Landroid/widget/TextView;->getMaxLines()I

    move-result v10

    if-ne v4, v10, :cond_e

    int-to-float v4, v2

    cmpg-float v4, v9, v4

    if-gtz v4, :cond_e

    :cond_d
    move-object v10, v1

    goto :goto_8

    :cond_e
    iget v4, v0, Lyads/an2;->k:F

    const/high16 v9, -0x40800000    # -1.0f

    cmpg-float v9, v4, v9

    if-nez v9, :cond_f

    new-instance v9, Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v11

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v14

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result v15

    const/16 v16, 0x1

    const v12, 0x7fffffff

    move-object v10, v1

    invoke-direct/range {v9 .. v16}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    invoke-virtual {v9, v3}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v4

    iput v4, v0, Lyads/an2;->k:F

    goto :goto_6

    :cond_f
    move-object v10, v1

    :goto_6
    iput-boolean v5, v0, Lyads/an2;->e:Z

    int-to-float v1, v2

    sub-float/2addr v1, v4

    invoke-virtual {v0}, Landroid/widget/TextView;->getMaxLines()I

    move-result v2

    sub-int/2addr v2, v5

    invoke-virtual {v7, v2, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v2

    :goto_7
    invoke-virtual {v7, v2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v4

    cmpl-float v4, v4, v1

    if-lez v4, :cond_10

    if-lez v2, :cond_10

    add-int/lit8 v2, v2, -0x1

    goto :goto_7

    :cond_10
    if-lez v2, :cond_11

    add-int/lit8 v1, v2, -0x1

    invoke-interface {v8, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_11

    add-int/lit8 v2, v2, -0x1

    goto :goto_9

    :goto_8
    iput-boolean v5, v0, Lyads/an2;->e:Z

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v2

    :cond_11
    :goto_9
    if-gtz v2, :cond_12

    goto :goto_a

    :cond_12
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ne v2, v1, :cond_13

    goto :goto_b

    :cond_13
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v8, v3, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {v1, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-object v8, v1

    goto :goto_b

    :cond_14
    :goto_a
    move-object v8, v6

    :goto_b
    iput-object v8, v0, Lyads/an2;->f:Ljava/lang/CharSequence;

    iput-boolean v5, v0, Lyads/an2;->g:Z

    invoke-super {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-boolean v3, v0, Lyads/an2;->g:Z

    :cond_15
    :goto_c
    iput-boolean v3, v0, Lyads/an2;->l:Z

    iget-object v1, v0, Lyads/an2;->f:Ljava/lang/CharSequence;

    if-eqz v1, :cond_17

    iget-boolean v2, v0, Lyads/an2;->e:Z

    if-eqz v2, :cond_16

    move-object v6, v1

    :cond_16
    if-eqz v6, :cond_17

    invoke-super/range {p0 .. p2}, Lyads/tt5;->onMeasure(II)V

    :cond_17
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iput v1, v0, Lyads/an2;->h:I

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    if-ne p1, p3, :cond_1

    if-eq p2, p4, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lyads/an2;->l:Z

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatTextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    iget-boolean p2, p0, Lyads/an2;->g:Z

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lyads/an2;->j:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lyads/an2;->l:Z

    return-void
.end method

.method public final setAutoEllipsize(Z)V
    .locals 0

    iget-object p0, p0, Lyads/an2;->m:Lyads/zm;

    iput-boolean p1, p0, Lyads/zm;->b:Z

    return-void
.end method

.method public final setDrawingPassOverrideStrategy$mobileads_externalRelease(Lyads/ml2;)V
    .locals 0

    iget-object p0, p0, Lyads/an2;->m:Lyads/zm;

    iput-object p1, p0, Lyads/zm;->c:Lyads/ml2;

    return-void
.end method

.method public final setEllipsis(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-virtual {p0, p1}, Lyads/an2;->a(Ljava/lang/CharSequence;)V

    iput-object p1, p0, Lyads/an2;->c:Ljava/lang/CharSequence;

    return-void
.end method

.method public final setEllipsisLocation(Landroid/text/TextUtils$TruncateAt;)V
    .locals 0

    iput-object p1, p0, Lyads/an2;->d:Landroid/text/TextUtils$TruncateAt;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lyads/an2;->setAutoEllipsize(Z)V

    :cond_0
    iget-object p1, p0, Lyads/an2;->c:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lyads/an2;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 0

    return-void
.end method

.method public setMaxLines(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->getMaxLines()I

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object p1, p0, Lyads/an2;->c:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lyads/an2;->a(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lyads/an2;->l:Z

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lyads/an2;->k:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lyads/an2;->e:Z

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method
