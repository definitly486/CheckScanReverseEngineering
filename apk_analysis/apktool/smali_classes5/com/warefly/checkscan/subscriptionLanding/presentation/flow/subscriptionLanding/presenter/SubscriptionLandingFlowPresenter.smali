.class public final Lcom/warefly/checkscan/subscriptionLanding/presentation/flow/subscriptionLanding/presenter/SubscriptionLandingFlowPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/subscriptionLanding/presentation/flow/subscriptionLanding/view/SubscriptionLandingFlow;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    return-void
.end method


# virtual methods
.method public onFirstViewAttach()V
    .locals 3

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/subscriptionLanding/presentation/flow/subscriptionLanding/view/SubscriptionLandingFlow;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Llk3;

    sget-object v1, Lpc8;->a:Lpc8;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-interface {p0, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowView;->setLaunchScreen([Llk3;)V

    :cond_0
    return-void
.end method
