.class public final Lcom/warefly/checkscan/presentation/bonuses/promocodes/view/PromocodesFragment;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment<",
        "Lcom/warefly/checkscan/databinding/FragmentPromocodesBinding;",
        ">;",
        "Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesView;"
    }
.end annotation


# static fields
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

.field public final h:Landroidx/navigation/NavArgsLazy;

.field public i:Leu1;

.field public presenter:Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/bonuses/promocodes/view/PromocodesFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/databinding/FragmentPromocodesBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/bonuses/promocodes/view/PromocodesFragment;->j:[Lze4;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;-><init>()V

    const v0, 0x7f0d00e6

    iput v0, p0, Lcom/warefly/checkscan/presentation/bonuses/promocodes/view/PromocodesFragment;->f:I

    new-instance v0, Lol4;

    const-class v1, Lcom/warefly/checkscan/databinding/FragmentPromocodesBinding;

    invoke-direct {v0, v1}, Lol4;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/promocodes/view/PromocodesFragment;->g:Lol4;

    new-instance v0, Landroidx/navigation/NavArgsLazy;

    const-class v1, Lqr6;

    invoke-static {v1}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v1

    new-instance v2, Lcom/warefly/checkscan/presentation/bonuses/promocodes/view/PromocodesFragment$a;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/bonuses/promocodes/view/PromocodesFragment$a;-><init>(Lcom/warefly/checkscan/presentation/bonuses/promocodes/view/PromocodesFragment;)V

    invoke-direct {v0, v1, v2}, Landroidx/navigation/NavArgsLazy;-><init>(Lne4;Lll3;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/promocodes/view/PromocodesFragment;->h:Landroidx/navigation/NavArgsLazy;

    return-void
.end method


# virtual methods
.method public final hideLoading(Z)V
    .locals 3

    sget-object v0, Lcom/warefly/checkscan/presentation/bonuses/promocodes/view/PromocodesFragment;->j:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v2, p0, Lcom/warefly/checkscan/presentation/bonuses/promocodes/view/PromocodesFragment;->g:Lol4;

    invoke-virtual {v2, p0, v0}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/databinding/FragmentPromocodesBinding;

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentPromocodesBinding;->incldLoading:Lcom/warefly/checkscan/databinding/PromocodesLoadingBinding;

    invoke-virtual {p0}, Lcom/warefly/checkscan/databinding/PromocodesLoadingBinding;->getRoot()Lcom/warefly/checkscan/shimmer/ShimmerFrameLayout;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_0

    const/16 v1, 0x8

    :cond_0
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final i()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/presentation/bonuses/promocodes/view/PromocodesFragment;->f:I

    return p0
.end method

.method public final k()Z
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/promocodes/view/PromocodesFragment;->n()Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter;->onBackPressed()V

    const/4 p0, 0x0

    return p0
.end method

.method public final n()Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/promocodes/view/PromocodesFragment;->presenter:Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "presenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 19

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super/range {p0 .. p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    sget-object v1, Lcom/warefly/checkscan/presentation/bonuses/promocodes/view/PromocodesFragment;->j:[Lze4;

    const/4 v2, 0x0

    aget-object v3, v1, v2

    iget-object v4, v0, Lcom/warefly/checkscan/presentation/bonuses/promocodes/view/PromocodesFragment;->g:Lol4;

    invoke-virtual {v4, v0, v3}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object v3

    check-cast v3, Lcom/warefly/checkscan/databinding/FragmentPromocodesBinding;

    iget-object v3, v3, Lcom/warefly/checkscan/databinding/FragmentPromocodesBinding;->toolbar:Lcom/warefly/checkscan/databinding/LayoutToolbarSimpleTitleBinding;

    iget-object v5, v3, Lcom/warefly/checkscan/databinding/LayoutToolbarSimpleTitleBinding;->tvTitle:Landroid/widget/TextView;

    const v6, 0x7f1402ce

    invoke-virtual {v0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v3, Lcom/warefly/checkscan/databinding/LayoutToolbarSimpleTitleBinding;->ivBtnBack:Landroid/widget/ImageView;

    new-instance v5, Lmr6;

    invoke-direct {v5, v0}, Lmr6;-><init>(Lcom/warefly/checkscan/presentation/bonuses/promocodes/view/PromocodesFragment;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    aget-object v1, v1, v2

    invoke-virtual {v4, v0, v1}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/warefly/checkscan/databinding/FragmentPromocodesBinding;

    iget-object v1, v1, Lcom/warefly/checkscan/databinding/FragmentPromocodesBinding;->rvPromocodes:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v3, Lnr6;

    invoke-direct {v3, v0}, Lnr6;-><init>(Lcom/warefly/checkscan/presentation/bonuses/promocodes/view/PromocodesFragment;)V

    new-instance v4, Lew5;

    const/16 v5, 0xa

    invoke-direct {v4, v1, v5, v3}, Lew5;-><init>(Landroidx/recyclerview/widget/RecyclerView;ILll3;)V

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    new-instance v3, Leu1;

    new-instance v4, Ldq6;

    new-instance v5, Lor6;

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/bonuses/promocodes/view/PromocodesFragment;->n()Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter;

    move-result-object v7

    const-string v10, "onFavoriteClicked(IZ)V"

    const/4 v11, 0x0

    const/4 v6, 0x2

    const-class v15, Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter;

    const-string v9, "onFavoriteClicked"

    move-object v8, v15

    invoke-direct/range {v5 .. v11}, Lqm3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v12, Lpr6;

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/bonuses/promocodes/view/PromocodesFragment;->n()Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter;

    move-result-object v14

    const-string v17, "onPromocodeClicked(I)V"

    const/16 v18, 0x0

    const/4 v13, 0x1

    const-string v16, "onPromocodeClicked"

    invoke-direct/range {v12 .. v18}, Lqm3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v4, v5, v12}, Ldq6;-><init>(Lbm3;Lnl3;)V

    const/4 v5, 0x1

    new-array v5, v5, [Lil2;

    aput-object v4, v5, v2

    invoke-direct {v3, v5}, Leu1;-><init>([Lil2;)V

    iput-object v3, v0, Lcom/warefly/checkscan/presentation/bonuses/promocodes/view/PromocodesFragment;->i:Leu1;

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public final providePresenter()Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter;
    .locals 6

    new-instance v0, Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter;

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->j()Lba8;

    move-result-object v1

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v2

    const-class v3, Luf3;

    const/4 v4, 0x0

    invoke-static {v3, v2, v1, v4}, Ln2;->c(Ljava/lang/Class;Lze7;Lba8;Li36;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Luf3;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v2

    const-class v3, Lbm0;

    invoke-static {v3, v2, v4, v4}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbm0;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/promocodes/view/PromocodesFragment;->h:Landroidx/navigation/NavArgsLazy;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lqr6;

    iget v3, v3, Lqr6;->a:I

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lqr6;

    iget-object v4, v4, Lqr6;->b:Ljava/lang/String;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lqr6;

    iget-boolean v5, p0, Lqr6;->c:Z

    invoke-direct/range {v0 .. v5}, Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter;-><init>(Luf3;Lbm0;ILjava/lang/String;Z)V

    return-object v0
.end method

.method public final sendPromocodesUpdateResult()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v0, "FAVORITE_PROMOCODES_UPDATED"

    invoke-static {}, Landroidx/core/os/BundleKt;->bundleOf()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentManager;->setFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final showPromocodes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ler6;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/promocodes/view/PromocodesFragment;->i:Leu1;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Leu1;->submitList(Ljava/util/List;)V

    :cond_0
    return-void
.end method
