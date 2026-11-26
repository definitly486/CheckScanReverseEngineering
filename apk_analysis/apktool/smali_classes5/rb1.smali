.class public final Lrb1;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrb1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lsb1;",
        "Lcom/warefly/checkscan/tasks/databinding/ItemRvCheckboxTaskStepsCheckboxBlockBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;

.field public final c:Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;)V
    .locals 1

    sget-object v0, Lqb1;->c:Lqb1;

    invoke-direct {p0, v0}, Lvd9;-><init>(Ldm3;)V

    iput-object p1, p0, Lrb1;->b:Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;

    iput-object p2, p0, Lrb1;->c:Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lsb1;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 7

    check-cast p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvCheckboxTaskStepsCheckboxBlockBinding;

    check-cast p2, Lsb1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p2, Lsb1;->f:Ljava/lang/String;

    iget-object v1, p2, Lsb1;->c:Ljava/util/List;

    iget-object v2, p2, Lsb1;->e:Lsb1$a;

    iget-object v3, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvCheckboxTaskStepsCheckboxBlockBinding;->tvTitle:Landroid/widget/TextView;

    iget-object v4, p2, Lsb1;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvCheckboxTaskStepsCheckboxBlockBinding;->rvContent:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    instance-of v4, v3, Leu1;

    if-eqz v4, :cond_0

    check-cast v3, Leu1;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v3, v1}, Leu1;->submitList(Ljava/util/List;)V

    :cond_1
    iget-object v3, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvCheckboxTaskStepsCheckboxBlockBinding;->btnAction:Lcom/warefly/checkscan/core/ui/LoadingButton;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v4, v2, Lsb1$a;->b:Z

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    move v4, v6

    goto :goto_1

    :cond_2
    move v4, v5

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvCheckboxTaskStepsCheckboxBlockBinding;->btnAction:Lcom/warefly/checkscan/core/ui/LoadingButton;

    iget-object v4, v2, Lsb1$a;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvCheckboxTaskStepsCheckboxBlockBinding;->btnAction:Lcom/warefly/checkscan/core/ui/LoadingButton;

    iget-boolean v4, v2, Lsb1$a;->d:Z

    invoke-virtual {v3, v4}, Lcom/warefly/checkscan/core/ui/LoadingButton;->setLoading(Z)V

    iget-object v3, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvCheckboxTaskStepsCheckboxBlockBinding;->btnAction:Lcom/warefly/checkscan/core/ui/LoadingButton;

    iget-boolean v2, v2, Lsb1$a;->c:Z

    const/4 v4, 0x1

    if-eqz v2, :cond_6

    check-cast v1, Ljava/lang/Iterable;

    instance-of v2, v1, Ljava/util/Collection;

    if-eqz v2, :cond_3

    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfc1;

    iget-boolean v2, v2, Lfc1;->d:Z

    if-nez v2, :cond_4

    goto :goto_3

    :cond_5
    :goto_2
    move v1, v4

    goto :goto_4

    :cond_6
    :goto_3
    move v1, v6

    :goto_4
    invoke-virtual {v3, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvCheckboxTaskStepsCheckboxBlockBinding;->btnAction:Lcom/warefly/checkscan/core/ui/LoadingButton;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Llb7;

    new-instance v3, Lj60;

    invoke-direct {v3, p0, p2, v4}, Lj60;-><init>(Lvd9;Ljava/lang/Object;I)V

    invoke-direct {v2, v3}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvCheckboxTaskStepsCheckboxBlockBinding;->tvDecription:Landroid/widget/TextView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_7

    move v5, v6

    :cond_7
    invoke-virtual {p0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvCheckboxTaskStepsCheckboxBlockBinding;->tvDecription:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean p0, p2, Lsb1;->d:Z

    if-eqz p0, :cond_8

    invoke-virtual {p1}, Lcom/warefly/checkscan/tasks/databinding/ItemRvCheckboxTaskStepsCheckboxBlockBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/bumptech/glide/a;->d(Landroid/content/Context;)Lp37;

    move-result-object p0

    const p2, 0x7f0801f7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lp37;->f(Ljava/lang/Integer;)Lh37;

    move-result-object p0

    iget-object p2, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvCheckboxTaskStepsCheckboxBlockBinding;->ivTick:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Lh37;->L(Landroid/widget/ImageView;)V

    iget-object p0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvCheckboxTaskStepsCheckboxBlockBinding;->stepContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Lcom/warefly/checkscan/tasks/databinding/ItemRvCheckboxTaskStepsCheckboxBlockBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0800fa

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_8
    invoke-virtual {p1}, Lcom/warefly/checkscan/tasks/databinding/ItemRvCheckboxTaskStepsCheckboxBlockBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/bumptech/glide/a;->d(Landroid/content/Context;)Lp37;

    move-result-object p0

    const p2, 0x7f080223

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lp37;->f(Ljava/lang/Integer;)Lh37;

    move-result-object p0

    iget-object p2, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvCheckboxTaskStepsCheckboxBlockBinding;->ivTick:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Lh37;->L(Landroid/widget/ImageView;)V

    iget-object p0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvCheckboxTaskStepsCheckboxBlockBinding;->stepContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Lcom/warefly/checkscan/tasks/databinding/ItemRvCheckboxTaskStepsCheckboxBlockBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0800de

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final j(Landroidx/viewbinding/ViewBinding;)V
    .locals 5

    check-cast p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvCheckboxTaskStepsCheckboxBlockBinding;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvCheckboxTaskStepsCheckboxBlockBinding;->rvContent:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Leu1;

    new-instance v2, Lub1;

    iget-object p0, p0, Lrb1;->b:Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;

    invoke-direct {v2, p0}, Lub1;-><init>(Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;)V

    const/4 p0, 0x1

    new-array v3, p0, [Lil2;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-direct {v1, v3}, Leu1;-><init>([Lil2;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Lcom/warefly/checkscan/tasks/databinding/ItemRvCheckboxTaskStepsCheckboxBlockBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p1, p0, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    return-void
.end method
