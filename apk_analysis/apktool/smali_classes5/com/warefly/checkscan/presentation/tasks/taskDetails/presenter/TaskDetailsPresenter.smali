.class public final Lcom/warefly/checkscan/presentation/tasks/taskDetails/presenter/TaskDetailsPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"

# interfaces
.implements Lvm8$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsView;",
        ">;",
        "Lvm8$b;"
    }
.end annotation


# instance fields
.field private afterSignUpEvent:Ljava/lang/String;

.field private final claimTaskRewardUseCase:Lmk1;

.field private final fetchTaskActionUseCase:Lo83;

.field private final fetchTaskDetailsUseCase:Lq83;

.field private final flowRouter:Luf3;

.field private final showcaseAnalytics:Lup8;

.field private final taskId:I


# direct methods
.method public constructor <init>(ILq83;Lo83;Lmk1;Luf3;Lup8;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput p1, p0, Lcom/warefly/checkscan/presentation/tasks/taskDetails/presenter/TaskDetailsPresenter;->taskId:I

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/tasks/taskDetails/presenter/TaskDetailsPresenter;->fetchTaskDetailsUseCase:Lq83;

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/tasks/taskDetails/presenter/TaskDetailsPresenter;->fetchTaskActionUseCase:Lo83;

    iput-object p4, p0, Lcom/warefly/checkscan/presentation/tasks/taskDetails/presenter/TaskDetailsPresenter;->claimTaskRewardUseCase:Lmk1;

    iput-object p5, p0, Lcom/warefly/checkscan/presentation/tasks/taskDetails/presenter/TaskDetailsPresenter;->flowRouter:Luf3;

    iput-object p6, p0, Lcom/warefly/checkscan/presentation/tasks/taskDetails/presenter/TaskDetailsPresenter;->showcaseAnalytics:Lup8;

    return-void
.end method

.method public static final synthetic access$getFlowRouter$p(Lcom/warefly/checkscan/presentation/tasks/taskDetails/presenter/TaskDetailsPresenter;)Luf3;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/taskDetails/presenter/TaskDetailsPresenter;->flowRouter:Luf3;

    return-object p0
.end method

.method public static final synthetic access$handleClaimResult(Lcom/warefly/checkscan/presentation/tasks/taskDetails/presenter/TaskDetailsPresenter;Lkk1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/tasks/taskDetails/presenter/TaskDetailsPresenter;->handleClaimResult(Lkk1;)V

    return-void
.end method

.method public static final synthetic access$setAfterSignUpEvent$p(Lcom/warefly/checkscan/presentation/tasks/taskDetails/presenter/TaskDetailsPresenter;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/tasks/taskDetails/presenter/TaskDetailsPresenter;->afterSignUpEvent:Ljava/lang/String;

    return-void
.end method

.method public static synthetic e(Lcom/warefly/checkscan/presentation/tasks/taskDetails/presenter/TaskDetailsPresenter;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/tasks/taskDetails/presenter/TaskDetailsPresenter;->onFirstViewAttach$lambda$1(Lcom/warefly/checkscan/presentation/tasks/taskDetails/presenter/TaskDetailsPresenter;Ljava/lang/Object;)V

    return-void
.end method

.method private final handleClaimResult(Lkk1;)V
    .locals 2

    instance-of v0, p1, Lno8;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/taskDetails/presenter/TaskDetailsPresenter;->showcaseAnalytics:Lup8;

    iget v1, p0, Lcom/warefly/checkscan/presentation/tasks/taskDetails/presenter/TaskDetailsPresenter;->taskId:I

    invoke-interface {v0, v1}, Lup8;->p(I)V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsView;

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/warefly/checkscan/presentation/tasks/taskDetails/presenter/TaskDetailsPresenter;->taskId:I

    check-cast p1, Lno8;

    invoke-interface {v0, p0, p1}, Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsView;->showTaskSuccess(ILno8;)V

    return-void

    :cond_0
    instance-of v0, p1, Lhn8;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/taskDetails/presenter/TaskDetailsPresenter;->showcaseAnalytics:Lup8;

    iget v1, p0, Lcom/warefly/checkscan/presentation/tasks/taskDetails/presenter/TaskDetailsPresenter;->taskId:I

    invoke-interface {v0, v1}, Lup8;->j(I)V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsView;

    if-eqz p0, :cond_1

    check-cast p1, Lhn8;

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsView;->showTaskError(Lhn8;)V

    :cond_1
    return-void
.end method

.method private static final onFirstViewAttach$lambda$1(Lcom/warefly/checkscan/presentation/tasks/taskDetails/presenter/TaskDetailsPresenter;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/tasks/taskDetails/presenter/TaskDetailsPresenter;->afterSignUpEvent:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsView;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;->openUrlInCustomTab(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/tasks/taskDetails/presenter/TaskDetailsPresenter;->afterSignUpEvent:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final loadContent()V
    .locals 4

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/taskDetails/presenter/TaskDetailsPresenter;->fetchTaskDetailsUseCase:Lq83;

    iget v1, p0, Lcom/warefly/checkscan/presentation/tasks/taskDetails/presenter/TaskDetailsPresenter;->taskId:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lp83;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lp83;-><init>(Lq83;ILe02;)V

    new-instance v0, Ltb7;

    invoke-direct {v0, v2}, Ltb7;-><init>(Lbm3;)V

    invoke-static {v0}, Ls57;->a(Lhd3;)Lde3;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/tasks/taskDetails/presenter/TaskDetailsPresenter$a;

    invoke-direct {v1, p0, v3}, Lcom/warefly/checkscan/presentation/tasks/taskDetails/presenter/TaskDetailsPresenter$a;-><init>(Lcom/warefly/checkscan/presentation/tasks/taskDetails/presenter/TaskDetailsPresenter;Le02;)V

    new-instance v2, Ldf3;

    invoke-direct {v2, v0, v1}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, v2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    return-void
.end method

.method public final onActionClicked(Z)V
    .locals 4

    new-instance v0, Lkd$s0$f$a$a;

    iget v1, p0, Lcom/warefly/checkscan/presentation/tasks/taskDetails/presenter/TaskDetailsPresenter;->taskId:I

    invoke-direct {v0, v1}, Lkd$s0$f$a$a;-><init>(I)V

    invoke-virtual {v0}, Lkd;->a()V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/taskDetails/presenter/TaskDetailsPresenter;->showcaseAnalytics:Lup8;

    iget v1, p0, Lcom/warefly/checkscan/presentation/tasks/taskDetails/presenter/TaskDetailsPresenter;->taskId:I

    invoke-interface {v0, v1}, Lup8;->h(I)V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/taskDetails/presenter/TaskDetailsPresenter;->fetchTaskActionUseCase:Lo83;

    iget v1, p0, Lcom/warefly/checkscan/presentation/tasks/taskDetails/presenter/TaskDetailsPresenter;->taskId:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ln83;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Ln83;-><init>(Lo83;ILe02;)V

    new-instance v0, Ltb7;

    invoke-direct {v0, v2}, Ltb7;-><init>(Lbm3;)V

    invoke-static {v0}, Ls57;->a(Lhd3;)Lde3;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/tasks/taskDetails/presenter/TaskDetailsPresenter$b;

    invoke-direct {v1, p0, p1, v3}, Lcom/warefly/checkscan/presentation/tasks/taskDetails/presenter/TaskDetailsPresenter$b;-><init>(Lcom/warefly/checkscan/presentation/tasks/taskDetails/presenter/TaskDetailsPresenter;ZLe02;)V

    new-instance p1, Ldf3;

    invoke-direct {p1, v0, v1}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    return-void
.end method

.method public final onBackClicked()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/taskDetails/presenter/TaskDetailsPresenter;->flowRouter:Luf3;

    invoke-virtual {p0}, Lo87;->c()V

    return-void
.end method

.method public onBadgeQuestionClicked(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;->openUrlInCustomTab(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onClaimClicked(I)V
    .locals 3

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/taskDetails/presenter/TaskDetailsPresenter;->claimTaskRewardUseCase:Lmk1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Llk1;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2}, Llk1;-><init>(Lmk1;ILe02;)V

    new-instance p1, Ltb7;

    invoke-direct {p1, v1}, Ltb7;-><init>(Lbm3;)V

    invoke-static {p1}, Ls57;->a(Lhd3;)Lde3;

    move-result-object p1

    new-instance v0, Lcom/warefly/checkscan/presentation/tasks/taskDetails/presenter/TaskDetailsPresenter$c;

    invoke-direct {v0, p0, v2}, Lcom/warefly/checkscan/presentation/tasks/taskDetails/presenter/TaskDetailsPresenter$c;-><init>(Lcom/warefly/checkscan/presentation/tasks/taskDetails/presenter/TaskDetailsPresenter;Le02;)V

    new-instance v1, Ldf3;

    invoke-direct {v1, p1, v0}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, v1}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    return-void
.end method

.method public onFirstViewAttach()V
    .locals 2

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/taskDetails/presenter/TaskDetailsPresenter;->showcaseAnalytics:Lup8;

    iget v1, p0, Lcom/warefly/checkscan/presentation/tasks/taskDetails/presenter/TaskDetailsPresenter;->taskId:I

    invoke-interface {v0, v1}, Lup8;->e(I)V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/taskDetails/presenter/TaskDetailsPresenter;->flowRouter:Luf3;

    new-instance v1, Lym8;

    invoke-direct {v1, p0}, Lym8;-><init>(Lcom/warefly/checkscan/presentation/tasks/taskDetails/presenter/TaskDetailsPresenter;)V

    invoke-virtual {v0, v1}, Luf3;->l(Lt57;)V

    return-void
.end method

.method public final onInfoBadgeClicked(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/warefly/checkscan/shared/infoBottomSheet/presentation/b$a;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsView;->showInfoBottomSheet(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final onOrdClicked(Lb06;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsView;->showOrdInfoDialog(Lb06;)V

    :cond_0
    return-void
.end method
