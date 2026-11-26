.class public Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideView$$State;
.super Lkh5;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideView$$State$ShowSlideCommand;,
        Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideView$$State$ShowSubSlideCommand;,
        Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideView$$State$SetUpSlidesCommand;,
        Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideView$$State$ShareReferralLinkCommand;,
        Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideView$$State$ShowToastMessageCommand;,
        Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideView$$State$ShowNetworkErrorCommand;,
        Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideView$$State$ShowConfettiCommand;,
        Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideView$$State$ShowAlfaClientVerificationCommand;,
        Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideView$$State$OpenUrlCommand;,
        Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideView$$State$OpenUrlInCustomTabCommand;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkh5<",
        "Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideView;",
        ">;",
        "Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideView;"
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

    new-instance v0, Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideView$$State$OpenUrlCommand;

    invoke-direct {v0, p0, p1}, Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideView$$State$OpenUrlCommand;-><init>(Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideView$$State;Ljava/lang/String;)V

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

    check-cast v2, Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideView;

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

    new-instance v0, Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideView$$State$OpenUrlInCustomTabCommand;

    invoke-direct {v0, p0, p1}, Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideView$$State$OpenUrlInCustomTabCommand;-><init>(Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideView$$State;Ljava/lang/String;)V

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

    check-cast v2, Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideView;

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

.method public setUpSlides(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideView$$State$SetUpSlidesCommand;

    invoke-direct {v0, p0, p1}, Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideView$$State$SetUpSlidesCommand;-><init>(Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideView$$State;Ljava/util/List;)V

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

    check-cast v2, Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideView;

    invoke-interface {v2, p1}, Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideView;->setUpSlides(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {p0, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object p1

    iget-object p0, p0, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {p1, p0, v0}, Lb78;->a(Ljava/util/List;Lwd9;)V

    return-void
.end method

.method public shareReferralLink(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideView$$State$ShareReferralLinkCommand;

    invoke-direct {v0, p0, p1}, Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideView$$State$ShareReferralLinkCommand;-><init>(Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideView$$State;Ljava/lang/String;)V

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

    check-cast v2, Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideView;

    invoke-interface {v2, p1}, Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideView;->shareReferralLink(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {p0, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object p1

    iget-object p0, p0, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {p1, p0, v0}, Lb78;->a(Ljava/util/List;Lwd9;)V

    return-void
.end method

.method public showAlfaClientVerification(Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/dialogs/BankClientVerificationModel;)V
    .locals 3

    new-instance v0, Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideView$$State$ShowAlfaClientVerificationCommand;

    invoke-direct {v0, p0, p1}, Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideView$$State$ShowAlfaClientVerificationCommand;-><init>(Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideView$$State;Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/dialogs/BankClientVerificationModel;)V

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

    check-cast v2, Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideView;

    invoke-interface {v2, p1}, Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideView;->showAlfaClientVerification(Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/dialogs/BankClientVerificationModel;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {p0, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object p1

    iget-object p0, p0, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {p1, p0, v0}, Lb78;->a(Ljava/util/List;Lwd9;)V

    return-void
.end method

.method public showConfetti()V
    .locals 3

    new-instance v0, Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideView$$State$ShowConfettiCommand;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideView$$State$ShowConfettiCommand;-><init>(Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideView$$State;)V

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

    check-cast v2, Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideView;

    invoke-interface {v2}, Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideView;->showConfetti()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {p0, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object v1

    iget-object p0, p0, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {v1, p0, v0}, Lb78;->a(Ljava/util/List;Lwd9;)V

    return-void
.end method

.method public showNetworkError()V
    .locals 3

    new-instance v0, Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideView$$State$ShowNetworkErrorCommand;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideView$$State$ShowNetworkErrorCommand;-><init>(Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideView$$State;)V

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

    check-cast v2, Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideView;

    invoke-interface {v2}, Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideView;->showNetworkError()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {p0, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object v1

    iget-object p0, p0, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {v1, p0, v0}, Lb78;->a(Ljava/util/List;Lwd9;)V

    return-void
.end method

.method public showSlide(Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/OnboardingOneSlideModel;)V
    .locals 3

    new-instance v0, Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideView$$State$ShowSlideCommand;

    invoke-direct {v0, p0, p1}, Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideView$$State$ShowSlideCommand;-><init>(Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideView$$State;Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/OnboardingOneSlideModel;)V

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

    check-cast v2, Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideView;

    invoke-interface {v2, p1}, Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideView;->showSlide(Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/OnboardingOneSlideModel;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {p0, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object p1

    iget-object p0, p0, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {p1, p0, v0}, Lb78;->a(Ljava/util/List;Lwd9;)V

    return-void
.end method

.method public showSubSlide(Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/OnboardingOneSlideModel;)V
    .locals 3

    new-instance v0, Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideView$$State$ShowSubSlideCommand;

    invoke-direct {v0, p0, p1}, Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideView$$State$ShowSubSlideCommand;-><init>(Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideView$$State;Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/OnboardingOneSlideModel;)V

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

    check-cast v2, Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideView;

    invoke-interface {v2, p1}, Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideView;->showSubSlide(Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/OnboardingOneSlideModel;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {p0, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object p1

    iget-object p0, p0, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {p1, p0, v0}, Lb78;->a(Ljava/util/List;Lwd9;)V

    return-void
.end method

.method public showToastMessage(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideView$$State$ShowToastMessageCommand;

    invoke-direct {v0, p0, p1}, Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideView$$State$ShowToastMessageCommand;-><init>(Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideView$$State;Ljava/lang/String;)V

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

    check-cast v2, Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideView;

    invoke-interface {v2, p1}, Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideView;->showToastMessage(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {p0, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object p1

    iget-object p0, p0, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {p1, p0, v0}, Lb78;->a(Ljava/util/List;Lwd9;)V

    return-void
.end method
