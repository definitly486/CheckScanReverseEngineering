.class public final Lob1;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lob1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lpb1;",
        "Lcom/warefly/checkscan/tasks/databinding/ItemRvCheckboxTaskStepsButtonBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;)V
    .locals 1

    sget-object v0, Lnb1;->c:Lnb1;

    invoke-direct {p0, v0}, Lvd9;-><init>(Ldm3;)V

    iput-object p1, p0, Lob1;->b:Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lpb1;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvCheckboxTaskStepsButtonBinding;

    check-cast p2, Lpb1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvCheckboxTaskStepsButtonBinding;->btnAction:Lcom/warefly/checkscan/core/ui/LoadingButton;

    iget-object v1, p2, Lpb1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvCheckboxTaskStepsButtonBinding;->btnAction:Lcom/warefly/checkscan/core/ui/LoadingButton;

    iget-boolean v1, p2, Lpb1;->c:Z

    invoke-virtual {v0, v1}, Lcom/warefly/checkscan/core/ui/LoadingButton;->setLoading(Z)V

    iget-object v0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvCheckboxTaskStepsButtonBinding;->btnAction:Lcom/warefly/checkscan/core/ui/LoadingButton;

    iget-boolean v1, p2, Lpb1;->b:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvCheckboxTaskStepsButtonBinding;->btnAction:Lcom/warefly/checkscan/core/ui/LoadingButton;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Li60;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p2, v2}, Li60;-><init>(Lvd9;Lpz3;I)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
