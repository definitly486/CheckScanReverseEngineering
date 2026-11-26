.class public final Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$n;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.presentation.tasks.main.presenter.TasksPresenter$resolveTaskOpenTarget$1"
    f = "TasksPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->resolveTaskOpenTarget(ILcom/warefly/checkscan/tasks/presentation/flows/TasksReason;Lll3;)V
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
        "Lxn8;",
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
.field public synthetic l:Ljava/lang/Object;

.field public final synthetic m:Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;

.field public final synthetic n:Lll3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lll3<",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic o:Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;Lll3;Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;",
            "Lll3<",
            "Lj59;",
            ">;",
            "Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason;",
            "Le02<",
            "-",
            "Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$n;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$n;->m:Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$n;->n:Lll3;

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$n;->o:Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 3
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

    new-instance v0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$n;

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$n;->n:Lll3;

    iget-object v2, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$n;->o:Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$n;->m:Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;

    invoke-direct {v0, p0, v1, v2, p2}, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$n;-><init>(Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;Lll3;Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason;Le02;)V

    iput-object p1, v0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$n;->l:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Li57;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$n;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$n;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$n;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$n;->l:Ljava/lang/Object;

    check-cast p1, Li57;

    instance-of v0, p1, Li57$a;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$n;->m:Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lih5;->getViewState()Ljh5;

    move-result-object p1

    check-cast p1, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksView;

    if-eqz p1, :cond_0

    invoke-interface {p1, v1}, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksView;->showLoading(Z)V

    :cond_0
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$n;->n:Lll3;

    invoke-interface {p0}, Lll3;->invoke()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    sget-object v0, Li57$b;->a:Li57$b;

    invoke-static {p1, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksView;

    if-eqz p0, :cond_4

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksView;->showLoading(Z)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Li57$c;

    if-eqz v0, :cond_4

    invoke-virtual {v2}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksView;

    if-eqz v0, :cond_3

    invoke-interface {v0, v1}, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksView;->showLoading(Z)V

    :cond_3
    invoke-static {v2}, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->access$getFlowRouter$p(Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;)Luf3;

    move-result-object v0

    check-cast p1, Li57$c;

    iget-object p1, p1, Li57$c;->a:Ljava/lang/Object;

    check-cast p1, Lxn8;

    invoke-virtual {v2}, Lih5;->getViewState()Ljh5;

    move-result-object v1

    check-cast v1, Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$n;->o:Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason;

    invoke-static {v0, p1, p0, v1}, Lzn8;->a(Luf3;Lxn8;Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason;Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;)V

    :cond_4
    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
