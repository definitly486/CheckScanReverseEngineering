.class public final synthetic Lo5a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic b:Lcom/my/target/ph;


# direct methods
.method public synthetic constructor <init>(Lcom/my/target/ph;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo5a;->b:Lcom/my/target/ph;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    sget v0, Lcom/my/target/ph;->h:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iget-object p0, p0, Lo5a;->b:Lcom/my/target/ph;

    const-wide v1, 0x7fffffffffffffffL

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    const/4 v4, 0x1

    if-eq v0, v4, :cond_2

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/my/target/ph;->g:J

    const-string p0, "ShoppableWebView: action cancel"

    invoke-static {v3, p0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "ShoppableWebView: action move"

    invoke-static {v3, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    iput-wide v1, p0, Lcom/my/target/ph;->g:J

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    if-ltz v3, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_4

    cmpl-float v0, v1, v2

    if-ltz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    cmpg-float p1, v1, p1

    if-gtz p1, :cond_4

    invoke-virtual {p0, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/my/target/ph;->g:J

    const-string p1, "ShoppableWebView: action up"

    invoke-static {v3, p1}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/my/target/ph;->f:Z

    goto :goto_0

    :cond_3
    iput-wide v1, p0, Lcom/my/target/ph;->g:J

    const-string p1, "ShoppableWebView: action down"

    invoke-static {v3, p1}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
