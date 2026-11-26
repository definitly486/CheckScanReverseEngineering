.class public final Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchFragment;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment<",
        "Lcom/warefly/checkscan/databinding/FragmentBonusesSearchNewBinding;",
        ">;",
        "Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchView;"
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

.field public final h:Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchFragment$b;

.field public i:Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;

.field public j:Li58;

.field public k:Leu1;

.field public presenter:Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/databinding/FragmentBonusesSearchNewBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchFragment;->l:[Lze4;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;-><init>()V

    const v0, 0x7f0d00ad

    iput v0, p0, Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchFragment;->f:I

    new-instance v0, Lol4;

    const-class v1, Lcom/warefly/checkscan/databinding/FragmentBonusesSearchNewBinding;

    invoke-direct {v0, v1}, Lol4;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchFragment;->g:Lol4;

    new-instance v0, Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchFragment$b;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchFragment$b;-><init>(Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchFragment;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchFragment;->h:Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchFragment$b;

    return-void
.end method


# virtual methods
.method public final i()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchFragment;->f:I

    return p0
.end method

.method public final k()Z
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchFragment;->o()Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter;->onBackPressed()V

    const/4 p0, 0x0

    return p0
.end method

.method public final n()Lcom/warefly/checkscan/databinding/FragmentBonusesSearchNewBinding;
    .locals 2

    sget-object v0, Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchFragment;->l:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchFragment;->g:Lol4;

    invoke-virtual {v1, p0, v0}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/databinding/FragmentBonusesSearchNewBinding;

    return-object p0
.end method

.method public final o()Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchFragment;->presenter:Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "presenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 25

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super/range {p0 .. p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchFragment;->n()Lcom/warefly/checkscan/databinding/FragmentBonusesSearchNewBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/warefly/checkscan/databinding/FragmentBonusesSearchNewBinding;->rvContent:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x6

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    new-instance v3, Lur0;

    invoke-direct {v3, v0}, Lur0;-><init>(Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchFragment;)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v2, Li58;

    new-instance v3, Lvv7;

    iget-object v7, v0, Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchFragment;->k:Leu1;

    const/4 v8, 0x2

    if-nez v7, :cond_0

    new-instance v7, Leu1;

    new-instance v9, Lli1;

    new-instance v10, Lsr0;

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchFragment;->o()Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter;

    move-result-object v12

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v11, 0x1

    const-class v13, Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter;

    const-string v14, "onChipClick"

    const-string v15, "onChipClick(Ljava/lang/String;)V"

    invoke-direct/range {v10 .. v17}, Lsr0;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-direct {v9, v10}, Lli1;-><init>(Lnl3;)V

    new-instance v10, Loi1;

    new-instance v18, Ltr0;

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchFragment;->o()Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter;

    move-result-object v20

    const-string v23, "onBackClick()V"

    const/16 v24, 0x0

    const/16 v19, 0x0

    const-string v22, "onBackClick"

    move-object/from16 v21, v13

    invoke-direct/range {v18 .. v24}, Lqm3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v11, v18

    invoke-direct {v10, v11}, Loi1;-><init>(Ltr0;)V

    new-array v11, v8, [Lil2;

    aput-object v9, v11, v6

    aput-object v10, v11, v5

    invoke-direct {v7, v11}, Leu1;-><init>([Lil2;)V

    iput-object v7, v0, Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchFragment;->k:Leu1;

    :cond_0
    invoke-direct {v3, v7}, Lvv7;-><init>(Leu1;)V

    new-instance v7, Lgv7;

    invoke-direct {v7}, Lgv7;-><init>()V

    new-instance v9, Ldq6;

    new-instance v10, Lvr0;

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchFragment;->o()Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter;

    move-result-object v12

    const-string v15, "onFavoritePromocode(IZ)V"

    const/16 v16, 0x0

    const/4 v11, 0x2

    const-class v20, Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter;

    const-string v14, "onFavoritePromocode"

    move-object/from16 v13, v20

    invoke-direct/range {v10 .. v16}, Lqm3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v17, Lwr0;

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchFragment;->o()Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter;

    move-result-object v19

    const-string v22, "onPromocodeClicked(I)V"

    const/16 v23, 0x0

    const/16 v18, 0x1

    const-string v21, "onPromocodeClicked"

    invoke-direct/range {v17 .. v23}, Lqm3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v11, v17

    invoke-direct {v9, v10, v11}, Ldq6;-><init>(Lbm3;Lnl3;)V

    new-instance v10, Ldv7;

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchFragment;->o()Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter;

    move-result-object v11

    invoke-direct {v10, v11}, Ldv7;-><init>(Lbv7;)V

    new-instance v11, Ldw7;

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchFragment;->o()Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter;

    move-result-object v12

    invoke-direct {v11, v12}, Ldw7;-><init>(Lbv7;)V

    new-instance v12, Lwv7;

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchFragment;->o()Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter;

    move-result-object v13

    invoke-direct {v12, v13}, Lwv7;-><init>(Liv7;)V

    new-instance v13, Lzv7;

    new-instance v17, Lxr0;

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchFragment;->o()Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter;

    move-result-object v19

    const-string v22, "onShopClick(I)V"

    const-string v21, "onShopClick"

    invoke-direct/range {v17 .. v23}, Lqm3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v14, v17

    invoke-direct {v13, v14}, Lzv7;-><init>(Lxr0;)V

    new-instance v14, Lbw7;

    new-instance v17, Lyr0;

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchFragment;->o()Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter;

    move-result-object v19

    const-string v22, "onShopClick(I)V"

    const-string v21, "onShopClick"

    invoke-direct/range {v17 .. v23}, Lqm3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v15, v17

    invoke-direct {v14, v15}, Lbw7;-><init>(Lyr0;)V

    new-instance v15, Lx72;

    move/from16 p1, v4

    sget-object v4, Lev7;->c:Lev7;

    invoke-direct {v15, v4, v5}, Lx72;-><init>(Ldm3;I)V

    const/16 v4, 0x9

    move/from16 p2, v5

    new-array v5, v4, [Lil2;

    aput-object v3, v5, v6

    aput-object v7, v5, p2

    aput-object v9, v5, v8

    const/4 v3, 0x3

    aput-object v10, v5, v3

    const/4 v3, 0x4

    aput-object v11, v5, v3

    const/4 v3, 0x5

    aput-object v12, v5, v3

    aput-object v13, v5, p1

    const/4 v3, 0x7

    aput-object v14, v5, v3

    const/16 v3, 0x8

    aput-object v15, v5, v3

    invoke-direct {v2, v5}, Li58;-><init>([Lil2;)V

    iput-object v2, v0, Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchFragment;->j:Li58;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    new-instance v2, Lzr0;

    invoke-direct {v2, v0}, Lzr0;-><init>(Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchFragment;)V

    new-instance v3, Lew5;

    invoke-direct {v3, v1, v4, v2}, Lew5;-><init>(Landroidx/recyclerview/widget/RecyclerView;ILll3;)V

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchFragment;->n()Lcom/warefly/checkscan/databinding/FragmentBonusesSearchNewBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/warefly/checkscan/databinding/FragmentBonusesSearchNewBinding;->btnCancel:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Llb7;

    new-instance v3, Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchFragment$a;

    invoke-direct {v3, v0}, Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchFragment$a;-><init>(Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchFragment;)V

    invoke-direct {v2, v3}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final onViewStateRestored(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchFragment;->n()Lcom/warefly/checkscan/databinding/FragmentBonusesSearchNewBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/FragmentBonusesSearchNewBinding;->searchView:Landroidx/appcompat/widget/SearchView;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchFragment;->h:Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchFragment$b;

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    return-void
.end method

.method public final providePresenter()Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter;
    .locals 4

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->j()Lba8;

    move-result-object v0

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v1

    const-class v2, Luf3;

    const/4 v3, 0x0

    invoke-static {v2, v1, v0, v3}, Ln2;->c(Ljava/lang/Class;Lze7;Lba8;Li36;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luf3;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object p0

    const-class v1, Llp0;

    invoke-static {v1, p0, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Llp0;

    new-instance v1, Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter;

    invoke-direct {v1, p0, v0}, Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter;-><init>(Llp0;Luf3;)V

    return-object v1
.end method

.method public final setQueryInSearchView(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchFragment;->n()Lcom/warefly/checkscan/databinding/FragmentBonusesSearchNewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentBonusesSearchNewBinding;->searchView:Landroidx/appcompat/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchFragment;->h:Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchFragment$b;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    return-void
.end method

.method public final setSearchView()V
    .locals 4

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchFragment;->n()Lcom/warefly/checkscan/databinding/FragmentBonusesSearchNewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentBonusesSearchNewBinding;->searchView:Landroidx/appcompat/widget/SearchView;

    sget v1, Landroidx/appcompat/R$id;->search_close_btn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Llb7;

    new-instance v3, Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchFragment$c;

    invoke-direct {v3, p0}, Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchFragment$c;-><init>(Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchFragment;)V

    invoke-direct {v2, v3}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView;->onActionViewExpanded()V

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchFragment;->h:Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchFragment$b;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    new-instance v1, Lrr0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lrr0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final showContent(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcs0;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchFragment;->j:Li58;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Li58;->submitList(Ljava/util/List;)V

    :cond_0
    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchFragment;->n()Lcom/warefly/checkscan/databinding/FragmentBonusesSearchNewBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/FragmentBonusesSearchNewBinding;->rvContent:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecorationAt(I)V

    :cond_1
    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchFragment;->j:Li58;

    const/high16 v2, -0x80000000

    if-eqz v0, :cond_2

    iget-object v0, v0, Li58;->i:Lm8;

    const-class v3, Lxu7;

    invoke-virtual {v0, v3}, Lm8;->d(Ljava/lang/Class;)I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchFragment;->j:Li58;

    if-eqz p0, :cond_3

    iget-object p0, p0, Li58;->i:Lm8;

    const-class v2, Lyu7;

    invoke-virtual {p0, v2}, Lm8;->d(Ljava/lang/Class;)I

    move-result v2

    :cond_3
    filled-new-array {v0, v2}, [I

    move-result-object p0

    new-instance v0, Ley8;

    invoke-direct {v0, p0}, Ley8;-><init>([I)V

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;I)V

    return-void
.end method

.method public final showFavouriteStatusChanged(Z)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/warefly/checkscan/presentation/bonuses/behaviors/AddedToFavesDialog;

    invoke-direct {p1, p0, v0}, Lcom/warefly/checkscan/presentation/bonuses/behaviors/AddedToFavesDialog;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void

    :cond_0
    new-instance p1, Lcom/warefly/checkscan/presentation/bonuses/behaviors/RemovedFromFavesDialog;

    invoke-direct {p1, p0, v0}, Lcom/warefly/checkscan/presentation/bonuses/behaviors/RemovedFromFavesDialog;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method public final showOrdBottomSheet(Lb06;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchFragment;->i:Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;

    invoke-direct {v1, v0, p1}, Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;-><init>(Landroid/content/Context;Lb06;)V

    iput-object v1, p0, Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchFragment;->i:Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method
