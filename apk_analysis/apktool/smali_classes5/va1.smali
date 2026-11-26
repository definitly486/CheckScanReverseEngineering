.class public final Lva1;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lva1$a;,
        Lva1$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lxa1;",
        "Lcom/warefly/checkscan/tasks/databinding/ItemRvPromocodeTaskButtonBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lcom/warefly/checkscan/presentation/tasks/checkbox/presenter/CheckboxTaskDetailsPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/tasks/checkbox/presenter/CheckboxTaskDetailsPresenter;)V
    .locals 1

    sget-object v0, Lua1;->c:Lua1;

    invoke-direct {p0, v0}, Lvd9;-><init>(Ldm3;)V

    iput-object p1, p0, Lva1;->b:Lcom/warefly/checkscan/presentation/tasks/checkbox/presenter/CheckboxTaskDetailsPresenter;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lxa1;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvPromocodeTaskButtonBinding;

    check-cast p2, Lxa1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvPromocodeTaskButtonBinding;->btnClaimReward:Lcom/warefly/checkscan/core/ui/LoadingButton;

    iget-object v1, p2, Lxa1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvPromocodeTaskButtonBinding;->btnClaimReward:Lcom/warefly/checkscan/core/ui/LoadingButton;

    iget-boolean v1, p2, Lxa1;->d:Z

    invoke-virtual {v0, v1}, Lcom/warefly/checkscan/core/ui/LoadingButton;->setLoading(Z)V

    iget-object v0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvPromocodeTaskButtonBinding;->btnClaimReward:Lcom/warefly/checkscan/core/ui/LoadingButton;

    iget-boolean v1, p2, Lxa1;->c:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvPromocodeTaskButtonBinding;->btnClaimReward:Lcom/warefly/checkscan/core/ui/LoadingButton;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lwa1;

    invoke-direct {v1, p2, p0}, Lwa1;-><init>(Lxa1;Lva1;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
