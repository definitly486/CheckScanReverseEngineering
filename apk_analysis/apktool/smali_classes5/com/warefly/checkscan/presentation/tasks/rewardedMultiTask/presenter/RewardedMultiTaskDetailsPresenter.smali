.class public final Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/presenter/RewardedMultiTaskDetailsPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"

# interfaces
.implements Lm77$a;
.implements Le77$a;
.implements Lcom/warefly/checkscan/shared/infoBottomSheet/presentation/a$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/view/RewardedMultiTaskDetailsView;",
        ">;",
        "Lm77$a;",
        "Le77$a;",
        "Lcom/warefly/checkscan/shared/infoBottomSheet/presentation/a$b;"
    }
.end annotation


# instance fields
.field private final flowRouter:Luf3;

.field private final interactor:Lvn8;

.field private final sheetContent:Lxg5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxg5<",
            "Lk77;",
            ">;"
        }
    .end annotation
.end field

.field private final showcaseAnalytics:Lup8;

.field private final taskId:I


# direct methods
.method public constructor <init>(ILvn8;Luf3;Lup8;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput p1, p0, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/presenter/RewardedMultiTaskDetailsPresenter;->taskId:I

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/presenter/RewardedMultiTaskDetailsPresenter;->interactor:Lvn8;

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/presenter/RewardedMultiTaskDetailsPresenter;->flowRouter:Luf3;

    iput-object p4, p0, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/presenter/RewardedMultiTaskDetailsPresenter;->showcaseAnalytics:Lup8;

    const/4 p1, 0x0

    invoke-static {p1}, Lpx;->a(Ljava/lang/Object;)Lz68;

    move-result-object p1

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/presenter/RewardedMultiTaskDetailsPresenter;->sheetContent:Lxg5;

    return-void
.end method

.method public static final synthetic access$getSheetContent$p(Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/presenter/RewardedMultiTaskDetailsPresenter;)Lxg5;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/presenter/RewardedMultiTaskDetailsPresenter;->sheetContent:Lxg5;

    return-object p0
.end method

.method public static final synthetic access$handleClaimResult(Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/presenter/RewardedMultiTaskDetailsPresenter;Lkk1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/presenter/RewardedMultiTaskDetailsPresenter;->handleClaimResult(Lkk1;)V

    return-void
.end method

.method public static final synthetic access$setSubTaskActionButtonLoading(Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/presenter/RewardedMultiTaskDetailsPresenter;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/presenter/RewardedMultiTaskDetailsPresenter;->setSubTaskActionButtonLoading(Z)V

    return-void
.end method

.method public static final synthetic access$setSubTaskClaimButtonLoading(Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/presenter/RewardedMultiTaskDetailsPresenter;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/presenter/RewardedMultiTaskDetailsPresenter;->setSubTaskClaimButtonLoading(Z)V

    return-void
.end method

.method private final handleClaimResult(Lkk1;)V
    .locals 2

    instance-of v0, p1, Lno8;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/presenter/RewardedMultiTaskDetailsPresenter;->showcaseAnalytics:Lup8;

    iget v1, p0, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/presenter/RewardedMultiTaskDetailsPresenter;->taskId:I

    invoke-interface {v0, v1}, Lup8;->p(I)V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/view/RewardedMultiTaskDetailsView;

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/presenter/RewardedMultiTaskDetailsPresenter;->taskId:I

    check-cast p1, Lno8;

    invoke-interface {v0, p0, p1}, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/view/RewardedMultiTaskDetailsView;->showTaskSuccess(ILno8;)V

    return-void

    :cond_0
    instance-of v0, p1, Lhn8;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/presenter/RewardedMultiTaskDetailsPresenter;->showcaseAnalytics:Lup8;

    iget v1, p0, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/presenter/RewardedMultiTaskDetailsPresenter;->taskId:I

    invoke-interface {v0, v1}, Lup8;->j(I)V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/view/RewardedMultiTaskDetailsView;

    if-eqz p0, :cond_1

    check-cast p1, Lhn8;

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/view/RewardedMultiTaskDetailsView;->showTaskError(Lhn8;)V

    :cond_1
    return-void
.end method

.method private final setSubTaskActionButtonLoading(Z)V
    .locals 6

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/presenter/RewardedMultiTaskDetailsPresenter;->sheetContent:Lxg5;

    invoke-interface {v0}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk77;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lk77;->a:Ljava/util/List;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    sget-object v0, Lkx2;->b:Lkx2;

    :cond_1
    check-cast v0, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpz3;

    instance-of v4, v3, Lo77;

    if-eqz v4, :cond_3

    check-cast v3, Lo77;

    iget-object v4, v3, Lo77;->d:Lo77$a;

    if-eqz v4, :cond_2

    invoke-static {v4, p1}, Lo77$a;->a(Lo77$a;Z)Lo77$a;

    move-result-object v4

    goto :goto_2

    :cond_2
    move-object v4, v1

    :goto_2
    const/16 v5, 0x77

    invoke-static {v3, v4, v1, v5}, Lo77;->d(Lo77;Lo77$a;Lo77$a;I)Lo77;

    move-result-object v3

    :cond_3
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/presenter/RewardedMultiTaskDetailsPresenter;->sheetContent:Lxg5;

    :cond_5
    invoke-interface {p0}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lk77;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lk77;->b:Lb06;

    new-instance v3, Lk77;

    invoke-direct {v3, v2, v0}, Lk77;-><init>(Ljava/util/List;Lb06;)V

    goto :goto_3

    :cond_6
    move-object v3, v1

    :goto_3
    invoke-interface {p0, p1, v3}, Lxg5;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    return-void
.end method

.method private final setSubTaskClaimButtonLoading(Z)V
    .locals 6

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/presenter/RewardedMultiTaskDetailsPresenter;->sheetContent:Lxg5;

    invoke-interface {v0}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk77;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lk77;->a:Ljava/util/List;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    sget-object v0, Lkx2;->b:Lkx2;

    :cond_1
    check-cast v0, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpz3;

    instance-of v4, v3, Lo77;

    if-eqz v4, :cond_3

    check-cast v3, Lo77;

    iget-object v4, v3, Lo77;->e:Lo77$a;

    if-eqz v4, :cond_2

    invoke-static {v4, p1}, Lo77$a;->a(Lo77$a;Z)Lo77$a;

    move-result-object v4

    goto :goto_2

    :cond_2
    move-object v4, v1

    :goto_2
    const/16 v5, 0x6f

    invoke-static {v3, v1, v4, v5}, Lo77;->d(Lo77;Lo77$a;Lo77$a;I)Lo77;

    move-result-object v3

    :cond_3
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/presenter/RewardedMultiTaskDetailsPresenter;->sheetContent:Lxg5;

    :cond_5
    invoke-interface {p0}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lk77;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lk77;->b:Lb06;

    new-instance v3, Lk77;

    invoke-direct {v3, v2, v0}, Lk77;-><init>(Ljava/util/List;Lb06;)V

    goto :goto_3

    :cond_6
    move-object v3, v1

    :goto_3
    invoke-interface {p0, p1, v3}, Lxg5;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    return-void
.end method


# virtual methods
.method public final loadContent()V
    .locals 4

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/presenter/RewardedMultiTaskDetailsPresenter;->interactor:Lvn8;

    iget v1, p0, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/presenter/RewardedMultiTaskDetailsPresenter;->taskId:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lrn8;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lrn8;-><init>(Lvn8;ILe02;)V

    new-instance v0, Ltb7;

    invoke-direct {v0, v2}, Ltb7;-><init>(Lbm3;)V

    invoke-static {v0}, Ls57;->a(Lhd3;)Lde3;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/presenter/RewardedMultiTaskDetailsPresenter$a;

    invoke-direct {v1, p0, v3}, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/presenter/RewardedMultiTaskDetailsPresenter$a;-><init>(Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/presenter/RewardedMultiTaskDetailsPresenter;Le02;)V

    new-instance v2, Ldf3;

    invoke-direct {v2, v0, v1}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, v2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    return-void
.end method

.method public final onBackClicked()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/presenter/RewardedMultiTaskDetailsPresenter;->flowRouter:Luf3;

    invoke-virtual {p0}, Lo87;->c()V

    return-void
.end method

.method public onBadgeQuestionClicked(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/view/RewardedMultiTaskDetailsView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;->openUrlInCustomTab(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onConditionsClicked(Ljava/util/List;)V
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

    check-cast p0, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/view/RewardedMultiTaskDetailsView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/view/RewardedMultiTaskDetailsView;->showInfoBottomSheet(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public onFirstViewAttach()V
    .locals 3

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/presenter/RewardedMultiTaskDetailsPresenter;->showcaseAnalytics:Lup8;

    iget v1, p0, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/presenter/RewardedMultiTaskDetailsPresenter;->taskId:I

    invoke-interface {v0, v1}, Lup8;->e(I)V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/presenter/RewardedMultiTaskDetailsPresenter;->sheetContent:Lxg5;

    new-instance v1, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/presenter/RewardedMultiTaskDetailsPresenter$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/presenter/RewardedMultiTaskDetailsPresenter$b;-><init>(Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/presenter/RewardedMultiTaskDetailsPresenter;Le02;)V

    new-instance v2, Ldf3;

    invoke-direct {v2, v0, v1}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, v2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    return-void
.end method

.method public final onOrdClicked(Lb06;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/view/RewardedMultiTaskDetailsView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/view/RewardedMultiTaskDetailsView;->showOrdInfoDialog(Lb06;)V

    :cond_0
    return-void
.end method

.method public onRewardedSubTaskClaim(I)V
    .locals 4

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/presenter/RewardedMultiTaskDetailsPresenter;->interactor:Lvn8;

    iget v1, p0, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/presenter/RewardedMultiTaskDetailsPresenter;->taskId:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lon8;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, p1, v3}, Lon8;-><init>(Lvn8;IILe02;)V

    new-instance p1, Ltb7;

    invoke-direct {p1, v2}, Ltb7;-><init>(Lbm3;)V

    invoke-static {p1}, Ls57;->a(Lhd3;)Lde3;

    move-result-object p1

    new-instance v0, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/presenter/RewardedMultiTaskDetailsPresenter$c;

    invoke-direct {v0, p0, v3}, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/presenter/RewardedMultiTaskDetailsPresenter$c;-><init>(Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/presenter/RewardedMultiTaskDetailsPresenter;Le02;)V

    new-instance v1, Ldf3;

    invoke-direct {v1, p1, v0}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, v1}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    return-void
.end method

.method public onRewardedSubTaskClicked(I)V
    .locals 4

    new-instance v0, Lkd$s0$f$a$b;

    iget v1, p0, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/presenter/RewardedMultiTaskDetailsPresenter;->taskId:I

    invoke-direct {v0, v1, p1}, Lkd$s0$f$a$b;-><init>(II)V

    invoke-virtual {v0}, Lkd;->a()V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/presenter/RewardedMultiTaskDetailsPresenter;->showcaseAnalytics:Lup8;

    iget v1, p0, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/presenter/RewardedMultiTaskDetailsPresenter;->taskId:I

    invoke-interface {v0, v1, p1}, Lup8;->o(II)V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/presenter/RewardedMultiTaskDetailsPresenter;->interactor:Lvn8;

    iget v1, p0, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/presenter/RewardedMultiTaskDetailsPresenter;->taskId:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lsn8;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, p1, v3}, Lsn8;-><init>(Lvn8;IILe02;)V

    new-instance p1, Ltb7;

    invoke-direct {p1, v2}, Ltb7;-><init>(Lbm3;)V

    invoke-static {p1}, Ls57;->a(Lhd3;)Lde3;

    move-result-object p1

    new-instance v0, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/presenter/RewardedMultiTaskDetailsPresenter$d;

    invoke-direct {v0, p0, v3}, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/presenter/RewardedMultiTaskDetailsPresenter$d;-><init>(Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/presenter/RewardedMultiTaskDetailsPresenter;Le02;)V

    new-instance v1, Ldf3;

    invoke-direct {v1, p1, v0}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, v1}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    return-void
.end method
