.class public Lyads/et1;
.super Lyads/ng6;
.source "SourceFile"

# interfaces
.implements Lyads/wh1;


# static fields
.field public static final synthetic k:I


# instance fields
.field public final synthetic b:Lyads/xh1;

.field public c:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

.field public final d:Ljava/util/ArrayList;

.field public e:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

.field public f:Lyads/bt1;

.field public g:Lyads/is4;

.field public h:Lyads/ct1;

.field public i:Lyads/oq4;

.field public final j:Lcl4;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 34
    invoke-direct {p0, p1, v2, v0, v1}, Lyads/et1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 32
    invoke-direct {p0, p1, p2, v0, v1}, Lyads/et1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lyads/ng6;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lyads/xh1;

    invoke-direct {p1}, Lyads/xh1;-><init>()V

    iput-object p1, p0, Lyads/et1;->b:Lyads/xh1;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lyads/et1;->d:Ljava/util/ArrayList;

    sget-object p1, Lpo4;->NONE:Lpo4;

    new-instance p2, La22;

    const/4 p3, 0x2

    invoke-direct {p2, p0, p3}, La22;-><init>(Ljava/lang/Object;I)V

    invoke-static {p1, p2}, Lnm4;->a(Lpo4;Lll3;)Lcl4;

    move-result-object p1

    iput-object p1, p0, Lyads/et1;->j:Lcl4;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    const/4 p3, 0x0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lyads/et1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final a(Lyads/et1;)Lyads/dt1;
    .locals 2

    invoke-virtual {p0}, Lyads/ng6;->h()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v1, Lyads/dt1;

    invoke-direct {v1, v0, p0}, Lyads/dt1;-><init>(Landroidx/recyclerview/widget/RecyclerView;Lyads/et1;)V

    return-object v1
.end method


# virtual methods
.method public final a()Lyads/br0;
    .locals 0

    .line 14
    iget-object p0, p0, Lyads/et1;->b:Lyads/xh1;

    .line 15
    iget-object p0, p0, Lyads/xh1;->c:Lyads/br0;

    .line 16
    check-cast p0, Lyads/cq0;

    return-object p0
.end method

