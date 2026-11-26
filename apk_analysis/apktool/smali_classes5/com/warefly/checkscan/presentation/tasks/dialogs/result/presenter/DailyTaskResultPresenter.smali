.class public final Lcom/warefly/checkscan/presentation/tasks/dialogs/result/presenter/DailyTaskResultPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/presentation/tasks/dialogs/result/presenter/DailyTaskResultPresenter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/tasks/dialogs/result/view/DailyTaskResultView;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/warefly/checkscan/presentation/tasks/dialogs/result/presenter/DailyTaskResultPresenter$a;

.field private static final WAIT_ENTER_ANIMATION:J = 0x1f4L


# instance fields
.field private final result:Lcom/warefly/checkscan/tasks/presentation/dailyTask/model/DailyTaskResult;

.field private final showcaseAnalytics:Lup8;

.field private final taskId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/warefly/checkscan/presentation/tasks/dialogs/result/presenter/DailyTaskResultPresenter$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/warefly/checkscan/presentation/tasks/dialogs/result/presenter/DailyTaskResultPresenter;->Companion:Lcom/warefly/checkscan/presentation/tasks/dialogs/result/presenter/DailyTaskResultPresenter$a;

    return-void
.end method

.method public constructor <init>(ILcom/warefly/checkscan/tasks/presentation/dailyTask/model/DailyTaskResult;Lup8;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput p1, p0, Lcom/warefly/checkscan/presentation/tasks/dialogs/result/presenter/DailyTaskResultPresenter;->taskId:I

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/tasks/dialogs/result/presenter/DailyTaskResultPresenter;->result:Lcom/warefly/checkscan/tasks/presentation/dailyTask/model/DailyTaskResult;

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/tasks/dialogs/result/presenter/DailyTaskResultPresenter;->showcaseAnalytics:Lup8;

    return-void
.end method

.method public static final synthetic access$showConfetti(Lcom/warefly/checkscan/presentation/tasks/dialogs/result/presenter/DailyTaskResultPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/tasks/dialogs/result/presenter/DailyTaskResultPresenter;->showConfetti()V

    return-void
.end method

.method private final sendEventIfHasTwoButtons()V
    .locals 1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/dialogs/result/presenter/DailyTaskResultPresenter;->result:Lcom/warefly/checkscan/tasks/presentation/dailyTask/model/DailyTaskResult;

    iget-object v0, p0, Lcom/warefly/checkscan/tasks/presentation/dailyTask/model/DailyTaskResult;->f:Lcom/warefly/checkscan/tasks/presentation/dailyTask/model/DailyTaskResult$Button;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/warefly/checkscan/tasks/presentation/dailyTask/model/DailyTaskResult;->e:Lcom/warefly/checkscan/tasks/presentation/dailyTask/model/DailyTaskResult$Button;

    if-eqz p0, :cond_0

    new-instance p0, Lkd$s0$c$d$a;

    const-string v0, "Transfer button"

    invoke-direct {p0, v0}, Lkd$s0$c$d;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lkd;->a()V

    :cond_0
    return-void
.end method

.method private final showConfetti()V
    .locals 1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/tasks/dialogs/result/view/DailyTaskResultView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/warefly/checkscan/presentation/tasks/dialogs/result/view/DailyTaskResultView;->vibrate()V

    :cond_0
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/tasks/dialogs/result/view/DailyTaskResultView;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/tasks/dialogs/result/view/DailyTaskResultView;->showConfetti()V

    :cond_1
    return-void
.end method


# virtual methods
.method public final onActionButtonClicked()V
    .locals 2

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/tasks/dialogs/result/presenter/DailyTaskResultPresenter;->sendEventIfHasTwoButtons()V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/dialogs/result/presenter/DailyTaskResultPresenter;->showcaseAnalytics:Lup8;

    iget v1, p0, Lcom/warefly/checkscan/presentation/tasks/dialogs/result/presenter/DailyTaskResultPresenter;->taskId:I

    invoke-interface {v0, v1}, Lup8;->r(I)V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/dialogs/result/presenter/DailyTaskResultPresenter;->result:Lcom/warefly/checkscan/tasks/presentation/dailyTask/model/DailyTaskResult;

    iget-object v0, v0, Lcom/warefly/checkscan/tasks/presentation/dailyTask/model/DailyTaskResult;->e:Lcom/warefly/checkscan/tasks/presentation/dailyTask/model/DailyTaskResult$Button;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/warefly/checkscan/tasks/presentation/dailyTask/model/DailyTaskResult$Button;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v1

    check-cast v1, Lcom/warefly/checkscan/presentation/tasks/dialogs/result/view/DailyTaskResultView;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;->openUrl(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/tasks/dialogs/result/view/DailyTaskResultView;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/tasks/dialogs/result/view/DailyTaskResultView;->dismissDialog()V

    :cond_1
    return-void
.end method

.method public onFirstViewAttach()V
    .locals 3

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    new-instance v0, Lkd$s0$c$d$b;

    const-string v1, "Shows"

    invoke-direct {v0, v1}, Lkd$s0$c$d;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lkd;->a()V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/dialogs/result/presenter/DailyTaskResultPresenter;->showcaseAnalytics:Lup8;

    iget v1, p0, Lcom/warefly/checkscan/presentation/tasks/dialogs/result/presenter/DailyTaskResultPresenter;->taskId:I

    invoke-interface {v0, v1}, Lup8;->b(I)V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/tasks/dialogs/result/view/DailyTaskResultView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/tasks/dialogs/result/presenter/DailyTaskResultPresenter;->result:Lcom/warefly/checkscan/tasks/presentation/dailyTask/model/DailyTaskResult;

    invoke-interface {v0, v1}, Lcom/warefly/checkscan/presentation/tasks/dialogs/result/view/DailyTaskResultView;->showResult(Lcom/warefly/checkscan/tasks/presentation/dailyTask/model/DailyTaskResult;)V

    :cond_0
    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->getPresenterScope()Ly22;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/tasks/dialogs/result/presenter/DailyTaskResultPresenter$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/warefly/checkscan/presentation/tasks/dialogs/result/presenter/DailyTaskResultPresenter$b;-><init>(Lcom/warefly/checkscan/presentation/tasks/dialogs/result/presenter/DailyTaskResultPresenter;Le02;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    return-void
.end method

.method public final onSecondActionButtonClicked()V
    .locals 2

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/dialogs/result/presenter/DailyTaskResultPresenter;->showcaseAnalytics:Lup8;

    iget v1, p0, Lcom/warefly/checkscan/presentation/tasks/dialogs/result/presenter/DailyTaskResultPresenter;->taskId:I

    invoke-interface {v0, v1}, Lup8;->g(I)V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/dialogs/result/presenter/DailyTaskResultPresenter;->result:Lcom/warefly/checkscan/tasks/presentation/dailyTask/model/DailyTaskResult;

    iget-object v0, v0, Lcom/warefly/checkscan/tasks/presentation/dailyTask/model/DailyTaskResult;->f:Lcom/warefly/checkscan/tasks/presentation/dailyTask/model/DailyTaskResult$Button;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/warefly/checkscan/tasks/presentation/dailyTask/model/DailyTaskResult$Button;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v1

    check-cast v1, Lcom/warefly/checkscan/presentation/tasks/dialogs/result/view/DailyTaskResultView;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;->openUrl(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/tasks/dialogs/result/view/DailyTaskResultView;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/tasks/dialogs/result/view/DailyTaskResultView;->dismissDialog()V

    :cond_1
    return-void
.end method
