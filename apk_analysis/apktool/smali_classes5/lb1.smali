.class public final Llb1;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llb1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lmb1;",
        "Lcom/warefly/checkscan/tasks/databinding/ItemRvCheckboxTaskStepsButtonBlockBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;)V
    .locals 1

    sget-object v0, Lkb1;->c:Lkb1;

    invoke-direct {p0, v0}, Lvd9;-><init>(Ldm3;)V

    iput-object p1, p0, Llb1;->b:Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lmb1;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvCheckboxTaskStepsButtonBlockBinding;

    check-cast p2, Lmb1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvCheckboxTaskStepsButtonBlockBinding;->tvTitle:Landroid/widget/TextView;

    iget-object v1, p2, Lmb1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvCheckboxTaskStepsButtonBlockBinding;->btnAction:Lcom/warefly/checkscan/core/ui/LoadingButton;

    iget-object v1, p2, Lmb1;->b:Lmb1$a;

    iget-object v2, v1, Lmb1$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvCheckboxTaskStepsButtonBlockBinding;->btnAction:Lcom/warefly/checkscan/core/ui/LoadingButton;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v2, v1, Lmb1$a;->e:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvCheckboxTaskStepsButtonBlockBinding;->btnAction:Lcom/warefly/checkscan/core/ui/LoadingButton;

    iget-boolean v2, v1, Lmb1$a;->c:Z

    invoke-virtual {v0, v2}, Lcom/warefly/checkscan/core/ui/LoadingButton;->setLoading(Z)V

    iget-object v0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvCheckboxTaskStepsButtonBlockBinding;->btnAction:Lcom/warefly/checkscan/core/ui/LoadingButton;

    iget-boolean v1, v1, Lmb1$a;->b:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvCheckboxTaskStepsButtonBlockBinding;->btnAction:Lcom/warefly/checkscan/core/ui/LoadingButton;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Llb7;

    new-instance v2, Lh60;

    const/4 v3, 0x1

    invoke-direct {v2, p0, p2, v3}, Lh60;-><init>(Lvd9;Lpz3;I)V

    invoke-direct {v1, v2}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean p0, p2, Lmb1;->d:Z

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/warefly/checkscan/tasks/databinding/ItemRvCheckboxTaskStepsButtonBlockBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

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

    iget-object p2, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvCheckboxTaskStepsButtonBlockBinding;->ivTick:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Lh37;->L(Landroid/widget/ImageView;)V

    iget-object p0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvCheckboxTaskStepsButtonBlockBinding;->stepContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Lcom/warefly/checkscan/tasks/databinding/ItemRvCheckboxTaskStepsButtonBlockBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0800fa

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/warefly/checkscan/tasks/databinding/ItemRvCheckboxTaskStepsButtonBlockBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

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

    iget-object p2, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvCheckboxTaskStepsButtonBlockBinding;->ivTick:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Lh37;->L(Landroid/widget/ImageView;)V

    iget-object p0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvCheckboxTaskStepsButtonBlockBinding;->stepContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Lcom/warefly/checkscan/tasks/databinding/ItemRvCheckboxTaskStepsButtonBlockBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0800de

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
