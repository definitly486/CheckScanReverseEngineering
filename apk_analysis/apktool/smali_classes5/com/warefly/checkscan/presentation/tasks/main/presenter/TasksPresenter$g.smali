.class public final Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$g;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.presentation.tasks.main.presenter.TasksPresenter$onClaimReward$1"
    f = "TasksPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->onClaimReward(I)V
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
        "Lkk1;",
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

.field public final synthetic n:I


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;ILe02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;",
            "I",
            "Le02<",
            "-",
            "Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$g;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$g;->m:Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;

    iput p2, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$g;->n:I

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

    new-instance v0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$g;

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$g;->m:Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;

    iget p0, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$g;->n:I

    invoke-direct {v0, v1, p0, p2}, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$g;-><init>(Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;ILe02;)V

    iput-object p1, v0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$g;->l:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Li57;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$g;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$g;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$g;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$g;->l:Ljava/lang/Object;

    check-cast p1, Li57;

    instance-of v0, p1, Li57$b;

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$g;->m:Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;

    iget p0, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$g;->n:I

    invoke-static {v1, p0, v0}, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->access$setClaimButtonLoading(Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;IZ)V

    instance-of v0, p1, Li57$c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v2}, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->fetchContent$default(Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;ZILjava/lang/Object;)V

    check-cast p1, Li57$c;

    iget-object p1, p1, Li57$c;->a:Ljava/lang/Object;

    check-cast p1, Lkk1;

    if-eqz p1, :cond_0

    invoke-static {v1, p0, p1}, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->access$handleClaimResult(Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;ILkk1;)V

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
