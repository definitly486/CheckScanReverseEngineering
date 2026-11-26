.class public final Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"

# interfaces
.implements Lam8$b;
.implements Lfe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/tasks/grouped/view/GroupedTasksView;",
        ">;",
        "Lam8$b;",
        "Lfe;"
    }
.end annotation


# instance fields
.field private final fetchGroupedTasksUseCase:Lg73;

.field private final flowRouter:Luf3;

.field private final interactor:Lvn8;

.field private isSameShowcaseList:Z

.field private final resolveTaskOpenTargetUseCase:Lc47;

.field private final saveShowcaseClick:Lbc7;

.field private final showcaseAnalytics:Lup8;

.field private showcaseContext:Lwp8;

.field private final showcaseRenderState:Lqw7;

.field private showcaseRows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ljava/util/List<",
            "+",
            "Lsw7;",
            ">;>;"
        }
    .end annotation
.end field

.field private final shownState:Lrw7;

.field private final taskId:I


# direct methods
.method public constructor <init>(ILuf3;Lvn8;Lg73;Lc47;Lbc7;Lup8;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput p1, p0, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;->taskId:I

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;->flowRouter:Luf3;

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;->interactor:Lvn8;

    iput-object p4, p0, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;->fetchGroupedTasksUseCase:Lg73;

    iput-object p5, p0, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;->resolveTaskOpenTargetUseCase:Lc47;

    iput-object p6, p0, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;->saveShowcaseClick:Lbc7;

    iput-object p7, p0, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;->showcaseAnalytics:Lup8;

    new-instance p1, Lrw7;

    invoke-direct {p1}, Lrw7;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;->shownState:Lrw7;

    new-instance p1, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter$f;

    invoke-direct {p1, p0}, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter$f;-><init>(Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;)V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;->showcaseRenderState:Lqw7;

    sget-object p1, Lkx2;->b:Lkx2;

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;->showcaseRows:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$fetchContent(Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;->fetchContent()V

    return-void
.end method

.method public static final synthetic access$getFetchGroupedTasksUseCase$p(Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;)Lg73;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;->fetchGroupedTasksUseCase:Lg73;

    return-object p0
.end method

.method public static final synthetic access$getFlowRouter$p(Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;)Luf3;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;->flowRouter:Luf3;

    return-object p0
.end method

.method public static final synthetic access$getShowcaseContext$p(Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;)Lwp8;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;->showcaseContext:Lwp8;

    return-object p0
.end method

.method public static final synthetic access$getShownState$p(Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;)Lrw7;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;->shownState:Lrw7;

    return-object p0
.end method

.method public static final synthetic access$getTaskId$p(Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;)I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;->taskId:I

    return p0
.end method

.method public static final synthetic access$handleClaimResult(Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;ILkk1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;->handleClaimResult(ILkk1;)V

    return-void
.end method

.method public static final synthetic access$isSameShowcaseList$p(Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;->isSameShowcaseList:Z

    return p0
.end method

.method public static final synthetic access$setSameShowcaseList$p(Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;->isSameShowcaseList:Z

    return-void
.end method

.method public static final synthetic access$setShowcaseContext$p(Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;Lwp8;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;->showcaseContext:Lwp8;

    return-void
.end method

.method public static final synthetic access$setShowcaseRows$p(Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;->showcaseRows:Ljava/util/List;

    return-void
.end method

.method private final fetchContent()V
    .locals 4

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->getPresenterScope()Ly22;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter$a;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter$a;-><init>(Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;)V

    new-instance v2, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter$b;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter$b;-><init>(Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;Le02;)V

    const/4 p0, 0x2

    invoke-static {v0, v1, v3, v2, p0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    return-void
.end method

.method private final handleClaimResult(ILkk1;)V
    .locals 1

    instance-of v0, p2, Lno8;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/tasks/grouped/view/GroupedTasksView;

    if-eqz p0, :cond_1

    check-cast p2, Lno8;

    invoke-interface {p0, p1, p2}, Lcom/warefly/checkscan/presentation/tasks/grouped/view/GroupedTasksView;->showTaskSuccess(ILno8;)V

    return-void

    :cond_0
    instance-of p1, p2, Lhn8;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/tasks/grouped/view/GroupedTasksView;

    if-eqz p0, :cond_1

    check-cast p2, Lhn8;

    invoke-interface {p0, p2}, Lcom/warefly/checkscan/presentation/tasks/grouped/view/GroupedTasksView;->showTaskError(Lhn8;)V

    :cond_1
    return-void
.end method

.method private final openSkipDetailsTask(ILcom/warefly/checkscan/tasks/presentation/flows/TasksReason;)V
    .locals 3

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;->resolveTaskOpenTargetUseCase:Lc47;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lb47;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2}, Lb47;-><init>(Lc47;ILe02;)V

    new-instance p1, Ltb7;

    invoke-direct {p1, v1}, Ltb7;-><init>(Lbm3;)V

    invoke-static {p1}, Ls57;->a(Lhd3;)Lde3;

    move-result-object p1

    new-instance v0, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter$e;

    invoke-direct {v0, p0, p2, v2}, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter$e;-><init>(Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason;Le02;)V

    new-instance p2, Ldf3;

    invoke-direct {p2, p1, v0}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    return-void
.end method

.method private final sendShowcaseClick(I)V
    .locals 9

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;->showcaseRows:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkn1;->r(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsw7;

    invoke-interface {v3}, Lsw7;->a()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, -0x1

    :goto_2
    iget-object v3, p0, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;->showcaseAnalytics:Lup8;

    invoke-static {v2, v0}, Lqn1;->W(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsw7;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lsw7;->b()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_4

    :cond_3
    :goto_3
    move-object v4, v1

    goto :goto_5

    :cond_4
    :goto_4
    const-string v1, "task"

    goto :goto_3

    :goto_5
    if-ltz v2, :cond_5

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_6
    move-object v6, v1

    goto :goto_7

    :cond_5
    const/4 v1, 0x0

    goto :goto_6

    :goto_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    iget-object v8, p0, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;->showcaseContext:Lwp8;

    move v5, p1

    invoke-interface/range {v3 .. v8}, Lup8;->k(Ljava/lang/String;ILjava/lang/Integer;ILwp8;)V

    return-void
.end method


# virtual methods
.method public final getShowcaseRenderState()Lqw7;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;->showcaseRenderState:Lqw7;

    return-object p0
.end method

.method public final getShowcaseRows()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lsw7;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;->showcaseRows:Ljava/util/List;

    return-object p0
.end method

.method public final onBackPressed()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;->flowRouter:Luf3;

    invoke-virtual {p0}, Lo87;->c()V

    return-void
.end method

.method public onClaimReward(I)V
    .locals 3

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;->interactor:Lvn8;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lnn8;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2}, Lnn8;-><init>(Lvn8;ILe02;)V

    new-instance v0, Ltb7;

    invoke-direct {v0, v1}, Ltb7;-><init>(Lbm3;)V

    invoke-static {v0}, Ls57;->a(Lhd3;)Lde3;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter$c;

    invoke-direct {v1, p0, p1, v2}, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter$c;-><init>(Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;ILe02;)V

    new-instance p1, Ldf3;

    invoke-direct {p1, v0, v1}, Ldf3;-><init>(Lhd3;Lbm3;)V

    new-instance v0, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter$d;

    invoke-direct {v0, p0, v2}, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter$d;-><init>(Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;Le02;)V

    new-instance v1, Lbe3;

    invoke-direct {v1, p1, v0}, Lbe3;-><init>(Lhd3;Ldm3;)V

    invoke-virtual {p0, v1}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    return-void
.end method

.method public onFirstViewAttach()V
    .locals 0

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;->fetchContent()V

    return-void
.end method

.method public final onShowcaseItemShown(Llw7;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;->showcaseAnalytics:Lup8;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;->showcaseContext:Lwp8;

    invoke-interface {v0, p1, p0}, Lup8;->l(Llw7;Lwp8;)V

    return-void
.end method

.method public onTaskClicked(ILcom/warefly/checkscan/tasks/presentation/flows/TasksReason;Z)V
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lkd$s0$f$a$c;

    invoke-direct {v0, p1}, Lkd$s0$f$a$c;-><init>(I)V

    invoke-virtual {v0}, Lkd;->a()V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;->showcaseContext:Lwp8;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;->saveShowcaseClick:Lbc7;

    iget-object v1, v1, Lbc7;->a:Lxp8;

    invoke-interface {v1, p1, v0}, Lxp8;->b(ILwp8;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;->sendShowcaseClick(I)V

    if-eqz p3, :cond_1

    instance-of p3, p2, Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason$TaskDetails;

    if-eqz p3, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;->openSkipDetailsTask(ILcom/warefly/checkscan/tasks/presentation/flows/TasksReason;)V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;->flowRouter:Luf3;

    new-instance p1, Lli7;

    invoke-direct {p1, p2}, Lli7;-><init>(Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Luf3;->c:Lo87;

    invoke-virtual {p0, p1}, Lo87;->d(Ldf7;)V

    return-void
.end method

.method public final refreshContent()V
    .locals 2

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/tasks/grouped/view/GroupedTasksView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/warefly/checkscan/presentation/tasks/grouped/view/GroupedTasksView;->showError(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;->fetchContent()V

    return-void
.end method

.method public sendTaskShownEvent(I)V
    .locals 0

    new-instance p0, Lkd$s0$f$a$e;

    invoke-direct {p0, p1}, Lkd$s0$f$a$e;-><init>(I)V

    invoke-virtual {p0}, Lkd;->a()V

    return-void
.end method
