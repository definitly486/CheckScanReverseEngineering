.class public final Lcom/warefly/checkscan/presentation/flows/electrocheques/presenter/ElectroChequesFlowPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/flows/electrocheques/presenter/ElectroChequesFlowView;",
        ">;"
    }
.end annotation


# instance fields
.field private final preferencesRepository:Ljf6;


# direct methods
.method public constructor <init>(Ljf6;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/flows/electrocheques/presenter/ElectroChequesFlowPresenter;->preferencesRepository:Ljf6;

    return-void
.end method

.method private final setElectroCheques()V
    .locals 3

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/flows/electrocheques/presenter/ElectroChequesFlowView;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Llk3;

    sget-object v1, Lpi7;->a:Lpi7;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-interface {p0, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowView;->setLaunchScreen([Llk3;)V

    :cond_0
    return-void
.end method

.method private final setElectroChequesOnBoarding()V
    .locals 3

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/flows/electrocheques/presenter/ElectroChequesFlowView;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Llk3;

    sget-object v1, Lmg7;->a:Lmg7;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-interface {p0, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowView;->setLaunchScreen([Llk3;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onFirstViewAttach()V
    .locals 0

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/flows/electrocheques/presenter/ElectroChequesFlowPresenter;->setElectroChequesOnBoarding()V

    return-void
.end method
