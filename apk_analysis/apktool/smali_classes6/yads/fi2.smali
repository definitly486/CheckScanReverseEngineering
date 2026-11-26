.class public final Lyads/fi2;
.super Lyads/ji2;
.source "SourceFile"


# instance fields
.field public final a:Lyads/cy1;

.field public final b:Lyads/jp0;

.field public final c:Landroid/util/DisplayMetrics;


# direct methods
.method public constructor <init>(Lyads/cy1;Lyads/jp0;)V
    .locals 0

    invoke-direct {p0}, Lyads/ji2;-><init>()V

    iput-object p1, p0, Lyads/fi2;->a:Lyads/cy1;

    iput-object p2, p0, Lyads/fi2;->b:Lyads/jp0;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Lyads/fi2;->c:Landroid/util/DisplayMetrics;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 37
    iget-object v0, p0, Lyads/fi2;->a:Lyads/cy1;

    iget-object p0, p0, Lyads/fi2;->b:Lyads/jp0;

    invoke-static {v0, p0}, Lyads/oi2;->a(Landroidx/recyclerview/widget/RecyclerView;Lyads/jp0;)I

    move-result p0

    return p0
.end method

.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lyads/fi2;->a:Lyads/cy1;

    invoke-static {v0}, Lyads/oi2;->a(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result v0

    if-ltz p1, :cond_1

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lyads/fi2;->a:Lyads/cy1;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lyads/ei2;

    invoke-direct {v1, v0}, Lyads/ei2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    iget-object p0, p0, Lyads/fi2;->a:Lyads/cy1;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(ILyads/g12;Z)V
    .locals 1

    .line 38
    iget-object v0, p0, Lyads/fi2;->a:Lyads/cy1;

    .line 39
    iget-object p0, p0, Lyads/fi2;->c:Landroid/util/DisplayMetrics;

    .line 40
    invoke-static {v0, p1, p2, p0, p3}, Lyads/oi2;->a(Landroidx/recyclerview/widget/RecyclerView;ILyads/g12;Landroid/util/DisplayMetrics;Z)V

    return-void
.end method

.method public final a(Z)V
    .locals 3

    .line 41
    iget-object v0, p0, Lyads/fi2;->a:Lyads/cy1;

    .line 42
    iget-object p0, p0, Lyads/fi2;->c:Landroid/util/DisplayMetrics;

    .line 43
    invoke-static {v0}, Lyads/oi2;->b(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result v1

    sget-object v2, Lyads/g12;->g:Lyads/g12;

    invoke-static {v0, v1, v2, p0, p1}, Lyads/oi2;->a(Landroidx/recyclerview/widget/RecyclerView;ILyads/g12;Landroid/util/DisplayMetrics;Z)V

    return-void
.end method

.method public final b()I
    .locals 0

    .line 17
    iget-object p0, p0, Lyads/fi2;->a:Lyads/cy1;

    invoke-static {p0}, Lyads/oi2;->a(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result p0

    return p0
.end method

.method public final b(I)V
    .locals 1

    iget-object v0, p0, Lyads/fi2;->a:Lyads/cy1;

    invoke-static {v0}, Lyads/oi2;->a(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result v0

    if-ltz p1, :cond_1

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lyads/fi2;->a:Lyads/cy1;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final c()Landroid/util/DisplayMetrics;
    .locals 0

    iget-object p0, p0, Lyads/fi2;->c:Landroid/util/DisplayMetrics;

    return-object p0
.end method

.method public final d()I
    .locals 3

    iget-object p0, p0, Lyads/fi2;->a:Lyads/cy1;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_1
    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result p0

    return p0

    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result p0

    return p0
.end method

.method public final e()I
    .locals 0

    iget-object p0, p0, Lyads/fi2;->a:Lyads/cy1;

    invoke-static {p0}, Lyads/oi2;->b(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result p0

    return p0
.end method
