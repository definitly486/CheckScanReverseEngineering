.class public final Lyads/vs1;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "SourceFile"


# instance fields
.field public final a:Lyads/vr1;

.field public final b:Lyads/tt;

.field public final c:Landroidx/recyclerview/widget/RecyclerView;

.field public final d:Lyads/et1;

.field public e:I

.field public final f:Lyads/vq0;

.field public final g:I

.field public h:I


# direct methods
.method public constructor <init>(Lyads/ur1;Lyads/vr1;Lyads/tt;Landroidx/recyclerview/widget/RecyclerView;Lyads/et1;)V
    .locals 0

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    iput-object p2, p0, Lyads/vs1;->a:Lyads/vr1;

    iput-object p3, p0, Lyads/vs1;->b:Lyads/tt;

    iput-object p4, p0, Lyads/vs1;->c:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p5, p0, Lyads/vs1;->d:Lyads/et1;

    const/4 p1, -0x1

    iput p1, p0, Lyads/vs1;->e:I

    iget-object p1, p3, Lyads/tt;->a:Lyads/vq0;

    iput-object p1, p0, Lyads/vs1;->f:Lyads/vq0;

    iget-object p1, p1, Lyads/vq0;->G:Lyads/ph2;

    invoke-interface {p1}, Lyads/ph2;->b()I

    move-result p1

    iput p1, p0, Lyads/vs1;->g:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    iget-object v0, p0, Lyads/vs1;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lzo7;

    move-result-object v0

    invoke-interface {v0}, Lzo7;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lyads/vs1;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    goto :goto_2

    :cond_0
    iget-object v3, p0, Lyads/vs1;->a:Lyads/vr1;

    invoke-virtual {v3, v2}, Lyads/vr1;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/cn1;

    iget-object v3, p0, Lyads/vs1;->f:Lyads/vq0;

    iget-object v3, v3, Lyads/vq0;->n:Lyads/nq0;

    iget-object v3, v3, Lyads/nq0;->I:Lcl4;

    invoke-interface {v3}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/bj2;

    iget-object v4, p0, Lyads/vs1;->b:Lyads/tt;

    iget-object v5, v2, Lyads/cn1;->b:Lyads/fs2;

    iget-object v6, v4, Lyads/tt;->b:Lyads/fs2;

    invoke-static {v6, v5}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    new-instance v6, Lyads/tt;

    iget-object v4, v4, Lyads/tt;->a:Lyads/vq0;

    invoke-direct {v6, v4, v5}, Lyads/tt;-><init>(Lyads/vq0;Lyads/fs2;)V

    move-object v4, v6

    :goto_1
    iget-object v2, v2, Lyads/cn1;->a:Lyads/br0;

    invoke-virtual {v3, v4, v1, v2}, Lyads/bj2;->b(Lyads/tt;Landroid/view/View;Lyads/br0;)V

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lyads/vs1;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lzo7;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Lzo7;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    if-ltz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lu96;->n()V

    const/4 p0, 0x0

    throw p0

    :cond_1
    if-lez v1, :cond_2

    invoke-virtual {p0}, Lyads/vs1;->a()V

    return-void

    :cond_2
    iget-object v0, p0, Lyads/vs1;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lyads/oh6;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lyads/vs1;->a()V

    return-void

    :cond_3
    new-instance v1, Lyads/us1;

    invoke-direct {v1, p0}, Lyads/us1;-><init>(Lyads/vs1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public final onPageScrollStateChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrollStateChanged(I)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lyads/vs1;->b()V

    :cond_0
    return-void
.end method

.method public final onPageScrolled(IFI)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrolled(IFI)V

    iget p1, p0, Lyads/vs1;->g:I

    const/4 p2, 0x0

    if-lez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lyads/vs1;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, p2

    :goto_0
    div-int/lit8 p1, p1, 0x14

    :goto_1
    iget v0, p0, Lyads/vs1;->h:I

    add-int/2addr v0, p3

    iput v0, p0, Lyads/vs1;->h:I

    if-le v0, p1, :cond_2

    iput p2, p0, Lyads/vs1;->h:I

    invoke-virtual {p0}, Lyads/vs1;->b()V

    :cond_2
    return-void
.end method

.method public final onPageSelected(I)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    invoke-virtual {p0}, Lyads/vs1;->b()V

    iget v0, p0, Lyads/vs1;->e:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lyads/vs1;->f:Lyads/vq0;

    iget-object v2, p0, Lyads/vs1;->d:Lyads/et1;

    iget-object v0, v0, Lyads/vq0;->w:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v2}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/br0;

    :cond_1
    if-ne p1, v1, :cond_2

    iput p1, p0, Lyads/vs1;->e:I

    return-void

    :cond_2
    iget v0, p0, Lyads/vs1;->e:I

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lyads/vs1;->f:Lyads/vq0;

    iget-object v0, v0, Lyads/vq0;->n:Lyads/nq0;

    iget-object v0, v0, Lyads/nq0;->c:Lyads/c81;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lyads/vs1;->a:Lyads/vr1;

    invoke-virtual {v0, p1}, Lyads/vr1;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/cn1;

    iget-object v0, v0, Lyads/cn1;->b:Lyads/fs2;

    :cond_3
    iget-object v0, p0, Lyads/vs1;->a:Lyads/vr1;

    invoke-virtual {v0, p1}, Lyads/vr1;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/cn1;

    iget-object v0, v0, Lyads/cn1;->a:Lyads/br0;

    invoke-virtual {v0}, Lyads/br0;->a()Lyads/p41;

    move-result-object v1

    invoke-static {v1}, Lyads/jf2;->a(Lyads/p41;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lyads/vs1;->f:Lyads/vq0;

    iget-object v2, p0, Lyads/vs1;->d:Lyads/et1;

    iget-object v1, v1, Lyads/vq0;->w:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v2, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iput p1, p0, Lyads/vs1;->e:I

    return-void
.end method
