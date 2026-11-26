.class public final Lhp6;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lip6;",
        "Lcom/warefly/checkscan/databinding/ItemRvPromoSelectCardTagsBinding;",
        ">;"
    }
.end annotation


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lip6;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/databinding/ItemRvPromoSelectCardTagsBinding;

    check-cast p2, Lip6;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvPromoSelectCardTagsBinding;->rvTags:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    instance-of p1, p0, Leu1;

    if-eqz p1, :cond_0

    check-cast p0, Leu1;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    iget-object p1, p2, Lip6;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Leu1;->submitList(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public final j(Landroidx/viewbinding/ViewBinding;)V
    .locals 5

    check-cast p1, Lcom/warefly/checkscan/databinding/ItemRvPromoSelectCardTagsBinding;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvPromoSelectCardTagsBinding;->rvTags:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Leu1;

    new-instance v1, Ldp6;

    sget-object v2, Lcp6;->c:Lcp6;

    invoke-direct {v1, v2}, Lvd9;-><init>(Ldm3;)V

    const/4 v2, 0x1

    new-array v3, v2, [Lil2;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-direct {v0, v3}, Leu1;-><init>([Lil2;)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvPromoSelectCardTagsBinding;->rvTags:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemRvPromoSelectCardTagsBinding;->getRoot()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->C(I)V

    invoke-virtual {v0, v4}, Lcom/google/android/flexbox/FlexboxLayoutManager;->A(I)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvPromoSelectCardTagsBinding;->rvTags:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p1, Lgp6;

    invoke-direct {p1}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method
