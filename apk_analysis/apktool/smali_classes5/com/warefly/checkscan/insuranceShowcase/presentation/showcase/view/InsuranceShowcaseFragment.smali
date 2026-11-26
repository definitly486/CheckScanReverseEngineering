.class public final Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/view/InsuranceShowcaseFragment;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/view/InsuranceShowcaseView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/view/InsuranceShowcaseFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment<",
        "Lcom/warefly/checkscan/insuranceShowcase/databinding/FragmentInsuranceShowcaseBinding;",
        ">;",
        "Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/view/InsuranceShowcaseView;"
    }
.end annotation


# static fields
.field public static final i:Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/view/InsuranceShowcaseFragment$a;

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

.field public h:Li58;

.field public presenter:Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/presenter/InsuranceShowcasePresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/view/InsuranceShowcaseFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/insuranceShowcase/databinding/FragmentInsuranceShowcaseBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/view/InsuranceShowcaseFragment;->j:[Lze4;

    new-instance v0, Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/view/InsuranceShowcaseFragment$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/view/InsuranceShowcaseFragment;->i:Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/view/InsuranceShowcaseFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;-><init>()V

    const v0, 0x7f0d00c8

    iput v0, p0, Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/view/InsuranceShowcaseFragment;->f:I

    new-instance v0, Lol4;

    const-class v1, Lcom/warefly/checkscan/insuranceShowcase/databinding/FragmentInsuranceShowcaseBinding;

    invoke-direct {v0, v1}, Lol4;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/view/InsuranceShowcaseFragment;->g:Lol4;

    return-void
.end method


# virtual methods
.method public final i()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/view/InsuranceShowcaseFragment;->f:I

    return p0
.end method

.method public final k()Z
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/view/InsuranceShowcaseFragment;->o()Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/presenter/InsuranceShowcasePresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/presenter/InsuranceShowcasePresenter;->onBackPressed()V

    const/4 p0, 0x0

    return p0
.end method

.method public final n()Lcom/warefly/checkscan/insuranceShowcase/databinding/FragmentInsuranceShowcaseBinding;
    .locals 2

    sget-object v0, Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/view/InsuranceShowcaseFragment;->j:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/view/InsuranceShowcaseFragment;->g:Lol4;

    invoke-virtual {v1, p0, v0}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/insuranceShowcase/databinding/FragmentInsuranceShowcaseBinding;

    return-object p0
.end method

.method public final o()Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/presenter/InsuranceShowcasePresenter;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/view/InsuranceShowcaseFragment;->presenter:Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/presenter/InsuranceShowcasePresenter;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "presenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/view/InsuranceShowcaseFragment;->n()Lcom/warefly/checkscan/insuranceShowcase/databinding/FragmentInsuranceShowcaseBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/insuranceShowcase/databinding/FragmentInsuranceShowcaseBinding;->rvContent:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Li58;

    new-instance v0, Le74;

    invoke-virtual {p0}, Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/view/InsuranceShowcaseFragment;->o()Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/presenter/InsuranceShowcasePresenter;

    move-result-object v1

    invoke-direct {v0, v1}, Le74;-><init>(Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/presenter/InsuranceShowcasePresenter;)V

    new-instance v1, Lz64;

    invoke-virtual {p0}, Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/view/InsuranceShowcaseFragment;->o()Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/presenter/InsuranceShowcasePresenter;

    move-result-object v2

    new-instance v3, Lrb;

    const/4 v4, 0x3

    invoke-direct {v3, p0, v4}, Lrb;-><init>(Ljava/lang/Object;I)V

    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lz64;-><init>(Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/presenter/InsuranceShowcasePresenter;Lrb;Landroidx/lifecycle/LifecycleCoroutineScope;)V

    const/4 v2, 0x2

    new-array v3, v2, [Lil2;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-direct {p2, v3}, Li58;-><init>([Lil2;)V

    iput-object p2, p0, Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/view/InsuranceShowcaseFragment;->h:Li58;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance p2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v1, v2, v0, v4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    new-instance v0, Lg74;

    invoke-direct {v0, p0}, Lg74;-><init>(Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/view/InsuranceShowcaseFragment;)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance p2, Lh74;

    invoke-direct {p2}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/view/InsuranceShowcaseFragment;->n()Lcom/warefly/checkscan/insuranceShowcase/databinding/FragmentInsuranceShowcaseBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/insuranceShowcase/databinding/FragmentInsuranceShowcaseBinding;->toolbar:Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarTitle18TransparentBinding;

    iget-object p1, p1, Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarTitle18TransparentBinding;->ivBtnBack:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Llb7;

    new-instance v0, Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/view/InsuranceShowcaseFragment$b;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/view/InsuranceShowcaseFragment$b;-><init>(Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/view/InsuranceShowcaseFragment;)V

    invoke-direct {p2, v0}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/view/InsuranceShowcaseFragment;->n()Lcom/warefly/checkscan/insuranceShowcase/databinding/FragmentInsuranceShowcaseBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/insuranceShowcase/databinding/FragmentInsuranceShowcaseBinding;->incldError:Lcom/warefly/checkscan/core/ui/databinding/LayoutSimpleTryAgainBinding;

    iget-object p1, p1, Lcom/warefly/checkscan/core/ui/databinding/LayoutSimpleTryAgainBinding;->btnTryAgain:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Llb7;

    new-instance v0, Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/view/InsuranceShowcaseFragment$c;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/view/InsuranceShowcaseFragment$c;-><init>(Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/view/InsuranceShowcaseFragment;)V

    invoke-direct {p2, v0}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final providePresenter()Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/presenter/InsuranceShowcasePresenter;
    .locals 5

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v0

    const-class v1, Lk73;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2, v2}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk73;

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->j()Lba8;

    move-result-object v1

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v3

    const-class v4, Luf3;

    invoke-static {v4, v3, v1, v2}, Ln2;->c(Ljava/lang/Class;Lze7;Lba8;Li36;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Luf3;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object p0

    const-class v3, Ljf6;

    invoke-static {v3, p0, v2, v2}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljf6;

    new-instance v2, Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/presenter/InsuranceShowcasePresenter;

    invoke-direct {v2, v0, p0, v1}, Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/presenter/InsuranceShowcasePresenter;-><init>(Lk73;Ljf6;Luf3;)V

    return-object v2
.end method

.method public final setToolbarTitle(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/view/InsuranceShowcaseFragment;->n()Lcom/warefly/checkscan/insuranceShowcase/databinding/FragmentInsuranceShowcaseBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/insuranceShowcase/databinding/FragmentInsuranceShowcaseBinding;->toolbar:Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarTitle18TransparentBinding;

    iget-object p0, p0, Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarTitle18TransparentBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final showError(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/view/InsuranceShowcaseFragment;->n()Lcom/warefly/checkscan/insuranceShowcase/databinding/FragmentInsuranceShowcaseBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/insuranceShowcase/databinding/FragmentInsuranceShowcaseBinding;->incldError:Lcom/warefly/checkscan/core/ui/databinding/LayoutSimpleTryAgainBinding;

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

.method public final showItems(Ljava/util/List;)V
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

    iget-object p0, p0, Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/view/InsuranceShowcaseFragment;->h:Li58;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Li58;->submitList(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final showLoading(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/view/InsuranceShowcaseFragment;->n()Lcom/warefly/checkscan/insuranceShowcase/databinding/FragmentInsuranceShowcaseBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/insuranceShowcase/databinding/FragmentInsuranceShowcaseBinding;->incldLoading:Lcom/warefly/checkscan/core/ui/databinding/LayoutSpinnerLoadingBinding;

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
