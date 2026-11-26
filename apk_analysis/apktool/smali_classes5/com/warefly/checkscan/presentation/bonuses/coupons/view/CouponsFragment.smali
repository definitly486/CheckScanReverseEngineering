.class public final Lcom/warefly/checkscan/presentation/bonuses/coupons/view/CouponsFragment;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/bonuses/coupons/view/CouponsView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment<",
        "Lcom/warefly/checkscan/databinding/FragmentCouponsBinding;",
        ">;",
        "Lcom/warefly/checkscan/presentation/bonuses/coupons/view/CouponsView;"
    }
.end annotation


# static fields
.field public static final synthetic m:[Lze4;
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

.field public i:Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/view/FiltersNewDialog;

.field public j:Lcom/warefly/checkscan/presentation/bonuses/behaviors/AddedToFavesDialog;

.field public k:Lcom/warefly/checkscan/presentation/bonuses/behaviors/RemovedFromFavesDialog;

.field public l:Leu1;

.field public presenter:Lcom/warefly/checkscan/presentation/bonuses/coupons/presenter/CouponsPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/bonuses/coupons/view/CouponsFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/databinding/FragmentCouponsBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/bonuses/coupons/view/CouponsFragment;->m:[Lze4;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;-><init>()V

    const v0, 0x7f0d00be

    iput v0, p0, Lcom/warefly/checkscan/presentation/bonuses/coupons/view/CouponsFragment;->f:I

    new-instance v0, Lol4;

    const-class v1, Lcom/warefly/checkscan/databinding/FragmentCouponsBinding;

    invoke-direct {v0, v1}, Lol4;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/coupons/view/CouponsFragment;->g:Lol4;

    new-instance v0, Landroidx/navigation/NavArgsLazy;

    const-class v1, Ln42;

    invoke-static {v1}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v1

    new-instance v2, Lcom/warefly/checkscan/presentation/bonuses/coupons/view/CouponsFragment$d;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/bonuses/coupons/view/CouponsFragment$d;-><init>(Lcom/warefly/checkscan/presentation/bonuses/coupons/view/CouponsFragment;)V

    invoke-direct {v0, v1, v2}, Landroidx/navigation/NavArgsLazy;-><init>(Lne4;Lll3;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/coupons/view/CouponsFragment;->h:Landroidx/navigation/NavArgsLazy;

    return-void
.end method


# virtual methods
.method public final i()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/presentation/bonuses/coupons/view/CouponsFragment;->f:I

    return p0
.end method

.method public final n()Lcom/warefly/checkscan/databinding/FragmentCouponsBinding;
    .locals 2

    sget-object v0, Lcom/warefly/checkscan/presentation/bonuses/coupons/view/CouponsFragment;->m:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/bonuses/coupons/view/CouponsFragment;->g:Lol4;

    invoke-virtual {v1, p0, v0}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/databinding/FragmentCouponsBinding;

    return-object p0
.end method

.method public final o()Lcom/warefly/checkscan/presentation/bonuses/coupons/presenter/CouponsPresenter;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/coupons/view/CouponsFragment;->presenter:Lcom/warefly/checkscan/presentation/bonuses/coupons/presenter/CouponsPresenter;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "presenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/coupons/view/CouponsFragment;->l:Leu1;

    invoke-super {p0}, Lfh5;->onDestroyView()V

    return-void
.end method

.method public final onResume()V
    .locals 0

    invoke-super {p0}, Lfh5;->onResume()V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/coupons/view/CouponsFragment;->o()Lcom/warefly/checkscan/presentation/bonuses/coupons/presenter/CouponsPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/coupons/presenter/CouponsPresenter;->tryAgainClick()V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 18

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super/range {p0 .. p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/bonuses/coupons/view/CouponsFragment;->n()Lcom/warefly/checkscan/databinding/FragmentCouponsBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/warefly/checkscan/databinding/FragmentCouponsBinding;->rvCoupons:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Leu1;

    new-instance v3, Lg42;

    new-instance v4, Ll42;

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/bonuses/coupons/view/CouponsFragment;->o()Lcom/warefly/checkscan/presentation/bonuses/coupons/presenter/CouponsPresenter;

    move-result-object v6

    const-string v9, "onCouponCLick(J)V"

    const/4 v10, 0x0

    const/4 v5, 0x1

    const-class v14, Lcom/warefly/checkscan/presentation/bonuses/coupons/presenter/CouponsPresenter;

    const-string v8, "onCouponCLick"

    move-object v7, v14

    invoke-direct/range {v4 .. v10}, Lqm3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v11, Lm42;

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/bonuses/coupons/view/CouponsFragment;->o()Lcom/warefly/checkscan/presentation/bonuses/coupons/presenter/CouponsPresenter;

    move-result-object v13

    const-string v16, "setFavouriteCoupon(JZ)V"

    const/16 v17, 0x0

    const/4 v12, 0x2

    const-string v15, "setFavouriteCoupon"

    invoke-direct/range {v11 .. v17}, Lqm3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v3, v4, v11}, Lg42;-><init>(Ll42;Lm42;)V

    const/4 v4, 0x1

    new-array v4, v4, [Lil2;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-direct {v2, v4}, Leu1;-><init>([Lil2;)V

    iput-object v2, v0, Lcom/warefly/checkscan/presentation/bonuses/coupons/view/CouponsFragment;->l:Leu1;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v2, Lyr3;

    invoke-direct {v2}, Lyr3;-><init>()V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/bonuses/coupons/view/CouponsFragment;->n()Lcom/warefly/checkscan/databinding/FragmentCouponsBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/warefly/checkscan/databinding/FragmentCouponsBinding;->toolbar:Lcom/warefly/checkscan/databinding/LayoutToolbarBackFilterIconBinding;

    iget-object v2, v1, Lcom/warefly/checkscan/databinding/LayoutToolbarBackFilterIconBinding;->btnBack:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Llb7;

    new-instance v4, Lcom/warefly/checkscan/presentation/bonuses/coupons/view/CouponsFragment$a;

    invoke-direct {v4, v0}, Lcom/warefly/checkscan/presentation/bonuses/coupons/view/CouponsFragment$a;-><init>(Lcom/warefly/checkscan/presentation/bonuses/coupons/view/CouponsFragment;)V

    invoke-direct {v3, v4}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v1, Lcom/warefly/checkscan/databinding/LayoutToolbarBackFilterIconBinding;->btnFilter:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v1, Lcom/warefly/checkscan/databinding/LayoutToolbarBackFilterIconBinding;->tvToolbarTitle:Landroid/widget/TextView;

    const v2, 0x7f140169

    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final providePresenter()Lcom/warefly/checkscan/presentation/bonuses/coupons/presenter/CouponsPresenter;
    .locals 7

    new-instance v0, Lcom/warefly/checkscan/presentation/bonuses/coupons/presenter/CouponsPresenter;

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->j()Lba8;

    move-result-object v1

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v2

    const-class v3, Luf3;

    const/4 v4, 0x0

    invoke-static {v3, v2, v1, v4}, Ln2;->c(Ljava/lang/Class;Lze7;Lba8;Li36;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Luf3;

    iget-object v2, p0, Lcom/warefly/checkscan/presentation/bonuses/coupons/view/CouponsFragment;->h:Landroidx/navigation/NavArgsLazy;

    invoke-interface {v2}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln42;

    iget-wide v2, v2, Ln42;->a:J

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v5

    const-class v6, Lx9;

    invoke-static {v6, v5, v4, v4}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lx9;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object p0

    const-class v6, Lq42;

    invoke-static {v6, p0, v4, v4}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lq42;

    move-object v4, v5

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/warefly/checkscan/presentation/bonuses/coupons/presenter/CouponsPresenter;-><init>(Luf3;JLx9;Lq42;)V

    return-object v0
.end method

.method public final setCoupons(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lgr6;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/coupons/view/CouponsFragment;->l:Leu1;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Leu1;->submitList(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final showError()V
    .locals 3

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/coupons/view/CouponsFragment;->n()Lcom/warefly/checkscan/databinding/FragmentCouponsBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/FragmentCouponsBinding;->tvErrorDescription:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/FragmentCouponsBinding;->btnTryAgain:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentCouponsBinding;->btnTryAgain:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Llb7;

    new-instance v2, Lcom/warefly/checkscan/presentation/bonuses/coupons/view/CouponsFragment$b;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/bonuses/coupons/view/CouponsFragment$b;-><init>(Lcom/warefly/checkscan/presentation/bonuses/coupons/view/CouponsFragment;)V

    invoke-direct {v1, v2}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final showFavoriteStatusIsChanged(ZZ)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/warefly/checkscan/presentation/bonuses/coupons/view/CouponsFragment;->j:Lcom/warefly/checkscan/presentation/bonuses/behaviors/AddedToFavesDialog;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    new-instance p2, Lcom/warefly/checkscan/presentation/bonuses/behaviors/AddedToFavesDialog;

    invoke-direct {p2, v0, p1}, Lcom/warefly/checkscan/presentation/bonuses/behaviors/AddedToFavesDialog;-><init>(Landroid/content/Context;Z)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/bonuses/coupons/view/CouponsFragment;->j:Lcom/warefly/checkscan/presentation/bonuses/behaviors/AddedToFavesDialog;

    invoke-virtual {p2}, Landroid/app/Dialog;->show()V

    return-void

    :cond_1
    iget-object p2, p0, Lcom/warefly/checkscan/presentation/bonuses/coupons/view/CouponsFragment;->k:Lcom/warefly/checkscan/presentation/bonuses/behaviors/RemovedFromFavesDialog;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    :cond_2
    new-instance p2, Lcom/warefly/checkscan/presentation/bonuses/behaviors/RemovedFromFavesDialog;

    invoke-direct {p2, v0, p1}, Lcom/warefly/checkscan/presentation/bonuses/behaviors/RemovedFromFavesDialog;-><init>(Landroid/content/Context;Z)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/bonuses/coupons/view/CouponsFragment;->k:Lcom/warefly/checkscan/presentation/bonuses/behaviors/RemovedFromFavesDialog;

    invoke-virtual {p2}, Landroid/app/Dialog;->show()V

    :cond_3
    return-void
.end method

.method public final showFiltersDialog()V
    .locals 3

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/coupons/view/CouponsFragment;->i:Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/view/FiltersNewDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/view/FiltersNewDialog;

    sget-object v2, Lcom/warefly/checkscan/presentation/bonuses/coupons/view/CouponsFragment$c;->f:Lcom/warefly/checkscan/presentation/bonuses/coupons/view/CouponsFragment$c;

    invoke-direct {v1, v0, v2}, Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/view/FiltersNewDialog;-><init>(Landroid/content/Context;Lbm3;)V

    iput-object v1, p0, Lcom/warefly/checkscan/presentation/bonuses/coupons/view/CouponsFragment;->i:Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/view/FiltersNewDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method public final showLoading(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/coupons/view/CouponsFragment;->n()Lcom/warefly/checkscan/databinding/FragmentCouponsBinding;

    move-result-object p0

    iget-object v0, p0, Lcom/warefly/checkscan/databinding/FragmentCouponsBinding;->toolbar:Lcom/warefly/checkscan/databinding/LayoutToolbarBackFilterIconBinding;

    invoke-virtual {v0}, Lcom/warefly/checkscan/databinding/LayoutToolbarBackFilterIconBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentCouponsBinding;->viewLoading:Lcom/warefly/checkscan/design/resources/databinding/LayoutPreviewsLoadingBinding;

    invoke-virtual {p0}, Lcom/warefly/checkscan/design/resources/databinding/LayoutPreviewsLoadingBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
