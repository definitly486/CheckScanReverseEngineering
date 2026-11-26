.class public Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/view/RewardedMultiTaskDetailsView$$State;
.super Lkh5;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/view/RewardedMultiTaskDetailsView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/view/RewardedMultiTaskDetailsView$$State$ShowDetailsCommand;,
        Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/view/RewardedMultiTaskDetailsView$$State$ShowLoadingCommand;,
        Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/view/RewardedMultiTaskDetailsView$$State$ShowTaskNotFinishedCommand;,
        Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/view/RewardedMultiTaskDetailsView$$State$ShowErrorCommand;,
        Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/view/RewardedMultiTaskDetailsView$$State$ShowErrorStateCommand;,
        Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/view/RewardedMultiTaskDetailsView$$State$ShowOrdInfoDialogCommand;,
        Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/view/RewardedMultiTaskDetailsView$$State$ShowTaskSuccessCommand;,
        Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/view/RewardedMultiTaskDetailsView$$State$ShowTaskErrorCommand;,
        Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/view/RewardedMultiTaskDetailsView$$State$ShowInfoBottomSheetCommand;,
        Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/view/RewardedMultiTaskDetailsView$$State$OpenUrlCommand;,
        Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/view/RewardedMultiTaskDetailsView$$State$OpenUrlInCustomTabCommand;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkh5<",
        "Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/view/RewardedMultiTaskDetailsView;",
        ">;",
        "Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/view/RewardedMultiTaskDetailsView;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkh5;-><init>()V

    return-void
.end method


