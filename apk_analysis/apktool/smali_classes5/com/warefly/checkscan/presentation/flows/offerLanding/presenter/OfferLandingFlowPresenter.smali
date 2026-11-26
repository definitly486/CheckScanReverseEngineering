.class public final Lcom/warefly/checkscan/presentation/flows/offerLanding/presenter/OfferLandingFlowPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/flows/offerLanding/view/OfferLandingFlowView;",
        ">;"
    }
.end annotation


# instance fields
.field private final reason:Lcom/warefly/checkscan/presentation/flows/offerLanding/OfferLandingReason;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/flows/offerLanding/OfferLandingReason;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/flows/offerLanding/presenter/OfferLandingFlowPresenter;->reason:Lcom/warefly/checkscan/presentation/flows/offerLanding/OfferLandingReason;

    return-void
.end method


# virtual methods
.method public onFirstViewAttach()V
    .locals 3

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/flows/offerLanding/presenter/OfferLandingFlowPresenter;->reason:Lcom/warefly/checkscan/presentation/flows/offerLanding/OfferLandingReason;

    instance-of v0, v0, Lcom/warefly/checkscan/presentation/flows/offerLanding/OfferLandingReason$Landing;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/flows/offerLanding/view/OfferLandingFlowView;

    if-eqz v0, :cond_0

    new-instance v1, Lgh7;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/offerLanding/presenter/OfferLandingFlowPresenter;->reason:Lcom/warefly/checkscan/presentation/flows/offerLanding/OfferLandingReason;

    check-cast p0, Lcom/warefly/checkscan/presentation/flows/offerLanding/OfferLandingReason$Landing;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/offerLanding/OfferLandingReason$Landing;->b:Ljava/lang/String;

    invoke-direct {v1, p0}, Lgh7;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x1

    new-array p0, p0, [Llk3;

    const/4 v2, 0x0

    aput-object v1, p0, v2

    invoke-interface {v0, p0}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowView;->setLaunchScreen([Llk3;)V

    :cond_0
    return-void
.end method
