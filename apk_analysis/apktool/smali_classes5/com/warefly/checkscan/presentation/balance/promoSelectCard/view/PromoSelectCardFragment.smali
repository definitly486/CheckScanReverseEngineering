.class public final Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardFragment;
.super Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalFragment<",
        "Lcom/warefly/checkscan/databinding/FragmentPromoSelectCardBinding;",
        "Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;",
        ">;",
        "Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardView;"
    }
.end annotation


# static fields
.field public static final s:Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardFragment$a;

.field public static final synthetic t:[Lze4;
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
.field public final m:I

.field public final n:Lol4;

.field public final o:Ljava/lang/String;

.field public p:Lcom/warefly/checkscan/shared/simpleInfoBottomSheet/SimpleInfoBottomSheet;

.field public presenter:Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;

.field public q:Lnw7;

.field public r:Leu1;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/databinding/FragmentPromoSelectCardBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardFragment;->t:[Lze4;

    new-instance v0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardFragment$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardFragment;->s:Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalFragment;-><init>()V

    const v0, 0x7f0d00e4

    iput v0, p0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardFragment;->m:I

    new-instance v0, Lol4;

    const-class v1, Lcom/warefly/checkscan/databinding/FragmentPromoSelectCardBinding;

    invoke-direct {v0, v1}, Lol4;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardFragment;->n:Lol4;

    const-string v0, "PROMO_SELECT_CARD_TAG"

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardFragment;->o:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final handleLoading(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardFragment;->q()Lcom/warefly/checkscan/databinding/FragmentPromoSelectCardBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentPromoSelectCardBinding;->incldLoading:Lcom/warefly/checkscan/core/ui/databinding/LayoutSpinnerLoadingBinding;

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

.method public final i()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardFragment;->m:I

    return p0
.end method

.method public final k()Z
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardFragment;->r()Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;->onBackPressed()V

    const/4 p0, 0x0

    return p0
.end method

.method public final bridge synthetic n()Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter;
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardFragment;->r()Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;

    move-result-object p0

    return-object p0
.end method

.method public final o()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardFragment;->o:Ljava/lang/String;

    return-object p0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardFragment;->q()Lcom/warefly/checkscan/databinding/FragmentPromoSelectCardBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/FragmentPromoSelectCardBinding;->toolbar:Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarTitle18TransparentBinding;

    iget-object p1, p1, Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarTitle18TransparentBinding;->ivBtnBack:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Llb7;

    new-instance v0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardFragment$b;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardFragment$b;-><init>(Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardFragment;)V

    invoke-direct {p2, v0}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardFragment;->q()Lcom/warefly/checkscan/databinding/FragmentPromoSelectCardBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/FragmentPromoSelectCardBinding;->incldError:Lcom/warefly/checkscan/core/ui/databinding/LayoutSimpleTryAgainBinding;

    iget-object p1, p1, Lcom/warefly/checkscan/core/ui/databinding/LayoutSimpleTryAgainBinding;->btnTryAgain:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Llb7;

    new-instance v0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardFragment$c;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardFragment$c;-><init>(Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardFragment;)V

    invoke-direct {p2, v0}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardFragment;->q()Lcom/warefly/checkscan/databinding/FragmentPromoSelectCardBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/FragmentPromoSelectCardBinding;->appbarMotivation:Lcom/google/android/material/appbar/AppBarLayout;

    new-instance p2, Lqo6;

    invoke-direct {p2, p0}, Lqo6;-><init>(Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardFragment;)V

    invoke-virtual {p1, p2}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardFragment;->q()Lcom/warefly/checkscan/databinding/FragmentPromoSelectCardBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/FragmentPromoSelectCardBinding;->rvContent:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Leu1;

    new-instance v0, Lnp6;

    sget-object v1, Lmp6;->c:Lmp6;

    invoke-direct {v0, v1}, Lvd9;-><init>(Ldm3;)V

    new-instance v1, Lzo6;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardFragment;->r()Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;

    move-result-object v2

    invoke-direct {v1, v2}, Lzo6;-><init>(Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;)V

    new-instance v2, Ln50;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardFragment;->r()Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;

    move-result-object v3

    invoke-direct {v2, v3}, Ln50;-><init>(Lrj9;)V

    new-instance v3, Lkp6;

    sget-object v4, Ljp6;->c:Ljp6;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lkp6;-><init>(Ldm3;I)V

    new-instance v4, Lmo6;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardFragment;->r()Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;

    move-result-object v6

    invoke-direct {v4, v6}, Lmo6;-><init>(Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;)V

    new-instance v6, Lta;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardFragment;->r()Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;

    move-result-object v7

    invoke-direct {v6, v7}, Lta;-><init>(Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;)V

    new-instance v7, Lss4;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardFragment;->r()Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;

    move-result-object v8

    invoke-direct {v7, v8}, Lss4;-><init>(Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;)V

    const/4 v8, 0x7

    new-array v8, v8, [Lil2;

    aput-object v0, v8, v5

    const/4 v0, 0x1

    aput-object v1, v8, v0

    const/4 v1, 0x2

    aput-object v2, v8, v1

    const/4 v1, 0x3

    aput-object v3, v8, v1

    const/4 v1, 0x4

    aput-object v4, v8, v1

    const/4 v1, 0x5

    aput-object v6, v8, v1

    const/4 v1, 0x6

    aput-object v7, v8, v1

    invoke-direct {p2, v8}, Leu1;-><init>([Lil2;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardFragment;->r:Leu1;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v1, v0, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance p2, Lro6;

    invoke-direct {p2, p0}, Lro6;-><init>(Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardFragment;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    new-instance v0, Lnw7;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardFragment;->q()Lcom/warefly/checkscan/databinding/FragmentPromoSelectCardBinding;

    move-result-object p1

    iget-object v1, p1, Lcom/warefly/checkscan/databinding/FragmentPromoSelectCardBinding;->rvContent:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardFragment;->r()Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;->getShowcaseRenderState()Lq41;

    move-result-object v2

    new-instance v3, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardFragment$d;

    invoke-direct {v3, p0}, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardFragment$d;-><init>(Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardFragment;)V

    new-instance v4, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardFragment$e;

    invoke-direct {v4, p0}, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardFragment$e;-><init>(Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardFragment;)V

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v5}, Lnw7;-><init>(Landroidx/recyclerview/widget/RecyclerView;Lqw7;Lnl3;Lnl3;F)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p1}, Lnw7;->a(Landroidx/lifecycle/LifecycleOwner;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardFragment;->q:Lnw7;

    return-void
.end method

.method public final providePresenter()Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;
    .locals 20

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "PROMO_ID_PARAM"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "PROMO_KEY_PARAM"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, v1

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "TASK_ID_PARAM"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, -0x1

    if-eq v0, v5, :cond_1

    move-object v5, v2

    goto :goto_1

    :cond_1
    move-object v5, v1

    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v2, "SOURCE_PARAM"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_2

    :cond_2
    move-object v6, v1

    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v2, "SOURCE_TASK_ID_PARAM"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v0, :cond_3

    move-object v7, v2

    goto :goto_3

    :cond_3
    move-object v7, v1

    :goto_3
    invoke-static/range {p0 .. p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v0

    const-class v2, Le41;

    invoke-static {v2, v0, v1, v1}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Le41;

    invoke-static/range {p0 .. p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v0

    const-class v2, Lac7;

    invoke-static {v2, v0, v1, v1}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lac7;

    invoke-static/range {p0 .. p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v0

    const-class v2, Lzb7;

    invoke-static {v2, v0, v1, v1}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lzb7;

    invoke-static/range {p0 .. p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v0

    const-class v2, Lop3;

    invoke-static {v2, v0, v1, v1}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lop3;

    invoke-static/range {p0 .. p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v0

    const-class v2, Lu73;

    invoke-static {v2, v0, v1, v1}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lu73;

    invoke-static/range {p0 .. p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v0

    const-class v2, Lks5;

    invoke-static {v2, v0, v1, v1}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lks5;

    invoke-static/range {p0 .. p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v0

    const-class v2, Lb40;

    invoke-static {v2, v0, v1, v1}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lb40;

    invoke-virtual/range {p0 .. p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->j()Lba8;

    move-result-object v0

    invoke-static/range {p0 .. p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v2

    const-class v15, Luf3;

    invoke-static {v15, v2, v0, v1}, Ln2;->c(Ljava/lang/Class;Lze7;Lba8;Li36;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Luf3;

    invoke-static/range {p0 .. p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v0

    const-class v2, Ljf6;

    invoke-static {v2, v0, v1, v1}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Ljf6;

    invoke-static/range {p0 .. p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v0

    const-class v2, Llo7;

    invoke-static {v2, v0, v1, v1}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Llo7;

    invoke-static/range {p0 .. p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v0

    const-class v2, Lmk1;

    invoke-static {v2, v0, v1, v1}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Lmk1;

    invoke-static/range {p0 .. p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v0

    const-class v2, Liw2;

    invoke-static {v2, v0, v1, v1}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Liw2;

    new-instance v2, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;

    invoke-direct/range {v2 .. v19}, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;-><init>(ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Le41;Lac7;Lzb7;Lop3;Lu73;Lks5;Lb40;Luf3;Llo7;Lmk1;Ljf6;Liw2;)V

    return-object v2

    :cond_4
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Promo id can not be null for PromoSelectCardFragment"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final q()Lcom/warefly/checkscan/databinding/FragmentPromoSelectCardBinding;
    .locals 2

    sget-object v0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardFragment;->t:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardFragment;->n:Lol4;

    invoke-virtual {v1, p0, v0}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/databinding/FragmentPromoSelectCardBinding;

    return-object p0
.end method

.method public final r()Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardFragment;->presenter:Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "presenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final setToolbarTitle(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardFragment;->q()Lcom/warefly/checkscan/databinding/FragmentPromoSelectCardBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentPromoSelectCardBinding;->toolbar:Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarTitle18TransparentBinding;

    iget-object p0, p0, Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarTitle18TransparentBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final showError(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardFragment;->q()Lcom/warefly/checkscan/databinding/FragmentPromoSelectCardBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentPromoSelectCardBinding;->incldError:Lcom/warefly/checkscan/core/ui/databinding/LayoutSimpleTryAgainBinding;

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

.method public final showFullTerms(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardFragment;->p:Lcom/warefly/checkscan/shared/simpleInfoBottomSheet/SimpleInfoBottomSheet;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    new-instance v1, Lcom/warefly/checkscan/shared/simpleInfoBottomSheet/SimpleInfoBottomSheet;

    invoke-direct {v1, v0, p1, p2}, Lcom/warefly/checkscan/shared/simpleInfoBottomSheet/SimpleInfoBottomSheet;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardFragment;->p:Lcom/warefly/checkscan/shared/simpleInfoBottomSheet/SimpleInfoBottomSheet;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method public final showItems(Ljava/util/List;)V
    .locals 1
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

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardFragment;->r:Leu1;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Leu1;->submitList(Ljava/util/List;)V

    :cond_0
    iget-object p1, p0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardFragment;->q:Lnw7;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardFragment;->r()Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;->getShowcaseRows()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnw7;->d(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public final showMotivationBanner(Lap6;)V
    .locals 7

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardFragment;->q()Lcom/warefly/checkscan/databinding/FragmentPromoSelectCardBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentPromoSelectCardBinding;->llMotivationBanner:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardFragment;->q()Lcom/warefly/checkscan/databinding/FragmentPromoSelectCardBinding;

    move-result-object p1

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/FragmentPromoSelectCardBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    const v1, 0x7f060038

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardFragment;->q()Lcom/warefly/checkscan/databinding/FragmentPromoSelectCardBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/FragmentPromoSelectCardBinding;->toolbar:Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarTitle18TransparentBinding;

    invoke-virtual {p1}, Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarTitle18TransparentBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardFragment;->q()Lcom/warefly/checkscan/databinding/FragmentPromoSelectCardBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentPromoSelectCardBinding;->toolbar:Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarTitle18TransparentBinding;

    iget-object p0, p0, Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarTitle18TransparentBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1
    iget-object v3, p1, Lap6;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardFragment;->q()Lcom/warefly/checkscan/databinding/FragmentPromoSelectCardBinding;

    move-result-object v4

    invoke-virtual {v4}, Lcom/warefly/checkscan/databinding/FragmentPromoSelectCardBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v5

    const v6, 0x7f0604fc

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v5, v4, Lcom/warefly/checkscan/databinding/FragmentPromoSelectCardBinding;->toolbar:Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarTitle18TransparentBinding;

    invoke-virtual {v5}, Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarTitle18TransparentBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v5, v4, Lcom/warefly/checkscan/databinding/FragmentPromoSelectCardBinding;->tvMotivationTitle:Landroid/widget/TextView;

    iget-object v6, p1, Lap6;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, v4, Lcom/warefly/checkscan/databinding/FragmentPromoSelectCardBinding;->tvMotivationDescription:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, v4, Lcom/warefly/checkscan/databinding/FragmentPromoSelectCardBinding;->tvMotivationDescription:Landroid/widget/TextView;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v3, :cond_3

    invoke-static {v3}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v3, v2

    goto :goto_2

    :cond_3
    :goto_1
    move v3, v1

    :goto_2
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p1, Lap6;->c:Lap6$a;

    if-eqz p1, :cond_4

    iget-object v0, v4, Lcom/warefly/checkscan/databinding/FragmentPromoSelectCardBinding;->tvFullTerms:Landroid/widget/TextView;

    iget-object v1, p1, Lap6$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v4, Lcom/warefly/checkscan/databinding/FragmentPromoSelectCardBinding;->llFullTerms:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v4, Lcom/warefly/checkscan/databinding/FragmentPromoSelectCardBinding;->llFullTerms:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Llb7;

    new-instance v2, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardFragment$f;

    invoke-direct {v2, p0, p1}, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardFragment$f;-><init>(Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardFragment;Lap6$a;)V

    invoke-direct {v1, v2}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_4
    iget-object p0, v4, Lcom/warefly/checkscan/databinding/FragmentPromoSelectCardBinding;->llFullTerms:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, v4, Lcom/warefly/checkscan/databinding/FragmentPromoSelectCardBinding;->llFullTerms:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
