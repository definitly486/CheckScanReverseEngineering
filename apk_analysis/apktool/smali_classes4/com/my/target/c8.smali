.class public final Lcom/my/target/c8;
.super Lnz9;
.source "SourceFile"


# virtual methods
.method public getAdChoicesButton()Lcom/my/target/e6;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getInteractiveView()Lcom/my/target/e8;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPostView()Lcom/my/target/f8;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    const/4 p0, 0x0

    throw p0
.end method

.method public final onMeasure(II)V
    .locals 0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    const/high16 p0, 0x40000000    # 2.0f

    invoke-static {p1, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    invoke-static {p2, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    const/4 p0, 0x0

    throw p0
.end method
