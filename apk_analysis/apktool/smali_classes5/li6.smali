.class public final Lli6;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lli6$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lni6;",
        "Lcom/warefly/checkscan/products/databinding/ItemProductShopsBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lcom/warefly/checkscan/products/presentation/product/presenter/ProductPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/products/presentation/product/presenter/ProductPresenter;)V
    .locals 1

    sget-object v0, Lki6;->c:Lki6;

    invoke-direct {p0, v0}, Lvd9;-><init>(Ldm3;)V

    iput-object p1, p0, Lli6;->b:Lcom/warefly/checkscan/products/presentation/product/presenter/ProductPresenter;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lni6;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/warefly/checkscan/products/databinding/ItemProductShopsBinding;

    check-cast p2, Lni6;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/warefly/checkscan/products/databinding/ItemProductShopsBinding;->tvTitle:Landroid/widget/TextView;

    iget-object v1, p2, Lni6;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/warefly/checkscan/products/databinding/ItemProductShopsBinding;->rvShops:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v1, v0, Leu1;

    if-eqz v1, :cond_0

    check-cast v0, Leu1;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p2, Lni6;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Leu1;->submitList(Ljava/util/List;)V

    :cond_1
    iget-object v0, p1, Lcom/warefly/checkscan/products/databinding/ItemProductShopsBinding;->rvShops:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lfu4;

    invoke-direct {v1, p1, p2, p0}, Lfu4;-><init>(Lcom/warefly/checkscan/products/databinding/ItemProductShopsBinding;Lni6;Lli6;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p1, Lcom/warefly/checkscan/products/databinding/ItemProductShopsBinding;->btnCollapse:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lqo0;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p2, v2}, Lqo0;-><init>(Lvd9;Ljava/lang/Object;I)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final j(Landroidx/viewbinding/ViewBinding;)V
    .locals 5

    check-cast p1, Lcom/warefly/checkscan/products/databinding/ItemProductShopsBinding;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/warefly/checkscan/products/databinding/ItemProductShopsBinding;->rvShops:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Leu1;

    new-instance v2, Lii6;

    iget-object p0, p0, Lli6;->b:Lcom/warefly/checkscan/products/presentation/product/presenter/ProductPresenter;

    invoke-direct {v2, p0}, Lii6;-><init>(Lcom/warefly/checkscan/products/presentation/product/presenter/ProductPresenter;)V

    const/4 p0, 0x1

    new-array v3, p0, [Lil2;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-direct {v1, v3}, Leu1;-><init>([Lil2;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v1, Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-virtual {p1}, Lcom/warefly/checkscan/products/databinding/ItemProductShopsBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Lcom/google/android/flexbox/FlexboxLayoutManager;->B(I)V

    invoke-virtual {v1, p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->C(I)V

    invoke-virtual {v1, v4}, Lcom/google/android/flexbox/FlexboxLayoutManager;->D(I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance p0, Lmi6;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method
