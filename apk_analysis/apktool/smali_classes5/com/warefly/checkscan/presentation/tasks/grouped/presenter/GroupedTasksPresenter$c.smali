.class public final Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter$c;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.presentation.tasks.grouped.presenter.GroupedTasksPresenter$onClaimReward$1"
    f = "GroupedTasksPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;->onClaimReward(I)V
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

.field public final synthetic m:Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;

.field public final synthetic n:I


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;ILe02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;",
            "I",
            "Le02<",
            "-",
            "Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter$c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter$c;->m:Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;

    iput p2, p0, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter$c;->n:I

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

    new-instance v0, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter$c;

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter$c;->m:Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;

    iget p0, p0, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter$c;->n:I

    invoke-direct {v0, v1, p0, p2}, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter$c;-><init>(Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;ILe02;)V

    iput-object p1, v0, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter$c;->l:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Li57;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter$c;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter$c;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter$c;->l:Ljava/lang/Object;

    check-cast p1, Li57;

    instance-of v0, p1, Li57$c;

    if-eqz v0, :cond_0

    check-cast p1, Li57$c;

    iget-object p1, p1, Li57$c;->a:Ljava/lang/Object;

    check-cast p1, Lkk1;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter$c;->m:Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;

    iget p0, p0, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter$c;->n:I

    invoke-static {v0, p0, p1}, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;->access$handleClaimResult(Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;ILkk1;)V

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
