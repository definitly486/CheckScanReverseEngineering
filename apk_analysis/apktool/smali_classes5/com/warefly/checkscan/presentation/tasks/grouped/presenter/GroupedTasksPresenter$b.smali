.class public final Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter$b;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.presentation.tasks.grouped.presenter.GroupedTasksPresenter$fetchContent$2"
    f = "GroupedTasksPresenter.kt"
    l = {
        0x72
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;->fetchContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Ly22;",
        "Le02<",
        "-",
        "Lj59;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public l:I

.field public final synthetic m:Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;",
            "Le02<",
            "-",
            "Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter$b;->m:Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 0
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

    new-instance p1, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter$b;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter$b;->m:Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;

    invoke-direct {p1, p0, p2}, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter$b;-><init>(Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;Le02;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter$b;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter$b;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter$b;->l:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter$b;->m:Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    invoke-static {v4}, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;->access$getFetchGroupedTasksUseCase$p(Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;)Lg73;

    move-result-object p1

    invoke-static {v4}, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;->access$getTaskId$p(Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;)I

    move-result v1

    iput v3, p0, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter$b;->l:I

    iget-object p1, p1, Lg73;->a:Lap8;

    invoke-interface {p1, v1, p0}, Lap8;->b(ILf02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Ljn8;

    iget-object p0, p1, Ljn8;->c:Ljava/lang/String;

    iget-object v0, p1, Ljn8;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz p0, :cond_4

    invoke-static {v4}, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;->access$getShowcaseContext$p(Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;)Lwp8;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v2, v5, Lwp8;->a:Ljava/lang/String;

    :cond_3
    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    move v3, v1

    :goto_1
    invoke-static {v4, v3}, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;->access$setSameShowcaseList$p(Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;Z)V

    new-instance v5, Lwp8;

    iget-object v6, p1, Ljn8;->c:Ljava/lang/String;

    iget-object v7, p1, Ljn8;->d:Ljava/lang/String;

    iget-object v8, p1, Ljn8;->e:Ljava/lang/String;

    iget-object v9, p1, Ljn8;->f:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v10}, Lwp8;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v4, v5}, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;->access$setShowcaseContext$p(Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;Lwp8;)V

    invoke-static {v0}, Lzp8;->b(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;->access$setShowcaseRows$p(Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;Ljava/util/List;)V

    invoke-virtual {v4}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/tasks/grouped/view/GroupedTasksView;

    if-eqz p0, :cond_5

    iget-object p1, p1, Ljn8;->a:Ljava/lang/String;

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/tasks/grouped/view/GroupedTasksView;->showToolbarTitle(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v4}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/tasks/grouped/view/GroupedTasksView;

    if-eqz p0, :cond_6

    invoke-interface {p0, v1}, Lcom/warefly/checkscan/presentation/tasks/grouped/view/GroupedTasksView;->showError(Z)V

    :cond_6
    invoke-virtual {v4}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/tasks/grouped/view/GroupedTasksView;

    if-eqz p0, :cond_7

    invoke-interface {p0, v0}, Lcom/warefly/checkscan/presentation/tasks/grouped/view/GroupedTasksView;->showItems(Ljava/util/List;)V

    :cond_7
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
