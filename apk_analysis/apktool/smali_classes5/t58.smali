.class public final Lt58;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lv58;",
        "Lcom/warefly/checkscan/bonuses/databinding/ItemRvSpecialsBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;

.field public final c:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field public final d:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

.field public final e:Lbk1;

.field public final f:Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;

.field public final g:I

.field public final h:Lxq0;

.field public i:Lcom/warefly/checkscan/core/ui/infinityScrolling/HorizontalCarouselRecyclerViewNew;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;Lbk1;Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;ILxq0;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lr58;->c:Lr58;

    invoke-direct {p0, v0}, Lvd9;-><init>(Ldm3;)V

    iput-object p1, p0, Lt58;->b:Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;

    iput-object p2, p0, Lt58;->c:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    iput-object p3, p0, Lt58;->d:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    iput-object p4, p0, Lt58;->e:Lbk1;

    iput-object p5, p0, Lt58;->f:Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;

    iput p6, p0, Lt58;->g:I

    iput-object p7, p0, Lt58;->h:Lxq0;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lv58;

    return p0
.end method

.method public final h(Landroidx/viewbinding/ViewBinding;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/bonuses/databinding/ItemRvSpecialsBinding;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lt58;->f:Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lz44;->enableScroll(Z)V

    return-void
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/warefly/checkscan/bonuses/databinding/ItemRvSpecialsBinding;

    check-cast p2, Lv58;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/warefly/checkscan/bonuses/databinding/ItemRvSpecialsBinding;->rvSpecials:Lcom/warefly/checkscan/core/ui/infinityScrolling/HorizontalCarouselRecyclerViewNew;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v1, v0, Ll58;

    if-eqz v1, :cond_0

    check-cast v0, Ll58;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object p2, p2, Lv58;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/ListAdapter;->submitList(Ljava/util/List;)V

    :cond_1
    iget-object p1, p1, Lcom/warefly/checkscan/bonuses/databinding/ItemRvSpecialsBinding;->rvSpecials:Lcom/warefly/checkscan/core/ui/infinityScrolling/HorizontalCarouselRecyclerViewNew;

    iput-object p1, p0, Lt58;->i:Lcom/warefly/checkscan/core/ui/infinityScrolling/HorizontalCarouselRecyclerViewNew;

    return-void
.end method

.method public final j(Landroidx/viewbinding/ViewBinding;)V
    .locals 3

    check-cast p1, Lcom/warefly/checkscan/bonuses/databinding/ItemRvSpecialsBinding;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/warefly/checkscan/bonuses/databinding/ItemRvSpecialsBinding;->rvSpecials:Lcom/warefly/checkscan/core/ui/infinityScrolling/HorizontalCarouselRecyclerViewNew;

    new-instance v0, Ll58;

    iget-object v1, p0, Lt58;->b:Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;

    invoke-direct {v0, v1}, Ll58;-><init>(Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v0, Lcom/warefly/checkscan/bonuses/presentation/layoutManager/ProminentLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/warefly/checkscan/bonuses/presentation/layoutManager/ProminentLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lt58;->c:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    iget-object v0, p0, Lt58;->d:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    iget-object v0, p0, Lt58;->e:Lbk1;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;I)V

    new-instance v0, Lrw3;

    const/16 v2, 0x8

    invoke-direct {v0, v2, v2, v1}, Lrw3;-><init>(III)V

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;I)V

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemViewCacheSize(I)V

    iget v0, p0, Lt58;->g:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    iget-object p0, p0, Lt58;->h:Lxq0;

    invoke-virtual {p0, p1}, Lxq0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final k(Landroidx/viewbinding/ViewBinding;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/bonuses/databinding/ItemRvSpecialsBinding;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lt58;->f:Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lz44;->enableScroll(Z)V

    return-void
.end method
