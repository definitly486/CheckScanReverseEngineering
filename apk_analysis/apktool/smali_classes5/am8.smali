.class public final Lam8;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lam8$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lkz7;",
        "Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskCardBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lam8$b;

.field public final c:Lfe;


# direct methods
.method public constructor <init>(Lam8$b;Lfe;)V
    .locals 1

    sget-object v0, Lam8$a;->c:Lam8$a;

    invoke-direct {p0, v0}, Lvd9;-><init>(Ldm3;)V

    iput-object p1, p0, Lam8;->b:Lam8$b;

    iput-object p2, p0, Lam8;->c:Lfe;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lkz7;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 8

    check-cast p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskCardBinding;

    check-cast p2, Lkz7;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p2, Lkz7;->d:Ljava/lang/String;

    iget-boolean v1, p2, Lkz7;->f:Z

    iget-object v2, p0, Lam8;->c:Lfe;

    iget v3, p2, Lkz7;->a:I

    invoke-interface {v2, v3}, Lfe;->sendTaskShownEvent(I)V

    iget-object v2, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskCardBinding;->btnClaimReward:Lcom/warefly/checkscan/core/ui/LoadingButton;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v3, p2, Lkz7;->h:Z

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    if-nez v1, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskCardBinding;->btnClaimReward:Lcom/warefly/checkscan/core/ui/LoadingButton;

    iget-boolean v3, p2, Lkz7;->i:Z

    invoke-virtual {v2, v3}, Lcom/warefly/checkscan/core/ui/LoadingButton;->setLoading(Z)V

    iget-object v2, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskCardBinding;->btnClaimReward:Lcom/warefly/checkscan/core/ui/LoadingButton;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Llb7;

    new-instance v6, Lzf8;

    const/4 v7, 0x1

    invoke-direct {v6, p0, p2, v7}, Lzf8;-><init>(Lvd9;Lpz3;I)V

    invoke-direct {v3, v6}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskCardBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Llb7;

    new-instance v6, Lag5;

    invoke-direct {v6, p0, p2, v7}, Lag5;-><init>(Lvd9;Lpz3;I)V

    invoke-direct {v3, v6}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskCardBinding;->clickableRv:Landroid/view/View;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Llb7;

    new-instance v6, Lbm8;

    invoke-direct {v6, p0, p2}, Lbm8;-><init>(Lam8;Lkz7;)V

    invoke-direct {v3, v6}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskCardBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object p0

    invoke-static {p0}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object p0

    iget-object v2, p2, Lkz7;->b:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object p0

    invoke-virtual {p1}, Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskCardBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f06001d

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v2}, Lis7;->a(I)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lee0;->r(Landroid/graphics/drawable/ShapeDrawable;)Lee0;

    move-result-object p0

    check-cast p0, Lh37;

    iget-object v2, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskCardBinding;->ivLogo:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Lh37;->L(Landroid/widget/ImageView;)V

    iget-object p0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskCardBinding;->tvTitle:Landroid/widget/TextView;

    iget-object v2, p2, Lkz7;->c:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskCardBinding;->tvSubtitle:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object p0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskCardBinding;->rvBadges:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    instance-of v0, p0, Leu1;

    if-eqz v0, :cond_2

    check-cast p0, Leu1;

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    :goto_2
    if-eqz p0, :cond_3

    iget-object p2, p2, Lkz7;->e:Ljava/util/List;

    invoke-virtual {p0, p2}, Leu1;->submitList(Ljava/util/List;)V

    :cond_3
    iget-object p0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskCardBinding;->fadeBackground:Landroid/view/View;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v1, :cond_4

    move v4, v5

    :cond_4
    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskCardBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object p0

    invoke-static {p0}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object p0

    if-eqz v1, :cond_5

    const p2, 0x7f0801f7

    goto :goto_3

    :cond_5
    const p2, 0x7f08029e

    :goto_3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lp37;->f(Ljava/lang/Integer;)Lh37;

    move-result-object p0

    iget-object p1, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskCardBinding;->btnArrow:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lh37;->L(Landroid/widget/ImageView;)V

    return-void
.end method

.method public final j(Landroidx/viewbinding/ViewBinding;)V
    .locals 3

    check-cast p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskCardBinding;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskCardBinding;->rvBadges:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v0, 0x0

    invoke-static {v0}, Lpl2;->e(I)I

    move-result v1

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Leu1;

    new-instance v1, Lfg3;

    sget-object v2, Leg3;->c:Leg3;

    invoke-direct {v1, v2}, Lvd9;-><init>(Ldm3;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lil2;

    aput-object v1, v2, v0

    invoke-direct {p1, v2}, Leu1;-><init>([Lil2;)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, Lcom/warefly/checkscan/tasks/presentation/tasks/adapter/TaskCardDelegateAdapter$showBadges$1$2;

    invoke-direct {v1, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->B(I)V

    invoke-virtual {v1, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->D(I)V

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance p1, Lcm8;

    invoke-direct {p1}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    return-void

    :cond_0
    const-string p0, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-static {p0}, Lo2;->d(Ljava/lang/String;)V

    return-void
.end method
