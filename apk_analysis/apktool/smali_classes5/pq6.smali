.class public final Lpq6;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpq6$a;,
        Lpq6$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lqq6;",
        "Lcom/warefly/checkscan/tasks/databinding/ItemRvPromocodeTaskButtonBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lcom/warefly/checkscan/presentation/tasks/promocode/presenter/PromocodeTaskDetailsPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/tasks/promocode/presenter/PromocodeTaskDetailsPresenter;)V
    .locals 1

    sget-object v0, Loq6;->c:Loq6;

    invoke-direct {p0, v0}, Lvd9;-><init>(Ldm3;)V

    iput-object p1, p0, Lpq6;->b:Lcom/warefly/checkscan/presentation/tasks/promocode/presenter/PromocodeTaskDetailsPresenter;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lqq6;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvPromocodeTaskButtonBinding;

    check-cast p2, Lqq6;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvPromocodeTaskButtonBinding;->btnClaimReward:Lcom/warefly/checkscan/core/ui/LoadingButton;

    iget-object v1, p2, Lqq6;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvPromocodeTaskButtonBinding;->btnClaimReward:Lcom/warefly/checkscan/core/ui/LoadingButton;

    iget-boolean v1, p2, Lqq6;->f:Z

    invoke-virtual {v0, v1}, Lcom/warefly/checkscan/core/ui/LoadingButton;->setLoading(Z)V

    iget-object v0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvPromocodeTaskButtonBinding;->btnClaimReward:Lcom/warefly/checkscan/core/ui/LoadingButton;

    iget-boolean v1, p2, Lqq6;->e:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvPromocodeTaskButtonBinding;->btnClaimReward:Lcom/warefly/checkscan/core/ui/LoadingButton;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lso0;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p2, p0}, Lso0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
