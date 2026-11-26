.class public final Lcom/warefly/checkscan/presentation/tasks/completedTasks/presenter/CompletedTasksPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"

# interfaces
.implements Lam8$b;
.implements Lpm8$b;
.implements Lfe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/tasks/completedTasks/view/CompletedTasksView;",
        ">;",
        "Lam8$b;",
        "Lpm8$b;",
        "Lfe;"
    }
.end annotation


# instance fields
.field private final content:Lxg5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxg5<",
            "Li57<",
            "Ljava/util/List<",
            "Lso8;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final desktopInteractor:Lzl2;

.field private final fetchCompletedTasksUseCase:Ld73;

.field private final flowRouter:Luf3;

.field private final loadingContent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lem8;",
            ">;"
        }
    .end annotation
.end field

.field private final resolveTaskOpenTargetUseCase:Lc47;

.field private final showcaseAnalytics:Lup8;


# direct methods
.method public constructor <init>(Luf3;Ld73;Lc47;Lzl2;Lup8;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/tasks/completedTasks/presenter/CompletedTasksPresenter;->flowRouter:Luf3;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/tasks/completedTasks/presenter/CompletedTasksPresenter;->fetchCompletedTasksUseCase:Ld73;

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/tasks/completedTasks/presenter/CompletedTasksPresenter;->resolveTaskOpenTargetUseCase:Lc47;

    iput-object p4, p0, Lcom/warefly/checkscan/presentation/tasks/completedTasks/presenter/CompletedTasksPresenter;->desktopInteractor:Lzl2;

    iput-object p5, p0, Lcom/warefly/checkscan/presentation/tasks/completedTasks/presenter/CompletedTasksPresenter;->showcaseAnalytics:Lup8;

    sget-object p1, Li57$b;->a:Li57$b;

    invoke-static {p1}, Lpx;->a(Ljava/lang/Object;)Lz68;

    move-result-object p1

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/tasks/completedTasks/presenter/CompletedTasksPresenter;->content:Lxg5;

    new-instance p1, Ljava/util/ArrayList;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_0

    sget-object p4, Lem8;->a:Lem8;

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/warefly/checkscan/presentation/tasks/completedTasks/presenter/CompletedTasksPresenter;->loadingContent:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getContent$p(Lcom/warefly/checkscan/presentation/tasks/completedTasks/presenter/CompletedTasksPresenter;)Lxg5;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/completedTasks/presenter/CompletedTasksPresenter;->content:Lxg5;

    return-object p0
.end method

.method public static final synthetic access$getFlowRouter$p(Lcom/warefly/checkscan/presentation/tasks/completedTasks/presenter/CompletedTasksPresenter;)Luf3;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/completedTasks/presenter/CompletedTasksPresenter;->flowRouter:Luf3;

    return-object p0
.end method

.method public static final synthetic access$getLoadingContent$p(Lcom/warefly/checkscan/presentation/tasks/completedTasks/presenter/CompletedTasksPresenter;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/completedTasks/presenter/CompletedTasksPresenter;->loadingContent:Ljava/util/List;

    return-object p0
.end method

.method private final loadContent()V
    .locals 3

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/completedTasks/presenter/CompletedTasksPresenter;->fetchCompletedTasksUseCase:Ld73;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lc73;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lc73;-><init>(Ld73;Le02;)V

    new-instance v0, Ltb7;

    invoke-direct {v0, v1}, Ltb7;-><init>(Lbm3;)V

    invoke-static {v0}, Ls57;->a(Lhd3;)Lde3;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/tasks/completedTasks/presenter/CompletedTasksPresenter$a;

    invoke-direct {v1, p0, v2}, Lcom/warefly/checkscan/presentation/tasks/completedTasks/presenter/CompletedTasksPresenter$a;-><init>(Lcom/warefly/checkscan/presentation/tasks/completedTasks/presenter/CompletedTasksPresenter;Le02;)V

    new-instance v2, Ldf3;

    invoke-direct {v2, v0, v1}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, v2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    return-void
.end method

.method private final openSkipDetailsTask(ILcom/warefly/checkscan/tasks/presentation/flows/TasksReason;)V
    .locals 3

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/completedTasks/presenter/CompletedTasksPresenter;->resolveTaskOpenTargetUseCase:Lc47;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lb47;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2}, Lb47;-><init>(Lc47;ILe02;)V

    new-instance p1, Ltb7;

    invoke-direct {p1, v1}, Ltb7;-><init>(Lbm3;)V

    invoke-static {p1}, Ls57;->a(Lhd3;)Lde3;

    move-result-object p1

    new-instance v0, Lcom/warefly/checkscan/presentation/tasks/completedTasks/presenter/CompletedTasksPresenter$c;

    invoke-direct {v0, p0, p2, v2}, Lcom/warefly/checkscan/presentation/tasks/completedTasks/presenter/CompletedTasksPresenter$c;-><init>(Lcom/warefly/checkscan/presentation/tasks/completedTasks/presenter/CompletedTasksPresenter;Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason;Le02;)V

    new-instance p2, Ldf3;

    invoke-direct {p2, p1, v0}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    return-void
.end method

.method private final subscribeOnEvents()V
    .locals 4

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/completedTasks/presenter/CompletedTasksPresenter;->desktopInteractor:Lzl2;

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->getPresenterScope()Ly22;

    move-result-object v1

    new-instance v2, Lcom/warefly/checkscan/presentation/tasks/completedTasks/presenter/CompletedTasksPresenter$e;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/warefly/checkscan/presentation/tasks/completedTasks/presenter/CompletedTasksPresenter$e;-><init>(Lcom/warefly/checkscan/presentation/tasks/completedTasks/presenter/CompletedTasksPresenter;Le02;)V

    invoke-virtual {v0, v1, v2}, Lzl2;->c(Ly22;Lbm3;)V

    return-void
.end method


# virtual methods
.method public final onBackClicked()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/completedTasks/presenter/CompletedTasksPresenter;->flowRouter:Luf3;

    invoke-virtual {p0}, Lo87;->c()V

    return-void
.end method

.method public onClaimReward(I)V
    .locals 0

    return-void
.end method

.method public onDailyTaskCardClicked(I)V
    .locals 2

    new-instance v0, Lkd$s0$c$a$a;

    invoke-direct {v0}, Lkd$s0$c$a$a;-><init>()V

    invoke-virtual {v0}, Lkd;->a()V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/completedTasks/presenter/CompletedTasksPresenter;->flowRouter:Luf3;

    new-instance v0, Lli7;

    new-instance v1, Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason$DailyTask;

    invoke-direct {v1, p1}, Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason$DailyTask;-><init>(I)V

    invoke-direct {v0, v1}, Lli7;-><init>(Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Luf3;->c:Lo87;

    invoke-virtual {p0, v0}, Lo87;->d(Ldf7;)V

    return-void
.end method

.method public onFirstViewAttach()V
    .locals 3

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/completedTasks/presenter/CompletedTasksPresenter;->showcaseAnalytics:Lup8;

    invoke-interface {v0}, Lup8;->f()V

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/tasks/completedTasks/presenter/CompletedTasksPresenter;->loadContent()V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/completedTasks/presenter/CompletedTasksPresenter;->content:Lxg5;

    new-instance v1, Lcom/warefly/checkscan/presentation/tasks/completedTasks/presenter/CompletedTasksPresenter$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/warefly/checkscan/presentation/tasks/completedTasks/presenter/CompletedTasksPresenter$b;-><init>(Lcom/warefly/checkscan/presentation/tasks/completedTasks/presenter/CompletedTasksPresenter;Le02;)V

    new-instance v2, Ldf3;

    invoke-direct {v2, v0, v1}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, v2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/tasks/completedTasks/presenter/CompletedTasksPresenter;->subscribeOnEvents()V

    return-void
.end method

.method public onTaskClicked(ILcom/warefly/checkscan/tasks/presentation/flows/TasksReason;Z)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lkd$s0$f$a$c;

    invoke-direct {v0, p1}, Lkd$s0$f$a$c;-><init>(I)V

    invoke-virtual {v0}, Lkd;->a()V

    if-eqz p3, :cond_0

    instance-of p3, p2, Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason$TaskDetails;

    if-eqz p3, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/warefly/checkscan/presentation/tasks/completedTasks/presenter/CompletedTasksPresenter;->openSkipDetailsTask(ILcom/warefly/checkscan/tasks/presentation/flows/TasksReason;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/completedTasks/presenter/CompletedTasksPresenter;->flowRouter:Luf3;

    new-instance p1, Lli7;

    invoke-direct {p1, p2}, Lli7;-><init>(Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Luf3;->c:Lo87;

    invoke-virtual {p0, p1}, Lo87;->d(Ldf7;)V

    return-void
.end method

.method public final refreshContent()V
    .locals 3

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/tasks/completedTasks/view/CompletedTasksView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/warefly/checkscan/presentation/tasks/completedTasks/view/CompletedTasksView;->turnOffRefreshing()V

    :cond_0
    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/completedTasks/presenter/CompletedTasksPresenter;->fetchCompletedTasksUseCase:Ld73;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lc73;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lc73;-><init>(Ld73;Le02;)V

    new-instance v0, Ltb7;

    invoke-direct {v0, v1}, Ltb7;-><init>(Lbm3;)V

    invoke-static {v0}, Ls57;->a(Lhd3;)Lde3;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/tasks/completedTasks/presenter/CompletedTasksPresenter$d;

    invoke-direct {v1, p0, v2}, Lcom/warefly/checkscan/presentation/tasks/completedTasks/presenter/CompletedTasksPresenter$d;-><init>(Lcom/warefly/checkscan/presentation/tasks/completedTasks/presenter/CompletedTasksPresenter;Le02;)V

    new-instance v2, Ldf3;

    invoke-direct {v2, v0, v1}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, v2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    return-void
.end method

.method public sendDailyTaskShownEvent()V
    .locals 0

    new-instance p0, Lkd$s0$c$a$b;

    invoke-direct {p0}, Lkd$s0$c$a$b;-><init>()V

    invoke-virtual {p0}, Lkd;->a()V

    return-void
.end method

.method public sendTaskShownEvent(I)V
    .locals 0

    new-instance p0, Lkd$s0$f$a$e;

    invoke-direct {p0, p1}, Lkd$s0$f$a$e;-><init>(I)V

    invoke-virtual {p0}, Lkd;->a()V

    return-void
.end method
