.class public final Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter$d;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.presentation.tasks.daily.presenter.DailyTaskPresenter$onGetRewardClicked$3"
    f = "DailyTaskPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter;->onGetRewardClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Ld82$a;",
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

.field public final synthetic m:Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter;",
            "Le02<",
            "-",
            "Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter$d;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter$d;->m:Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 1
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

    new-instance v0, Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter$d;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter$d;->m:Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter;

    invoke-direct {v0, p0, p2}, Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter$d;-><init>(Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter;Le02;)V

    iput-object p1, v0, Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter$d;->l:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ld82$a;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter$d;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter$d;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter$d;->l:Ljava/lang/Object;

    check-cast p1, Ld82$a;

    sget-object v0, Ld82$a$a;->a:Ld82$a$a;

    invoke-static {p1, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter$d;->m:Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskView;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskView;->showDefaultError()V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Ld82$a$b;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskView;

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter;->access$getTaskId$p(Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter;)I

    move-result p0

    check-cast p1, Ld82$a$b;

    iget-object p1, p1, Ld82$a$b;->a:Lcom/warefly/checkscan/tasks/presentation/dailyTask/model/DailyTaskResult;

    invoke-interface {v0, p0, p1}, Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskView;->showResultDialog(ILcom/warefly/checkscan/tasks/presentation/dailyTask/model/DailyTaskResult;)V

    goto :goto_0

    :cond_1
    sget-object v0, Ld82$a$c;->a:Ld82$a$c;

    invoke-static {p1, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p1

    check-cast p1, Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskView;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskView;->showConfetti()V

    :cond_2
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskView;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskView;->vibrate()V

    :cond_3
    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