# virtual methods
.method public openUrl(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/view/RewardedMultiTaskDetailsView$$State$OpenUrlCommand;

    invoke-direct {v0, p0, p1}, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/view/RewardedMultiTaskDetailsView$$State$OpenUrlCommand;-><init>(Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/view/RewardedMultiTaskDetailsView$$State;Ljava/lang/String;)V

    iget-object v1, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {v1, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object v2

    iget-object v1, v1, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {v2, v1, v0}, Lb78;->b(Ljava/util/List;Lwd9;)V

    invoke-virtual {p0}, Lkh5;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lkh5;->mViews:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/view/RewardedMultiTaskDetailsView;

    invoke-interface {v2, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;->openUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {p0, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object p1

    iget-object p0, p0, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {p1, p0, v0}, Lb78;->a(Ljava/util/List;Lwd9;)V

    return-void
.end method

.method public openUrlInCustomTab(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/view/RewardedMultiTaskDetailsView$$State$OpenUrlInCustomTabCommand;

    invoke-direct {v0, p0, p1}, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/view/RewardedMultiTaskDetailsView$$State$OpenUrlInCustomTabCommand;-><init>(Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/view/RewardedMultiTaskDetailsView$$State;Ljava/lang/String;)V

    iget-object v1, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {v1, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object v2

    iget-object v1, v1, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {v2, v1, v0}, Lb78;->b(Ljava/util/List;Lwd9;)V

    invoke-virtual {p0}, Lkh5;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lkh5;->mViews:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/view/RewardedMultiTaskDetailsView;

    invoke-interface {v2, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;->openUrlInCustomTab(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {p0, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object p1

    iget-object p0, p0, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {p1, p0, v0}, Lb78;->a(Ljava/util/List;Lwd9;)V

    return-void
.end method

.method public showDetails(Lk77;)V
    .locals 3

    new-instance v0, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/view/RewardedMultiTaskDetailsView$$State$ShowDetailsCommand;

    invoke-direct {v0, p0, p1}, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/view/RewardedMultiTaskDetailsView$$State$ShowDetailsCommand;-><init>(Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/view/RewardedMultiTaskDetailsView$$State;Lk77;)V

    iget-object v1, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {v1, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object v2

    iget-object v1, v1, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {v2, v1, v0}, Lb78;->b(Ljava/util/List;Lwd9;)V

    invoke-virtual {p0}, Lkh5;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lkh5;->mViews:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/view/RewardedMultiTaskDetailsView;

    invoke-interface {v2, p1}, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/view/RewardedMultiTaskDetailsView;->showDetails(Lk77;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {p0, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object p1

    iget-object p0, p0, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {p1, p0, v0}, Lb78;->a(Ljava/util/List;Lwd9;)V

    return-void
.end method

.method public showError()V
    .locals 3

    new-instance v0, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/view/RewardedMultiTaskDetailsView$$State$ShowErrorCommand;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/view/RewardedMultiTaskDetailsView$$State$ShowErrorCommand;-><init>(Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/view/RewardedMultiTaskDetailsView$$State;)V

    iget-object v1, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {v1, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object v2

    iget-object v1, v1, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {v2, v1, v0}, Lb78;->b(Ljava/util/List;Lwd9;)V

    invoke-virtual {p0}, Lkh5;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lkh5;->mViews:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/view/RewardedMultiTaskDetailsView;

    invoke-interface {v2}, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/view/RewardedMultiTaskDetailsView;->showError()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {p0, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object v1

    iget-object p0, p0, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {v1, p0, v0}, Lb78;->a(Ljava/util/List;Lwd9;)V

    return-void
.end method

.method public showErrorState(Z)V
    .locals 3

    new-instance v0, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/view/RewardedMultiTaskDetailsView$$State$ShowErrorStateCommand;

    invoke-direct {v0, p0, p1}, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/view/RewardedMultiTaskDetailsView$$State$ShowErrorStateCommand;-><init>(Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/view/RewardedMultiTaskDetailsView$$State;Z)V

    iget-object v1, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {v1, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object v2

    iget-object v1, v1, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {v2, v1, v0}, Lb78;->b(Ljava/util/List;Lwd9;)V

    invoke-virtual {p0}, Lkh5;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lkh5;->mViews:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/view/RewardedMultiTaskDetailsView;

    invoke-interface {v2, p1}, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/view/RewardedMultiTaskDetailsView;->showErrorState(Z)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {p0, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object p1

    iget-object p0, p0, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {p1, p0, v0}, Lb78;->a(Ljava/util/List;Lwd9;)V

    return-void
.end method

.method public showInfoBottomSheet(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/warefly/checkscan/shared/infoBottomSheet/presentation/b$a;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/view/RewardedMultiTaskDetailsView$$State$ShowInfoBottomSheetCommand;

    invoke-direct {v0, p0, p1}, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/view/RewardedMultiTaskDetailsView$$State$ShowInfoBottomSheetCommand;-><init>(Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/view/RewardedMultiTaskDetailsView$$State;Ljava/util/List;)V

    iget-object v1, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {v1, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object v2

    iget-object v1, v1, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {v2, v1, v0}, Lb78;->b(Ljava/util/List;Lwd9;)V

    invoke-virtual {p0}, Lkh5;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lkh5;->mViews:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/view/RewardedMultiTaskDetailsView;

    invoke-interface {v2, p1}, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/view/RewardedMultiTaskDetailsView;->showInfoBottomSheet(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {p0, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object p1

    iget-object p0, p0, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {p1, p0, v0}, Lb78;->a(Ljava/util/List;Lwd9;)V

    return-void
.end method

.method public showLoading(Z)V
    .locals 3

    new-instance v0, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/view/RewardedMultiTaskDetailsView$$State$ShowLoadingCommand;

    invoke-direct {v0, p0, p1}, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/view/RewardedMultiTaskDetailsView$$State$ShowLoadingCommand;-><init>(Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/view/RewardedMultiTaskDetailsView$$State;Z)V

    iget-object v1, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {v1, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object v2

    iget-object v1, v1, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {v2, v1, v0}, Lb78;->b(Ljava/util/List;Lwd9;)V

    invoke-virtual {p0}, Lkh5;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lkh5;->mViews:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/view/RewardedMultiTaskDetailsView;

    invoke-interface {v2, p1}, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/view/RewardedMultiTaskDetailsView;->showLoading(Z)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {p0, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object p1

    iget-object p0, p0, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {p1, p0, v0}, Lb78;->a(Ljava/util/List;Lwd9;)V

    return-void
.end method

.method public showOrdInfoDialog(Lb06;)V
    .locals 3

    new-instance v0, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/view/RewardedMultiTaskDetailsView$$State$ShowOrdInfoDialogCommand;

    invoke-direct {v0, p0, p1}, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/view/RewardedMultiTaskDetailsView$$State$ShowOrdInfoDialogCommand;-><init>(Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/view/RewardedMultiTaskDetailsView$$State;Lb06;)V

    iget-object v1, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {v1, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object v2

    iget-object v1, v1, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {v2, v1, v0}, Lb78;->b(Ljava/util/List;Lwd9;)V

    invoke-virtual {p0}, Lkh5;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lkh5;->mViews:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/view/RewardedMultiTaskDetailsView;

    invoke-interface {v2, p1}, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/view/RewardedMultiTaskDetailsView;->showOrdInfoDialog(Lb06;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {p0, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object p1

    iget-object p0, p0, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {p1, p0, v0}, Lb78;->a(Ljava/util/List;Lwd9;)V

    return-void
.end method

.method public showTaskError(Lhn8;)V
    .locals 3

    new-instance v0, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/view/RewardedMultiTaskDetailsView$$State$ShowTaskErrorCommand;

    invoke-direct {v0, p0, p1}, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/view/RewardedMultiTaskDetailsView$$State$ShowTaskErrorCommand;-><init>(Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/view/RewardedMultiTaskDetailsView$$State;Lhn8;)V

    iget-object v1, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {v1, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object v2

    iget-object v1, v1, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {v2, v1, v0}, Lb78;->b(Ljava/util/List;Lwd9;)V

    invoke-virtual {p0}, Lkh5;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lkh5;->mViews:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/view/RewardedMultiTaskDetailsView;

    invoke-interface {v2, p1}, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/view/RewardedMultiTaskDetailsView;->showTaskError(Lhn8;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {p0, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object p1

    iget-object p0, p0, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {p1, p0, v0}, Lb78;->a(Ljava/util/List;Lwd9;)V

    return-void
.end method

.method public showTaskNotFinished(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/view/RewardedMultiTaskDetailsView$$State$ShowTaskNotFinishedCommand;

    invoke-direct {v0, p0, p1}, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/view/RewardedMultiTaskDetailsView$$State$ShowTaskNotFinishedCommand;-><init>(Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/view/RewardedMultiTaskDetailsView$$State;Ljava/lang/String;)V

    iget-object v1, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {v1, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object v2

    iget-object v1, v1, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {v2, v1, v0}, Lb78;->b(Ljava/util/List;Lwd9;)V

    invoke-virtual {p0}, Lkh5;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lkh5;->mViews:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/view/RewardedMultiTaskDetailsView;

    invoke-interface {v2, p1}, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/view/RewardedMultiTaskDetailsView;->showTaskNotFinished(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {p0, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object p1

    iget-object p0, p0, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {p1, p0, v0}, Lb78;->a(Ljava/util/List;Lwd9;)V

    return-void
.end method

.method public showTaskSuccess(ILno8;)V
    .locals 3

    new-instance v0, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/view/RewardedMultiTaskDetailsView$$State$ShowTaskSuccessCommand;

    invoke-direct {v0, p0, p1, p2}, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/view/RewardedMultiTaskDetailsView$$State$ShowTaskSuccessCommand;-><init>(Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/view/RewardedMultiTaskDetailsView$$State;ILno8;)V

    iget-object v1, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {v1, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object v2

    iget-object v1, v1, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {v2, v1, v0}, Lb78;->b(Ljava/util/List;Lwd9;)V

    invoke-virtual {p0}, Lkh5;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lkh5;->mViews:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/view/RewardedMultiTaskDetailsView;

    invoke-interface {v2, p1, p2}, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/view/RewardedMultiTaskDetailsView;->showTaskSuccess(ILno8;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {p0, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object p1

    iget-object p0, p0, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {p1, p0, v0}, Lb78;->a(Ljava/util/List;Lwd9;)V

    return-void
.end method
