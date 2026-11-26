.class public final Lcom/warefly/checkscan/subscriptionLanding/presentation/landing/presenter/LandingPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"

# interfaces
.implements Luh4$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/subscriptionLanding/presentation/landing/view/LandingView;",
        ">;",
        "Luh4$b;"
    }
.end annotation


# instance fields
.field private final fetchLandingUseCase:Lm73;


# direct methods
.method public constructor <init>(Lm73;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/subscriptionLanding/presentation/landing/presenter/LandingPresenter;->fetchLandingUseCase:Lm73;

    return-void
.end method


# virtual methods
.method public onFirstViewAttach()V
    .locals 3

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    iget-object v0, p0, Lcom/warefly/checkscan/subscriptionLanding/presentation/landing/presenter/LandingPresenter;->fetchLandingUseCase:Lm73;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ll73;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Ll73;-><init>(Lm73;Le02;)V

    new-instance v0, Ltb7;

    invoke-direct {v0, v1}, Ltb7;-><init>(Lbm3;)V

    invoke-static {v0}, Ls57;->a(Lhd3;)Lde3;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/subscriptionLanding/presentation/landing/presenter/LandingPresenter$a;

    invoke-direct {v1, p0, v2}, Lcom/warefly/checkscan/subscriptionLanding/presentation/landing/presenter/LandingPresenter$a;-><init>(Lcom/warefly/checkscan/subscriptionLanding/presentation/landing/presenter/LandingPresenter;Le02;)V

    new-instance v2, Ldf3;

    invoke-direct {v2, v0, v1}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, v2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    return-void
.end method

.method public onLandingButtonClicked(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/subscriptionLanding/presentation/landing/view/LandingView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;->openUrlInCustomTab(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
