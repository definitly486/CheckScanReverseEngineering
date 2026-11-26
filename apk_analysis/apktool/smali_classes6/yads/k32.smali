.class public final Lyads/k32;
.super Lyads/g03;
.source "SourceFile"

# interfaces
.implements Lyads/wh1;


# instance fields
.field public final synthetic l:Lyads/xh1;

.field public m:Lyads/n32;

.field public final n:Lyads/j32;

.field public final o:Landroidx/core/view/GestureDetectorCompat;

.field public p:Lll3;

.field public q:Lyads/br0;

.field public r:Lnl3;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 36
    invoke-direct {p0, p1, v2, v0, v1}, Lyads/k32;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 34
    invoke-direct {p0, p1, p2, v0, v1}, Lyads/k32;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lyads/g03;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Lyads/xh1;

    invoke-direct {p2}, Lyads/xh1;-><init>()V

    iput-object p2, p0, Lyads/k32;->l:Lyads/xh1;

    new-instance p2, Lyads/j32;

    invoke-direct {p2, p0}, Lyads/j32;-><init>(Lyads/k32;)V

    iput-object p2, p0, Lyads/k32;->n:Lyads/j32;

    new-instance p3, Landroidx/core/view/GestureDetectorCompat;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p3, p1, p2, v0}, Landroidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object p3, p0, Lyads/k32;->o:Landroidx/core/view/GestureDetectorCompat;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    const/4 p3, 0x0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lyads/k32;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final a()Lyads/br0;
    .locals 0

    .line 8
    iget-object p0, p0, Lyads/k32;->l:Lyads/xh1;

    .line 9
    iget-object p0, p0, Lyads/xh1;->c:Lyads/br0;

    .line 10
    check-cast p0, Lyads/gq0;

    return-object p0
.end method

