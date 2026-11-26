.class public final Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsFragment;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment<",
        "Lcom/warefly/checkscan/databinding/FragmentNewSearchProductsBinding;",
        ">;",
        "Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsView;"
    }
.end annotation


# static fields
.field public static final synthetic l:[Lze4;
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

.field public h:Lcom/warefly/checkscan/ui/SearchBar;

.field public i:Leu1;

.field public j:Leu1;

.field public k:Leu1;

.field public presenter:Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/databinding/FragmentNewSearchProductsBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsFragment;->l:[Lze4;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;-><init>()V

    const v0, 0x7f0d00cd

    iput v0, p0, Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsFragment;->f:I

    new-instance v0, Lol4;

    const-class v1, Lcom/warefly/checkscan/databinding/FragmentNewSearchProductsBinding;

    invoke-direct {v0, v1}, Lol4;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsFragment;->g:Lol4;

    return-void
.end method


# virtual methods
.method public final allProductInChequeLoaded()V
    .locals 0

    return-void
.end method

.method public final hidePopularCategory()V
    .locals 1

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsFragment;->n()Lcom/warefly/checkscan/databinding/FragmentNewSearchProductsBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentNewSearchProductsBinding;->rvChips:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final hideProducts()V
    .locals 2

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsFragment;->n()Lcom/warefly/checkscan/databinding/FragmentNewSearchProductsBinding;

    move-result-object p0

    iget-object v0, p0, Lcom/warefly/checkscan/databinding/FragmentNewSearchProductsBinding;->tvHeaderProductInCheque:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentNewSearchProductsBinding;->rvProducts:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final hideShops()V
    .locals 2

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsFragment;->n()Lcom/warefly/checkscan/databinding/FragmentNewSearchProductsBinding;

    move-result-object p0

    iget-object v0, p0, Lcom/warefly/checkscan/databinding/FragmentNewSearchProductsBinding;->tvHeaderShopInCheque:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentNewSearchProductsBinding;->rvShops:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final i()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsFragment;->f:I

    return p0
.end method

.method public final n()Lcom/warefly/checkscan/databinding/FragmentNewSearchProductsBinding;
    .locals 2

    sget-object v0, Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsFragment;->l:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsFragment;->g:Lol4;

    invoke-virtual {v1, p0, v0}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/databinding/FragmentNewSearchProductsBinding;

    return-object p0
.end method

.method public final o()Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsFragment;->presenter:Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "presenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onDestroyView()V
    .locals 2

    invoke-super {p0}, Lfh5;->onDestroyView()V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsFragment;->h:Lcom/warefly/checkscan/ui/SearchBar;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/warefly/checkscan/ui/SearchBar;->setOnQueryTextChangedListener(Lcom/warefly/checkscan/ui/SearchBar$c;)V

    const-string v0, ""

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/warefly/checkscan/ui/SearchBar;->setQuerySequence(Ljava/lang/CharSequence;Z)V

    :cond_0
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 22

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super/range {p0 .. p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsFragment;->n()Lcom/warefly/checkscan/databinding/FragmentNewSearchProductsBinding;

    move-result-object v1

    iget-object v2, v1, Lcom/warefly/checkscan/databinding/FragmentNewSearchProductsBinding;->toolbarSearch:Lcom/warefly/checkscan/databinding/ToolbarSearchNewBinding;

    iget-object v2, v2, Lcom/warefly/checkscan/databinding/ToolbarSearchNewBinding;->searchBar:Lcom/warefly/checkscan/ui/SearchBar;

    iput-object v2, v0, Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsFragment;->h:Lcom/warefly/checkscan/ui/SearchBar;

    if-eqz v2, :cond_0

    new-instance v3, Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsFragment$a;

    invoke-direct {v3, v0, v2}, Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsFragment$a;-><init>(Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsFragment;Lcom/warefly/checkscan/ui/SearchBar;)V

    invoke-virtual {v2, v3}, Lcom/warefly/checkscan/ui/SearchBar;->setOnQueryTextChangedListener(Lcom/warefly/checkscan/ui/SearchBar$c;)V

    sget-object v3, Lcom/warefly/checkscan/CheckScanApplication;->c:Landroid/content/Context;

    invoke-static {}, Lcom/warefly/checkscan/CheckScanApplication$a;->a()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f1405b5

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/warefly/checkscan/ui/SearchBar;->setQueryHint(Ljava/lang/String;)V

    :cond_0
    iget-object v2, v1, Lcom/warefly/checkscan/databinding/FragmentNewSearchProductsBinding;->toolbarSearch:Lcom/warefly/checkscan/databinding/ToolbarSearchNewBinding;

    iget-object v2, v2, Lcom/warefly/checkscan/databinding/ToolbarSearchNewBinding;->btnCancel:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Llb7;

    new-instance v4, Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsFragment$b;

    invoke-direct {v4, v0}, Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsFragment$b;-><init>(Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsFragment;)V

    invoke-direct {v3, v4}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->B(I)V

    invoke-virtual {v2, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->D(I)V

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsFragment;->n()Lcom/warefly/checkscan/databinding/FragmentNewSearchProductsBinding;

    move-result-object v4

    iget-object v4, v4, Lcom/warefly/checkscan/databinding/FragmentNewSearchProductsBinding;->rvChips:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v2, Leu1;

    new-instance v5, Lli1;

    new-instance v6, Loa;

    const/4 v7, 0x1

    invoke-direct {v6, v0, v7}, Loa;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v5, v6}, Lli1;-><init>(Lnl3;)V

    new-array v6, v7, [Lil2;

    aput-object v5, v6, v3

    invoke-direct {v2, v6}, Leu1;-><init>([Lil2;)V

    iput-object v2, v0, Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsFragment;->k:Leu1;

    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsFragment;->n()Lcom/warefly/checkscan/databinding/FragmentNewSearchProductsBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/warefly/checkscan/databinding/FragmentNewSearchProductsBinding;->rvProducts:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Leu1;

    new-instance v5, Ldv3;

    invoke-direct {v5}, Ldv3;-><init>()V

    new-instance v6, Lvi6;

    new-instance v8, Lin5;

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsFragment;->o()Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter;

    move-result-object v10

    const-string v13, "onProductInChequeClick(I)V"

    const/4 v14, 0x0

    const/4 v9, 0x1

    const-class v18, Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter;

    const-string v12, "onProductInChequeClick"

    move-object/from16 v11, v18

    invoke-direct/range {v8 .. v14}, Lqm3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v6, v8}, Lvi6;-><init>(Lnl3;)V

    new-instance v8, Lid1;

    new-instance v15, Ljn5;

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsFragment;->o()Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter;

    move-result-object v17

    const-string v20, "onChequeClick(I)V"

    const/16 v21, 0x0

    const/16 v16, 0x1

    const-string v19, "onChequeClick"

    invoke-direct/range {v15 .. v21}, Lqm3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v8, v15}, Lid1;-><init>(Lnl3;)V

    const/4 v9, 0x3

    new-array v10, v9, [Lil2;

    aput-object v5, v10, v3

    aput-object v6, v10, v7

    const/4 v5, 0x2

    aput-object v8, v10, v5

    invoke-direct {v4, v10}, Leu1;-><init>([Lil2;)V

    iput-object v4, v0, Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsFragment;->i:Leu1;

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v4, Li16;

    const/16 v6, 0xa

    invoke-static {v6}, Lpl2;->o(I)I

    move-result v8

    invoke-direct {v4, v8}, Li16;-><init>(I)V

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsFragment;->n()Lcom/warefly/checkscan/databinding/FragmentNewSearchProductsBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/warefly/checkscan/databinding/FragmentNewSearchProductsBinding;->rvShops:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Leu1;

    new-instance v8, Ldv3;

    invoke-direct {v8}, Ldv3;-><init>()V

    new-instance v10, Lvi6;

    new-instance v15, Lkn5;

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsFragment;->o()Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter;

    move-result-object v17

    const-string v20, "onProductInChequeClick(I)V"

    const-string v19, "onProductInChequeClick"

    invoke-direct/range {v15 .. v21}, Lqm3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v10, v15}, Lvi6;-><init>(Lnl3;)V

    new-instance v11, Lid1;

    new-instance v15, Lln5;

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsFragment;->o()Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter;

    move-result-object v17

    const-string v20, "onChequeClick(I)V"

    const-string v19, "onChequeClick"

    invoke-direct/range {v15 .. v21}, Lqm3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v11, v15}, Lid1;-><init>(Lnl3;)V

    new-array v9, v9, [Lil2;

    aput-object v8, v9, v3

    aput-object v10, v9, v7

    aput-object v11, v9, v5

    invoke-direct {v4, v9}, Leu1;-><init>([Lil2;)V

    iput-object v4, v0, Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsFragment;->j:Leu1;

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v3, Li16;

    invoke-static {v6}, Lpl2;->o(I)I

    move-result v4

    invoke-direct {v3, v4}, Li16;-><init>(I)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object v1, v1, Lcom/warefly/checkscan/databinding/FragmentNewSearchProductsBinding;->smartNested:Lcom/warefly/checkscan/core/ui/SmartNestedScrollView;

    new-instance v2, Lc21;

    invoke-direct {v2, v0, v5}, Lc21;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroidx/core/widget/NestedScrollView;->setOnScrollChangeListener(Landroidx/core/widget/NestedScrollView$OnScrollChangeListener;)V

    return-void
.end method

.method public final providePresenter()Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter;
    .locals 6

    new-instance v0, Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v1

    const-class v2, Lp61;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp61;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v2

    const-class v4, Lxd1;

    invoke-static {v4, v2, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lxd1;

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->j()Lba8;

    move-result-object v4

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object p0

    const-class v5, Luf3;

    invoke-static {v5, p0, v4, v3}, Ln2;->c(Ljava/lang/Class;Lze7;Lba8;Li36;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Luf3;

    invoke-direct {v0, v1, v2, p0}, Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter;-><init>(Lp61;Lxd1;Luf3;)V

    return-object v0
.end method

.method public final setItemFromChip(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsFragment;->h:Lcom/warefly/checkscan/ui/SearchBar;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/warefly/checkscan/ui/SearchBar;->setQuerySequence(Ljava/lang/CharSequence;Z)V

    :cond_0
    return-void
.end method

.method public final showChips(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsFragment;->k:Leu1;

    if-eqz p0, :cond_1

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lla8;

    invoke-direct {v2, v1}, Lla8;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Leu1;->submitList(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public final showLoading(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsFragment;->n()Lcom/warefly/checkscan/databinding/FragmentNewSearchProductsBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentNewSearchProductsBinding;->pbLoading:Landroid/widget/ProgressBar;

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

.method public final showProducts(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lfn5;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsFragment;->n()Lcom/warefly/checkscan/databinding/FragmentNewSearchProductsBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/FragmentNewSearchProductsBinding;->rvChips:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/FragmentNewSearchProductsBinding;->smartNested:Lcom/warefly/checkscan/core/ui/SmartNestedScrollView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/FragmentNewSearchProductsBinding;->tvHeaderProductInCheque:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentNewSearchProductsBinding;->rvProducts:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsFragment;->i:Leu1;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Leu1;->submitList(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final showShopInCheques(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lfn5;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsFragment;->n()Lcom/warefly/checkscan/databinding/FragmentNewSearchProductsBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/FragmentNewSearchProductsBinding;->tvHeaderShopInCheque:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentNewSearchProductsBinding;->rvShops:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsFragment;->j:Leu1;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Leu1;->submitList(Ljava/util/List;)V

    :cond_0
    return-void
.end method
