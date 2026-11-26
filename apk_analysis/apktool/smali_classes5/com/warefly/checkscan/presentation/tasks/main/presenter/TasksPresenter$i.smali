.class public final Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$i;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.presentation.tasks.main.presenter.TasksPresenter$onFirstViewAttach$2"
    f = "TasksPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->onFirstViewAttach()V
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
        "Lyo8;",
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
            "Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$i;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$i;->m:Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;

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

    new-instance v0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$i;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$i;->m:Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;

    invoke-direct {v0, p0, p2}, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$i;-><init>(Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;Le02;)V

    iput-object p1, v0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$i;->l:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Li57;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$i;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$i;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$i;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$i;->l:Ljava/lang/Object;

    check-cast p1, Li57;

    instance-of v0, p1, Li57$a;

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$i;->m:Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksView;

    if-eqz p0, :cond_b

    invoke-interface {p0, v1}, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksView;->showErrorLoading(Z)V

    goto/16 :goto_3

    :cond_0
    sget-object v0, Li57$b;->a:Li57$b;

    invoke-static {p1, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    instance-of v0, p1, Li57$c;

    if-eqz v0, :cond_b

    check-cast p1, Li57$c;

    iget-object p1, p1, Li57$c;->a:Ljava/lang/Object;

    check-cast p1, Lyo8;

    iget-object v0, p1, Lyo8;->a:Ljava/util/List;

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->access$setShowcaseResponse$p(Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;Lyo8;)V

    move-object p1, v0

    check-cast p1, Ljava/lang/Iterable;

    instance-of v2, p1, Ljava/util/Collection;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    move-object v4, p1

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lso8;

    instance-of v5, v5, Lnm8;

    if-eqz v5, :cond_3

    :goto_0
    invoke-static {p0, v1}, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->access$sendBannerShown(Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;Z)V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v1

    check-cast v1, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksView;

    if-eqz v1, :cond_4

    invoke-interface {v1, v3}, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksView;->showErrorLoading(Z)V

    :cond_4
    invoke-static {p0, v0}, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->access$setTimersForBonusPoints(Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;Ljava/util/List;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lso8;

    instance-of v5, v4, Lfm8;

    if-eqz v5, :cond_6

    check-cast v4, Lfm8;

    invoke-interface {v4}, Lfm8;->isDone()Z

    move-result v4

    if-nez v4, :cond_5

    :cond_6
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    if-eqz v2, :cond_8

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_2

    :cond_8
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lso8;

    instance-of v2, v1, Lfm8;

    if-eqz v2, :cond_9

    check-cast v1, Lfm8;

    invoke-interface {v1}, Lfm8;->isDone()Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object p1, Lcr1;->a:Lcr1;

    invoke-static {p1, v0}, Lqn1;->i0(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    :cond_a
    :goto_2
    invoke-static {v0}, Lzp8;->b(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->access$setShowcaseRows$p(Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;Ljava/util/List;)V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksView;

    if-eqz p0, :cond_b

    invoke-interface {p0, v0}, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksView;->setContent(Ljava/util/List;)V

    :cond_b
    :goto_3
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
