.class public final synthetic Lyha;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic b:Lcom/my/target/yc$b;


# direct methods
.method public synthetic constructor <init>(Lcom/my/target/yc$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyha;->b:Lcom/my/target/yc$b;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    sget p1, Lcom/my/target/yc;->i:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    iget-object p0, p0, Lyha;->b:Lcom/my/target/yc$b;

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/my/target/yc$b;->a:Lcom/my/target/yc;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    if-ltz v3, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_5

    cmpl-float v0, v1, v2

    if-ltz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    cmpg-float p1, v1, p1

    if-gtz p1, :cond_5

    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/my/target/yc$b;->b:Lk4;

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    const-string p1, "MraidWebView$ViewGestureDetector: Gestures - user clicked"

    invoke-static {p2, p1}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/my/target/yc$b;->b:Lk4;

    iget-object p0, p0, Lk4;->c:Ljava/lang/Object;

    check-cast p0, Lcom/my/target/yc;

    iput-boolean v0, p0, Lcom/my/target/yc;->g:Z

    goto :goto_0

    :cond_3
    const-string p0, "MraidWebView$ViewGestureDetector: View\'s onUserClick() is not registered"

    invoke-static {p2, p0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_5
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
