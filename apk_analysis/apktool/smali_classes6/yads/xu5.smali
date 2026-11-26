.class public final Lyads/xu5;
.super Lyads/tt5;
.source "SourceFile"


# instance fields
.field public c:Lyads/cf2;

.field public d:Lyads/sg3;

.field public e:I

.field public f:Z

.field public g:Z

.field public h:Lyads/vu5;

.field public i:Lyads/wu5;

.field public j:Lyads/kr;

.field public k:Lyads/hf2;

.field public l:Lyads/hf2;

.field public m:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, v0}, Lyads/xu5;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, v0}, Lyads/xu5;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lyads/tt5;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lah;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/xu5;->h:Lyads/vu5;

    const p1, 0x800013

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    new-instance p1, Lrha;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic c(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public static synthetic h()I
    .locals 1

    const v0, 0x7fffffff

    return v0
.end method


# virtual methods
.method public final getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0

    const-class p0, Landroidx/appcompat/app/ActionBar$Tab;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final onMeasure(II)V
    .locals 6

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v1, p0, Lyads/xu5;->c:Lyads/cf2;

    if-eqz v1, :cond_7

    iget-boolean v2, p0, Lyads/xu5;->m:Z

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    iget-object v2, p0, Lyads/xu5;->l:Lyads/hf2;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_1

    if-eq v2, v3, :cond_0

    invoke-interface {v1}, Lyads/cf2;->d()Landroid/graphics/Typeface;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lyads/cf2;->a()Landroid/graphics/Typeface;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Lyads/cf2;->b()Landroid/graphics/Typeface;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Lyads/cf2;->c()Landroid/graphics/Typeface;

    move-result-object v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lyads/xu5;->k:Lyads/hf2;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eq v2, v5, :cond_6

    if-eq v2, v4, :cond_5

    if-eq v2, v3, :cond_4

    invoke-interface {v1}, Lyads/cf2;->d()Landroid/graphics/Typeface;

    move-result-object v1

    goto :goto_0

    :cond_4
    invoke-interface {v1}, Lyads/cf2;->a()Landroid/graphics/Typeface;

    move-result-object v1

    goto :goto_0

    :cond_5
    invoke-interface {v1}, Lyads/cf2;->b()Landroid/graphics/Typeface;

    move-result-object v1

    goto :goto_0

    :cond_6
    invoke-interface {v1}, Lyads/cf2;->c()Landroid/graphics/Typeface;

    move-result-object v1

    goto :goto_0

    :cond_7
    if-eqz v1, :cond_8

    invoke-interface {v1}, Lyads/cf2;->c()Landroid/graphics/Typeface;

    move-result-object v1

    goto :goto_0

    :cond_8
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_9

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_9
    iget-boolean v0, p0, Lyads/xu5;->g:Z

    if-nez v0, :cond_a

    invoke-super {p0, p1, p2}, Lyads/tt5;->onMeasure(II)V

    return-void

    :cond_a
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    iget-object v2, p0, Lyads/xu5;->h:Lyads/vu5;

    invoke-interface {v2}, Lyads/vu5;->a()I

    move-result v2

    if-lez v2, :cond_c

    if-eqz v1, :cond_b

    if-le v0, v2, :cond_c

    :cond_b
    const/high16 p1, -0x80000000

    invoke-static {v2, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_c
    invoke-super {p0, p1, p2}, Lyads/tt5;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_13

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v2

    if-gtz v2, :cond_d

    goto :goto_1

    :cond_d
    iget-object v2, p0, Lyads/xu5;->j:Lyads/kr;

    if-nez v2, :cond_e

    goto :goto_1

    :cond_e
    iget-object v2, v2, Lyads/kr;->a:Ljava/lang/CharSequence;

    if-nez v2, :cond_f

    goto :goto_1

    :cond_f
    invoke-virtual {v0}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    if-nez v3, :cond_10

    goto :goto_1

    :cond_10
    invoke-virtual {p0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v4

    if-eqz v4, :cond_11

    invoke-interface {v4, v2, p0}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v2

    :cond_11
    if-nez v2, :cond_12

    goto :goto_1

    :cond_12
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v0

    float-to-int v0, v0

    const-string v1, "..."

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    int-to-float v0, v0

    sub-float/2addr v0, v1

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v2, v3, v0, v1}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-super {p0, p1, p2}, Lyads/tt5;->onMeasure(II)V

    :cond_13
    :goto_1
    return-void
.end method

.method public final performClick()Z
    .locals 2

    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    iget-object v1, p0, Lyads/xu5;->d:Lyads/sg3;

    if-eqz v1, :cond_0

    invoke-static {p0, v1}, Lyads/pq;->a(Landroid/view/View;Lyads/sg3;)V

    :cond_0
    iget-object p0, p0, Lyads/xu5;->j:Lyads/kr;

    if-eqz p0, :cond_2

    iget-object v0, p0, Lyads/kr;->c:Lyads/nr;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lyads/nr;->b(Lyads/kr;Z)V

    return v1

    :cond_1
    const-string p0, "Tab not attached to a TabLayout"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_2
    return v0
.end method

.method public setActiveTypefaceType(Lyads/hf2;)V
    .locals 0

    iput-object p1, p0, Lyads/xu5;->l:Lyads/hf2;

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const p1, 0x3e4ccccd    # 0.2f

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public setInactiveTypefaceType(Lyads/hf2;)V
    .locals 0

    iput-object p1, p0, Lyads/xu5;->k:Lyads/hf2;

    return-void
.end method

.method public setMaxWidthProvider(Lyads/vu5;)V
    .locals 0

    iput-object p1, p0, Lyads/xu5;->h:Lyads/vu5;

    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p0, p1}, Lyads/xu5;->setTypefaceType(Z)V

    iget-boolean p1, p0, Lyads/xu5;->f:Z

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v0, p0, Lyads/xu5;->e:I

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_1
    return-void
.end method

.method public setTabPadding(IIII)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    return-void
.end method

.method public setTypefaceType(Z)V
    .locals 1

    iget-boolean v0, p0, Lyads/xu5;->m:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean p1, p0, Lyads/xu5;->m:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_1
    return-void
.end method
