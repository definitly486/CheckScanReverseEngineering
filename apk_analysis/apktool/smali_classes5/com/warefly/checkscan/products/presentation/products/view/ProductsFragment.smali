.class public final Lcom/warefly/checkscan/products/presentation/products/view/ProductsFragment;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/products/presentation/products/view/ProductsView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/products/presentation/products/view/ProductsFragment$a;,
        Lcom/warefly/checkscan/products/presentation/products/view/ProductsFragment$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment<",
        "Lcom/warefly/checkscan/products/databinding/FragmentProductsBinding;",
        ">;",
        "Lcom/warefly/checkscan/products/presentation/products/view/ProductsView;"
    }
.end annotation


# static fields
.field public static final i:Lcom/warefly/checkscan/products/presentation/products/view/ProductsFragment$a;

.field public static final synthetic j:[Lze4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lze4<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final f:I

.field public final g:Lol4;

.field public h:Li58;

.field public presenter:Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/products/presentation/products/view/ProductsFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/products/databinding/FragmentProductsBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/products/presentation/products/view/ProductsFragment;->j:[Lze4;

    new-instance v0, Lcom/warefly/checkscan/products/presentation/products/view/ProductsFragment$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/warefly/checkscan/products/presentation/products/view/ProductsFragment;->i:Lcom/warefly/checkscan/products/presentation/products/view/ProductsFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;-><init>()V

    const v0, 0x7f0d00e2

    iput v0, p0, Lcom/warefly/checkscan/products/presentation/products/view/ProductsFragment;->f:I

    new-instance v0, Lol4;

    const-class v1, Lcom/warefly/checkscan/products/databinding/FragmentProductsBinding;

    invoke-direct {v0, v1}, Lol4;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/warefly/checkscan/products/presentation/products/view/ProductsFragment;->g:Lol4;

    return-void
.end method


# virtual methods
.method public final i()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/products/presentation/products/view/ProductsFragment;->f:I

    return p0
.end method

.method public final n()Lcom/warefly/checkscan/products/databinding/FragmentProductsBinding;
    .locals 2

    sget-object v0, Lcom/warefly/checkscan/products/presentation/products/view/ProductsFragment;->j:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/warefly/checkscan/products/presentation/products/view/ProductsFragment;->g:Lol4;

    invoke-virtual {v1, p0, v0}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/products/databinding/FragmentProductsBinding;

    return-object p0
.end method

.method public final o()Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/products/presentation/products/view/ProductsFragment;->presenter:Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "presenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Lfh5;->onResume()V

    new-instance p0, Lkd$p0$a$b;

    const-string v0, "GoodsOpened"

    invoke-direct {p0, v0}, Lkd$p0$a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lkd;->c()V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/products/presentation/products/view/ProductsFragment;->n()Lcom/warefly/checkscan/products/databinding/FragmentProductsBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/products/databinding/FragmentProductsBinding;->rvContent:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    new-instance v0, Lcj6;

    invoke-direct {v0, p0}, Lcj6;-><init>(Lcom/warefly/checkscan/products/presentation/products/view/ProductsFragment;)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance p2, Li58;

    new-instance v0, Lan;

    invoke-virtual {p0}, Lcom/warefly/checkscan/products/presentation/products/view/ProductsFragment;->o()Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;

    move-result-object v2

    invoke-direct {v0, v2}, Lan;-><init>(Lan$b;)V

    new-instance v2, Lqa3;

    invoke-virtual {p0}, Lcom/warefly/checkscan/products/presentation/products/view/ProductsFragment;->o()Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;

    move-result-object v3

    invoke-direct {v2, v3}, Lqa3;-><init>(Lia3$b;)V

    new-instance v3, Lwg6;

    invoke-virtual {p0}, Lcom/warefly/checkscan/products/presentation/products/view/ProductsFragment;->o()Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;

    move-result-object v4

    invoke-direct {v3, v4}, Lwg6;-><init>(Lwg6$b;)V

    const/4 v4, 0x3

    new-array v4, v4, [Lil2;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v2, v4, v0

    aput-object v3, v4, v1

    invoke-direct {p2, v4}, Li58;-><init>([Lil2;)V

    iput-object p2, p0, Lcom/warefly/checkscan/products/presentation/products/view/ProductsFragment;->h:Li58;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    new-instance p2, Lbj6;

    invoke-direct {p2, p0}, Lbj6;-><init>(Lcom/warefly/checkscan/products/presentation/products/view/ProductsFragment;)V

    new-instance v1, Lew5;

    const/16 v2, 0xf

    invoke-direct {v1, p1, v2, p2}, Lew5;-><init>(Landroidx/recyclerview/widget/RecyclerView;ILll3;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/products/presentation/products/view/ProductsFragment;->n()Lcom/warefly/checkscan/products/databinding/FragmentProductsBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/products/databinding/FragmentProductsBinding;->incldError:Lcom/warefly/checkscan/core/ui/databinding/LayoutSimpleTryAgainBinding;

    invoke-virtual {p1}, Lcom/warefly/checkscan/core/ui/databinding/LayoutSimpleTryAgainBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/products/presentation/products/view/ProductsFragment;->n()Lcom/warefly/checkscan/products/databinding/FragmentProductsBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/products/databinding/FragmentProductsBinding;->incldError:Lcom/warefly/checkscan/core/ui/databinding/LayoutSimpleTryAgainBinding;

    iget-object p1, p1, Lcom/warefly/checkscan/core/ui/databinding/LayoutSimpleTryAgainBinding;->btnTryAgain:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Llb7;

    new-instance v1, Lmu4;

    invoke-direct {v1, p0, v0}, Lmu4;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p2, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/products/presentation/products/view/ProductsFragment;->n()Lcom/warefly/checkscan/products/databinding/FragmentProductsBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/products/databinding/FragmentProductsBinding;->swipeToRefresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance p2, Lvo0;

    invoke-direct {p2, p0}, Lvo0;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    return-void
.end method

.method public final providePresenter()Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;
    .locals 8

    new-instance v0, Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v1

    const-class v2, Lq73;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq73;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v2

    const-class v4, Lp73;

    invoke-static {v4, v2, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lp73;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v4

    const-class v5, Ljf6;

    invoke-static {v5, v4, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljf6;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v5

    const-class v6, Lr86;

    invoke-static {v6, v5, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lr86;

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->h()Lba8;

    move-result-object v6

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object p0

    const-class v7, Luf3;

    invoke-static {v7, p0, v6, v3}, Ln2;->c(Ljava/lang/Class;Lze7;Lba8;Li36;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Luf3;

    move-object v3, v4

    move-object v4, v5

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;-><init>(Lq73;Lp73;Ljf6;Lr86;Luf3;)V

    return-object v0
.end method

.method public final showContent(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lpz3;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/products/presentation/products/view/ProductsFragment;->h:Li58;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Li58;->submitList(Ljava/util/List;)V

    :cond_0
    invoke-virtual {p0}, Lcom/warefly/checkscan/products/presentation/products/view/ProductsFragment;->n()Lcom/warefly/checkscan/products/databinding/FragmentProductsBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/products/databinding/FragmentProductsBinding;->rvContent:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecorationAt(I)V

    :cond_1
    new-instance v0, Lcom/warefly/checkscan/products/presentation/products/view/ProductsFragment$b;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/products/presentation/products/view/ProductsFragment$b;-><init>(Lcom/warefly/checkscan/products/presentation/products/view/ProductsFragment;)V

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;I)V

    return-void
.end method

.method public final showError(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/products/presentation/products/view/ProductsFragment;->n()Lcom/warefly/checkscan/products/databinding/FragmentProductsBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/products/databinding/FragmentProductsBinding;->incldError:Lcom/warefly/checkscan/core/ui/databinding/LayoutSimpleTryAgainBinding;

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/databinding/LayoutSimpleTryAgainBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final showLoading(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/products/presentation/products/view/ProductsFragment;->n()Lcom/warefly/checkscan/products/databinding/FragmentProductsBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/products/databinding/FragmentProductsBinding;->incldLoading:Lcom/warefly/checkscan/core/ui/databinding/LayoutSpinnerLoadingBinding;

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/databinding/LayoutSpinnerLoadingBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final turnOffRefreshing()V
    .locals 1

    invoke-virtual {p0}, Lcom/warefly/checkscan/products/presentation/products/view/ProductsFragment;->n()Lcom/warefly/checkscan/products/databinding/FragmentProductsBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/products/databinding/FragmentProductsBinding;->swipeToRefresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method