.method public final a(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lyads/k32;->l:Lyads/xh1;

    iget-object p0, p0, Lyads/xh1;->b:Lyads/u16;

    invoke-virtual {p0, p1}, Lyads/u16;->a(Landroid/view/View;)V

    return-void
.end method

.method public final a(Lyads/tp0;)V
    .locals 0

    .line 11
    iget-object p0, p0, Lyads/k32;->l:Lyads/xh1;

    invoke-interface {p0, p1}, Lyads/hs2;->a(Lyads/tp0;)V

    return-void
.end method

.method public final b()V
    .locals 0

    .line 8
    iget-object p0, p0, Lyads/k32;->l:Lyads/xh1;

    invoke-interface {p0}, Lyads/hs2;->b()V

    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lyads/k32;->l:Lyads/xh1;

    iget-object p0, p0, Lyads/xh1;->b:Lyads/u16;

    invoke-virtual {p0, p1}, Lyads/u16;->b(Landroid/view/View;)V

    return-void
.end method

.method public final c()Lyads/tt;
    .locals 0

    iget-object p0, p0, Lyads/k32;->l:Lyads/xh1;

    iget-object p0, p0, Lyads/xh1;->d:Lyads/tt;

    return-object p0
.end method

.method public final canScrollHorizontally(I)Z
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lyads/k32;->p:Lll3;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    if-gez p1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-float p0, p0

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_3

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result p1

    neg-float p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-float p0, p0

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_3

    :goto_0
    return v1

    :cond_3
    return v0

    :cond_4
    :goto_1
    invoke-super {p0, p1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result p0

    return p0
.end method

.method public final d()V
    .locals 0

    iget-object p0, p0, Lyads/k32;->l:Lyads/xh1;

    invoke-virtual {p0}, Lyads/xh1;->d()V

    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-interface {p0}, Lyads/s51;->i()Lyads/l51;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    :try_start_0
    invoke-virtual {v0, p1}, Lyads/l51;->a(Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v0, p1}, Lyads/l51;->b(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw p0
.end method

.method public final drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2, p1}, Lyads/tq;->a(Landroid/view/View;Landroid/graphics/Canvas;)V

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p0

    return p0
.end method

.method public final e()V
    .locals 0

    iget-object p0, p0, Lyads/k32;->l:Lyads/xh1;

    invoke-virtual {p0}, Lyads/xh1;->e()V

    return-void
.end method

.method public final f()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lyads/k32;->l:Lyads/xh1;

    iget-object p0, p0, Lyads/xh1;->e:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final g()Z
    .locals 0

    iget-object p0, p0, Lyads/k32;->l:Lyads/xh1;

    iget-object p0, p0, Lyads/xh1;->b:Lyads/u16;

    invoke-virtual {p0}, Lyads/u16;->g()Z

    move-result p0

    return p0
.end method

.method public final i()Lyads/l51;
    .locals 0

    iget-object p0, p0, Lyads/k32;->l:Lyads/xh1;

    iget-object p0, p0, Lyads/xh1;->a:Lyads/t51;

    iget-object p0, p0, Lyads/t51;->a:Lyads/l51;

    return-object p0
.end method

.method public final j()Lyads/n32;
    .locals 0

    iget-object p0, p0, Lyads/k32;->m:Lyads/n32;

    return-object p0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lyads/k32;->m:Lyads/n32;

    if-eqz p0, :cond_1

    iget-object v0, p0, Lyads/n32;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lyads/n32;->b:Ljava/util/List;

    invoke-static {p0}, Lqn1;->b0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb36;

    iget-object p0, p0, Lb36;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final l()Lnl3;
    .locals 0

    iget-object p0, p0, Lyads/k32;->r:Lnl3;

    return-object p0
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lyads/k32;->p:Lll3;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    return p1

    :cond_0
    iget-object v0, p0, Lyads/k32;->o:Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {v0, p1}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lyads/k32;->n:Lyads/j32;

    invoke-virtual {v0}, Lyads/j32;->b()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    iget-object v0, p0, Lyads/k32;->n:Lyads/j32;

    invoke-virtual {v0}, Lyads/j32;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget-object p0, p0, Lyads/k32;->l:Lyads/xh1;

    invoke-virtual {p0}, Lyads/xh1;->h()V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lyads/k32;->p:Lll3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    :cond_1
    iget-object v0, p0, Lyads/k32;->n:Lyads/j32;

    invoke-virtual {v0}, Lyads/j32;->a()V

    :cond_2
    iget-object v0, p0, Lyads/k32;->o:Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {v0, p1}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final release()V
    .locals 0

    iget-object p0, p0, Lyads/k32;->l:Lyads/xh1;

    invoke-interface {p0}, Lyads/wh1;->release()V

    return-void
.end method

.method public final setActiveStateDiv$mobileads_externalRelease(Lyads/br0;)V
    .locals 0

    iput-object p1, p0, Lyads/k32;->q:Lyads/br0;

    return-void
.end method

.method public setBindingContext(Lyads/tt;)V
    .locals 0

    iget-object p0, p0, Lyads/k32;->l:Lyads/xh1;

    iput-object p1, p0, Lyads/xh1;->d:Lyads/tt;

    return-void
.end method

.method public setBorder(Lyads/tt;Lyads/f51;Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lyads/k32;->l:Lyads/xh1;

    iget-object p0, p0, Lyads/xh1;->a:Lyads/t51;

    invoke-virtual {p0, p1, p2, p3}, Lyads/t51;->setBorder(Lyads/tt;Lyads/f51;Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic setDiv(Lyads/br0;)V
    .locals 0

    check-cast p1, Lyads/gq0;

    invoke-virtual {p0, p1}, Lyads/k32;->setDiv(Lyads/gq0;)V

    return-void
.end method

.method public setDiv(Lyads/gq0;)V
    .locals 0

    iget-object p0, p0, Lyads/k32;->l:Lyads/xh1;

    .line 6
    iput-object p1, p0, Lyads/xh1;->c:Lyads/br0;

    return-void
.end method

.method public setNeedClipping(Z)V
    .locals 0

    iget-object p0, p0, Lyads/k32;->l:Lyads/xh1;

    iget-object p0, p0, Lyads/xh1;->a:Lyads/t51;

    invoke-virtual {p0, p1}, Lyads/t51;->setNeedClipping(Z)V

    return-void
.end method

.method public final setPath(Lyads/n32;)V
    .locals 0

    iput-object p1, p0, Lyads/k32;->m:Lyads/n32;

    return-void
.end method

.method public final setSwipeOutCallback(Lll3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lll3<",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lyads/k32;->p:Lll3;

    return-void
.end method

.method public final setVariableUpdater(Lnl3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Ljava/lang/String;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lyads/k32;->r:Lnl3;

    return-void
.end method
