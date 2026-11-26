.class public final Lcom/warefly/checkscan/presentation/offerLanding/landing/presenter/OfferLandingPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/offerLanding/landing/view/OfferLandingView;",
        ">;"
    }
.end annotation


# instance fields
.field private final flowRouter:Luf3;

.field private final interactor:Lcu5;

.field private final partnerId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcu5;Luf3;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/offerLanding/landing/presenter/OfferLandingPresenter;->interactor:Lcu5;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/offerLanding/landing/presenter/OfferLandingPresenter;->flowRouter:Luf3;

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/offerLanding/landing/presenter/OfferLandingPresenter;->partnerId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final loadLanding()V
    .locals 4

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/offerLanding/landing/presenter/OfferLandingPresenter;->interactor:Lcu5;

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/offerLanding/landing/presenter/OfferLandingPresenter;->partnerId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lau5;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lau5;-><init>(Lcu5;Ljava/lang/String;Le02;)V

    new-instance v0, Ltb7;

    invoke-direct {v0, v2}, Ltb7;-><init>(Lbm3;)V

    invoke-static {v0}, Ls57;->a(Lhd3;)Lde3;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/offerLanding/landing/presenter/OfferLandingPresenter$a;

    invoke-direct {v1, p0, v3}, Lcom/warefly/checkscan/presentation/offerLanding/landing/presenter/OfferLandingPresenter$a;-><init>(Lcom/warefly/checkscan/presentation/offerLanding/landing/presenter/OfferLandingPresenter;Le02;)V

    new-instance v2, Ldf3;

    invoke-direct {v2, v0, v1}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, v2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    return-void
.end method

.method public final onBackClicked()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/offerLanding/landing/presenter/OfferLandingPresenter;->flowRouter:Luf3;

    invoke-virtual {p0}, Lo87;->c()V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/offerLanding/landing/presenter/OfferLandingPresenter;->interactor:Lcu5;

    iget-object v0, v0, Lcu5;->b:Lz68;

    :cond_0
    invoke-virtual {v0}, Lz68;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lz68;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-super {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->onDestroy()V

    return-void
.end method

.method public onFirstViewAttach()V
    .locals 3

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    new-instance v0, Lkd$w$a$b;

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/offerLanding/landing/presenter/OfferLandingPresenter;->partnerId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "Open"

    invoke-static {v2, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Ljava/util/Map;

    invoke-direct {v0, v1}, Lkd$w$a;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lkd;->a()V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/offerLanding/landing/presenter/OfferLandingPresenter;->loadLanding()V

    return-void
.end method

.method public final onIssueCardClicked()V
    .locals 4

    new-instance v0, Lkd$w$a$a;

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/offerLanding/landing/presenter/OfferLandingPresenter;->partnerId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "Button"

    invoke-static {v2, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Ljava/util/Map;

    invoke-direct {v0, v1}, Lkd$w$a;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lkd;->a()V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/offerLanding/landing/presenter/OfferLandingPresenter;->interactor:Lcu5;

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/offerLanding/landing/presenter/OfferLandingPresenter;->partnerId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lbu5;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lbu5;-><init>(Lcu5;Ljava/lang/String;Le02;)V

    new-instance v0, Ltb7;

    invoke-direct {v0, v2}, Ltb7;-><init>(Lbm3;)V

    invoke-static {v0}, Ls57;->a(Lhd3;)Lde3;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/offerLanding/landing/presenter/OfferLandingPresenter$b;

    invoke-direct {v1, p0, v3}, Lcom/warefly/checkscan/presentation/offerLanding/landing/presenter/OfferLandingPresenter$b;-><init>(Lcom/warefly/checkscan/presentation/offerLanding/landing/presenter/OfferLandingPresenter;Le02;)V

    new-instance v2, Ldf3;

    invoke-direct {v2, v0, v1}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, v2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    return-void
.end method
