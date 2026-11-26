.class public final Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$o;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.presentation.tasks.main.presenter.TasksPresenter$sendAdWatched$1"
    f = "TasksPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->sendAdWatched(Ljava/lang/String;Ljava/lang/String;)V
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
        "Lcom/warefly/checkscan/tasks/presentation/adResult/DailyBonusPoints;",
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


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;",
            "Le02<",
            "-",
            "Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$o;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$o;->m:Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;

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

    new-instance v0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$o;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$o;->m:Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;

    invoke-direct {v0, p0, p2}, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$o;-><init>(Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;Le02;)V

    iput-object p1, v0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$o;->l:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Li57;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$o;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$o;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$o;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$o;->l:Ljava/lang/Object;

    check-cast p1, Li57;

    instance-of v0, p1, Li57$c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$o;->m:Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->fetchContent$default(Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;ZILjava/lang/Object;)V

    check-cast p1, Li57$c;

    iget-object p1, p1, Li57$c;->a:Ljava/lang/Object;

    check-cast p1, Lcom/warefly/checkscan/tasks/presentation/adResult/DailyBonusPoints;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksView;->showAdResult(Lcom/warefly/checkscan/tasks/presentation/adResult/DailyBonusPoints;)V

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
