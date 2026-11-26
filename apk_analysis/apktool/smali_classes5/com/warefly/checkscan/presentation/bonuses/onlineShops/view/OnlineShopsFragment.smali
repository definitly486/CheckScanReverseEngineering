.class public final Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsFragment;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment<",
        "Lcom/warefly/checkscan/databinding/FragmentOnlineShopsNewBinding;",
        ">;",
        "Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsView;"
    }
.end annotation


# static fields
.field public static final synthetic p:[Lze4;
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

.field public final h:Landroidx/navigation/NavArgsLazy;

.field public i:Lcom/warefly/checkscan/presentation/bonuses/onlineShops/categoriesDialog/view/CategoriesDialog;

.field public j:Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;

.field public k:Leu1;

.field public l:Ls58;

.field public final m:Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsFragment$c;

.field public final n:Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsFragment$d;

.field public o:Leu1;

.field public presenter:Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/databinding/FragmentOnlineShopsNewBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsFragment;->p:[Lze4;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;-><init>()V

    const v0, 0x7f0d00d5

    iput v0, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsFragment;->f:I

    new-instance v0, Lol4;

    const-class v1, Lcom/warefly/checkscan/databinding/FragmentOnlineShopsNewBinding;

    invoke-direct {v0, v1}, Lol4;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsFragment;->g:Lol4;

    new-instance v0, Landroidx/navigation/NavArgsLazy;

    const-class v1, Ley5;

    invoke-static {v1}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v1

    new-instance v2, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsFragment$b;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsFragment$b;-><init>(Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsFragment;)V

    invoke-direct {v0, v1, v2}, Landroidx/navigation/NavArgsLazy;-><init>(Lne4;Lll3;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsFragment;->h:Landroidx/navigation/NavArgsLazy;

    new-instance v0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsFragment$c;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsFragment$c;-><init>(Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsFragment;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsFragment;->m:Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsFragment$c;

    new-instance v0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsFragment$d;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsFragment$d;-><init>(Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsFragment;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsFragment;->n:Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsFragment$d;

    return-void
.end method


# virtual methods
.method public final i()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsFragment;->f:I

    return p0
.end method

.method public final k()Z
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsFragment;->o()Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;->onBackPressed()V

    const/4 p0, 0x0

    return p0
.end method

.method public final n()Lcom/warefly/checkscan/databinding/FragmentOnlineShopsNewBinding;
    .locals 2

    sget-object v0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsFragment;->p:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsFragment;->g:Lol4;

    invoke-virtual {v1, p0, v0}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/databinding/FragmentOnlineShopsNewBinding;

    return-object p0
.end method

.method public final o()Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsFragment;->presenter:Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "presenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 23

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super/range {p0 .. p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsFragment;->n()Lcom/warefly/checkscan/databinding/FragmentOnlineShopsNewBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/warefly/checkscan/databinding/FragmentOnlineShopsNewBinding;->toolbar:Lcom/warefly/checkscan/databinding/LayoutToolbarSimpleTitleBinding;

    iget-object v2, v1, Lcom/warefly/checkscan/databinding/LayoutToolbarSimpleTitleBinding;->tvTitle:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsFragment;->h:Landroidx/navigation/NavArgsLazy;

    invoke-interface {v3}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ley5;

    iget-object v3, v3, Ley5;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/warefly/checkscan/databinding/LayoutToolbarSimpleTitleBinding;->ivBtnBack:Landroid/widget/ImageView;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Llb7;

    new-instance v4, Lbw;

    const/4 v5, 0x1

    invoke-direct {v4, v0, v5}, Lbw;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v3, v4}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v1, Lcom/warefly/checkscan/databinding/LayoutToolbarSimpleTitleBinding;->btnAction:Landroid/widget/ImageView;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1}, Lcom/warefly/checkscan/databinding/LayoutToolbarSimpleTitleBinding;->getRoot()Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/a;->d(Landroid/content/Context;)Lp37;

    move-result-object v2

    const v4, 0x7f080232

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lp37;->f(Ljava/lang/Integer;)Lh37;

    move-result-object v2

    iget-object v4, v1, Lcom/warefly/checkscan/databinding/LayoutToolbarSimpleTitleBinding;->btnAction:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Lh37;->L(Landroid/widget/ImageView;)V

    iget-object v1, v1, Lcom/warefly/checkscan/databinding/LayoutToolbarSimpleTitleBinding;->btnAction:Landroid/widget/ImageView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Llb7;

    new-instance v4, Ldy5;

    invoke-direct {v4, v0}, Ldy5;-><init>(Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsFragment;)V

    invoke-direct {v2, v4}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsFragment;->n()Lcom/warefly/checkscan/databinding/FragmentOnlineShopsNewBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/warefly/checkscan/databinding/FragmentOnlineShopsNewBinding;->rvAll:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsFragment;->o()Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;

    move-result-object v8

    new-instance v10, Lbk1;

    invoke-direct {v10}, Lbk1;-><init>()V

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsFragment;->o()Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;

    move-result-object v11

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsFragment;->o()Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;->getCurrentSpecialPos()I

    move-result v12

    new-instance v6, Ls58;

    iget-object v7, v0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsFragment;->m:Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsFragment$c;

    iget-object v9, v0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsFragment;->n:Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsFragment$d;

    invoke-direct/range {v6 .. v12}, Ls58;-><init>(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;Lbk1;Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;I)V

    iput-object v6, v0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsFragment;->l:Ls58;

    sget-object v2, Lj59;->a:Lj59;

    new-instance v2, Lgv7;

    invoke-direct {v2}, Lgv7;-><init>()V

    new-instance v4, Ltv7;

    iget-object v7, v0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsFragment;->o:Leu1;

    if-nez v7, :cond_0

    new-instance v7, Leu1;

    new-instance v8, Ldq6;

    new-instance v9, Lzx5;

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsFragment;->o()Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;

    move-result-object v11

    const-string v14, "onFavoritePromocode(IZ)V"

    const/4 v15, 0x0

    const/4 v10, 0x2

    const-class v19, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;

    const-string v13, "onFavoritePromocode"

    move-object/from16 v12, v19

    invoke-direct/range {v9 .. v15}, Lqm3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v16, Lay5;

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsFragment;->o()Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;

    move-result-object v18

    const-string v21, "onPromocodeClicked(I)V"

    const/16 v22, 0x0

    const/16 v17, 0x1

    const-string v20, "onPromocodeClicked"

    invoke-direct/range {v16 .. v22}, Lqm3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v10, v16

    invoke-direct {v8, v9, v10}, Ldq6;-><init>(Lbm3;Lnl3;)V

    new-array v9, v5, [Lil2;

    aput-object v8, v9, v3

    invoke-direct {v7, v9}, Leu1;-><init>([Lil2;)V

    iput-object v7, v0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsFragment;->o:Leu1;

    :cond_0
    invoke-direct {v4, v7}, Ltv7;-><init>(Leu1;)V

    new-instance v7, Lwv7;

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsFragment;->o()Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;

    move-result-object v8

    new-instance v9, Lby5;

    invoke-direct {v9, v8}, Lby5;-><init>(Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;)V

    invoke-direct {v7, v9}, Lwv7;-><init>(Liv7;)V

    new-instance v8, Ldv7;

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsFragment;->o()Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;

    move-result-object v9

    invoke-direct {v8, v9}, Ldv7;-><init>(Lbv7;)V

    new-instance v9, Ldw7;

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsFragment;->o()Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;

    move-result-object v10

    invoke-direct {v9, v10}, Ldw7;-><init>(Lbv7;)V

    new-instance v10, Lna;

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsFragment;->o()Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;

    move-result-object v11

    invoke-direct {v10, v11}, Lna;-><init>(Lbv7;)V

    const/4 v11, 0x7

    new-array v11, v11, [Lil2;

    aput-object v6, v11, v3

    aput-object v2, v11, v5

    const/4 v2, 0x2

    aput-object v4, v11, v2

    const/4 v2, 0x3

    aput-object v7, v11, v2

    const/4 v2, 0x4

    aput-object v8, v11, v2

    const/4 v2, 0x5

    aput-object v9, v11, v2

    const/4 v2, 0x6

    aput-object v10, v11, v2

    new-instance v2, Leu1;

    invoke-direct {v2, v11}, Leu1;-><init>([Lil2;)V

    iput-object v2, v0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsFragment;->k:Leu1;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v2, Ldw5;

    new-instance v3, Lcy5;

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsFragment;->o()Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;

    move-result-object v5

    const-string v8, "loadNextShops()V"

    const/4 v9, 0x0

    const/4 v4, 0x0

    const-class v6, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;

    const-string v7, "loadNextShops"

    invoke-direct/range {v3 .. v9}, Lqm3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v2, v3}, Ldw5;-><init>(Lcy5;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    return-void
.end method

.method public final providePresenter()Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;
    .locals 9

    new-instance v0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->j()Lba8;

    move-result-object v1

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v2

    const-class v3, Luf3;

    const/4 v4, 0x0

    invoke-static {v3, v2, v1, v4}, Ln2;->c(Ljava/lang/Class;Lze7;Lba8;Li36;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Luf3;

    iget-object v2, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsFragment;->h:Landroidx/navigation/NavArgsLazy;

    invoke-interface {v2}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ley5;

    iget v3, v3, Ley5;->b:I

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v5

    const-class v6, Lbm0;

    invoke-static {v6, v5, v4, v4}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lbm0;

    invoke-interface {v2}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ley5;

    iget-object v6, v6, Ley5;->d:Lkd$o0;

    invoke-interface {v2}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ley5;

    iget-object v7, v7, Ley5;->c:Luv7;

    invoke-interface {v2}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ley5;

    iget-object v2, v2, Ley5;->a:Ljava/lang/String;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object p0

    const-class v8, Ls47;

    invoke-static {v8, p0, v4, v4}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ls47;

    move-object v4, v6

    move-object v6, v2

    move v2, v3

    move-object v3, v5

    move-object v5, v7

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;-><init>(Luf3;ILbm0;Lkd$o0;Luv7;Ljava/lang/String;Ls47;)V

    return-object v0
.end method

.method public final scrollNextSpecials(I)V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsFragment;->l:Ls58;

    if-eqz p0, :cond_1

    iget-object p0, p0, Ls58;->h:Lcom/warefly/checkscan/core/ui/infinityScrolling/HorizontalCarouselRecyclerViewNew;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/core/ui/infinityScrolling/HorizontalCarouselRecyclerViewNew;->smoothScrollToPosition(I)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_1
    return-void
.end method

.method public final scrollToTop()V
    .locals 1

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsFragment;->n()Lcom/warefly/checkscan/databinding/FragmentOnlineShopsNewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentOnlineShopsNewBinding;->rvAll:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method

.method public final setToolbarTitle(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsFragment;->n()Lcom/warefly/checkscan/databinding/FragmentOnlineShopsNewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentOnlineShopsNewBinding;->toolbar:Lcom/warefly/checkscan/databinding/LayoutToolbarSimpleTitleBinding;

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/LayoutToolbarSimpleTitleBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final showAllData(Ljava/util/List;)V
    .locals 9
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

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsFragment;->k:Leu1;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Leu1;->submitList(Ljava/util/List;)V

    :cond_0
    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsFragment;->n()Lcom/warefly/checkscan/databinding/FragmentOnlineShopsNewBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/FragmentOnlineShopsNewBinding;->rvAll:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecorationAt(I)V

    :cond_1
    new-instance v0, Lrw3;

    iget-object v2, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsFragment;->k:Leu1;

    const-class v3, Len1$a;

    const/high16 v4, -0x80000000

    if-eqz v2, :cond_2

    iget-object v2, v2, Leu1;->i:Lm8;

    invoke-virtual {v2, v3}, Lm8;->d(Ljava/lang/Class;)I

    move-result v2

    goto :goto_0

    :cond_2
    move v2, v4

    :goto_0
    const/16 v5, 0x10

    invoke-direct {v0, v5, v5, v2}, Lrw3;-><init>(III)V

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;I)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecorationAt(I)V

    :cond_3
    new-instance v0, Lgy8;

    iget-object v2, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsFragment;->k:Leu1;

    if-eqz v2, :cond_4

    iget-object v2, v2, Leu1;->i:Lm8;

    invoke-virtual {v2, v3}, Lm8;->d(Ljava/lang/Class;)I

    move-result v2

    goto :goto_1

    :cond_4
    move v2, v4

    :goto_1
    iget-object v3, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsFragment;->k:Leu1;

    const-class v6, Len1$b;

    if-eqz v3, :cond_5

    iget-object v3, v3, Leu1;->i:Lm8;

    invoke-virtual {v3, v6}, Lm8;->d(Ljava/lang/Class;)I

    move-result v3

    goto :goto_2

    :cond_5
    move v3, v4

    :goto_2
    iget-object v7, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsFragment;->k:Leu1;

    const-class v8, Lpa;

    if-eqz v7, :cond_6

    iget-object v7, v7, Leu1;->i:Lm8;

    invoke-virtual {v7, v8}, Lm8;->d(Ljava/lang/Class;)I

    move-result v7

    goto :goto_3

    :cond_6
    move v7, v4

    :goto_3
    filled-new-array {v2, v3, v7}, [I

    move-result-object v2

    invoke-direct {v0, v2}, Lgy8;-><init>([I)V

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;I)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_7

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecorationAt(I)V

    :cond_7
    new-instance v0, Lrw3;

    iget-object v2, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsFragment;->k:Leu1;

    if-eqz v2, :cond_8

    iget-object v2, v2, Leu1;->i:Lm8;

    invoke-virtual {v2, v8}, Lm8;->d(Ljava/lang/Class;)I

    move-result v2

    goto :goto_4

    :cond_8
    move v2, v4

    :goto_4
    invoke-direct {v0, v5, v5, v2}, Lrw3;-><init>(III)V

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;I)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_9

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecorationAt(I)V

    :cond_9
    new-instance v0, Lrw3;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsFragment;->k:Leu1;

    if-eqz p0, :cond_a

    iget-object p0, p0, Leu1;->i:Lm8;

    invoke-virtual {p0, v6}, Lm8;->d(Ljava/lang/Class;)I

    move-result v4

    :cond_a
    invoke-direct {v0, v5, v5, v4}, Lrw3;-><init>(III)V

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

.method public final showFilterButton(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsFragment;->n()Lcom/warefly/checkscan/databinding/FragmentOnlineShopsNewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentOnlineShopsNewBinding;->toolbar:Lcom/warefly/checkscan/databinding/LayoutToolbarSimpleTitleBinding;

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/LayoutToolbarSimpleTitleBinding;->btnAction:Landroid/widget/ImageView;

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

.method public final showFilters(Ljava/util/List;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lg81;",
            ">;I)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsFragment;->i:Lcom/warefly/checkscan/presentation/bonuses/onlineShops/categoriesDialog/view/CategoriesDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/categoriesDialog/view/CategoriesDialog;

    new-instance v2, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsFragment$a;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsFragment;->o()Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;

    move-result-object v4

    const-string v7, "showShops(ILjava/lang/String;)V"

    const/4 v8, 0x0

    const/4 v3, 0x2

    const-class v5, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;

    const-string v6, "showShops"

    invoke-direct/range {v2 .. v8}, Lqm3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v1, v0, p2, v2, p1}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/categoriesDialog/view/CategoriesDialog;-><init>(Landroid/content/Context;ILcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsFragment$a;Ljava/util/List;)V

    iput-object v1, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsFragment;->i:Lcom/warefly/checkscan/presentation/bonuses/onlineShops/categoriesDialog/view/CategoriesDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method public final showLoading(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsFragment;->n()Lcom/warefly/checkscan/databinding/FragmentOnlineShopsNewBinding;

    move-result-object p0

    iget-object v0, p0, Lcom/warefly/checkscan/databinding/FragmentOnlineShopsNewBinding;->rvAll:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentOnlineShopsNewBinding;->viewLoading:Lcom/warefly/checkscan/design/resources/databinding/LayoutPreviewsLoadingBinding;

    invoke-virtual {p0}, Lcom/warefly/checkscan/design/resources/databinding/LayoutPreviewsLoadingBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final showOrdBottomSheet(Lb06;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsFragment;->j:Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;

    invoke-direct {v1, v0, p1}, Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;-><init>(Landroid/content/Context;Lb06;)V

    iput-object v1, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsFragment;->j:Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method
