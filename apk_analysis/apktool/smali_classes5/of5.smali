.class public final Lof5;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lof5$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lpf5;",
        "Lcom/warefly/checkscan/tasks/databinding/ItemRvMultiTaskButtonBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lcom/warefly/checkscan/presentation/tasks/multiTaskDetails/presenter/MultiTaskDetailsPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/tasks/multiTaskDetails/presenter/MultiTaskDetailsPresenter;)V
    .locals 1

    sget-object v0, Lnf5;->c:Lnf5;

    invoke-direct {p0, v0}, Lvd9;-><init>(Ldm3;)V

    iput-object p1, p0, Lof5;->b:Lcom/warefly/checkscan/presentation/tasks/multiTaskDetails/presenter/MultiTaskDetailsPresenter;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lpf5;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvMultiTaskButtonBinding;

    check-cast p2, Lpf5;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvMultiTaskButtonBinding;->btnClaimReward:Lcom/warefly/checkscan/core/ui/LoadingButton;

    iget-object v0, p2, Lpf5;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvMultiTaskButtonBinding;->btnClaimReward:Lcom/warefly/checkscan/core/ui/LoadingButton;

    iget-boolean v0, p2, Lpf5;->d:Z

    invoke-virtual {p0, v0}, Lcom/warefly/checkscan/core/ui/LoadingButton;->setLoading(Z)V

    iget-object p0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvMultiTaskButtonBinding;->btnClaimReward:Lcom/warefly/checkscan/core/ui/LoadingButton;

    iget-boolean p1, p2, Lpf5;->b:Z

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public final j(Landroidx/viewbinding/ViewBinding;)V
    .locals 3

    check-cast p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvMultiTaskButtonBinding;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvMultiTaskButtonBinding;->btnClaimReward:Lcom/warefly/checkscan/core/ui/LoadingButton;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lxh1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lxh1;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
