.class public Lyads/tt5;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "SourceFile"

# interfaces
.implements Lyads/ox2;


# instance fields
.field public final a:Lyads/nx2;

.field public b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 13
    invoke-direct {p0, p1, v2, v0, v1}, Lyads/tt5;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 11
    invoke-direct {p0, p1, p2, v0, v1}, Lyads/tt5;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lyads/nx2;

    invoke-direct {p1, p0}, Lyads/nx2;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Lyads/tt5;->a:Lyads/nx2;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    const/4 p3, 0x0

    .line 12
    invoke-direct {p0, p1, p2, p3}, Lyads/tt5;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final getCompoundPaddingBottom()I
    .locals 1

    invoke-super {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    iget-object p0, p0, Lyads/tt5;->a:Lyads/nx2;

    iget p0, p0, Lyads/nx2;->c:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final getCompoundPaddingTop()I
    .locals 1

    invoke-super {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v0

    iget-object p0, p0, Lyads/tt5;->a:Lyads/nx2;

    iget p0, p0, Lyads/nx2;->b:I

    add-int/2addr v0, p0

    return v0
.end method

.method public onMeasure(II)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->onMeasure(II)V

    iget-object p1, p0, Lyads/tt5;->a:Lyads/nx2;

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getMaxLines()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p1, Lyads/nx2;->d:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_4

    invoke-static {p2}, Lyads/nh6;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    iget-object v1, p1, Lyads/nx2;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    iget v1, p1, Lyads/nx2;->b:I

    iget v2, p1, Lyads/nx2;->c:I

    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    iget-object v2, p1, Lyads/nx2;->a:Landroid/widget/TextView;

    invoke-static {v2, v0}, Lyads/ow5;->a(Landroid/widget/TextView;I)I

    move-result v0

    add-int/2addr v0, v1

    iget-object v1, p1, Lyads/nx2;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p1, Lyads/nx2;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    add-int/2addr v0, v1

    iget-object p1, p1, Lyads/nx2;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getMinimumHeight()I

    move-result p1

    if-ge v0, p1, :cond_2

    move v0, p1

    :cond_2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    const/high16 v1, -0x80000000

    if-ne p1, v1, :cond_3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_1

    :cond_3
    const/high16 p1, 0x40000000    # 2.0f

    invoke-static {v0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result p2

    invoke-super {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    :cond_4
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of p2, p1, Lyads/ro1;

    if-eqz p2, :cond_5

    check-cast p1, Lyads/ro1;

    goto :goto_3

    :cond_5
    const/4 p1, 0x0

    :goto_3
    if-nez p1, :cond_6

    goto :goto_5

    :cond_6
    iget-boolean p2, p0, Lyads/tt5;->b:Z

    if-eqz p2, :cond_9

    iget p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v0, -0x3

    if-ne p2, v0, :cond_9

    iget p1, p1, Lyads/ro1;->h:I

    const p2, 0x7fffffff

    if-ne p1, p2, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result p1

    const/4 p2, 0x0

    :goto_4
    if-ge v3, p1, :cond_8

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_8
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    add-int/2addr v0, p1

    int-to-float p1, v0

    add-float/2addr p2, p1

    float-to-double p1, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-float p1, p1

    float-to-int p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    if-ge p1, p2, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result p2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeightAndState()I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    :cond_9
    :goto_5
    return-void
.end method

.method public setFixedLineHeight(I)V
    .locals 1

    iget-object p0, p0, Lyads/tt5;->a:Lyads/nx2;

    iget v0, p0, Lyads/nx2;->d:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lyads/nx2;->d:I

    invoke-virtual {p0, p1}, Lyads/nx2;->a(I)V

    return-void
.end method

.method public setTextSize(IF)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    iget-object p0, p0, Lyads/tt5;->a:Lyads/nx2;

    iget p1, p0, Lyads/nx2;->d:I

    invoke-virtual {p0, p1}, Lyads/nx2;->a(I)V

    return-void
.end method

.method public final setTightenWidth(Z)V
    .locals 1

    iget-boolean v0, p0, Lyads/tt5;->b:Z

    iput-boolean p1, p0, Lyads/tt5;->b:Z

    if-eq v0, p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method
