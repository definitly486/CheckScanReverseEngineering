.class public final Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment<",
        "Lcom/warefly/checkscan/databinding/FragmentAdmitadNewBinding;",
        ">;",
        "Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewView;"
    }
.end annotation


# static fields
.field public static final synthetic u:[Lze4;
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

.field public final i:Lcl4;

.field public j:Los7;

.field public k:Lcom/warefly/checkscan/presentation/bonuses/behaviors/AddedToFavesDialog;

.field public l:Lcom/warefly/checkscan/presentation/bonuses/behaviors/RemovedFromFavesDialog;

.field public m:Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/view/RedirectDialog;

.field public n:Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

.field public o:Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;

.field public p:Lcom/warefly/checkscan/presentation/bonuses/shopPage/howGetCashbackDialog/view/HowGetMoreCashbackDialog;

.field public presenter:Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;

.field public q:Leu1;

.field public r:Leu1;

.field public s:Leu1;

.field public t:Leu1;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/databinding/FragmentAdmitadNewBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;->u:[Lze4;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;-><init>()V

    const v0, 0x7f0d00a3

    iput v0, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;->f:I

    new-instance v0, Lol4;

    const-class v1, Lcom/warefly/checkscan/databinding/FragmentAdmitadNewBinding;

    invoke-direct {v0, v1}, Lol4;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;->g:Lol4;

    new-instance v0, Landroidx/navigation/NavArgsLazy;

    const-class v1, Luk0;

    invoke-static {v1}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v1

    new-instance v2, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment$p;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment$p;-><init>(Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;)V

    invoke-direct {v0, v1, v2}, Landroidx/navigation/NavArgsLazy;-><init>(Lne4;Lll3;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;->h:Landroidx/navigation/NavArgsLazy;

    sget-object v0, Lpo4;->SYNCHRONIZED:Lpo4;

    new-instance v1, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment$o;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment$o;-><init>(Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;)V

    invoke-static {v0, v1}, Lnm4;->a(Lpo4;Lll3;)Lcl4;

    move-result-object v0

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;->i:Lcl4;

    return-void
.end method


# virtual methods
.method public final i()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;->f:I

    return p0
.end method

.method public final k()Z
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;->o()Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;->onBackClick()V

    const/4 p0, 0x0

    return p0
.end method

.method public final n()Lcom/warefly/checkscan/databinding/FragmentAdmitadNewBinding;
    .locals 2

    sget-object v0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;->u:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;->g:Lol4;

    invoke-virtual {v1, p0, v0}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/databinding/FragmentAdmitadNewBinding;

    return-object p0
.end method

.method public final o()Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;->presenter:Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;

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

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;->q:Leu1;

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;->r:Leu1;

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;->s:Leu1;

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;->t:Leu1;

    invoke-super {p0}, Lfh5;->onDestroyView()V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 21

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super/range {p0 .. p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;->n()Lcom/warefly/checkscan/databinding/FragmentAdmitadNewBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/warefly/checkscan/databinding/FragmentAdmitadNewBinding;->viewToolbar:Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;

    iget-object v2, v1, Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;->btnShare:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v1, Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;->btnFave:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v1, Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;->btnFave:Landroid/widget/ImageView;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Llb7;

    new-instance v5, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment$a;

    invoke-direct {v5, v0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment$a;-><init>(Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;)V

    invoke-direct {v4, v5}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v1, Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;->btnBack:Landroid/widget/ImageView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Llb7;

    new-instance v4, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment$b;

    invoke-direct {v4, v0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment$b;-><init>(Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;)V

    invoke-direct {v2, v4}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;->n()Lcom/warefly/checkscan/databinding/FragmentAdmitadNewBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/warefly/checkscan/databinding/FragmentAdmitadNewBinding;->layoutTitle:Lcom/warefly/checkscan/databinding/ItemAdmitadTitleBinding;

    iget-object v1, v1, Lcom/warefly/checkscan/databinding/ItemAdmitadTitleBinding;->viewRewards:Lcom/warefly/checkscan/databinding/ItemAdmitadRewardsBinding;

    iget-object v1, v1, Lcom/warefly/checkscan/databinding/ItemAdmitadRewardsBinding;->rvTerms:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Leu1;

    new-instance v4, Lcq8;

    iget-object v5, v0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;->i:Lcl4;

    invoke-interface {v5}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lv05;

    invoke-direct {v4, v5}, Lcq8;-><init>(Lv05;)V

    const/4 v5, 0x1

    new-array v6, v5, [Lil2;

    aput-object v4, v6, v3

    invoke-direct {v2, v6}, Leu1;-><init>([Lil2;)V

    iput-object v2, v0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;->q:Leu1;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;->n()Lcom/warefly/checkscan/databinding/FragmentAdmitadNewBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/warefly/checkscan/databinding/FragmentAdmitadNewBinding;->layoutGetCashbackInfo:Lcom/warefly/checkscan/databinding/ItemAdmitadGetCashbackDescriptionBinding;

    iget-object v1, v1, Lcom/warefly/checkscan/databinding/ItemAdmitadGetCashbackDescriptionBinding;->rvSteps:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Leu1;

    new-instance v4, Lv88;

    invoke-direct {v4}, Lv88;-><init>()V

    new-array v6, v5, [Lil2;

    aput-object v4, v6, v3

    invoke-direct {v2, v6}, Leu1;-><init>([Lil2;)V

    iput-object v2, v0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;->t:Leu1;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v2, Lfq4;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v4}, Lfq4;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;->n()Lcom/warefly/checkscan/databinding/FragmentAdmitadNewBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/warefly/checkscan/databinding/FragmentAdmitadNewBinding;->layoutPopularProducts:Lcom/warefly/checkscan/databinding/ItemAdmitadPopularProductsBinding;

    iget-object v1, v1, Lcom/warefly/checkscan/databinding/ItemAdmitadPopularProductsBinding;->rvHotItems:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Leu1;

    new-instance v4, Lzw3;

    new-instance v6, Lok0;

    invoke-direct {v6, v0}, Lok0;-><init>(Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;)V

    new-instance v7, Lpk0;

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;->o()Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;

    move-result-object v9

    const-string v12, "onHotItemOrderClick(Ljava/lang/String;Ljava/lang/String;)V"

    const/4 v13, 0x0

    const/4 v8, 0x2

    const-class v17, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;

    const-string v11, "onHotItemOrderClick"

    move-object/from16 v10, v17

    invoke-direct/range {v7 .. v13}, Lqm3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v14, Lqk0;

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;->o()Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;

    move-result-object v16

    const-string v19, "onAdultConfirmedClick()V"

    const/16 v20, 0x0

    const/4 v15, 0x0

    const-string v18, "onAdultConfirmedClick"

    invoke-direct/range {v14 .. v20}, Lqm3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v4, v6, v7, v14}, Lzw3;-><init>(Ldm3;Lbm3;Lll3;)V

    new-array v6, v5, [Lil2;

    aput-object v4, v6, v3

    invoke-direct {v2, v6}, Leu1;-><init>([Lil2;)V

    iput-object v2, v0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;->r:Leu1;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v2, Law5;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    new-instance v14, Lrk0;

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;->o()Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;

    move-result-object v16

    const-string v19, "loadNextHots()Lkotlin/Unit;"

    const/16 v20, 0x8

    const-string v18, "loadNextHots"

    invoke-direct/range {v14 .. v20}, Lk8;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v2, v4, v14}, Law5;-><init>(Landroidx/recyclerview/widget/LinearLayoutManager;Lll3;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;->n()Lcom/warefly/checkscan/databinding/FragmentAdmitadNewBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/warefly/checkscan/databinding/FragmentAdmitadNewBinding;->layoutPromocodesCoupons:Lcom/warefly/checkscan/databinding/ItemAdmitadPromocodeCouponsBinding;

    iget-object v1, v1, Lcom/warefly/checkscan/databinding/ItemAdmitadPromocodeCouponsBinding;->rvAdmitadPromocodes:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Leu1;

    new-instance v4, Ljr6;

    new-instance v14, Lsk0;

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;->o()Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;

    move-result-object v16

    const-string v19, "onCouponClick(J)V"

    const/16 v20, 0x0

    const/4 v15, 0x1

    const-string v18, "onCouponClick"

    invoke-direct/range {v14 .. v20}, Lqm3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v6, v14

    new-instance v14, Ltk0;

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;->o()Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;

    move-result-object v16

    const-string v19, "setFavouriteCoupon(JZ)V"

    const/4 v15, 0x2

    const-string v18, "setFavouriteCoupon"

    invoke-direct/range {v14 .. v20}, Lqm3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v4, v6, v14}, Ljr6;-><init>(Lsk0;Ltk0;)V

    new-array v5, v5, [Lil2;

    aput-object v4, v5, v3

    invoke-direct {v2, v5}, Leu1;-><init>([Lil2;)V

    iput-object v2, v0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;->s:Leu1;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;->n()Lcom/warefly/checkscan/databinding/FragmentAdmitadNewBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/warefly/checkscan/databinding/FragmentAdmitadNewBinding;->nestedScroll:Landroidx/core/widget/NestedScrollView;

    new-instance v2, Lnk0;

    invoke-direct {v2, v0}, Lnk0;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroidx/core/widget/NestedScrollView;->setOnScrollChangeListener(Landroidx/core/widget/NestedScrollView$OnScrollChangeListener;)V

    return-void
.end method

.method public final openGoToLinkInCustomTabs(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Li72;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final openHotItemUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v1, Lcom/warefly/checkscan/presentation/webview/WebViewActivity;->f:I

    const/16 v1, 0xc

    invoke-static {v0, v1, p1, p2}, Lcom/warefly/checkscan/presentation/webview/WebViewActivity$a;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public final providePresenter()Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;
    .locals 9

    new-instance v0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;->h:Landroidx/navigation/NavArgsLazy;

    invoke-interface {v1}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Luk0;

    iget-wide v1, v1, Luk0;->a:J

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v3

    const-class v4, Lx9;

    const/4 v5, 0x0

    invoke-static {v4, v3, v5, v5}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lx9;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v4

    const-class v6, Lq42;

    invoke-static {v6, v4, v5, v5}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lq42;

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->j()Lba8;

    move-result-object v6

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v7

    const-class v8, Luf3;

    invoke-static {v8, v7, v6, v5}, Ln2;->c(Ljava/lang/Class;Lze7;Lba8;Li36;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Luf3;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v7

    const-class v8, Ljf6;

    invoke-static {v8, v7, v5, v5}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljf6;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object p0

    const-class v8, Ls47;

    invoke-static {v8, p0, v5, v5}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ls47;

    move-object v5, v6

    move-object v6, v7

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;-><init>(JLx9;Lq42;Luf3;Ljf6;Ls47;)V

    return-object v0
.end method

.method public final setButtonShopListener(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;->n()Lcom/warefly/checkscan/databinding/FragmentAdmitadNewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentAdmitadNewBinding;->btnGoShop:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Llb7;

    new-instance v2, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment$c;

    invoke-direct {v2, p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment$c;-><init>(Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setCashbackTitle(Ljava/lang/String;Landroid/text/Spannable;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;->n()Lcom/warefly/checkscan/databinding/FragmentAdmitadNewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentAdmitadNewBinding;->layoutTitle:Lcom/warefly/checkscan/databinding/ItemAdmitadTitleBinding;

    iget-object v0, p0, Lcom/warefly/checkscan/databinding/ItemAdmitadTitleBinding;->tvCashbackTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/ItemAdmitadTitleBinding;->tvCashbackValue:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setDescriptionInfo(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;->n()Lcom/warefly/checkscan/databinding/FragmentAdmitadNewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentAdmitadNewBinding;->layoutDescription:Lcom/warefly/checkscan/databinding/ItemAdmitadNewDescriptionBinding;

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/ItemAdmitadNewDescriptionBinding;->btnGoToOperations:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Llb7;

    new-instance v3, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment$d;

    invoke-direct {v3, p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment$d;-><init>(Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;)V

    invoke-direct {v2, v3}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, v0, Lcom/warefly/checkscan/databinding/ItemAdmitadNewDescriptionBinding;->tvDescription:Landroid/widget/TextView;

    invoke-static {p1}, Lsx3;->a(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, v0, Lcom/warefly/checkscan/databinding/ItemAdmitadNewDescriptionBinding;->tvDescription:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual {v0}, Lcom/warefly/checkscan/databinding/ItemAdmitadNewDescriptionBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final setFixedCashback(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;->n()Lcom/warefly/checkscan/databinding/FragmentAdmitadNewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentAdmitadNewBinding;->layoutTitle:Lcom/warefly/checkscan/databinding/ItemAdmitadTitleBinding;

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/ItemAdmitadTitleBinding;->tvFixedCashback:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final setFloatingButtonVisibility(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;->n()Lcom/warefly/checkscan/databinding/FragmentAdmitadNewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentAdmitadNewBinding;->btnGoShop:Landroid/widget/TextView;

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

.method public final setHotItemsInfo(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lyw3;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;->r:Leu1;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Leu1;->submitList(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;->n()Lcom/warefly/checkscan/databinding/FragmentAdmitadNewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentAdmitadNewBinding;->layoutPopularProducts:Lcom/warefly/checkscan/databinding/ItemAdmitadPopularProductsBinding;

    invoke-virtual {p0}, Lcom/warefly/checkscan/databinding/ItemAdmitadPopularProductsBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final setOnlineShopInfo(Lqx5;)V
    .locals 11

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lqx5;->c:Ljava/lang/String;

    iget-object v1, p1, Lqx5;->j:Ljava/util/List;

    iget-object v2, p1, Lqx5;->h:Lnx5;

    iget-object v3, p1, Lqx5;->g:Ljava/lang/String;

    iget-object v4, p1, Lqx5;->f:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;->n()Lcom/warefly/checkscan/databinding/FragmentAdmitadNewBinding;

    move-result-object v5

    iget-object v5, v5, Lcom/warefly/checkscan/databinding/FragmentAdmitadNewBinding;->layoutTitle:Lcom/warefly/checkscan/databinding/ItemAdmitadTitleBinding;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/bumptech/glide/a;->b(Landroid/content/Context;)Lq37;

    move-result-object v6

    invoke-virtual {v6, p0}, Lq37;->d(Landroidx/fragment/app/Fragment;)Lp37;

    move-result-object v6

    iget-object v7, p1, Lqx5;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object v6

    iget-object v7, v5, Lcom/warefly/checkscan/databinding/ItemAdmitadTitleBinding;->ivShop:Landroid/widget/ImageView;

    invoke-virtual {v6, v7}, Lh37;->L(Landroid/widget/ImageView;)V

    iget-object v6, p1, Lqx5;->b:Lq00;

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    iget-object v8, v5, Lcom/warefly/checkscan/databinding/ItemAdmitadTitleBinding;->tvExpirationDate:Landroid/widget/TextView;

    iget-object v9, v6, Lq00;->a:Ljava/lang/String;

    if-eqz v9, :cond_0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v9, v6, Lq00;->b:Ljava/lang/String;

    if-eqz v9, :cond_1

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    iget-object v6, v6, Lq00;->c:Ljava/lang/String;

    if-eqz v6, :cond_2

    invoke-virtual {v8}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-static {v8}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-static {v8, v6}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    :cond_2
    iget-object v6, v5, Lcom/warefly/checkscan/databinding/ItemAdmitadTitleBinding;->tvTitle:Landroid/widget/TextView;

    iget-object v8, p1, Lqx5;->e:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v4, :cond_3

    iget-object v6, v5, Lcom/warefly/checkscan/databinding/ItemAdmitadTitleBinding;->tvDescription:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    const/4 v4, 0x1

    if-eqz v3, :cond_5

    invoke-static {v3}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/bumptech/glide/a;->d(Landroid/content/Context;)Lp37;

    move-result-object v6

    invoke-virtual {v6, v3}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object v3

    invoke-static {}, Lqs2;->h()Lqs2;

    move-result-object v6

    invoke-virtual {v3, v6}, Lh37;->P(Lqs2;)Lh37;

    move-result-object v3

    new-instance v6, Ls37;

    invoke-direct {v6}, Ls37;-><init>()V

    new-instance v8, Lt81;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    new-instance v9, Le87;

    const/16 v10, 0xa

    invoke-static {v10}, Lpl2;->o(I)I

    move-result v10

    invoke-direct {v9, v10}, Le87;-><init>(I)V

    const/4 v10, 0x2

    new-array v10, v10, [Ls19;

    aput-object v8, v10, v7

    aput-object v9, v10, v4

    invoke-virtual {v6, v10}, Lee0;->D([Ls19;)Lee0;

    move-result-object v6

    invoke-virtual {v3, v6}, Lh37;->G(Lee0;)Lh37;

    move-result-object v3

    iget-object v6, v5, Lcom/warefly/checkscan/databinding/ItemAdmitadTitleBinding;->ivBanner:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Lh37;->L(Landroid/widget/ImageView;)V

    goto :goto_1

    :cond_5
    :goto_0
    iget-object v3, v5, Lcom/warefly/checkscan/databinding/ItemAdmitadTitleBinding;->ivBanner:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    if-eqz v2, :cond_6

    iget-object v3, v5, Lcom/warefly/checkscan/databinding/ItemAdmitadTitleBinding;->btnGoShopping:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v2, Lnx5;->a:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Llb7;

    new-instance v6, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment$g;

    invoke-direct {v6, p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment$g;-><init>(Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;Lqx5;)V

    invoke-direct {v2, v6}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, v5, Lcom/warefly/checkscan/databinding/ItemAdmitadTitleBinding;->viewRewards:Lcom/warefly/checkscan/databinding/ItemAdmitadRewardsBinding;

    iget-object v3, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;->q:Leu1;

    if-eqz v3, :cond_7

    invoke-virtual {v3, v1}, Leu1;->submitList(Ljava/util/List;)V

    :cond_7
    iget-object v1, p1, Lqx5;->i:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, v2, Lcom/warefly/checkscan/databinding/ItemAdmitadRewardsBinding;->overlapShadow:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v2, Lcom/warefly/checkscan/databinding/ItemAdmitadRewardsBinding;->btnMoreTerms:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v2, Llb7;

    new-instance v3, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment$h;

    invoke-direct {v3, p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment$h;-><init>(Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;Lqx5;)V

    invoke-direct {v2, v3}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    iget-object v1, p1, Lqx5;->p:Lwh6;

    if-eqz v1, :cond_9

    iget-object v1, v5, Lcom/warefly/checkscan/databinding/ItemAdmitadTitleBinding;->btnCheckCashback:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    new-instance v2, Llb7;

    new-instance v3, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment$i;

    invoke-direct {v3, p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment$i;-><init>(Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;Lqx5;)V

    invoke-direct {v2, v3}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    invoke-virtual {v5}, Lcom/warefly/checkscan/databinding/ItemAdmitadTitleBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;->n()Lcom/warefly/checkscan/databinding/FragmentAdmitadNewBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/warefly/checkscan/databinding/FragmentAdmitadNewBinding;->viewToolbar:Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;

    iget-object v2, v1, Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;->tvToolbarTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;->btnFave:Landroid/widget/ImageView;

    iget-boolean v3, p1, Lqx5;->d:Z

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    invoke-virtual {v1}, Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;->getRoot()Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Landroid/view/View;->isLaidOut()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v2}, Landroid/view/View;->isLayoutRequested()Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v2, v1, Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;->btnShare:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget-object v3, v1, Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;->btnFave:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v2

    iget-object v1, v1, Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;->tvToolbarTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v1}, Lie9;->a(ILandroid/view/View;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_a
    new-instance v0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment$j;

    invoke-direct {v0, v1, p1}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment$j;-><init>(Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;Lqx5;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :goto_2
    new-instance v0, Los7;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;->n()Lcom/warefly/checkscan/databinding/FragmentAdmitadNewBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/warefly/checkscan/databinding/FragmentAdmitadNewBinding;->viewToolbar:Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;

    iget-object v1, v1, Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;->btnShare:Landroid/widget/ImageView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment$e;

    invoke-direct {v2, p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment$e;-><init>(Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;Lqx5;)V

    new-instance v3, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment$f;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;->o()Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;

    move-result-object v5

    const-string v8, "showLoadingDialog(Z)V"

    const/4 v9, 0x0

    const/4 v4, 0x1

    const-class v6, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;

    const-string v7, "showLoadingDialog"

    invoke-direct/range {v3 .. v9}, Lqm3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v0, v1, v3, v2}, Los7;-><init>(Landroid/view/View;Lnl3;Lll3;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;->j:Los7;

    return-void
.end method

.method public final setPowerCodeDescription(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;->n()Lcom/warefly/checkscan/databinding/FragmentAdmitadNewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentAdmitadNewBinding;->layoutTitle:Lcom/warefly/checkscan/databinding/ItemAdmitadTitleBinding;

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/ItemAdmitadTitleBinding;->incldLayoutPowercodeHint:Lcom/warefly/checkscan/databinding/LayoutPowercodeDescriptionBinding;

    iget-object v0, p0, Lcom/warefly/checkscan/databinding/LayoutPowercodeDescriptionBinding;->tvPowercodeDescription:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/warefly/checkscan/databinding/LayoutPowercodeDescriptionBinding;->timerContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/warefly/checkscan/databinding/LayoutPowercodeDescriptionBinding;->ivLogo:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/databinding/LayoutPowercodeDescriptionBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final setPowerCodeHotDescription(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;->n()Lcom/warefly/checkscan/databinding/FragmentAdmitadNewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentAdmitadNewBinding;->layoutTitle:Lcom/warefly/checkscan/databinding/ItemAdmitadTitleBinding;

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/ItemAdmitadTitleBinding;->incldLayoutPowercodeHint:Lcom/warefly/checkscan/databinding/LayoutPowercodeDescriptionBinding;

    iget-object v0, p0, Lcom/warefly/checkscan/databinding/LayoutPowercodeDescriptionBinding;->tvPowercodeDescription:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/warefly/checkscan/databinding/LayoutPowercodeDescriptionBinding;->tvBottomValue:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/databinding/LayoutPowercodeDescriptionBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final setPromocodesInfo(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lgr6;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;->s:Leu1;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Leu1;->submitList(Ljava/util/List;)V

    :cond_0
    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;->n()Lcom/warefly/checkscan/databinding/FragmentAdmitadNewBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/FragmentAdmitadNewBinding;->layoutPromocodesCoupons:Lcom/warefly/checkscan/databinding/ItemAdmitadPromocodeCouponsBinding;

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/ItemAdmitadPromocodeCouponsBinding;->btnSeeAll:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Llb7;

    new-instance v2, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment$k;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment$k;-><init>(Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;)V

    invoke-direct {v1, v2}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemAdmitadPromocodeCouponsBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final setStepsInfo(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lla8;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;->n()Lcom/warefly/checkscan/databinding/FragmentAdmitadNewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentAdmitadNewBinding;->layoutGetCashbackInfo:Lcom/warefly/checkscan/databinding/ItemAdmitadGetCashbackDescriptionBinding;

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/ItemAdmitadGetCashbackDescriptionBinding;->tvAdmitadGetCashbackTitle:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;->t:Leu1;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Leu1;->submitList(Ljava/util/List;)V

    :cond_0
    invoke-virtual {v0}, Lcom/warefly/checkscan/databinding/ItemAdmitadGetCashbackDescriptionBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final shareCard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-static {p1, p2, p3, p4}, Lm2;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;->j:Los7;

    if-eqz v0, :cond_0

    const v1, 0x7f1400bc

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p0, v1, p3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment$l;

    invoke-direct {v5, p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment$l;-><init>(Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;)V

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Los7;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lll3;)Lrx1;

    move-result-object p1

    const-string p2, "ShareCard"

    invoke-virtual {p0, p1, p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->f(Lcp2;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final showAllTerms(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lux5;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;->n()Lcom/warefly/checkscan/databinding/FragmentAdmitadNewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentAdmitadNewBinding;->layoutTitle:Lcom/warefly/checkscan/databinding/ItemAdmitadTitleBinding;

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/ItemAdmitadTitleBinding;->viewRewards:Lcom/warefly/checkscan/databinding/ItemAdmitadRewardsBinding;

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/ItemAdmitadRewardsBinding;->overlapShadow:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/ItemAdmitadRewardsBinding;->btnMoreTerms:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;->q:Leu1;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Leu1;->submitList(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final showFavoriteStatus(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;->n()Lcom/warefly/checkscan/databinding/FragmentAdmitadNewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentAdmitadNewBinding;->viewToolbar:Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;->btnFave:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void
.end method

.method public final showFavoriteStatusIsChanged(ZZ)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;->k:Lcom/warefly/checkscan/presentation/bonuses/behaviors/AddedToFavesDialog;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    new-instance p2, Lcom/warefly/checkscan/presentation/bonuses/behaviors/AddedToFavesDialog;

    invoke-direct {p2, v0, p1}, Lcom/warefly/checkscan/presentation/bonuses/behaviors/AddedToFavesDialog;-><init>(Landroid/content/Context;Z)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;->k:Lcom/warefly/checkscan/presentation/bonuses/behaviors/AddedToFavesDialog;

    invoke-virtual {p2}, Landroid/app/Dialog;->show()V

    return-void

    :cond_1
    iget-object p2, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;->l:Lcom/warefly/checkscan/presentation/bonuses/behaviors/RemovedFromFavesDialog;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    :cond_2
    new-instance p2, Lcom/warefly/checkscan/presentation/bonuses/behaviors/RemovedFromFavesDialog;

    invoke-direct {p2, v0, p1}, Lcom/warefly/checkscan/presentation/bonuses/behaviors/RemovedFromFavesDialog;-><init>(Landroid/content/Context;Z)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;->l:Lcom/warefly/checkscan/presentation/bonuses/behaviors/RemovedFromFavesDialog;

    invoke-virtual {p2}, Landroid/app/Dialog;->show()V

    :cond_3
    return-void
.end method

.method public final showLoading(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;->n()Lcom/warefly/checkscan/databinding/FragmentAdmitadNewBinding;

    move-result-object p0

    iget-object v0, p0, Lcom/warefly/checkscan/databinding/FragmentAdmitadNewBinding;->allBlocks:Landroidx/constraintlayout/widget/ConstraintLayout;

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

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentAdmitadNewBinding;->viewLoading:Lcom/warefly/checkscan/databinding/LayoutPartnerLoadingPlaceholderBinding;

    invoke-virtual {p0}, Lcom/warefly/checkscan/databinding/LayoutPartnerLoadingPlaceholderBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final showLoadingDialog(Z)V
    .locals 1

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;->n:Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    if-eqz p1, :cond_1

    sget-object p1, Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;->d:Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog$a;

    invoke-static {p1}, Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog$a;->b(Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog$a;)Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->m(Lcom/warefly/checkscan/core/ui/base/dialogs/FullScreenDialog;)V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;->n:Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

    :cond_1
    return-void
.end method

.method public final showMoreCashbackButton(Lr31;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;->n()Lcom/warefly/checkscan/databinding/FragmentAdmitadNewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentAdmitadNewBinding;->layoutTitle:Lcom/warefly/checkscan/databinding/ItemAdmitadTitleBinding;

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/ItemAdmitadTitleBinding;->btnMoreCashbackDescription:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v1, p1, Lr31;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Llb7;

    new-instance v2, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment$m;

    invoke-direct {v2, p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment$m;-><init>(Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;Lr31;)V

    invoke-direct {v1, v2}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final showMoreCashbackDialog(Lr31;J)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v0, v0

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;->p:Lcom/warefly/checkscan/presentation/bonuses/shopPage/howGetCashbackDialog/view/HowGetMoreCashbackDialog;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Lcom/warefly/checkscan/presentation/bonuses/shopPage/howGetCashbackDialog/view/HowGetMoreCashbackDialog;

    invoke-direct {v2, v1, p1, p2, p3}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/howGetCashbackDialog/view/HowGetMoreCashbackDialog;-><init>(Landroid/content/Context;Lr31;J)V

    invoke-virtual {v2}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setMaxHeight(I)V

    invoke-virtual {v2}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setPeekHeight(I)V

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    iput-object v2, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;->p:Lcom/warefly/checkscan/presentation/bonuses/shopPage/howGetCashbackDialog/view/HowGetMoreCashbackDialog;

    :cond_1
    return-void
.end method

.method public final showOfferExpired()V
    .locals 1

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;->n()Lcom/warefly/checkscan/databinding/FragmentAdmitadNewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentAdmitadNewBinding;->layoutOfferExpired:Lcom/warefly/checkscan/databinding/ItemAdmitadOfferTakeOffBinding;

    invoke-virtual {p0}, Lcom/warefly/checkscan/databinding/ItemAdmitadOfferTakeOffBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final showOrd(Lb06;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;->n()Lcom/warefly/checkscan/databinding/FragmentAdmitadNewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentAdmitadNewBinding;->layoutTitle:Lcom/warefly/checkscan/databinding/ItemAdmitadTitleBinding;

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/ItemAdmitadTitleBinding;->tvOfd:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v1, p1, Lb06;->b:Z

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p1, Lb06;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    new-instance v1, Llb7;

    new-instance v2, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment$n;

    invoke-direct {v2, p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment$n;-><init>(Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;Lb06;)V

    invoke-direct {v1, v2}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final showOrdDialog(Lb06;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;->o:Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;

    invoke-direct {v1, v0, p1}, Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;-><init>(Landroid/content/Context;Lb06;)V

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    iput-object v1, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;->o:Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;

    :cond_1
    return-void
.end method

.method public final showPromoView(Lzn6;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lzn6;->c:Ljava/lang/String;

    iget-object v1, p1, Lzn6;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;->n()Lcom/warefly/checkscan/databinding/FragmentAdmitadNewBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/warefly/checkscan/databinding/FragmentAdmitadNewBinding;->layoutTitle:Lcom/warefly/checkscan/databinding/ItemAdmitadTitleBinding;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;->i:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lv05;

    iget-object v3, v2, Lcom/warefly/checkscan/databinding/ItemAdmitadTitleBinding;->tvPromo:Landroid/widget/TextView;

    iget-object p1, p1, Lzn6;->b:Ljava/lang/String;

    invoke-virtual {p0, v3, p1}, Lv05;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    :try_start_0
    invoke-static {v1}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    iget-object p0, v2, Lcom/warefly/checkscan/databinding/ItemAdmitadTitleBinding;->layoutPromo:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p1}, Lds2;->a(Landroid/graphics/drawable/Drawable;I)V

    :cond_0
    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :try_start_1
    invoke-static {v0}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    iget-object p0, v2, Lcom/warefly/checkscan/databinding/ItemAdmitadTitleBinding;->tvPromo:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    sget-object p0, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    iget-object p0, v2, Lcom/warefly/checkscan/databinding/ItemAdmitadTitleBinding;->layoutPromo:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final showRedirectDialog(Lsy8;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;->m:Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/view/RedirectDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/view/RedirectDialog;

    invoke-direct {v1, v0, p1, p2, p3}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/view/RedirectDialog;-><init>(Landroid/content/Context;Lsy8;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;->m:Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/view/RedirectDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method public final showRedirectInfo(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;->n()Lcom/warefly/checkscan/databinding/FragmentAdmitadNewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentAdmitadNewBinding;->layoutTitle:Lcom/warefly/checkscan/databinding/ItemAdmitadTitleBinding;

    iget-object v0, p0, Lcom/warefly/checkscan/databinding/ItemAdmitadTitleBinding;->tvRedirectHint:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/ItemAdmitadTitleBinding;->layoutRedirectHint:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
