.class public Lcom/warefly/checkscan/presentation/electrocheque/onboarding/presenter/ElectroChequesOnBoardingView$$State;
.super Lkh5;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/electrocheque/onboarding/presenter/ElectroChequesOnBoardingView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/presentation/electrocheque/onboarding/presenter/ElectroChequesOnBoardingView$$State$ShowInstructionsCommand;,
        Lcom/warefly/checkscan/presentation/electrocheque/onboarding/presenter/ElectroChequesOnBoardingView$$State$ShowQuestionsCommand;,
        Lcom/warefly/checkscan/presentation/electrocheque/onboarding/presenter/ElectroChequesOnBoardingView$$State$EnableButtonCommand;,
        Lcom/warefly/checkscan/presentation/electrocheque/onboarding/presenter/ElectroChequesOnBoardingView$$State$EnableRegisteredButtonCommand;,
        Lcom/warefly/checkscan/presentation/electrocheque/onboarding/presenter/ElectroChequesOnBoardingView$$State$OpenUrlCommand;,
        Lcom/warefly/checkscan/presentation/electrocheque/onboarding/presenter/ElectroChequesOnBoardingView$$State$OpenUrlInCustomTabCommand;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkh5<",
        "Lcom/warefly/checkscan/presentation/electrocheque/onboarding/presenter/ElectroChequesOnBoardingView;",
        ">;",
        "Lcom/warefly/checkscan/presentation/electrocheque/onboarding/presenter/ElectroChequesOnBoardingView;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkh5;-><init>()V

    return-void
.end method


# virtual methods
.method public enableButton(Z)V
    .locals 3

    new-instance v0, Lcom/warefly/checkscan/presentation/electrocheque/onboarding/presenter/ElectroChequesOnBoardingView$$State$EnableButtonCommand;

    invoke-direct {v0, p0, p1}, Lcom/warefly/checkscan/presentation/electrocheque/onboarding/presenter/ElectroChequesOnBoardingView$$State$EnableButtonCommand;-><init>(Lcom/warefly/checkscan/presentation/electrocheque/onboarding/presenter/ElectroChequesOnBoardingView$$State;Z)V

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

    check-cast v2, Lcom/warefly/checkscan/presentation/electrocheque/onboarding/presenter/ElectroChequesOnBoardingView;

    invoke-interface {v2, p1}, Lcom/warefly/checkscan/presentation/electrocheque/onboarding/presenter/ElectroChequesOnBoardingView;->enableButton(Z)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {p0, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object p1

    iget-object p0, p0, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {p1, p0, v0}, Lb78;->a(Ljava/util/List;Lwd9;)V

    return-void
.end method

.method public enableRegisteredButton(Z)V
    .locals 3

    new-instance v0, Lcom/warefly/checkscan/presentation/electrocheque/onboarding/presenter/ElectroChequesOnBoardingView$$State$EnableRegisteredButtonCommand;

    invoke-direct {v0, p0, p1}, Lcom/warefly/checkscan/presentation/electrocheque/onboarding/presenter/ElectroChequesOnBoardingView$$State$EnableRegisteredButtonCommand;-><init>(Lcom/warefly/checkscan/presentation/electrocheque/onboarding/presenter/ElectroChequesOnBoardingView$$State;Z)V

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

    check-cast v2, Lcom/warefly/checkscan/presentation/electrocheque/onboarding/presenter/ElectroChequesOnBoardingView;

    invoke-interface {v2, p1}, Lcom/warefly/checkscan/presentation/electrocheque/onboarding/presenter/ElectroChequesOnBoardingView;->enableRegisteredButton(Z)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {p0, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object p1

    iget-object p0, p0, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {p1, p0, v0}, Lb78;->a(Ljava/util/List;Lwd9;)V

    return-void
.end method

.method public openUrl(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/warefly/checkscan/presentation/electrocheque/onboarding/presenter/ElectroChequesOnBoardingView$$State$OpenUrlCommand;

    invoke-direct {v0, p0, p1}, Lcom/warefly/checkscan/presentation/electrocheque/onboarding/presenter/ElectroChequesOnBoardingView$$State$OpenUrlCommand;-><init>(Lcom/warefly/checkscan/presentation/electrocheque/onboarding/presenter/ElectroChequesOnBoardingView$$State;Ljava/lang/String;)V

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

    check-cast v2, Lcom/warefly/checkscan/presentation/electrocheque/onboarding/presenter/ElectroChequesOnBoardingView;

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

    new-instance v0, Lcom/warefly/checkscan/presentation/electrocheque/onboarding/presenter/ElectroChequesOnBoardingView$$State$OpenUrlInCustomTabCommand;

    invoke-direct {v0, p0, p1}, Lcom/warefly/checkscan/presentation/electrocheque/onboarding/presenter/ElectroChequesOnBoardingView$$State$OpenUrlInCustomTabCommand;-><init>(Lcom/warefly/checkscan/presentation/electrocheque/onboarding/presenter/ElectroChequesOnBoardingView$$State;Ljava/lang/String;)V

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

    check-cast v2, Lcom/warefly/checkscan/presentation/electrocheque/onboarding/presenter/ElectroChequesOnBoardingView;

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

.method public showInstructions(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lt64;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/warefly/checkscan/presentation/electrocheque/onboarding/presenter/ElectroChequesOnBoardingView$$State$ShowInstructionsCommand;

    invoke-direct {v0, p0, p1}, Lcom/warefly/checkscan/presentation/electrocheque/onboarding/presenter/ElectroChequesOnBoardingView$$State$ShowInstructionsCommand;-><init>(Lcom/warefly/checkscan/presentation/electrocheque/onboarding/presenter/ElectroChequesOnBoardingView$$State;Ljava/util/List;)V

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

    check-cast v2, Lcom/warefly/checkscan/presentation/electrocheque/onboarding/presenter/ElectroChequesOnBoardingView;

    invoke-interface {v2, p1}, Lcom/warefly/checkscan/presentation/electrocheque/onboarding/presenter/ElectroChequesOnBoardingView;->showInstructions(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {p0, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object p1

    iget-object p0, p0, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {p1, p0, v0}, Lb78;->a(Ljava/util/List;Lwd9;)V

    return-void
.end method

.method public showQuestions(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lrv6;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/warefly/checkscan/presentation/electrocheque/onboarding/presenter/ElectroChequesOnBoardingView$$State$ShowQuestionsCommand;

    invoke-direct {v0, p0, p1}, Lcom/warefly/checkscan/presentation/electrocheque/onboarding/presenter/ElectroChequesOnBoardingView$$State$ShowQuestionsCommand;-><init>(Lcom/warefly/checkscan/presentation/electrocheque/onboarding/presenter/ElectroChequesOnBoardingView$$State;Ljava/util/List;)V

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

    check-cast v2, Lcom/warefly/checkscan/presentation/electrocheque/onboarding/presenter/ElectroChequesOnBoardingView;

    invoke-interface {v2, p1}, Lcom/warefly/checkscan/presentation/electrocheque/onboarding/presenter/ElectroChequesOnBoardingView;->showQuestions(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {p0, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object p1

    iget-object p0, p0, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {p1, p0, v0}, Lb78;->a(Ljava/util/List;Lwd9;)V

    return-void
.end method
