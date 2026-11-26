.class public final Lk60;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lb70;",
        "Lcom/warefly/checkscan/databinding/ItemRvBalancePromoBannerBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;)V
    .locals 1

    sget-object v0, Le60;->c:Le60;

    invoke-direct {p0, v0}, Lvd9;-><init>(Ldm3;)V

    iput-object p1, p0, Lk60;->b:Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lb70;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 11

    check-cast p1, Lcom/warefly/checkscan/databinding/ItemRvBalancePromoBannerBinding;

    check-cast p2, Lb70;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/ItemRvBalancePromoBannerBinding;->tvTitle:Landroid/widget/TextView;

    iget-object v1, p2, Lb70;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lb70;->g:Ljava/lang/String;

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemRvBalancePromoBannerBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/bumptech/glide/a;->d(Landroid/content/Context;)Lp37;

    move-result-object v4

    invoke-virtual {v4, v0}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object v0

    invoke-static {}, Lqs2;->h()Lqs2;

    move-result-object v4

    invoke-virtual {v0, v4}, Lh37;->P(Lqs2;)Lh37;

    move-result-object v0

    new-instance v4, Ls37;

    invoke-direct {v4}, Ls37;-><init>()V

    new-instance v5, Le87;

    invoke-static {v1}, Lpl2;->e(I)I

    move-result v6

    invoke-direct {v5, v6}, Le87;-><init>(I)V

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lee0;->B(Ls19;Z)Lee0;

    move-result-object v4

    invoke-virtual {v0, v4}, Lh37;->G(Lee0;)Lh37;

    move-result-object v0

    iget-object v4, p1, Lcom/warefly/checkscan/databinding/ItemRvBalancePromoBannerBinding;->ivBanner:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Lh37;->L(Landroid/widget/ImageView;)V

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/ItemRvBalancePromoBannerBinding;->ivBanner:Landroid/widget/ImageView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    sget-object v0, Lj59;->a:Lj59;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/ItemRvBalancePromoBannerBinding;->ivBanner:Landroid/widget/ImageView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p2, Lb70;->h:Lb06;

    if-eqz v0, :cond_2

    iget-object v4, p1, Lcom/warefly/checkscan/databinding/ItemRvBalancePromoBannerBinding;->incldAdsBadge:Lcom/warefly/checkscan/core/ui/databinding/LayoutAdsBadgeBinding;

    invoke-virtual {v4}, Lcom/warefly/checkscan/core/ui/databinding/LayoutAdsBadgeBinding;->getRoot()Leightbitlab/com/blurview/BlurView;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Llb7;

    new-instance v6, Lj60;

    invoke-direct {v6, p0, v0, v3}, Lj60;-><init>(Lvd9;Ljava/lang/Object;I)V

    invoke-direct {v5, v6}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/ItemRvBalancePromoBannerBinding;->incldAdsBadge:Lcom/warefly/checkscan/core/ui/databinding/LayoutAdsBadgeBinding;

    invoke-virtual {v0}, Lcom/warefly/checkscan/core/ui/databinding/LayoutAdsBadgeBinding;->getRoot()Leightbitlab/com/blurview/BlurView;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    sget-object v0, Lj59;->a:Lj59;

    goto :goto_1

    :cond_2
    move-object v0, v2

    :goto_1
    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/ItemRvBalancePromoBannerBinding;->incldAdsBadge:Lcom/warefly/checkscan/core/ui/databinding/LayoutAdsBadgeBinding;

    invoke-virtual {v0}, Lcom/warefly/checkscan/core/ui/databinding/LayoutAdsBadgeBinding;->getRoot()Leightbitlab/com/blurview/BlurView;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v6, p2, Lb70;->d:Ljava/util/List;

    if-eqz v6, :cond_5

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/ItemRvBalancePromoBannerBinding;->rvTerms:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v4, Ljz7;

    sget-object v9, Lg60;->f:Lg60;

    const/4 v10, 0x4

    const v5, 0x7f0d019e

    const/4 v7, 0x0

    sget-object v8, Lf60;->f:Lf60;

    invoke-direct/range {v4 .. v10}, Ljz7;-><init>(ILjava/util/List;Lrb;Lnl3;Ldm3;I)V

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v4

    if-lez v4, :cond_4

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecorationAt(I)V

    :cond_4
    new-instance v4, Li16;

    const/16 v5, 0xc

    invoke-static {v5}, Lpl2;->o(I)I

    move-result v5

    invoke-direct {v4, v5}, Li16;-><init>(I)V

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/ItemRvBalancePromoBannerBinding;->rvTerms:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    sget-object v0, Lj59;->a:Lj59;

    goto :goto_2

    :cond_5
    move-object v0, v2

    :goto_2
    if-nez v0, :cond_6

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/ItemRvBalancePromoBannerBinding;->rvTerms:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-object v0, p1, Lcom/warefly/checkscan/databinding/ItemRvBalancePromoBannerBinding;->btnAction:Landroid/widget/TextView;

    iget-object v4, p2, Lb70;->e:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v4, Llb7;

    new-instance v5, Lh60;

    invoke-direct {v5, p0, p2, v3}, Lh60;-><init>(Lvd9;Lpz3;I)V

    invoke-direct {v4, v5}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p2, Lb70;->f:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v2, p1, Lcom/warefly/checkscan/databinding/ItemRvBalancePromoBannerBinding;->btnHide:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Llb7;

    new-instance v4, Li60;

    invoke-direct {v4, p0, p2, v3}, Li60;-><init>(Lvd9;Lpz3;I)V

    invoke-direct {v0, v4}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    sget-object v2, Lj59;->a:Lj59;

    :cond_7
    if-nez v2, :cond_8

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvBalancePromoBannerBinding;->btnHide:Landroid/widget/TextView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    return-void
.end method

.method public final j(Landroidx/viewbinding/ViewBinding;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/databinding/ItemRvBalancePromoBannerBinding;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvBalancePromoBannerBinding;->incldAdsBadge:Lcom/warefly/checkscan/core/ui/databinding/LayoutAdsBadgeBinding;

    iget-object p0, p0, Lcom/warefly/checkscan/core/ui/databinding/LayoutAdsBadgeBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemRvBalancePromoBannerBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Leightbitlab/com/blurview/BlurView;->b(Landroid/view/ViewGroup;)V

    iget-object p1, p0, Leightbitlab/com/blurview/BlurView;->b:Lhk0;

    invoke-interface {p1}, Lhk0;->a()Lhk0;

    sget-object p1, Landroid/view/ViewOutlineProvider;->BACKGROUND:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setClipToOutline(Z)V

    return-void
.end method
