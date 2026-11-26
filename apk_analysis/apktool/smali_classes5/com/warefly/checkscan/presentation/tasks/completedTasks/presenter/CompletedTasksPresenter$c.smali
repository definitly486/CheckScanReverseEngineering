.class public final Lcom/warefly/checkscan/presentation/tasks/completedTasks/presenter/CompletedTasksPresenter$c;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.presentation.tasks.completedTasks.presenter.CompletedTasksPresenter$openSkipDetailsTask$1"
    f = "CompletedTasksPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/tasks/completedTasks/presenter/CompletedTasksPresenter;->openSkipDetailsTask(ILcom/warefly/checkscan/tasks/presentation/flows/TasksReason;)V
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

.field public final synthetic m:Lcom/warefly/checkscan/presentation/tasks/completedTasks/presenter/CompletedTasksPresenter;

.field public final synthetic n:Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/tasks/completedTasks/presenter/CompletedTasksPresenter;Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/warefly/checkscan/presentation/tasks/completedTasks/presenter/CompletedTasksPresenter;",
            "Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason;",
            "Le02<",
            "-",
            "Lcom/warefly/checkscan/presentation/tasks/completedTasks/presenter/CompletedTasksPresenter$c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/tasks/completedTasks/presenter/CompletedTasksPresenter$c;->m:Lcom/warefly/checkscan/presentation/tasks/completedTasks/presenter/CompletedTasksPresenter;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/tasks/completedTasks/presenter/CompletedTasksPresenter$c;->n:Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason;

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

    new-instance v0, Lcom/warefly/checkscan/presentation/tasks/completedTasks/presenter/CompletedTasksPresenter$c;

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/tasks/completedTasks/presenter/CompletedTasksPresenter$c;->m:Lcom/warefly/checkscan/presentation/tasks/completedTasks/presenter/CompletedTasksPresenter;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/completedTasks/presenter/CompletedTasksPresenter$c;->n:Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason;

    invoke-direct {v0, v1, p0, p2}, Lcom/warefly/checkscan/presentation/tasks/completedTasks/presenter/CompletedTasksPresenter$c;-><init>(Lcom/warefly/checkscan/presentation/tasks/completedTasks/presenter/CompletedTasksPresenter;Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason;Le02;)V

    iput-object p1, v0, Lcom/warefly/checkscan/presentation/tasks/completedTasks/presenter/CompletedTasksPresenter$c;->l:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Li57;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lcom/warefly/checkscan/presentation/tasks/completedTasks/presenter/CompletedTasksPresenter$c;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/tasks/completedTasks/presenter/CompletedTasksPresenter$c;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/tasks/completedTasks/presenter/CompletedTasksPresenter$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/tasks/completedTasks/presenter/CompletedTasksPresenter$c;->l:Ljava/lang/Object;

    check-cast p1, Li57;

    instance-of v0, p1, Li57$a;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/warefly/checkscan/presentation/tasks/completedTasks/presenter/CompletedTasksPresenter$c;->m:Lcom/warefly/checkscan/presentation/tasks/completedTasks/presenter/CompletedTasksPresenter;

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/tasks/completedTasks/view/CompletedTasksView;

    if-eqz p0, :cond_0

    invoke-interface {p0, v1}, Lcom/warefly/checkscan/presentation/tasks/completedTasks/view/CompletedTasksView;->showLoading(Z)V

    :cond_0
    invoke-virtual {v2}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/tasks/completedTasks/view/CompletedTasksView;

    if-eqz p0, :cond_4

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/tasks/completedTasks/view/CompletedTasksView;->showDefaultError()V

    goto :goto_0

    :cond_1
    sget-object v0, Li57$b;->a:Li57$b;

    invoke-static {p1, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/tasks/completedTasks/view/CompletedTasksView;

    if-eqz p0, :cond_4

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/tasks/completedTasks/view/CompletedTasksView;->showLoading(Z)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Li57$c;

    if-eqz v0, :cond_4

    invoke-virtual {v2}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/tasks/completedTasks/view/CompletedTasksView;

    if-eqz v0, :cond_3

    invoke-interface {v0, v1}, Lcom/warefly/checkscan/presentation/tasks/completedTasks/view/CompletedTasksView;->showLoading(Z)V

    :cond_3
    invoke-static {v2}, Lcom/warefly/checkscan/presentation/tasks/completedTasks/presenter/CompletedTasksPresenter;->access$getFlowRouter$p(Lcom/warefly/checkscan/presentation/tasks/completedTasks/presenter/CompletedTasksPresenter;)Luf3;

    move-result-object v0

    check-cast p1, Li57$c;

    iget-object p1, p1, Li57$c;->a:Ljava/lang/Object;

    check-cast p1, Lxn8;

    invoke-virtual {v2}, Lih5;->getViewState()Ljh5;

    move-result-object v1

    check-cast v1, Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/completedTasks/presenter/CompletedTasksPresenter$c;->n:Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason;

    invoke-static {v0, p1, p0, v1}, Lzn8;->a(Luf3;Lxn8;Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason;Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;)V

    :cond_4
    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
