.class public Lyads/ld5;
.super Lyads/pb5;
.source "SourceFile"


# instance fields
.field public final b:Lyads/an4;

.field public c:Landroidx/customview/widget/ViewDragHelper;

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Ljava/util/Set;

.field public i:Lyads/oq4;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, v0}, Lyads/ld5;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lyads/pb5;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lyads/an4;

    invoke-direct {p1, p0}, Lyads/an4;-><init>(Lyads/ld5;)V

    iput-object p1, p0, Lyads/ld5;->b:Lyads/an4;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lyads/ld5;->d:Z

    iput-boolean p1, p0, Lyads/ld5;->e:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lyads/ld5;->f:Z

    iput-boolean p1, p0, Lyads/ld5;->g:Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-boolean v0, p0, Lyads/ld5;->e:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lyads/ld5;->c:Landroidx/customview/widget/ViewDragHelper;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lyads/ld5;->f:Z

    :cond_0
    iget-object v0, p0, Lyads/ld5;->c:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    :cond_1
    iget-object p1, p0, Lyads/ld5;->h:Ljava/util/Set;

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    iget-boolean v2, p0, Lyads/ld5;->d:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lyads/pb5;->getCurrentItem()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v0

    goto :goto_0

    :cond_2
    move p1, v1

    :goto_0
    iput-boolean p1, p0, Lyads/ld5;->g:Z

    :cond_3
    iget-boolean p1, p0, Lyads/ld5;->f:Z

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lyads/ld5;->g:Z

    if-nez p1, :cond_4

    iget-boolean p0, p0, Lyads/ld5;->d:Z

    if-eqz p0, :cond_4

    return v0

    :cond_4
    return v1
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iget-object p0, p0, Lyads/ld5;->b:Lyads/an4;

    invoke-virtual {p0, p1}, Lyads/an4;->a(Landroid/view/MotionEvent;)V

    return v0
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lyads/ld5;->i:Lyads/oq4;

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

    invoke-virtual {p0, p1}, Lyads/ld5;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

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

.method public final onScrollChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onScrollChanged(IIII)V

    iget-object p0, p0, Lyads/ld5;->b:Lyads/an4;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lyads/an4;->b:Z

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lyads/ld5;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setDisabledScrollPages(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lyads/ld5;->h:Ljava/util/Set;

    return-void
.end method

.method public setEdgeScrollEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lyads/ld5;->e:Z

    if-nez p1, :cond_0

    new-instance p1, Lyads/kd5;

    invoke-direct {p1, p0}, Lyads/kd5;-><init>(Lyads/ld5;)V

    invoke-static {p0, p1}, Landroidx/customview/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;Landroidx/customview/widget/ViewDragHelper$Callback;)Landroidx/customview/widget/ViewDragHelper;

    move-result-object p1

    iput-object p1, p0, Lyads/ld5;->c:Landroidx/customview/widget/ViewDragHelper;

    const/4 p0, 0x3

    invoke-virtual {p1, p0}, Landroidx/customview/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    :cond_0
    return-void
.end method

.method public setOnInterceptTouchEventListener(Lyads/oq4;)V
    .locals 0

    iput-object p1, p0, Lyads/ld5;->i:Lyads/oq4;

    return-void
.end method

.method public setScrollEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lyads/ld5;->d:Z

    return-void
.end method
