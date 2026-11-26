.class public final synthetic Lrk7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroid/widget/FrameLayout;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/FrameLayout;I)V
    .locals 0

    iput p2, p0, Lrk7;->b:I

    iput-object p1, p0, Lrk7;->c:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    iget v0, p0, Lrk7;->b:I

    iget-object p0, p0, Lrk7;->c:Landroid/widget/FrameLayout;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/my/target/e1;

    sget p1, Lcom/my/target/e1;->k:I

    iget-object p0, p0, Lcom/my/target/e1;->e:Lcom/my/target/e1$f;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/my/target/e1$f;->a:Lcom/my/target/e1;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    if-ltz v3, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_6

    cmpl-float v0, v1, v2

    if-ltz v0, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    cmpg-float p1, v1, p1

    if-gtz p1, :cond_6

    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/my/target/e1$f;->c:Lcom/my/target/e1$e;

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/my/target/e1$f;->b:Lml0;

    if-eqz p1, :cond_3

    const-string p1, "BannerWebView$ViewGestureDetector: Gestures - user clicked"

    invoke-static {v0, p1}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/my/target/e1$f;->b:Lml0;

    iget-object p0, p0, Lml0;->c:Ljava/lang/Object;

    check-cast p0, Lcom/my/target/e1;

    iput-boolean v1, p0, Lcom/my/target/e1;->j:Z

    goto :goto_0

    :cond_3
    const-string p0, "BannerWebView$ViewGestureDetector: View\'s onUserClick() is not registered"

    invoke-static {v0, p0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    throw v0

    :cond_5
    iget-object p1, p0, Lcom/my/target/e1$f;->c:Lcom/my/target/e1$e;

    if-nez p1, :cond_7

    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_6
    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_7
    throw v0

    :pswitch_0
    check-cast p0, Lcom/google/android/material/search/SearchView;

    invoke-static {p0, p1, p2}, Lcom/google/android/material/search/SearchView;->i(Lcom/google/android/material/search/SearchView;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
