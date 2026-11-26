.class public final Lcom/warefly/checkscan/products/presentation/shop/view/ShopFragment;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/products/presentation/shop/view/ShopView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/products/presentation/shop/view/ShopFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment<",
        "Lcom/warefly/checkscan/products/databinding/FragmentShopBinding;",
        ">;",
        "Lcom/warefly/checkscan/products/presentation/shop/view/ShopView;"
    }
.end annotation


# static fields
.field public static final k:Lcom/warefly/checkscan/products/presentation/shop/view/ShopFragment$a;

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

.field public h:Leu1;

.field public final i:Lcom/warefly/checkscan/products/presentation/shop/view/ShopFragment$b;

.field public j:Lcom/warefly/checkscan/shared/simpleInfoBottomSheet/SimpleInfoBottomSheet;

.field public presenter:Lcom/warefly/checkscan/products/presentation/shop/presenter/ShopPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/products/presentation/shop/view/ShopFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/products/databinding/FragmentShopBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/products/presentation/shop/view/ShopFragment;->l:[Lze4;

    new-instance v0, Lcom/warefly/checkscan/products/presentation/shop/view/ShopFragment$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/warefly/checkscan/products/presentation/shop/view/ShopFragment;->k:Lcom/warefly/checkscan/products/presentation/shop/view/ShopFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;-><init>()V

    const v0, 0x7f0d00f6

    iput v0, p0, Lcom/warefly/checkscan/products/presentation/shop/view/ShopFragment;->f:I

    new-instance v0, Lol4;

    const-class v1, Lcom/warefly/checkscan/products/databinding/FragmentShopBinding;

    invoke-direct {v0, v1}, Lol4;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/warefly/checkscan/products/presentation/shop/view/ShopFragment;->g:Lol4;

    new-instance v0, Lcom/warefly/checkscan/products/presentation/shop/view/ShopFragment$b;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/products/presentation/shop/view/ShopFragment$b;-><init>(Lcom/warefly/checkscan/products/presentation/shop/view/ShopFragment;)V

    iput-object v0, p0, Lcom/warefly/checkscan/products/presentation/shop/view/ShopFragment;->i:Lcom/warefly/checkscan/products/presentation/shop/view/ShopFragment$b;

    return-void
.end method


# virtual methods
.method public final i()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/products/presentation/shop/view/ShopFragment;->f:I

    return p0
.end method

.method public final k()Z
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/products/presentation/shop/view/ShopFragment;->o()Lcom/warefly/checkscan/products/presentation/shop/presenter/ShopPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/products/presentation/shop/presenter/ShopPresenter;->onBackClicked()V

    const/4 p0, 0x0

    return p0
.end method

.method public final n()Lcom/warefly/checkscan/products/databinding/FragmentShopBinding;
    .locals 2

    sget-object v0, Lcom/warefly/checkscan/products/presentation/shop/view/ShopFragment;->l:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/warefly/checkscan/products/presentation/shop/view/ShopFragment;->g:Lol4;

    invoke-virtual {v1, p0, v0}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/products/databinding/FragmentShopBinding;

    return-object p0
.end method

.method public final o()Lcom/warefly/checkscan/products/presentation/shop/presenter/ShopPresenter;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/products/presentation/shop/view/ShopFragment;->presenter:Lcom/warefly/checkscan/products/presentation/shop/presenter/ShopPresenter;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "presenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 10

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/products/presentation/shop/view/ShopFragment;->n()Lcom/warefly/checkscan/products/databinding/FragmentShopBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/products/databinding/FragmentShopBinding;->rvContent:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p2, v0, v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance p2, Leu1;

    new-instance v0, Lan;

    invoke-virtual {p0}, Lcom/warefly/checkscan/products/presentation/shop/view/ShopFragment;->o()Lcom/warefly/checkscan/products/presentation/shop/presenter/ShopPresenter;

    move-result-object v3

    invoke-direct {v0, v3}, Lan;-><init>(Lan$b;)V

    new-instance v3, Lr10;

    sget-object v4, Lqu7;->c:Lqu7;

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lr10;-><init>(Ldm3;I)V

    new-instance v4, Lgh6;

    invoke-direct {v4}, Lgh6;-><init>()V

    new-instance v6, Ldw8;

    invoke-direct {v6}, Ldw8;-><init>()V

    new-instance v7, Liv1;

    invoke-virtual {p0}, Lcom/warefly/checkscan/products/presentation/shop/view/ShopFragment;->o()Lcom/warefly/checkscan/products/presentation/shop/presenter/ShopPresenter;

    move-result-object v8

    invoke-direct {v7, v8}, Liv1;-><init>(Lcom/warefly/checkscan/products/presentation/shop/presenter/ShopPresenter;)V

    new-instance v8, Laj6;

    invoke-virtual {p0}, Lcom/warefly/checkscan/products/presentation/shop/view/ShopFragment;->o()Lcom/warefly/checkscan/products/presentation/shop/presenter/ShopPresenter;

    move-result-object v9

    invoke-direct {v8, v9}, Laj6;-><init>(Lcom/warefly/checkscan/products/presentation/shop/presenter/ShopPresenter;)V

    const/4 v9, 0x6

    new-array v9, v9, [Lil2;

    aput-object v0, v9, v2

    aput-object v3, v9, v1

    const/4 v0, 0x2

    aput-object v4, v9, v0

    aput-object v6, v9, v5

    const/4 v2, 0x4

    aput-object v7, v9, v2

    const/4 v2, 0x5

    aput-object v8, v9, v2

    invoke-direct {p2, v9}, Leu1;-><init>([Lil2;)V

    iput-object p2, p0, Lcom/warefly/checkscan/products/presentation/shop/view/ShopFragment;->h:Leu1;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance p2, Lpu7;

    invoke-direct {p2}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/products/presentation/shop/view/ShopFragment;->n()Lcom/warefly/checkscan/products/databinding/FragmentShopBinding;

    move-result-object p1

    iget-object p2, p1, Lcom/warefly/checkscan/products/databinding/FragmentShopBinding;->incldError:Lcom/warefly/checkscan/core/ui/databinding/LayoutSimpleTryAgainBinding;

    iget-object p2, p2, Lcom/warefly/checkscan/core/ui/databinding/LayoutSimpleTryAgainBinding;->btnTryAgain:Landroid/widget/TextView;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Llb7;

    new-instance v3, Lc71;

    invoke-direct {v3, p0, v0}, Lc71;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v2, v3}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p1, Lcom/warefly/checkscan/products/databinding/FragmentShopBinding;->toolbar:Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarTitle18Binding;

    iget-object p2, p2, Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarTitle18Binding;->ivBtnBack:Landroid/widget/ImageView;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v2, Ld71;

    invoke-direct {v2, p0, v1}, Ld71;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v0, v2}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Lcom/warefly/checkscan/products/databinding/FragmentShopBinding;->btnScan:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Llb7;

    new-instance v0, Lyy4;

    invoke-direct {v0, p0}, Lyy4;-><init>(Lcom/warefly/checkscan/products/presentation/shop/view/ShopFragment;)V

    invoke-direct {p2, v0}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final providePresenter()Lcom/warefly/checkscan/products/presentation/shop/presenter/ShopPresenter;
    .locals 7

    new-instance v0, Lcom/warefly/checkscan/products/presentation/shop/presenter/ShopPresenter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "SHOP_ID_KEY"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "IS_MERCHANT_KEY"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v3

    const-class v4, Lh83;

    const/4 v5, 0x0

    invoke-static {v4, v3, v5, v5}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lh83;

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->j()Lba8;

    move-result-object v4

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object p0

    const-class v6, Luf3;

    invoke-static {v6, p0, v4, v5}, Ln2;->c(Ljava/lang/Class;Lze7;Lba8;Li36;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Luf3;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/warefly/checkscan/products/presentation/shop/presenter/ShopPresenter;-><init>(IZLh83;Luf3;)V

    return-object v0
.end method

.method public final setMerchantScrollListener()V
    .locals 1

    invoke-virtual {p0}, Lcom/warefly/checkscan/products/presentation/shop/view/ShopFragment;->n()Lcom/warefly/checkscan/products/databinding/FragmentShopBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/products/databinding/FragmentShopBinding;->rvContent:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/warefly/checkscan/products/presentation/shop/view/ShopFragment;->i:Lcom/warefly/checkscan/products/presentation/shop/view/ShopFragment$b;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public final setToolbarTitle(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/products/presentation/shop/view/ShopFragment;->n()Lcom/warefly/checkscan/products/databinding/FragmentShopBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/products/databinding/FragmentShopBinding;->toolbar:Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarTitle18Binding;

    iget-object p0, p0, Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarTitle18Binding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
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

    iget-object p0, p0, Lcom/warefly/checkscan/products/presentation/shop/view/ShopFragment;->h:Leu1;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Leu1;->submitList(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final showError(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/products/presentation/shop/view/ShopFragment;->n()Lcom/warefly/checkscan/products/databinding/FragmentShopBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/products/databinding/FragmentShopBinding;->incldError:Lcom/warefly/checkscan/core/ui/databinding/LayoutSimpleTryAgainBinding;

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

.method public final showImage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/warefly/checkscan/products/presentation/shop/view/ShopFragment;->n()Lcom/warefly/checkscan/products/databinding/FragmentShopBinding;

    move-result-object p0

    iget-object v0, p0, Lcom/warefly/checkscan/products/databinding/FragmentShopBinding;->toolbarBanner:Lcom/google/android/material/appbar/AppBarLayout;

    new-instance v1, Lou7;

    invoke-direct {v1, p0}, Lou7;-><init>(Lcom/warefly/checkscan/products/databinding/FragmentShopBinding;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    iget-object v0, p0, Lcom/warefly/checkscan/products/databinding/FragmentShopBinding;->toolbarBanner:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/warefly/checkscan/products/databinding/FragmentShopBinding;->ivLogo:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object v0

    invoke-virtual {v0, p2}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object p2

    iget-object v0, p0, Lcom/warefly/checkscan/products/databinding/FragmentShopBinding;->ivLogo:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Lh37;->L(Landroid/widget/ImageView;)V

    iget-object p2, p0, Lcom/warefly/checkscan/products/databinding/FragmentShopBinding;->ivBanner:Lcom/warefly/checkscan/core/ui/SafeImageView;

    invoke-static {p2}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object p2

    invoke-virtual {p2, p1}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object p1

    new-instance p2, Lcom/warefly/checkscan/products/presentation/shop/view/ShopFragment$c;

    invoke-direct {p2, p0}, Lcom/warefly/checkscan/products/presentation/shop/view/ShopFragment$c;-><init>(Lcom/warefly/checkscan/products/databinding/FragmentShopBinding;)V

    invoke-virtual {p1, p2}, Lh37;->F(Lo37;)Lh37;

    move-result-object p0

    invoke-virtual {p0}, Lh37;->O()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/warefly/checkscan/products/presentation/shop/view/ShopFragment;->n()Lcom/warefly/checkscan/products/databinding/FragmentShopBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/products/databinding/FragmentShopBinding;->toolbarBanner:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/google/android/material/appbar/AppBarLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/products/presentation/shop/view/ShopFragment;->n()Lcom/warefly/checkscan/products/databinding/FragmentShopBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/products/databinding/FragmentShopBinding;->rvContent:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
    const-string p0, "null cannot be cast to non-null type androidx.coordinatorlayout.widget.CoordinatorLayout.LayoutParams"

    invoke-static {p0}, Lo2;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final showInfoBottomSheet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/warefly/checkscan/products/presentation/shop/view/ShopFragment;->j:Lcom/warefly/checkscan/shared/simpleInfoBottomSheet/SimpleInfoBottomSheet;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    new-instance v1, Lcom/warefly/checkscan/shared/simpleInfoBottomSheet/SimpleInfoBottomSheet;

    invoke-direct {v1, v0, p1, p2}, Lcom/warefly/checkscan/shared/simpleInfoBottomSheet/SimpleInfoBottomSheet;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/warefly/checkscan/products/presentation/shop/view/ShopFragment;->j:Lcom/warefly/checkscan/shared/simpleInfoBottomSheet/SimpleInfoBottomSheet;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method public final showLoading(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/products/presentation/shop/view/ShopFragment;->n()Lcom/warefly/checkscan/products/databinding/FragmentShopBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/products/databinding/FragmentShopBinding;->incldLoading:Lcom/warefly/checkscan/core/ui/databinding/LayoutSpinnerLoadingBinding;

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

.method public final showScanButton(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/products/presentation/shop/view/ShopFragment;->n()Lcom/warefly/checkscan/products/databinding/FragmentShopBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/products/databinding/FragmentShopBinding;->layoutButtonScan:Lcom/google/android/material/card/MaterialCardView;

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

.method public final showToolbarTitle(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/products/presentation/shop/view/ShopFragment;->n()Lcom/warefly/checkscan/products/databinding/FragmentShopBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/products/databinding/FragmentShopBinding;->toolbar:Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarTitle18Binding;

    iget-object p0, p0, Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarTitle18Binding;->tvTitle:Landroid/widget/TextView;

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
