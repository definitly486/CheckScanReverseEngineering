.class public final Lcom/warefly/checkscan/presentation/flows/tasks/presenter/TasksFlowPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/flows/tasks/view/TasksFlowView;",
        ">;"
    }
.end annotation


# instance fields
.field private final reason:Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/flows/tasks/presenter/TasksFlowPresenter;->reason:Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason;

    return-void
.end method


# virtual methods
.method public onFirstViewAttach()V
    .locals 4

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/flows/tasks/presenter/TasksFlowPresenter;->reason:Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason;

    instance-of v1, v0, Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason$DailyTask;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/flows/tasks/view/TasksFlowView;

    if-eqz v0, :cond_8

    new-instance v1, Lkg7;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/tasks/presenter/TasksFlowPresenter;->reason:Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason;

    check-cast p0, Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason$DailyTask;

    iget p0, p0, Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason$DailyTask;->b:I

    invoke-direct {v1, p0}, Lkg7;-><init>(I)V

    new-array p0, v3, [Llk3;

    aput-object v1, p0, v2

    invoke-interface {v0, p0}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowView;->setLaunchScreen([Llk3;)V

    return-void

    :cond_0
    instance-of v1, v0, Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason$MultiTaskDetails;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/flows/tasks/view/TasksFlowView;

    if-eqz v0, :cond_8

    new-instance v1, Lbh7;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/tasks/presenter/TasksFlowPresenter;->reason:Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason;

    check-cast p0, Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason$MultiTaskDetails;

    iget p0, p0, Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason$MultiTaskDetails;->b:I

    invoke-direct {v1, p0}, Lbh7;-><init>(I)V

    new-array p0, v3, [Llk3;

    aput-object v1, p0, v2

    invoke-interface {v0, p0}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowView;->setLaunchScreen([Llk3;)V

    return-void

    :cond_1
    instance-of v1, v0, Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason$RewardedMultiTaskDetails;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/flows/tasks/view/TasksFlowView;

    if-eqz v0, :cond_8

    new-instance v1, Lxh7;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/tasks/presenter/TasksFlowPresenter;->reason:Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason;

    check-cast p0, Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason$RewardedMultiTaskDetails;

    iget p0, p0, Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason$RewardedMultiTaskDetails;->b:I

    invoke-direct {v1, p0}, Lxh7;-><init>(I)V

    new-array p0, v3, [Llk3;

    aput-object v1, p0, v2

    invoke-interface {v0, p0}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowView;->setLaunchScreen([Llk3;)V

    return-void

    :cond_2
    instance-of v1, v0, Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason$TaskDetails;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/flows/tasks/view/TasksFlowView;

    if-eqz v0, :cond_8

    new-instance v1, Lki7;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/tasks/presenter/TasksFlowPresenter;->reason:Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason;

    check-cast p0, Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason$TaskDetails;

    iget p0, p0, Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason$TaskDetails;->b:I

    invoke-direct {v1, p0}, Lki7;-><init>(I)V

    new-array p0, v3, [Llk3;

    aput-object v1, p0, v2

    invoke-interface {v0, p0}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowView;->setLaunchScreen([Llk3;)V

    return-void

    :cond_3
    instance-of v1, v0, Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason$PromocodeDetailsTask;

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/flows/tasks/view/TasksFlowView;

    if-eqz v0, :cond_8

    new-instance v1, Lsh7;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/tasks/presenter/TasksFlowPresenter;->reason:Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason;

    check-cast p0, Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason$PromocodeDetailsTask;

    iget p0, p0, Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason$PromocodeDetailsTask;->b:I

    invoke-direct {v1, p0}, Lsh7;-><init>(I)V

    new-array p0, v3, [Llk3;

    aput-object v1, p0, v2

    invoke-interface {v0, p0}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowView;->setLaunchScreen([Llk3;)V

    return-void

    :cond_4
    instance-of v1, v0, Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason$GroupedTasks;

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/flows/tasks/view/TasksFlowView;

    if-eqz v0, :cond_8

    new-instance v1, Ltg7;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/tasks/presenter/TasksFlowPresenter;->reason:Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason;

    check-cast p0, Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason$GroupedTasks;

    iget p0, p0, Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason$GroupedTasks;->b:I

    invoke-direct {v1, p0}, Ltg7;-><init>(I)V

    new-array p0, v3, [Llk3;

    aput-object v1, p0, v2

    invoke-interface {v0, p0}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowView;->setLaunchScreen([Llk3;)V

    return-void

    :cond_5
    instance-of v1, v0, Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason$CheckboxTaskDetails;

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/flows/tasks/view/TasksFlowView;

    if-eqz v0, :cond_8

    new-instance v1, Lwf7;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/tasks/presenter/TasksFlowPresenter;->reason:Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason;

    check-cast p0, Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason$CheckboxTaskDetails;

    iget p0, p0, Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason$CheckboxTaskDetails;->b:I

    invoke-direct {v1, p0}, Lwf7;-><init>(I)V

    new-array p0, v3, [Llk3;

    aput-object v1, p0, v2

    invoke-interface {v0, p0}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowView;->setLaunchScreen([Llk3;)V

    return-void

    :cond_6
    instance-of v1, v0, Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason$CheckboxStepsTaskDetails;

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/flows/tasks/view/TasksFlowView;

    if-eqz v0, :cond_8

    new-instance v1, Lxf7;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/tasks/presenter/TasksFlowPresenter;->reason:Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason;

    check-cast p0, Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason$CheckboxStepsTaskDetails;

    iget p0, p0, Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason$CheckboxStepsTaskDetails;->b:I

    invoke-direct {v1, p0}, Lxf7;-><init>(I)V

    new-array p0, v3, [Llk3;

    aput-object v1, p0, v2

    invoke-interface {v0, p0}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowView;->setLaunchScreen([Llk3;)V

    return-void

    :cond_7
    sget-object v1, Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason$CompletedTasks;->b:Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason$CompletedTasks;

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/flows/tasks/view/TasksFlowView;

    if-eqz p0, :cond_8

    new-array v0, v3, [Llk3;

    sget-object v1, Lfg7;->a:Lfg7;

    aput-object v1, v0, v2

    invoke-interface {p0, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowView;->setLaunchScreen([Llk3;)V

    :cond_8
    return-void
.end method
