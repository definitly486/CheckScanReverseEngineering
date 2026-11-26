.class public final Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter$a;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.presentation.tasks.daily.presenter.DailyTaskPresenter$onFirstViewAttach$1"
    f = "DailyTaskPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter;->onFirstViewAttach()V
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
        "Ll82;",
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
            "Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter$a;->m:Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter;

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

    new-instance v0, Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter$a;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter$a;->m:Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter;

    invoke-direct {v0, p0, p2}, Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter$a;-><init>(Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter;Le02;)V

    iput-object p1, v0, Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter$a;->l:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Li57;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter$a;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter$a;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter$a;->l:Ljava/lang/Object;

    check-cast p1, Li57;

    instance-of v0, p1, Li57$a;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter$a;->m:Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskView;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskView;->showScreenLoadingError()V

    goto :goto_0

    :cond_0
    sget-object v0, Li57$b;->a:Li57$b;

    invoke-static {p1, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    instance-of v0, p1, Li57$c;

    if-eqz v0, :cond_2

    check-cast p1, Li57$c;

    iget-object p1, p1, Li57$c;->a:Ljava/lang/Object;

    check-cast p1, Ll82;

    iget-object v0, p1, Ll82;->c:Lcom/warefly/checkscan/tasks/presentation/dailyTask/model/DailyTaskNoAttempts;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p1

    check-cast p1, Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskView;

    if-eqz p1, :cond_2

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter;->access$getTaskId$p(Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter;)I

    move-result p0

    invoke-interface {p1, p0, v0}, Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskView;->showNoAttemptsDialog(ILcom/warefly/checkscan/tasks/presentation/dailyTask/model/DailyTaskNoAttempts;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskView;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskView;->showContent(Ll82;)V

    :cond_2
    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
