.class public final Lss4;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lss4$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lws4;",
        "Lcom/warefly/checkscan/databinding/ItemRvLoanPromoApplyBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;)V
    .locals 1

    sget-object v0, Lrs4;->c:Lrs4;

    invoke-direct {p0, v0}, Lvd9;-><init>(Ldm3;)V

    iput-object p1, p0, Lss4;->b:Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lws4;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 8

    check-cast p1, Lcom/warefly/checkscan/databinding/ItemRvLoanPromoApplyBinding;

    check-cast p2, Lws4;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p2, Lws4;->i:Lws4$c;

    iget-object v1, p2, Lws4;->h:Lws4$a;

    const/16 v2, 0x8

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemRvLoanPromoApplyBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/bumptech/glide/a;->d(Landroid/content/Context;)Lp37;

    move-result-object v5

    iget-object v6, v1, Lws4$a;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object v5

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemRvLoanPromoApplyBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f06001d

    invoke-static {v6, v7}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-static {v6}, Lis7;->a(I)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lee0;->r(Landroid/graphics/drawable/ShapeDrawable;)Lee0;

    move-result-object v5

    check-cast v5, Lh37;

    iget-object v6, p1, Lcom/warefly/checkscan/databinding/ItemRvLoanPromoApplyBinding;->ivBadge:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Lh37;->L(Landroid/widget/ImageView;)V

    iget-object v5, p1, Lcom/warefly/checkscan/databinding/ItemRvLoanPromoApplyBinding;->mainCard:Lcom/google/android/material/card/MaterialCardView;

    :try_start_0
    iget-object v6, v1, Lws4$a;->c:Ljava/lang/String;

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v6

    new-instance v7, Lk57$a;

    invoke-direct {v7, v6}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object v6, v7

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    instance-of v7, v6, Lk57$a;

    if-eqz v7, :cond_0

    move-object v6, v3

    :cond_0
    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/google/android/material/card/MaterialCardView;->setStrokeColor(I)V

    iget-object v3, p1, Lcom/warefly/checkscan/databinding/ItemRvLoanPromoApplyBinding;->llBadge:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :try_start_1
    iget-object v3, p1, Lcom/warefly/checkscan/databinding/ItemRvLoanPromoApplyBinding;->tvBadge:Landroid/widget/TextView;

    iget-object v5, v1, Lws4$a;->d:Ljava/lang/String;

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v3, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    iget-object v3, p1, Lcom/warefly/checkscan/databinding/ItemRvLoanPromoApplyBinding;->tvBadge:Landroid/widget/TextView;

    iget-object v1, v1, Lws4$a;->a:Ljava/lang/String;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    iget-object v1, p1, Lcom/warefly/checkscan/databinding/ItemRvLoanPromoApplyBinding;->mainCard:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v1, v3}, Lcom/google/android/material/card/MaterialCardView;->setStrokeColor(I)V

    iget-object v1, p1, Lcom/warefly/checkscan/databinding/ItemRvLoanPromoApplyBinding;->llBadge:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object v1, p1, Lcom/warefly/checkscan/databinding/ItemRvLoanPromoApplyBinding;->tvBankName:Landroid/widget/TextView;

    iget-object v3, p2, Lws4;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/warefly/checkscan/databinding/ItemRvLoanPromoApplyBinding;->tvCardType:Landroid/widget/TextView;

    iget-object v3, p2, Lws4;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemRvLoanPromoApplyBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/a;->d(Landroid/content/Context;)Lp37;

    move-result-object v1

    iget-object v3, p2, Lws4;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object v1

    iget-object v3, p1, Lcom/warefly/checkscan/databinding/ItemRvLoanPromoApplyBinding;->ivHeaderLogo:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Lh37;->L(Landroid/widget/ImageView;)V

    iget-object v1, p1, Lcom/warefly/checkscan/databinding/ItemRvLoanPromoApplyBinding;->rvInfo:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    instance-of v3, v1, Li58;

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    check-cast v1, Li58;

    goto :goto_2

    :cond_2
    move-object v1, v5

    :goto_2
    if-eqz v1, :cond_3

    iget-object v3, p2, Lws4;->f:Ljava/util/List;

    check-cast v3, Ljava/util/Collection;

    iget-object v6, p2, Lws4;->g:Ljava/util/ArrayList;

    invoke-static {v6, v3}, Lqn1;->h0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v3}, Li58;->submitList(Ljava/util/List;)V

    :cond_3
    iget-object v1, p1, Lcom/warefly/checkscan/databinding/ItemRvLoanPromoApplyBinding;->btnIssueLoan:Landroid/widget/TextView;

    iget-object v3, p2, Lws4;->e:Lws4$b;

    iget-object v3, v3, Lws4$b;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/warefly/checkscan/databinding/ItemRvLoanPromoApplyBinding;->btnIssueLoan:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Llb7;

    new-instance v6, Lwa;

    const/4 v7, 0x2

    invoke-direct {v6, v7, p0, p2}, Lwa;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v3, v6}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v0, :cond_4

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvLoanPromoApplyBinding;->tvPskRate:Landroid/widget/TextView;

    sget v1, Lsx3;->a:I

    iget-object v1, v0, Lws4$c;->a:Ljava/lang/String;

    invoke-static {v1}, Lsx3;->a(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvLoanPromoApplyBinding;->tvPskRate:Landroid/widget/TextView;

    sget-object v1, Lx61;->a:Lx61;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvLoanPromoApplyBinding;->tvPskRate:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemRvLoanPromoApplyBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0600c1

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setLinkTextColor(I)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvLoanPromoApplyBinding;->tvFooterDisclaimer:Landroid/widget/TextView;

    iget-object v0, v0, Lws4$c;->b:Ljava/lang/String;

    invoke-static {v0}, Lsx3;->a(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvLoanPromoApplyBinding;->tvFooterDisclaimer:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvLoanPromoApplyBinding;->tvFooterDisclaimer:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemRvLoanPromoApplyBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLinkTextColor(I)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvLoanPromoApplyBinding;->ivPskInfo:Landroid/widget/ImageView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lts4;

    invoke-direct {v1, p1, p2}, Lts4;-><init>(Lcom/warefly/checkscan/databinding/ItemRvLoanPromoApplyBinding;Lws4;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvLoanPromoApplyBinding;->groupDisclaimers:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v4}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    goto :goto_3

    :cond_4
    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvLoanPromoApplyBinding;->ivPskInfo:Landroid/widget/ImageView;

    invoke-virtual {p0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvLoanPromoApplyBinding;->groupDisclaimers:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method public final j(Landroidx/viewbinding/ViewBinding;)V
    .locals 6

    check-cast p1, Lcom/warefly/checkscan/databinding/ItemRvLoanPromoApplyBinding;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvLoanPromoApplyBinding;->rvInfo:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p1, Li58;

    new-instance v0, Lps4;

    sget-object v1, Los4;->c:Los4;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lps4;-><init>(Ldm3;I)V

    new-instance v1, Lb20;

    sget-object v3, Lms4;->c:Lms4;

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lb20;-><init>(Ldm3;I)V

    const/4 v3, 0x2

    new-array v5, v3, [Lil2;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    invoke-direct {p1, v5}, Li58;-><init>([Lil2;)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    new-instance v0, Lvs4;

    invoke-direct {v0, p0}, Lvs4;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    new-instance p1, Lus4;

    invoke-direct {p1, p0}, Lus4;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method
