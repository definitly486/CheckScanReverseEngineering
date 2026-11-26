.class public final Lm77;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm77$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lo77;",
        "Lcom/warefly/checkscan/tasks/databinding/ItemRvRewardedMultiTaskStepBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/presenter/RewardedMultiTaskDetailsPresenter;

.field public final c:Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/presenter/RewardedMultiTaskDetailsPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/presenter/RewardedMultiTaskDetailsPresenter;Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/presenter/RewardedMultiTaskDetailsPresenter;)V
    .locals 1

    sget-object v0, Ll77;->c:Ll77;

    invoke-direct {p0, v0}, Lvd9;-><init>(Ldm3;)V

    iput-object p1, p0, Lm77;->b:Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/presenter/RewardedMultiTaskDetailsPresenter;

    iput-object p2, p0, Lm77;->c:Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/presenter/RewardedMultiTaskDetailsPresenter;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lo77;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 8

    check-cast p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvRewardedMultiTaskStepBinding;

    check-cast p2, Lo77;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p2, Lo77;->f:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvRewardedMultiTaskStepBinding;->tvTitle:Landroid/widget/TextView;

    iget-object v2, p2, Lo77;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v1, p2, Lo77;->c:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/warefly/checkscan/tasks/databinding/ItemRvRewardedMultiTaskStepBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/a;->d(Landroid/content/Context;)Lp37;

    move-result-object v1

    const v2, 0x7f0801f7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lp37;->f(Ljava/lang/Integer;)Lh37;

    move-result-object v1

    iget-object v2, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvRewardedMultiTaskStepBinding;->ivTick:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lh37;->L(Landroid/widget/ImageView;)V

    iget-object v1, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvRewardedMultiTaskStepBinding;->stepContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Lcom/warefly/checkscan/tasks/databinding/ItemRvRewardedMultiTaskStepBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0800fa

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/warefly/checkscan/tasks/databinding/ItemRvRewardedMultiTaskStepBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/a;->d(Landroid/content/Context;)Lp37;

    move-result-object v1

    const v2, 0x7f080223

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lp37;->f(Ljava/lang/Integer;)Lh37;

    move-result-object v1

    iget-object v2, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvRewardedMultiTaskStepBinding;->ivTick:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lh37;->L(Landroid/widget/ImageView;)V

    iget-object v1, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvRewardedMultiTaskStepBinding;->stepContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Lcom/warefly/checkscan/tasks/databinding/ItemRvRewardedMultiTaskStepBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0800de

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-object v1, p2, Lo77;->d:Lo77$a;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    iget-boolean v4, v1, Lo77$a;->c:Z

    iget-object v5, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvRewardedMultiTaskStepBinding;->btnAction:Lcom/warefly/checkscan/core/ui/LoadingButton;

    iget-object v6, v1, Lo77$a;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v5, v4}, Landroid/view/View;->setEnabled(Z)V

    if-eqz v4, :cond_1

    iget-boolean v1, v1, Lo77$a;->d:Z

    invoke-virtual {v5, v1}, Lcom/warefly/checkscan/core/ui/LoadingButton;->setLoading(Z)V

    :cond_1
    new-instance v1, Llb7;

    new-instance v4, Lm90;

    const/4 v6, 0x3

    invoke-direct {v4, v6, p0, p2}, Lm90;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v1, v4}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v5, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_2
    move-object v5, v2

    :goto_1
    const/16 v1, 0x8

    if-nez v5, :cond_3

    iget-object v4, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvRewardedMultiTaskStepBinding;->btnAction:Lcom/warefly/checkscan/core/ui/LoadingButton;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v4, p2, Lo77;->e:Lo77$a;

    if-eqz v4, :cond_5

    iget-boolean v5, v4, Lo77$a;->c:Z

    iget-object v6, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvRewardedMultiTaskStepBinding;->btnClaim:Lcom/warefly/checkscan/core/ui/LoadingButton;

    iget-object v7, v4, Lo77$a;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v6, v5}, Landroid/view/View;->setEnabled(Z)V

    if-eqz v5, :cond_4

    iget-boolean v4, v4, Lo77$a;->d:Z

    invoke-virtual {v6, v4}, Lcom/warefly/checkscan/core/ui/LoadingButton;->setLoading(Z)V

    :cond_4
    new-instance v4, Llb7;

    new-instance v5, Ln90;

    const/4 v7, 0x1

    invoke-direct {v5, v7, p0, p2}, Ln90;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v4, v5}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v6, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_5
    move-object v6, v2

    :goto_2
    if-nez v6, :cond_6

    iget-object p0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvRewardedMultiTaskStepBinding;->btnClaim:Lcom/warefly/checkscan/core/ui/LoadingButton;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-object p0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvRewardedMultiTaskStepBinding;->rvBadges:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    instance-of v4, p0, Leu1;

    if-eqz v4, :cond_7

    check-cast p0, Leu1;

    goto :goto_3

    :cond_7
    move-object p0, v2

    :goto_3
    if-eqz p0, :cond_8

    invoke-virtual {p0, v0}, Leu1;->submitList(Ljava/util/List;)V

    :cond_8
    iget-object p0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvRewardedMultiTaskStepBinding;->rvBadges:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p2, Lo77;->g:Ljava/lang/String;

    if-eqz p0, :cond_9

    iget-object v2, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvRewardedMultiTaskStepBinding;->tvRewardSubtitle:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    if-nez v2, :cond_a

    iget-object p0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvRewardedMultiTaskStepBinding;->tvRewardSubtitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    return-void
.end method

.method public final j(Landroidx/viewbinding/ViewBinding;)V
    .locals 5

    check-cast p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvRewardedMultiTaskStepBinding;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvRewardedMultiTaskStepBinding;->rvBadges:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Leu1;

    new-instance v2, Le77;

    iget-object p0, p0, Lm77;->c:Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/presenter/RewardedMultiTaskDetailsPresenter;

    invoke-direct {v2, p0}, Le77;-><init>(Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/presenter/RewardedMultiTaskDetailsPresenter;)V

    const/4 p0, 0x1

    new-array v3, p0, [Lil2;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-direct {v1, v3}, Leu1;-><init>([Lil2;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p1}, Lcom/warefly/checkscan/tasks/databinding/ItemRvRewardedMultiTaskStepBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, Lcom/warefly/checkscan/tasks/presentation/rewardedMultiTasks/adapter/RewardedMultiTaskStepDelegateAdapter$onCreated$1$1;

    invoke-direct {v1, p1, p0, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance p0, Ln77;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    return-void
.end method
