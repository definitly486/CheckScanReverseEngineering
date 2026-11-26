.class public final Lcom/warefly/checkscan/products/presentation/selections/view/SelectionsFragment;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/products/presentation/selections/view/SelectionsView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/products/presentation/selections/view/SelectionsFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment<",
        "Lcom/warefly/checkscan/products/databinding/FragmentSelectionsBinding;",
        ">;",
        "Lcom/warefly/checkscan/products/presentation/selections/view/SelectionsView;"
    }
.end annotation


# static fields
.field public static final i:Lcom/warefly/checkscan/products/presentation/selections/view/SelectionsFragment$a;

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

.field public h:Leu1;

.field public presenter:Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/products/presentation/selections/view/SelectionsFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/products/databinding/FragmentSelectionsBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/products/presentation/selections/view/SelectionsFragment;->j:[Lze4;

    new-instance v0, Lcom/warefly/checkscan/products/presentation/selections/view/SelectionsFragment$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/warefly/checkscan/products/presentation/selections/view/SelectionsFragment;->i:Lcom/warefly/checkscan/products/presentation/selections/view/SelectionsFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;-><init>()V

    const v0, 0x7f0d00f5

    iput v0, p0, Lcom/warefly/checkscan/products/presentation/selections/view/SelectionsFragment;->f:I

    new-instance v0, Lol4;

    const-class v1, Lcom/warefly/checkscan/products/databinding/FragmentSelectionsBinding;

    invoke-direct {v0, v1}, Lol4;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/warefly/checkscan/products/presentation/selections/view/SelectionsFragment;->g:Lol4;

    return-void
.end method


# virtual methods
.method public final i()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/products/presentation/selections/view/SelectionsFragment;->f:I

    return p0
.end method

.method public final n()Lcom/warefly/checkscan/products/databinding/FragmentSelectionsBinding;
    .locals 2

    sget-object v0, Lcom/warefly/checkscan/products/presentation/selections/view/SelectionsFragment;->j:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/warefly/checkscan/products/presentation/selections/view/SelectionsFragment;->g:Lol4;

    invoke-virtual {v1, p0, v0}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/products/databinding/FragmentSelectionsBinding;

    return-object p0
.end method

.method public final o()Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/products/presentation/selections/view/SelectionsFragment;->presenter:Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter;

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

    new-instance p0, Lkd$p0$a$d;

    const-string v0, "SelectionsOpened"

    invoke-direct {p0, v0}, Lkd$p0$a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lkd;->c()V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/products/presentation/selections/view/SelectionsFragment;->n()Lcom/warefly/checkscan/products/databinding/FragmentSelectionsBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/products/databinding/FragmentSelectionsBinding;->rvContent:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p2, v0, v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance p2, Leu1;

    new-instance v0, Lan;

    invoke-virtual {p0}, Lcom/warefly/checkscan/products/presentation/selections/view/SelectionsFragment;->o()Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter;

    move-result-object v3

    invoke-direct {v0, v3}, Lan;-><init>(Lan$b;)V

    new-instance v3, Lqa3;

    invoke-virtual {p0}, Lcom/warefly/checkscan/products/presentation/selections/view/SelectionsFragment;->o()Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter;

    move-result-object v4

    invoke-direct {v3, v4}, Lqa3;-><init>(Lia3$b;)V

    new-instance v4, Len7;

    invoke-virtual {p0}, Lcom/warefly/checkscan/products/presentation/selections/view/SelectionsFragment;->o()Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter;

    move-result-object v5

    invoke-direct {v4, v5}, Len7;-><init>(Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter;)V

    new-instance v5, Lup6;

    invoke-virtual {p0}, Lcom/warefly/checkscan/products/presentation/selections/view/SelectionsFragment;->o()Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter;

    move-result-object v6

    invoke-direct {v5, v6}, Lup6;-><init>(Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter;)V

    const/4 v6, 0x4

    new-array v6, v6, [Lil2;

    aput-object v0, v6, v2

    aput-object v3, v6, v1

    const/4 v0, 0x2

    aput-object v4, v6, v0

    const/4 v1, 0x3

    aput-object v5, v6, v1

    invoke-direct {p2, v6}, Leu1;-><init>([Lil2;)V

    iput-object p2, p0, Lcom/warefly/checkscan/products/presentation/selections/view/SelectionsFragment;->h:Leu1;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance p2, Lao7;

    invoke-direct {p2, p0}, Lao7;-><init>(Lcom/warefly/checkscan/products/presentation/selections/view/SelectionsFragment;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    new-instance p2, Lbo7;

    invoke-direct {p2, p0}, Lbo7;-><init>(Lcom/warefly/checkscan/products/presentation/selections/view/SelectionsFragment;)V

    new-instance v1, Lew5;

    const/16 v2, 0xf

    invoke-direct {v1, p1, v2, p2}, Lew5;-><init>(Landroidx/recyclerview/widget/RecyclerView;ILll3;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/products/presentation/selections/view/SelectionsFragment;->n()Lcom/warefly/checkscan/products/databinding/FragmentSelectionsBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/products/databinding/FragmentSelectionsBinding;->incldError:Lcom/warefly/checkscan/core/ui/databinding/LayoutSimpleTryAgainBinding;

    invoke-virtual {p1}, Lcom/warefly/checkscan/core/ui/databinding/LayoutSimpleTryAgainBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/products/presentation/selections/view/SelectionsFragment;->n()Lcom/warefly/checkscan/products/databinding/FragmentSelectionsBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/products/databinding/FragmentSelectionsBinding;->incldError:Lcom/warefly/checkscan/core/ui/databinding/LayoutSimpleTryAgainBinding;

    iget-object p1, p1, Lcom/warefly/checkscan/core/ui/databinding/LayoutSimpleTryAgainBinding;->btnTryAgain:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Llb7;

    new-instance v1, Lie1;

    invoke-direct {v1, p0, v0}, Lie1;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p2, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/products/presentation/selections/view/SelectionsFragment;->n()Lcom/warefly/checkscan/products/databinding/FragmentSelectionsBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/products/databinding/FragmentSelectionsBinding;->swipeToRefresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance p2, Ll3;

    const/4 v0, 0x5

    invoke-direct {p2, p0, v0}, Ll3;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    return-void
.end method

.method public final providePresenter()Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter;
    .locals 9

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v0

    const-class v1, Le83;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2, v2}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Le83;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v0

    const-class v1, Lf83;

    invoke-static {v1, v0, v2, v2}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lf83;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v0

    const-class v1, Ljf6;

    invoke-static {v1, v0, v2, v2}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljf6;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v0

    const-class v1, Lr86;

    invoke-static {v1, v0, v2, v2}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lr86;

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->h()Lba8;

    move-result-object v0

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object p0

    const-class v1, Luf3;

    invoke-static {v1, p0, v0, v2}, Ln2;->c(Ljava/lang/Class;Lze7;Lba8;Li36;)Ljava/lang/Object;

    move-result-object p0

    move-object v8, p0

    check-cast v8, Luf3;

    new-instance v3, Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter;

    invoke-direct/range {v3 .. v8}, Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter;-><init>(Lf83;Le83;Ljf6;Lr86;Luf3;)V

    return-object v3
.end method

.method public final showContent(Ljava/util/List;)V
    .locals 0
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

    iget-object p0, p0, Lcom/warefly/checkscan/products/presentation/selections/view/SelectionsFragment;->h:Leu1;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Leu1;->submitList(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final showError(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/products/presentation/selections/view/SelectionsFragment;->n()Lcom/warefly/checkscan/products/databinding/FragmentSelectionsBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/products/databinding/FragmentSelectionsBinding;->incldError:Lcom/warefly/checkscan/core/ui/databinding/LayoutSimpleTryAgainBinding;

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

    invoke-virtual {p0}, Lcom/warefly/checkscan/products/presentation/selections/view/SelectionsFragment;->n()Lcom/warefly/checkscan/products/databinding/FragmentSelectionsBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/products/databinding/FragmentSelectionsBinding;->incldLoading:Lcom/warefly/checkscan/core/ui/databinding/LayoutSpinnerLoadingBinding;

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

    invoke-virtual {p0}, Lcom/warefly/checkscan/products/presentation/selections/view/SelectionsFragment;->n()Lcom/warefly/checkscan/products/databinding/FragmentSelectionsBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/products/databinding/FragmentSelectionsBinding;->swipeToRefresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method
