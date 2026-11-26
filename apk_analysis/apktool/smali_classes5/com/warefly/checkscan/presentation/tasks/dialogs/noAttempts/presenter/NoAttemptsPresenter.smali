.class public final Lcom/warefly/checkscan/presentation/tasks/dialogs/noAttempts/presenter/NoAttemptsPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/tasks/dialogs/noAttempts/view/NoAttemptsView;",
        ">;"
    }
.end annotation


# instance fields
.field private final noAttempts:Lcom/warefly/checkscan/tasks/presentation/dailyTask/model/DailyTaskNoAttempts;

.field private final showcaseAnalytics:Lup8;

.field private final taskId:I


# direct methods
.method public constructor <init>(ILcom/warefly/checkscan/tasks/presentation/dailyTask/model/DailyTaskNoAttempts;Lup8;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput p1, p0, Lcom/warefly/checkscan/presentation/tasks/dialogs/noAttempts/presenter/NoAttemptsPresenter;->taskId:I

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/tasks/dialogs/noAttempts/presenter/NoAttemptsPresenter;->noAttempts:Lcom/warefly/checkscan/tasks/presentation/dailyTask/model/DailyTaskNoAttempts;

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/tasks/dialogs/noAttempts/presenter/NoAttemptsPresenter;->showcaseAnalytics:Lup8;

    return-void
.end method


# virtual methods
.method public final onActionClicked()V
    .locals 0

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/tasks/dialogs/noAttempts/view/NoAttemptsView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/tasks/dialogs/noAttempts/view/NoAttemptsView;->onDismissDialog()V

    :cond_0
    return-void
.end method

.method public onFirstViewAttach()V
    .locals 3

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    new-instance v0, Lkd$s0$c$c$a;

    const-string v1, "Shows"

    const-string v2, "Fail"

    invoke-static {v2, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Ljava/util/Map;

    invoke-direct {v0, v1}, Lkd$s0$c;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lkd;->a()V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/dialogs/noAttempts/presenter/NoAttemptsPresenter;->showcaseAnalytics:Lup8;

    iget v1, p0, Lcom/warefly/checkscan/presentation/tasks/dialogs/noAttempts/presenter/NoAttemptsPresenter;->taskId:I

    invoke-interface {v0, v1}, Lup8;->s(I)V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/tasks/dialogs/noAttempts/view/NoAttemptsView;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/dialogs/noAttempts/presenter/NoAttemptsPresenter;->noAttempts:Lcom/warefly/checkscan/tasks/presentation/dailyTask/model/DailyTaskNoAttempts;

    invoke-interface {v0, p0}, Lcom/warefly/checkscan/presentation/tasks/dialogs/noAttempts/view/NoAttemptsView;->showContent(Lcom/warefly/checkscan/tasks/presentation/dailyTask/model/DailyTaskNoAttempts;)V

    :cond_0
    return-void
.end method
