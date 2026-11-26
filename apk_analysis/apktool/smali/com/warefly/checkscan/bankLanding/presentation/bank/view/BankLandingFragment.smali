.class public final Lcom/warefly/checkscan/bankLanding/presentation/bank/view/BankLandingFragment;
.super Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/bankLanding/presentation/bank/view/BankLandingView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/bankLanding/presentation/bank/view/BankLandingFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment<",
        "Lcom/warefly/checkscan/bankLanding/databinding/FragmentBankLandingBinding;",
        ">;",
        "Lcom/warefly/checkscan/bankLanding/presentation/bank/view/BankLandingView;"
    }
.end annotation


# static fields
.field public static final m:Lcom/warefly/checkscan/bankLanding/presentation/bank/view/BankLandingFragment$a;

.field public static final synthetic n:[Lze4;
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
.field public final j:I

.field public final k:Lol4;

.field public l:Leu1;

.field public presenter:Lcom/warefly/checkscan/bankLanding/presentation/bank/presenter/BankLandingPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/bankLanding/presentation/bank/view/BankLandingFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/bankLanding/databinding/FragmentBankLandingBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/bankLanding/presentation/bank/view/BankLandingFragment;->n:[Lze4;

    new-instance v0, Lcom/warefly/checkscan/bankLanding/presentation/bank/view/BankLandingFragment$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/warefly/checkscan/bankLanding/presentation/bank/view/BankLandingFragment;->m:Lcom/warefly/checkscan/bankLanding/presentation/bank/view/BankLandingFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment;-><init>()V

    const v0, 0x7f0d00a9

    iput v0, p0, Lcom/warefly/checkscan/bankLanding/presentation/bank/view/BankLandingFragment;->j:I

    new-instance v0, Lol4;

    const-class v1, Lcom/warefly/checkscan/bankLanding/databinding/FragmentBankLandingBinding;

    invoke-direct {v0, v1}, Lol4;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/warefly/checkscan/bankLanding/presentation/bank/view/BankLandingFragment;->k:Lol4;

    return-void
.end method


# virtual methods
.method public final e(Landroid/view/View;)V
    .locals 1

    const/4 p0, 0x1

    const/16 v0, 0xf

    invoke-static {v0, p1, p0}, Loi9;->a(ILandroid/view/View;Z)V

    return-void
.end method

.method public final i()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/bankLanding/presentation/bank/view/BankLandingFragment;->j:I

    return p0
.end method

.method public final k()Z
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/bankLanding/presentation/bank/view/BankLandingFragment;->presenter:Lcom/warefly/checkscan/bankLanding/presentation/bank/presenter/BankLandingPresenter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/warefly/checkscan/bankLanding/presentation/bank/presenter/BankLandingPresenter;->onBackClicked()V

    const/4 p0, 0x0

    return p0

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

    invoke-virtual {p0}, Lcom/warefly/checkscan/bankLanding/presentation/bank/view/BankLandingFragment;->p()Lcom/warefly/checkscan/bankLanding/databinding/FragmentBankLandingBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/bankLanding/databinding/FragmentBankLandingBinding;->rvContent:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Leu1;

    new-instance v0, Leb0;

    sget-object v1, Lcb0;->c:Lcb0;

    invoke-direct {v0, v1}, Lvd9;-><init>(Ldm3;)V

    new-instance v1, Lja0;

    sget-object v2, Lha0;->c:Lha0;

    invoke-direct {v1, v2}, Lvd9;-><init>(Ldm3;)V

    new-instance v2, Llb0;

    sget-object v3, Ljb0;->c:Ljb0;

    invoke-direct {v2, v3}, Lvd9;-><init>(Ldm3;)V

    const/4 v3, 0x3

    new-array v3, v3, [Lil2;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v1, 0x2

    aput-object v2, v3, v1

    invoke-direct {p2, v3}, Leu1;-><init>([Lil2;)V

    iput-object p2, p0, Lcom/warefly/checkscan/bankLanding/presentation/bank/view/BankLandingFragment;->l:Leu1;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance p2, Lma0;

    invoke-direct {p2}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v1, v0, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/bankLanding/presentation/bank/view/BankLandingFragment;->p()Lcom/warefly/checkscan/bankLanding/databinding/FragmentBankLandingBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/bankLanding/databinding/FragmentBankLandingBinding;->btnBack:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Llb7;

    new-instance v0, Lcom/warefly/checkscan/bankLanding/presentation/bank/view/BankLandingFragment$b;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/bankLanding/presentation/bank/view/BankLandingFragment$b;-><init>(Lcom/warefly/checkscan/bankLanding/presentation/bank/view/BankLandingFragment;)V

    invoke-direct {p2, v0}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/bankLanding/presentation/bank/view/BankLandingFragment;->p()Lcom/warefly/checkscan/bankLanding/databinding/FragmentBankLandingBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/bankLanding/databinding/FragmentBankLandingBinding;->incldError:Lcom/warefly/checkscan/core/ui/databinding/LayoutSimpleTryAgainBinding;

    iget-object p1, p1, Lcom/warefly/checkscan/core/ui/databinding/LayoutSimpleTryAgainBinding;->btnTryAgain:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Llb7;

    new-instance v0, Lcom/warefly/checkscan/bankLanding/presentation/bank/view/BankLandingFragment$c;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/bankLanding/presentation/bank/view/BankLandingFragment$c;-><init>(Lcom/warefly/checkscan/bankLanding/presentation/bank/view/BankLandingFragment;)V

    invoke-direct {p2, v0}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final p()Lcom/warefly/checkscan/bankLanding/databinding/FragmentBankLandingBinding;
    .locals 2

    sget-object v0, Lcom/warefly/checkscan/bankLanding/presentation/bank/view/BankLandingFragment;->n:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/warefly/checkscan/bankLanding/presentation/bank/view/BankLandingFragment;->k:Lol4;

    invoke-virtual {v1, p0, v0}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/bankLanding/databinding/FragmentBankLandingBinding;

    return-object p0
.end method

.method public final providePresenter()Lcom/warefly/checkscan/bankLanding/presentation/bank/presenter/BankLandingPresenter;
    .locals 6

    new-instance v0, Lcom/warefly/checkscan/bankLanding/presentation/bank/presenter/BankLandingPresenter;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v1

    const-class v2, Lt63;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt63;

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment;->n()Lba8;

    move-result-object v2

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v4

    const-class v5, Luf3;

    invoke-static {v5, v4, v2, v3}, Ln2;->c(Ljava/lang/Class;Lze7;Lba8;Li36;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Luf3;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "BANK_LANDING_ID_KEY"

    invoke-virtual {v4, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object p0

    const-class v5, Llo7;

    invoke-static {v5, p0, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Llo7;

    invoke-direct {v0, v1, v2, v4, p0}, Lcom/warefly/checkscan/bankLanding/presentation/bank/presenter/BankLandingPresenter;-><init>(Lt63;Luf3;ILlo7;)V

    return-object v0
.end method

.method public final showButton(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/bankLanding/presentation/bank/view/BankLandingFragment;->p()Lcom/warefly/checkscan/bankLanding/databinding/FragmentBankLandingBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/bankLanding/databinding/FragmentBankLandingBinding;->mcvIssueCard:Lcom/google/android/material/card/MaterialCardView;

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

.method public final showContent(Lna0;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/bankLanding/presentation/bank/view/BankLandingFragment;->p()Lcom/warefly/checkscan/bankLanding/databinding/FragmentBankLandingBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/warefly/checkscan/bankLanding/databinding/FragmentBankLandingBinding;->ivBanner:Lcom/warefly/checkscan/core/ui/SafeImageView;

    invoke-static {v1}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object v1

    iget-object v2, p1, Lna0;->a:Lna0$b;

    iget-object v3, v2, Lna0$b;->a:Ljava/lang/String;

    iget-object v4, v2, Lna0$b;->d:Ljava/lang/String;

    iget-object v5, v2, Lna0$b;->c:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object v1

    new-instance v5, Lcom/warefly/checkscan/bankLanding/presentation/bank/view/BankLandingFragment$d;

    invoke-direct {v5, v0}, Lcom/warefly/checkscan/bankLanding/presentation/bank/view/BankLandingFragment$d;-><init>(Lcom/warefly/checkscan/bankLanding/databinding/FragmentBankLandingBinding;)V

    invoke-virtual {v1, v5}, Lh37;->F(Lo37;)Lh37;

    move-result-object v1

    invoke-virtual {v1}, Lh37;->O()V

    :try_start_0
    iget-object v1, v0, Lcom/warefly/checkscan/bankLanding/databinding/FragmentBankLandingBinding;->toolbarBanner:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, v0, Lcom/warefly/checkscan/bankLanding/databinding/FragmentBankLandingBinding;->appbar:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setContentScrimColor(I)V

    sget-object v1, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    iget-object v1, v0, Lcom/warefly/checkscan/bankLanding/databinding/FragmentBankLandingBinding;->toolbarBanner:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lp38;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lp38;-><init>(I)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setClipToOutline(Z)V

    iget-object v1, v0, Lcom/warefly/checkscan/bankLanding/databinding/FragmentBankLandingBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/warefly/checkscan/bankLanding/databinding/FragmentBankLandingBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-static {v3}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/warefly/checkscan/bankLanding/databinding/FragmentBankLandingBinding;->tvSubtitle:Landroid/widget/TextView;

    iget-object v2, v2, Lna0$b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/warefly/checkscan/bankLanding/databinding/FragmentBankLandingBinding;->btnIssueCard:Landroid/widget/TextView;

    iget-object v2, p1, Lna0;->c:Lna0$a;

    iget-object v2, v2, Lna0$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/warefly/checkscan/bankLanding/databinding/FragmentBankLandingBinding;->btnIssueCard:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Llb7;

    new-instance v3, Lcom/warefly/checkscan/bankLanding/presentation/bank/view/BankLandingFragment$e;

    invoke-direct {v3, p0, p1}, Lcom/warefly/checkscan/bankLanding/presentation/bank/view/BankLandingFragment$e;-><init>(Lcom/warefly/checkscan/bankLanding/presentation/bank/view/BankLandingFragment;Lna0;)V

    invoke-direct {v2, v3}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v0, Lcom/warefly/checkscan/bankLanding/databinding/FragmentBankLandingBinding;->mcvIssueCard:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/warefly/checkscan/bankLanding/presentation/bank/view/BankLandingFragment;->l:Leu1;

    if-eqz p0, :cond_2

    iget-object p1, p1, Lna0;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Leu1;->submitList(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public final showError(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/bankLanding/presentation/bank/view/BankLandingFragment;->p()Lcom/warefly/checkscan/bankLanding/databinding/FragmentBankLandingBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/bankLanding/databinding/FragmentBankLandingBinding;->incldError:Lcom/warefly/checkscan/core/ui/databinding/LayoutSimpleTryAgainBinding;

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

.method public final showLoading(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/bankLanding/presentation/bank/view/BankLandingFragment;->p()Lcom/warefly/checkscan/bankLanding/databinding/FragmentBankLandingBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/bankLanding/databinding/FragmentBankLandingBinding;->incldLoading:Lcom/warefly/checkscan/core/ui/databinding/LayoutSpinnerLoadingBinding;

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
