.class public final Lcom/warefly/checkscan/presentation/offerLanding/landing/view/OfferLandingFragment;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/offerLanding/landing/view/OfferLandingView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment<",
        "Lcom/warefly/checkscan/offerLanding/databinding/FragmentOfferLandingBinding;",
        ">;",
        "Lcom/warefly/checkscan/presentation/offerLanding/landing/view/OfferLandingView;"
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

.field public presenter:Lcom/warefly/checkscan/presentation/offerLanding/landing/presenter/OfferLandingPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/offerLanding/landing/view/OfferLandingFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/offerLanding/databinding/FragmentOfferLandingBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/offerLanding/landing/view/OfferLandingFragment;->j:[Lze4;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;-><init>()V

    const v0, 0x7f0d00cf

    iput v0, p0, Lcom/warefly/checkscan/presentation/offerLanding/landing/view/OfferLandingFragment;->f:I

    new-instance v0, Lol4;

    const-class v1, Lcom/warefly/checkscan/offerLanding/databinding/FragmentOfferLandingBinding;

    invoke-direct {v0, v1}, Lol4;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/offerLanding/landing/view/OfferLandingFragment;->g:Lol4;

    new-instance v0, Landroidx/navigation/NavArgsLazy;

    const-class v1, Lzt5;

    invoke-static {v1}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v1

    new-instance v2, Lcom/warefly/checkscan/presentation/offerLanding/landing/view/OfferLandingFragment$e;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/offerLanding/landing/view/OfferLandingFragment$e;-><init>(Lcom/warefly/checkscan/presentation/offerLanding/landing/view/OfferLandingFragment;)V

    invoke-direct {v0, v1, v2}, Landroidx/navigation/NavArgsLazy;-><init>(Lne4;Lll3;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/offerLanding/landing/view/OfferLandingFragment;->h:Landroidx/navigation/NavArgsLazy;

    return-void
.end method


# virtual methods
.method public final i()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/presentation/offerLanding/landing/view/OfferLandingFragment;->f:I

    return p0
.end method

.method public final k()Z
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/offerLanding/landing/view/OfferLandingFragment;->presenter:Lcom/warefly/checkscan/presentation/offerLanding/landing/presenter/OfferLandingPresenter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/offerLanding/landing/presenter/OfferLandingPresenter;->onBackClicked()V

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string p0, "presenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final n()Lcom/warefly/checkscan/offerLanding/databinding/FragmentOfferLandingBinding;
    .locals 2

    sget-object v0, Lcom/warefly/checkscan/presentation/offerLanding/landing/view/OfferLandingFragment;->j:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/offerLanding/landing/view/OfferLandingFragment;->g:Lol4;

    invoke-virtual {v1, p0, v0}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/offerLanding/databinding/FragmentOfferLandingBinding;

    return-object p0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/offerLanding/landing/view/OfferLandingFragment;->n()Lcom/warefly/checkscan/offerLanding/databinding/FragmentOfferLandingBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/offerLanding/databinding/FragmentOfferLandingBinding;->rvContent:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Leu1;

    new-instance v0, Lps4;

    sget-object v1, Llu5;->c:Llu5;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lps4;-><init>(Ldm3;I)V

    new-instance v1, Lwt5;

    sget-object v3, Lvt5;->c:Lvt5;

    invoke-direct {v1, v3}, Lvd9;-><init>(Ldm3;)V

    new-instance v3, Lb20;

    sget-object v4, Lju5;->c:Lju5;

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lb20;-><init>(Ldm3;I)V

    new-instance v4, Lr10;

    sget-object v6, Leu5;->c:Leu5;

    invoke-direct {v4, v6, v5}, Lr10;-><init>(Ldm3;I)V

    const/4 v6, 0x4

    new-array v6, v6, [Lil2;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    aput-object v1, v6, v2

    aput-object v3, v6, v5

    const/4 v0, 0x3

    aput-object v4, v6, v0

    invoke-direct {p2, v6}, Leu1;-><init>([Lil2;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/offerLanding/landing/view/OfferLandingFragment;->i:Leu1;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/offerLanding/landing/view/OfferLandingFragment;->i:Leu1;

    if-eqz p1, :cond_1

    new-instance p2, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    if-ge v7, v0, :cond_0

    new-instance v1, Liu5;

    invoke-direct {v1}, Liu5;-><init>()V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Leu1;->submitList(Ljava/util/List;)V

    :cond_1
    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/offerLanding/landing/view/OfferLandingFragment;->n()Lcom/warefly/checkscan/offerLanding/databinding/FragmentOfferLandingBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/offerLanding/databinding/FragmentOfferLandingBinding;->btnBack:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Llb7;

    new-instance v0, Lcom/warefly/checkscan/presentation/offerLanding/landing/view/OfferLandingFragment$a;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/offerLanding/landing/view/OfferLandingFragment$a;-><init>(Lcom/warefly/checkscan/presentation/offerLanding/landing/view/OfferLandingFragment;)V

    invoke-direct {p2, v0}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final openUrlCustomTab(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Li72;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final providePresenter()Lcom/warefly/checkscan/presentation/offerLanding/landing/presenter/OfferLandingPresenter;
    .locals 6

    new-instance v0, Lcom/warefly/checkscan/presentation/offerLanding/landing/presenter/OfferLandingPresenter;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v1

    const-class v2, Lcu5;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcu5;

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->j()Lba8;

    move-result-object v2

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v4

    const-class v5, Luf3;

    invoke-static {v5, v4, v2, v3}, Ln2;->c(Ljava/lang/Class;Lze7;Lba8;Li36;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Luf3;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/offerLanding/landing/view/OfferLandingFragment;->h:Landroidx/navigation/NavArgsLazy;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzt5;

    iget-object p0, p0, Lzt5;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p0}, Lcom/warefly/checkscan/presentation/offerLanding/landing/presenter/OfferLandingPresenter;-><init>(Lcu5;Luf3;Ljava/lang/String;)V

    return-object v0
.end method

.method public final showButtonLoading(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/offerLanding/landing/view/OfferLandingFragment;->n()Lcom/warefly/checkscan/offerLanding/databinding/FragmentOfferLandingBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/offerLanding/databinding/FragmentOfferLandingBinding;->btnIssueCard:Lcom/warefly/checkscan/core/ui/LoadingButton;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/core/ui/LoadingButton;->setLoading(Z)V

    return-void
.end method

.method public final showData(Lhu5;)V
    .locals 8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/offerLanding/landing/view/OfferLandingFragment;->n()Lcom/warefly/checkscan/offerLanding/databinding/FragmentOfferLandingBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/warefly/checkscan/offerLanding/databinding/FragmentOfferLandingBinding;->ivBanner:Lcom/warefly/checkscan/core/ui/SafeImageView;

    invoke-static {v1}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object v1

    iget-object v2, p1, Lhu5;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object v1

    new-instance v2, Lcom/warefly/checkscan/presentation/offerLanding/landing/view/OfferLandingFragment$b;

    invoke-direct {v2, v0}, Lcom/warefly/checkscan/presentation/offerLanding/landing/view/OfferLandingFragment$b;-><init>(Lcom/warefly/checkscan/offerLanding/databinding/FragmentOfferLandingBinding;)V

    invoke-virtual {v1, v2}, Lh37;->F(Lo37;)Lh37;

    move-result-object v1

    invoke-virtual {v1}, Lh37;->O()V

    iget-object v1, v0, Lcom/warefly/checkscan/offerLanding/databinding/FragmentOfferLandingBinding;->btnIssueCard:Lcom/warefly/checkscan/core/ui/LoadingButton;

    iget-object v2, p1, Lhu5;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/warefly/checkscan/offerLanding/databinding/FragmentOfferLandingBinding;->btnIssueCard:Lcom/warefly/checkscan/core/ui/LoadingButton;

    iget-boolean v2, p1, Lhu5;->c:Z

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, v0, Lcom/warefly/checkscan/offerLanding/databinding/FragmentOfferLandingBinding;->btnIssueCard:Lcom/warefly/checkscan/core/ui/LoadingButton;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Llb7;

    new-instance v3, Lcom/warefly/checkscan/presentation/offerLanding/landing/view/OfferLandingFragment$c;

    invoke-direct {v3, p0}, Lcom/warefly/checkscan/presentation/offerLanding/landing/view/OfferLandingFragment$c;-><init>(Lcom/warefly/checkscan/presentation/offerLanding/landing/view/OfferLandingFragment;)V

    invoke-direct {v2, v3}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v0, Lcom/warefly/checkscan/offerLanding/databinding/FragmentOfferLandingBinding;->layoutButtonIssueCard:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/offerLanding/landing/view/OfferLandingFragment;->i:Leu1;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lhu5;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Leu1;->submitList(Ljava/util/List;)V

    :cond_0
    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/offerLanding/landing/view/OfferLandingFragment;->n()Lcom/warefly/checkscan/offerLanding/databinding/FragmentOfferLandingBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/offerLanding/databinding/FragmentOfferLandingBinding;->rvContent:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecorationAt(I)V

    :cond_1
    new-instance v0, Lcd9;

    new-instance v2, Lcd9$a;

    const/16 v3, 0x8

    invoke-static {v3}, Lpl2;->e(I)I

    move-result v3

    iget-object v4, p0, Lcom/warefly/checkscan/presentation/offerLanding/landing/view/OfferLandingFragment;->i:Leu1;

    const/4 v5, -0x1

    if-eqz v4, :cond_2

    iget-object v4, v4, Leu1;->i:Lm8;

    const-class v6, Lut5;

    invoke-virtual {v4, v6}, Lm8;->d(Ljava/lang/Class;)I

    move-result v4

    goto :goto_0

    :cond_2
    move v4, v5

    :goto_0
    invoke-direct {v2, v3, v4}, Lcd9$a;-><init>(II)V

    new-instance v3, Lcd9$a;

    const/16 v4, 0x20

    invoke-static {v4}, Lpl2;->e(I)I

    move-result v4

    iget-object v6, p0, Lcom/warefly/checkscan/presentation/offerLanding/landing/view/OfferLandingFragment;->i:Leu1;

    if-eqz v6, :cond_3

    iget-object v6, v6, Leu1;->i:Lm8;

    const-class v7, Lmu5;

    invoke-virtual {v6, v7}, Lm8;->d(Ljava/lang/Class;)I

    move-result v6

    goto :goto_1

    :cond_3
    move v6, v5

    :goto_1
    invoke-direct {v3, v4, v6}, Lcd9$a;-><init>(II)V

    new-instance v4, Lcd9$a;

    const/16 v6, 0x10

    invoke-static {v6}, Lpl2;->e(I)I

    move-result v6

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/offerLanding/landing/view/OfferLandingFragment;->i:Leu1;

    if-eqz p0, :cond_4

    iget-object p0, p0, Leu1;->i:Lm8;

    const-class v5, Lku5;

    invoke-virtual {p0, v5}, Lm8;->d(Ljava/lang/Class;)I

    move-result v5

    :cond_4
    invoke-direct {v4, v6, v5}, Lcd9$a;-><init>(II)V

    filled-new-array {v2, v3, v4}, [Lcd9$a;

    move-result-object p0

    invoke-static {p0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcd9;-><init>(Ljava/util/List;)V

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;I)V

    return-void
.end method

.method public final showLandingLoadingError()V
    .locals 4

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/offerLanding/landing/view/OfferLandingFragment;->n()Lcom/warefly/checkscan/offerLanding/databinding/FragmentOfferLandingBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/offerLanding/databinding/FragmentOfferLandingBinding;->coordLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v1, 0x7f140488

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, 0x7f140489

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/warefly/checkscan/presentation/offerLanding/landing/view/OfferLandingFragment$d;

    invoke-direct {v3, p0}, Lcom/warefly/checkscan/presentation/offerLanding/landing/view/OfferLandingFragment$d;-><init>(Lcom/warefly/checkscan/presentation/offerLanding/landing/view/OfferLandingFragment;)V

    invoke-static {v0, v1, v2, v3}, Loz1;->f(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Ljava/lang/String;Ljava/lang/String;Lll3;)V

    return-void
.end method

.method public final showLinkLoadingError()V
    .locals 5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const v1, 0x7f14048c

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, 0x7f14048d

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/androidadvance/topsnackbar/TSnackbar;->c(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/androidadvance/topsnackbar/TSnackbar;

    move-result-object v1

    iget-object v2, v1, Lcom/androidadvance/topsnackbar/TSnackbar;->b:Lcom/androidadvance/topsnackbar/TSnackbar$SnackbarLayout;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f060034

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f0604a3

    invoke-static {v0, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v2}, Lcom/androidadvance/topsnackbar/TSnackbar$SnackbarLayout;->getActionView()Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v0, Lmz1;

    invoke-direct {v0, v1}, Lmz1;-><init>(Lcom/androidadvance/topsnackbar/TSnackbar;)V

    invoke-virtual {v1, p0, v0}, Lcom/androidadvance/topsnackbar/TSnackbar;->e(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1}, Lcom/androidadvance/topsnackbar/TSnackbar;->f()V

    :cond_1
    :goto_0
    return-void
.end method
