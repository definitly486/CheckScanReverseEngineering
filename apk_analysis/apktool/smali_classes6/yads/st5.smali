.class public Lyads/st5;
.super Landroidx/appcompat/widget/AppCompatEditText;
.source "SourceFile"

# interfaces
.implements Lyads/ox2;


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public final d:Lyads/nx2;

.field public e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 16
    invoke-direct {p0, p1, v2, v0, v1}, Lyads/st5;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 14
    invoke-direct {p0, p1, p2, v0, v1}, Lyads/st5;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lyads/st5;->b:Z

    new-instance p1, Lyads/nx2;

    invoke-direct {p1, p0}, Lyads/nx2;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Lyads/st5;->d:Lyads/nx2;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    const/4 p3, 0x0

    .line 15
    invoke-direct {p0, p1, p2, p3}, Lyads/st5;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final getCompoundPaddingBottom()I
    .locals 1

    invoke-super {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    iget-object p0, p0, Lyads/st5;->d:Lyads/nx2;

    iget p0, p0, Lyads/nx2;->c:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final getCompoundPaddingTop()I
    .locals 1

    invoke-super {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v0

    iget-object p0, p0, Lyads/st5;->d:Lyads/nx2;

    iget p0, p0, Lyads/nx2;->b:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final onMeasure(II)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    iget-object p1, p0, Lyads/st5;->d:Lyads/nx2;

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getMaxLines()I

    move-result v1

    if-le v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getMaxLines()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    :goto_0
    iget v1, p1, Lyads/nx2;->d:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_6

    invoke-static {p2}, Lyads/nh6;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_3

    :cond_2
    iget-object v1, p1, Lyads/nx2;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    if-lt v0, v1, :cond_3

    iget v1, p1, Lyads/nx2;->b:I

    iget v2, p1, Lyads/nx2;->c:I

    add-int/2addr v1, v2

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
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

    if-ge v0, p1, :cond_4

    move v0, p1

    :cond_4
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    const/high16 v1, -0x80000000

    if-ne p1, v1, :cond_5

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_2

    :cond_5
    const/high16 p1, 0x40000000    # 2.0f

    invoke-static {v0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result p2

    invoke-super {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    :cond_6
    :goto_3
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p1

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lyads/st5;->getCompoundPaddingTop()I

    move-result p1

    sub-int/2addr p2, p1

    invoke-virtual {p0}, Lyads/st5;->getCompoundPaddingBottom()I

    move-result p1

    sub-int/2addr p2, p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result p1

    invoke-static {p0, p1}, Lyads/ow5;->a(Landroid/widget/TextView;I)I

    move-result p1

    if-lt p2, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lyads/st5;->b:Z

    :cond_2
    :goto_1
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1c

    const/4 p3, 0x1

    if-ge p1, p2, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_4

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 p2, -0x3

    if-ne p1, p2, :cond_4

    iget p1, p0, Lyads/st5;->e:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result p2

    if-nez p2, :cond_0

    move p2, p3

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/TextView;->getMaxLines()I

    move-result p4

    if-le p2, p4, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getMaxLines()I

    move-result p2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result p2

    :goto_0
    if-eq p1, p2, :cond_7

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result p1

    if-nez p1, :cond_2

    move p1, p3

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getMaxLines()I

    move-result p2

    if-le p1, p2, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->getMaxLines()I

    move-result p1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result p1

    :goto_1
    iput p1, p0, Lyads/st5;->e:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result p1

    if-nez p1, :cond_5

    move p1, p3

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getMaxLines()I

    move-result p2

    if-le p1, p2, :cond_6

    invoke-virtual {p0}, Landroid/widget/TextView;->getMaxLines()I

    move-result p1

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result p1

    :goto_2
    iput p1, p0, Lyads/st5;->e:I

    :cond_7
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p2

    if-eqz p2, :cond_a

    if-nez p1, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {p0}, Lyads/st5;->getCompoundPaddingTop()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Lyads/st5;->getCompoundPaddingBottom()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/text/Layout;->getLineCount()I

    move-result p2

    invoke-static {p0, p2}, Lyads/ow5;->a(Landroid/widget/TextView;I)I

    move-result p2

    if-lt p1, p2, :cond_9

    goto :goto_4

    :cond_9
    const/4 p3, 0x0

    :goto_4
    iput-boolean p3, p0, Lyads/st5;->b:Z

    :cond_a
    :goto_5
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-boolean v0, p0, Lyads/st5;->a:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lyads/st5;->b:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lyads/st5;->c:Z

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :cond_1
    iput-boolean v2, p0, Lyads/st5;->c:Z

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_2
    iget-boolean v0, p0, Lyads/st5;->c:Z

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lyads/st5;->c:Z

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_3
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setFixedLineHeight(I)V
    .locals 1

    iget-object p0, p0, Lyads/st5;->d:Lyads/nx2;

    iget v0, p0, Lyads/nx2;->d:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lyads/nx2;->d:I

    invoke-virtual {p0, p1}, Lyads/nx2;->a(I)V

    return-void
.end method

.method public setHorizontallyScrolling(Z)V
    .locals 0

    iput-boolean p1, p0, Lyads/st5;->a:Z

    invoke-super {p0, p1}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    return-void
.end method

.method public setTextSize(IF)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p0, p0, Lyads/st5;->d:Lyads/nx2;

    iget p1, p0, Lyads/nx2;->d:I

    invoke-virtual {p0, p1}, Lyads/nx2;->a(I)V

    return-void
.end method
