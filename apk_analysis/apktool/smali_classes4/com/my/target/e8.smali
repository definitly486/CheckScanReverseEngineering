.class public final Lcom/my/target/e8;
.super Lnz9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/e8$a;
    }
.end annotation


# instance fields
.field public b:Z


# virtual methods
.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/my/target/e8;->b:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method public getWebView()Landroid/webkit/WebView;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final onMeasure(II)V
    .locals 0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    const/4 p0, 0x0

    throw p0
.end method

.method public setInteractionEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/my/target/e8;->b:Z

    return-void
.end method

.method public setPlayableStartInteractiveListener(Lcom/my/target/e8$a;)V
    .locals 0

    return-void
.end method
