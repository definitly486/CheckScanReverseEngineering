.class public final Lcom/warefly/checkscan/products/presentation/product/view/ProductFragment;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/products/presentation/product/view/ProductView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/products/presentation/product/view/ProductFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment<",
        "Lcom/warefly/checkscan/products/databinding/FragmentProductBinding;",
        ">;",
        "Lcom/warefly/checkscan/products/presentation/product/view/ProductView;"
    }
.end annotation


# static fields
.field public static final j:Lcom/warefly/checkscan/products/presentation/product/view/ProductFragment$a;

.field public static final synthetic k:[Lze4;
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

.field public i:Lcom/warefly/checkscan/shared/infoBottomSheet/presentation/InfoBottomSheet;

.field public presenter:Lcom/warefly/checkscan/products/presentation/product/presenter/ProductPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/products/presentation/product/view/ProductFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/products/databinding/FragmentProductBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/products/presentation/product/view/ProductFragment;->k:[Lze4;

    new-instance v0, Lcom/warefly/checkscan/products/presentation/product/view/ProductFragment$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/warefly/checkscan/products/presentation/product/view/ProductFragment;->j:Lcom/warefly/checkscan/products/presentation/product/view/ProductFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;-><init>()V

    const v0, 0x7f0d00e0

    iput v0, p0, Lcom/warefly/checkscan/products/presentation/product/view/ProductFragment;->f:I

    new-instance v0, Lol4;

    const-class v1, Lcom/warefly/checkscan/products/databinding/FragmentProductBinding;

    invoke-direct {v0, v1}, Lol4;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/warefly/checkscan/products/presentation/product/view/ProductFragment;->g:Lol4;

    return-void
.end method


# virtual methods
.method public final i()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/products/presentation/product/view/ProductFragment;->f:I

    return p0
.end method

.method public final k()Z
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/products/presentation/product/view/ProductFragment;->o()Lcom/warefly/checkscan/products/presentation/product/presenter/ProductPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/products/presentation/product/presenter/ProductPresenter;->onBackClicked()V

    const/4 p0, 0x0

    return p0
.end method

.method public final n()Lcom/warefly/checkscan/products/databinding/FragmentProductBinding;
    .locals 2

    sget-object v0, Lcom/warefly/checkscan/products/presentation/product/view/ProductFragment;->k:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/warefly/checkscan/products/presentation/product/view/ProductFragment;->g:Lol4;

    invoke-virtual {v1, p0, v0}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/products/databinding/FragmentProductBinding;

    return-object p0
.end method

.method public final o()Lcom/warefly/checkscan/products/presentation/product/presenter/ProductPresenter;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/products/presentation/product/view/ProductFragment;->presenter:Lcom/warefly/checkscan/products/presentation/product/presenter/ProductPresenter;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "presenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 11

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/products/presentation/product/view/ProductFragment;->n()Lcom/warefly/checkscan/products/databinding/FragmentProductBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/products/databinding/FragmentProductBinding;->rvContent:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p2, v0, v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance p2, Leu1;

    new-instance v0, Lan;

    invoke-virtual {p0}, Lcom/warefly/checkscan/products/presentation/product/view/ProductFragment;->o()Lcom/warefly/checkscan/products/presentation/product/presenter/ProductPresenter;

    move-result-object v3

    invoke-direct {v0, v3}, Lan;-><init>(Lan$b;)V

    new-instance v3, Lgh6;

    invoke-direct {v3}, Lgh6;-><init>()V

    new-instance v4, Lw20;

    sget-object v5, Ldh6;->c:Ldh6;

    invoke-direct {v4, v5, v1}, Lw20;-><init>(Ldm3;I)V

    new-instance v5, Lsi6;

    sget-object v6, Lri6;->c:Lri6;

    invoke-direct {v5, v6}, Lvd9;-><init>(Ldm3;)V

    new-instance v6, Lpi6;

    sget-object v7, Loi6;->c:Loi6;

    invoke-direct {v6, v7}, Lvd9;-><init>(Ldm3;)V

    new-instance v7, Lli6;

    invoke-virtual {p0}, Lcom/warefly/checkscan/products/presentation/product/view/ProductFragment;->o()Lcom/warefly/checkscan/products/presentation/product/presenter/ProductPresenter;

    move-result-object v8

    invoke-direct {v7, v8}, Lli6;-><init>(Lcom/warefly/checkscan/products/presentation/product/presenter/ProductPresenter;)V

    new-instance v8, Lnh6;

    sget-object v9, Llh6;->c:Llh6;

    invoke-direct {v8, v9}, Lvd9;-><init>(Ldm3;)V

    new-instance v9, Lcom/warefly/checkscan/shared/infoBottomSheet/presentation/a;

    invoke-virtual {p0}, Lcom/warefly/checkscan/products/presentation/product/view/ProductFragment;->o()Lcom/warefly/checkscan/products/presentation/product/presenter/ProductPresenter;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/warefly/checkscan/shared/infoBottomSheet/presentation/a;-><init>(Lcom/warefly/checkscan/shared/infoBottomSheet/presentation/a$b;)V

    const/16 v10, 0x8

    new-array v10, v10, [Lil2;

    aput-object v0, v10, v2

    aput-object v3, v10, v1

    const/4 v0, 0x2

    aput-object v4, v10, v0

    const/4 v0, 0x3

    aput-object v5, v10, v0

    const/4 v0, 0x4

    aput-object v6, v10, v0

    const/4 v3, 0x5

    aput-object v7, v10, v3

    const/4 v3, 0x6

    aput-object v8, v10, v3

    const/4 v3, 0x7

    aput-object v9, v10, v3

    invoke-direct {p2, v10}, Leu1;-><init>([Lil2;)V

    iput-object p2, p0, Lcom/warefly/checkscan/products/presentation/product/view/ProductFragment;->h:Leu1;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance p2, Lph6;

    invoke-direct {p2}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/products/presentation/product/view/ProductFragment;->n()Lcom/warefly/checkscan/products/databinding/FragmentProductBinding;

    move-result-object p1

    iget-object p2, p1, Lcom/warefly/checkscan/products/databinding/FragmentProductBinding;->incldError:Lcom/warefly/checkscan/core/ui/databinding/LayoutSimpleTryAgainBinding;

    iget-object p2, p2, Lcom/warefly/checkscan/core/ui/databinding/LayoutSimpleTryAgainBinding;->btnTryAgain:Landroid/widget/TextView;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Llb7;

    new-instance v4, Lrb;

    invoke-direct {v4, p0, v0}, Lrb;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v3, v4}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p1, Lcom/warefly/checkscan/products/databinding/FragmentProductBinding;->btnBack:Landroid/widget/ImageView;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v3, Lsb;

    invoke-direct {v3, p0, v1}, Lsb;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v0, v3}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Lcom/warefly/checkscan/products/databinding/FragmentProductBinding;->btnScan:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Llb7;

    new-instance v0, Lqh6;

    invoke-direct {v0, p0, v2}, Lqh6;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p2, v0}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final providePresenter()Lcom/warefly/checkscan/products/presentation/product/presenter/ProductPresenter;
    .locals 6

    new-instance v0, Lcom/warefly/checkscan/products/presentation/product/presenter/ProductPresenter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "PRODUCT_ID_KEY"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v2

    const-class v3, Lo73;

    const/4 v4, 0x0

    invoke-static {v3, v2, v4, v4}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo73;

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->j()Lba8;

    move-result-object v3

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object p0

    const-class v5, Luf3;

    invoke-static {v5, p0, v3, v4}, Ln2;->c(Ljava/lang/Class;Lze7;Lba8;Li36;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Luf3;

    invoke-direct {v0, v1, v2, p0}, Lcom/warefly/checkscan/products/presentation/product/presenter/ProductPresenter;-><init>(ILo73;Luf3;)V

    return-object v0
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

    iget-object p0, p0, Lcom/warefly/checkscan/products/presentation/product/view/ProductFragment;->h:Leu1;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Leu1;->submitList(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final showError(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/products/presentation/product/view/ProductFragment;->n()Lcom/warefly/checkscan/products/databinding/FragmentProductBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/products/databinding/FragmentProductBinding;->incldError:Lcom/warefly/checkscan/core/ui/databinding/LayoutSimpleTryAgainBinding;

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

.method public final showImage(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/products/presentation/product/view/ProductFragment;->n()Lcom/warefly/checkscan/products/databinding/FragmentProductBinding;

    move-result-object p0

    iget-object v0, p0, Lcom/warefly/checkscan/products/databinding/FragmentProductBinding;->appbar:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/warefly/checkscan/products/databinding/FragmentProductBinding;->ivBanner:Lcom/warefly/checkscan/core/ui/SafeImageView;

    invoke-static {v0}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object v0

    invoke-virtual {v0, p1}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object p1

    new-instance v0, Lcom/warefly/checkscan/products/presentation/product/view/ProductFragment$b;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/products/presentation/product/view/ProductFragment$b;-><init>(Lcom/warefly/checkscan/products/databinding/FragmentProductBinding;)V

    invoke-virtual {p1, v0}, Lh37;->F(Lo37;)Lh37;

    move-result-object p0

    invoke-virtual {p0}, Lh37;->O()V

    return-void
.end method

.method public final showInfoBottomSheet(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/warefly/checkscan/shared/infoBottomSheet/presentation/b$a;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/warefly/checkscan/products/presentation/product/view/ProductFragment;->i:Lcom/warefly/checkscan/shared/infoBottomSheet/presentation/InfoBottomSheet;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    new-instance v1, Lcom/warefly/checkscan/shared/infoBottomSheet/presentation/InfoBottomSheet;

    const/4 v2, 0x1

    invoke-direct {v1, v0, p1, v2}, Lcom/warefly/checkscan/shared/infoBottomSheet/presentation/InfoBottomSheet;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    iput-object v1, p0, Lcom/warefly/checkscan/products/presentation/product/view/ProductFragment;->i:Lcom/warefly/checkscan/shared/infoBottomSheet/presentation/InfoBottomSheet;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method public final showLoading(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/products/presentation/product/view/ProductFragment;->n()Lcom/warefly/checkscan/products/databinding/FragmentProductBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/products/databinding/FragmentProductBinding;->incldLoading:Lcom/warefly/checkscan/core/ui/databinding/LayoutSpinnerLoadingBinding;

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
