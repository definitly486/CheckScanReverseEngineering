.class public final Lcom/warefly/checkscan/presentation/tasks/multiTaskDetails/presenter/MultiTaskDetailsPresenter$d;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.presentation.tasks.multiTaskDetails.presenter.MultiTaskDetailsPresenter$onSubTaskClicked$1"
    f = "MultiTaskDetailsPresenter.kt"
    l = {
        0x8a
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/tasks/multiTaskDetails/presenter/MultiTaskDetailsPresenter;->onSubTaskClicked(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Li57<",
        "+",
        "Lko8;",
        ">;",
        "Le02<",
        "-",
        "Lj59;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public l:Lcom/warefly/checkscan/presentation/tasks/multiTaskDetails/presenter/MultiTaskDetailsPresenter;

.field public m:Ljava/lang/Object;

.field public n:I

.field public synthetic o:Ljava/lang/Object;

.field public final synthetic p:Lcom/warefly/checkscan/presentation/tasks/multiTaskDetails/presenter/MultiTaskDetailsPresenter;

.field public final synthetic q:I


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/tasks/multiTaskDetails/presenter/MultiTaskDetailsPresenter;ILe02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/warefly/checkscan/presentation/tasks/multiTaskDetails/presenter/MultiTaskDetailsPresenter;",
            "I",
            "Le02<",
            "-",
            "Lcom/warefly/checkscan/presentation/tasks/multiTaskDetails/presenter/MultiTaskDetailsPresenter$d;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/tasks/multiTaskDetails/presenter/MultiTaskDetailsPresenter$d;->p:Lcom/warefly/checkscan/presentation/tasks/multiTaskDetails/presenter/MultiTaskDetailsPresenter;

    iput p2, p0, Lcom/warefly/checkscan/presentation/tasks/multiTaskDetails/presenter/MultiTaskDetailsPresenter$d;->q:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Le02<",
            "*>;)",
            "Le02<",
            "Lj59;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/warefly/checkscan/presentation/tasks/multiTaskDetails/presenter/MultiTaskDetailsPresenter$d;

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/tasks/multiTaskDetails/presenter/MultiTaskDetailsPresenter$d;->p:Lcom/warefly/checkscan/presentation/tasks/multiTaskDetails/presenter/MultiTaskDetailsPresenter;

    iget p0, p0, Lcom/warefly/checkscan/presentation/tasks/multiTaskDetails/presenter/MultiTaskDetailsPresenter$d;->q:I

    invoke-direct {v0, v1, p0, p2}, Lcom/warefly/checkscan/presentation/tasks/multiTaskDetails/presenter/MultiTaskDetailsPresenter$d;-><init>(Lcom/warefly/checkscan/presentation/tasks/multiTaskDetails/presenter/MultiTaskDetailsPresenter;ILe02;)V

    iput-object p1, v0, Lcom/warefly/checkscan/presentation/tasks/multiTaskDetails/presenter/MultiTaskDetailsPresenter$d;->o:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Li57;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lcom/warefly/checkscan/presentation/tasks/multiTaskDetails/presenter/MultiTaskDetailsPresenter$d;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/tasks/multiTaskDetails/presenter/MultiTaskDetailsPresenter$d;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/tasks/multiTaskDetails/presenter/MultiTaskDetailsPresenter$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lcom/warefly/checkscan/presentation/tasks/multiTaskDetails/presenter/MultiTaskDetailsPresenter$d;->n:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/tasks/multiTaskDetails/presenter/MultiTaskDetailsPresenter$d;->m:Ljava/lang/Object;

    iget-object v3, p0, Lcom/warefly/checkscan/presentation/tasks/multiTaskDetails/presenter/MultiTaskDetailsPresenter$d;->l:Lcom/warefly/checkscan/presentation/tasks/multiTaskDetails/presenter/MultiTaskDetailsPresenter;

    iget-object v4, p0, Lcom/warefly/checkscan/presentation/tasks/multiTaskDetails/presenter/MultiTaskDetailsPresenter$d;->o:Ljava/lang/Object;

    check-cast v4, Lxg5;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/tasks/multiTaskDetails/presenter/MultiTaskDetailsPresenter$d;->o:Ljava/lang/Object;

    check-cast p1, Li57;

    instance-of v1, p1, Li57$a;

    const/4 v3, 0x0

    iget v4, p0, Lcom/warefly/checkscan/presentation/tasks/multiTaskDetails/presenter/MultiTaskDetailsPresenter$d;->q:I

    iget-object v5, p0, Lcom/warefly/checkscan/presentation/tasks/multiTaskDetails/presenter/MultiTaskDetailsPresenter$d;->p:Lcom/warefly/checkscan/presentation/tasks/multiTaskDetails/presenter/MultiTaskDetailsPresenter;

    if-eqz v1, :cond_2

    invoke-static {v5, v3, v4}, Lcom/warefly/checkscan/presentation/tasks/multiTaskDetails/presenter/MultiTaskDetailsPresenter;->access$showSubtaskButtonLoading(Lcom/warefly/checkscan/presentation/tasks/multiTaskDetails/presenter/MultiTaskDetailsPresenter;ZI)V

    invoke-virtual {v5}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/tasks/multiTaskDetails/view/MultiTaskDetailsView;

    if-eqz p0, :cond_7

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/tasks/multiTaskDetails/view/MultiTaskDetailsView;->showError()V

    goto :goto_1

    :cond_2
    sget-object v1, Li57$b;->a:Li57$b;

    invoke-static {p1, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v5, v2, v4}, Lcom/warefly/checkscan/presentation/tasks/multiTaskDetails/presenter/MultiTaskDetailsPresenter;->access$showSubtaskButtonLoading(Lcom/warefly/checkscan/presentation/tasks/multiTaskDetails/presenter/MultiTaskDetailsPresenter;ZI)V

    goto :goto_1

    :cond_3
    instance-of v1, p1, Li57$c;

    if-eqz v1, :cond_7

    invoke-static {v5, v3, v4}, Lcom/warefly/checkscan/presentation/tasks/multiTaskDetails/presenter/MultiTaskDetailsPresenter;->access$showSubtaskButtonLoading(Lcom/warefly/checkscan/presentation/tasks/multiTaskDetails/presenter/MultiTaskDetailsPresenter;ZI)V

    check-cast p1, Li57$c;

    iget-object p1, p1, Li57$c;->a:Ljava/lang/Object;

    check-cast p1, Lko8;

    invoke-virtual {p1}, Lko8;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v5}, Lih5;->getViewState()Ljh5;

    move-result-object v3

    check-cast v3, Lcom/warefly/checkscan/presentation/tasks/multiTaskDetails/view/MultiTaskDetailsView;

    if-eqz v3, :cond_4

    invoke-interface {v3, v1}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;->openUrlInCustomTab(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1}, Lko8;->a()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-static {v5}, Lcom/warefly/checkscan/presentation/tasks/multiTaskDetails/presenter/MultiTaskDetailsPresenter;->access$getMultiTaskSheet$p(Lcom/warefly/checkscan/presentation/tasks/multiTaskDetails/presenter/MultiTaskDetailsPresenter;)Lxg5;

    move-result-object p1

    move-object v4, p1

    move-object v3, v5

    :cond_5
    invoke-interface {v4}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object p1, v1

    check-cast p1, Lxf5;

    invoke-static {v3}, Lcom/warefly/checkscan/presentation/tasks/multiTaskDetails/presenter/MultiTaskDetailsPresenter;->access$getInteractor$p(Lcom/warefly/checkscan/presentation/tasks/multiTaskDetails/presenter/MultiTaskDetailsPresenter;)Lvn8;

    move-result-object p1

    invoke-static {v3}, Lcom/warefly/checkscan/presentation/tasks/multiTaskDetails/presenter/MultiTaskDetailsPresenter;->access$getTaskId$p(Lcom/warefly/checkscan/presentation/tasks/multiTaskDetails/presenter/MultiTaskDetailsPresenter;)I

    move-result v5

    iput-object v4, p0, Lcom/warefly/checkscan/presentation/tasks/multiTaskDetails/presenter/MultiTaskDetailsPresenter$d;->o:Ljava/lang/Object;

    iput-object v3, p0, Lcom/warefly/checkscan/presentation/tasks/multiTaskDetails/presenter/MultiTaskDetailsPresenter$d;->l:Lcom/warefly/checkscan/presentation/tasks/multiTaskDetails/presenter/MultiTaskDetailsPresenter;

    iput-object v1, p0, Lcom/warefly/checkscan/presentation/tasks/multiTaskDetails/presenter/MultiTaskDetailsPresenter$d;->m:Ljava/lang/Object;

    iput v2, p0, Lcom/warefly/checkscan/presentation/tasks/multiTaskDetails/presenter/MultiTaskDetailsPresenter$d;->n:I

    iget-object p1, p1, Lvn8;->a:Lap8;

    invoke-interface {p1, v5, p0}, Lap8;->u(ILf02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    :cond_6
    :goto_0
    check-cast p1, Lxf5;

    invoke-interface {v4, v1, p1}, Lxg5;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_7
    :goto_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