.method public final a(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lyads/et1;->b:Lyads/xh1;

    .line 17
    iget-object p0, p0, Lyads/xh1;->b:Lyads/u16;

    .line 18
    invoke-virtual {p0, p1}, Lyads/u16;->a(Landroid/view/View;)V

    return-void
.end method

.method public final a(Lyads/tp0;)V
    .locals 0

    .line 19
    iget-object p0, p0, Lyads/et1;->b:Lyads/xh1;

    invoke-interface {p0, p1}, Lyads/hs2;->a(Lyads/tp0;)V

    return-void
.end method

.method public final b()V
    .locals 0

    .line 8
    iget-object p0, p0, Lyads/et1;->b:Lyads/xh1;

    invoke-interface {p0}, Lyads/hs2;->b()V

    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lyads/et1;->b:Lyads/xh1;

    iget-object p0, p0, Lyads/xh1;->b:Lyads/u16;

    invoke-virtual {p0, p1}, Lyads/u16;->b(Landroid/view/View;)V

    return-void
.end method

.method public final c()Lyads/tt;
    .locals 0

    iget-object p0, p0, Lyads/et1;->b:Lyads/xh1;

    iget-object p0, p0, Lyads/xh1;->d:Lyads/tt;

    return-object p0
.end method

.method public final d()V
    .locals 0

    iget-object p0, p0, Lyads/et1;->b:Lyads/xh1;

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

    iget-object p0, p0, Lyads/et1;->b:Lyads/xh1;

    invoke-virtual {p0}, Lyads/xh1;->e()V

    return-void
.end method

.method public final f()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lyads/et1;->b:Lyads/xh1;

    iget-object p0, p0, Lyads/xh1;->e:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final g()Z
    .locals 0

    iget-object p0, p0, Lyads/et1;->b:Lyads/xh1;

    iget-object p0, p0, Lyads/xh1;->b:Lyads/u16;

    invoke-virtual {p0}, Lyads/u16;->g()Z

    move-result p0

    return p0
.end method

.method public final i()Lyads/l51;
    .locals 0

    iget-object p0, p0, Lyads/et1;->b:Lyads/xh1;

    iget-object p0, p0, Lyads/xh1;->a:Lyads/t51;

    iget-object p0, p0, Lyads/t51;->a:Lyads/l51;

    return-object p0
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lyads/et1;->i:Lyads/oq4;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast v0, Lyads/ms4;

    invoke-virtual {v0, p0, p1}, Lyads/ms4;->a(Landroid/view/ViewGroup;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    return v1

    :cond_2
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget-object p0, p0, Lyads/et1;->b:Lyads/xh1;

    invoke-virtual {p0}, Lyads/xh1;->h()V

    return-void
.end method

.method public final release()V
    .locals 0

    iget-object p0, p0, Lyads/et1;->b:Lyads/xh1;

    invoke-interface {p0}, Lyads/wh1;->release()V

    return-void
.end method

.method public setBindingContext(Lyads/tt;)V
    .locals 0

    iget-object p0, p0, Lyads/et1;->b:Lyads/xh1;

    iput-object p1, p0, Lyads/xh1;->d:Lyads/tt;

    return-void
.end method

.method public setBorder(Lyads/tt;Lyads/f51;Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lyads/et1;->b:Lyads/xh1;

    iget-object p0, p0, Lyads/xh1;->a:Lyads/t51;

    invoke-virtual {p0, p1, p2, p3}, Lyads/t51;->setBorder(Lyads/tt;Lyads/f51;Landroid/view/View;)V

    return-void
.end method

.method public setChangePageCallbackForLogger$mobileads_externalRelease(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V
    .locals 2

    iget-object v0, p0, Lyads/et1;->e:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lyads/ng6;->a:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1, v0}, Landroidx/viewpager2/widget/ViewPager2;->unregisterOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lyads/ng6;->a:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    :cond_1
    iput-object p1, p0, Lyads/et1;->e:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    return-void
.end method

.method public setChangePageCallbackForOffScreenPages$mobileads_externalRelease(Lyads/bt1;)V
    .locals 2

    iget-object v0, p0, Lyads/et1;->f:Lyads/bt1;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lyads/ng6;->a:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1, v0}, Landroidx/viewpager2/widget/ViewPager2;->unregisterOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    invoke-virtual {p0}, Lyads/ng6;->h()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lyads/ng6;->a:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    invoke-virtual {p0}, Lyads/ng6;->h()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_1
    iput-object p1, p0, Lyads/et1;->f:Lyads/bt1;

    return-void
.end method

.method public setChangePageCallbackForState$mobileads_externalRelease(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V
    .locals 2

    iget-object v0, p0, Lyads/et1;->c:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lyads/ng6;->a:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1, v0}, Landroidx/viewpager2/widget/ViewPager2;->unregisterOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lyads/ng6;->a:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    :cond_1
    iput-object p1, p0, Lyads/et1;->c:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    return-void
.end method

.method public setClipToPage$mobileads_externalRelease(Z)V
    .locals 0

    invoke-virtual {p0}, Lyads/ng6;->h()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    return-void
.end method

.method public setCurrentItem$mobileads_externalRelease(I)V
    .locals 1

    iget-object p0, p0, Lyads/ng6;->a:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    return-void
.end method

.method public bridge synthetic setDiv(Lyads/br0;)V
    .locals 0

    check-cast p1, Lyads/cq0;

    invoke-virtual {p0, p1}, Lyads/et1;->setDiv(Lyads/cq0;)V

    return-void
.end method

.method public setDiv(Lyads/cq0;)V
    .locals 0

    iget-object p0, p0, Lyads/et1;->b:Lyads/xh1;

    .line 6
    iput-object p1, p0, Lyads/xh1;->c:Lyads/br0;

    return-void
.end method

.method public setNeedClipping(Z)V
    .locals 0

    iget-object p0, p0, Lyads/et1;->b:Lyads/xh1;

    iget-object p0, p0, Lyads/xh1;->a:Lyads/t51;

    invoke-virtual {p0, p1}, Lyads/t51;->setNeedClipping(Z)V

    return-void
.end method

.method public setOnInterceptTouchEventListener(Lyads/oq4;)V
    .locals 0

    iput-object p1, p0, Lyads/et1;->i:Lyads/oq4;

    return-void
.end method

.method public setPagerOnItemsCountChange$mobileads_externalRelease(Lyads/ct1;)V
    .locals 0

    iput-object p1, p0, Lyads/et1;->h:Lyads/ct1;

    return-void
.end method

.method public setPagerSelectedActionsDispatcher$mobileads_externalRelease(Lyads/is4;)V
    .locals 3

    iget-object v0, p0, Lyads/et1;->g:Lyads/is4;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lyads/ng6;->a:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v2, v0, Lyads/is4;->d:Lyads/hs4;

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->unregisterOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    :cond_0
    const/4 v1, 0x0

    iput-object v1, v0, Lyads/is4;->d:Lyads/hs4;

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lyads/ng6;->a:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v1, Lyads/hs4;

    invoke-direct {v1, p1}, Lyads/hs4;-><init>(Lyads/is4;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    iput-object v1, p1, Lyads/is4;->d:Lyads/hs4;

    :cond_2
    iput-object p1, p0, Lyads/et1;->g:Lyads/is4;

    return-void
.end method
