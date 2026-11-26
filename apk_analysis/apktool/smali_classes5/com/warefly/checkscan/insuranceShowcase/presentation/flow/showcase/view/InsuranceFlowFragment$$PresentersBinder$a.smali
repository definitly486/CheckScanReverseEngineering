.class public final Lcom/warefly/checkscan/insuranceShowcase/presentation/flow/showcase/view/InsuranceFlowFragment$$PresentersBinder$a;
.super Lpf6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/insuranceShowcase/presentation/flow/showcase/view/InsuranceFlowFragment$$PresentersBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpf6<",
        "Lcom/warefly/checkscan/insuranceShowcase/presentation/flow/showcase/view/InsuranceFlowFragment;",
        ">;"
    }
.end annotation


# virtual methods
.method public final a(Ljava/lang/Object;Lih5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/insuranceShowcase/presentation/flow/showcase/view/InsuranceFlowFragment;

    check-cast p2, Lcom/warefly/checkscan/insuranceShowcase/presentation/flow/showcase/presenter/InsuranceFlowPresenter;

    iput-object p2, p1, Lcom/warefly/checkscan/insuranceShowcase/presentation/flow/showcase/view/InsuranceFlowFragment;->presenter:Lcom/warefly/checkscan/insuranceShowcase/presentation/flow/showcase/presenter/InsuranceFlowPresenter;

    return-void
.end method

.method public final b(Ljava/lang/Object;)Lih5;
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/insuranceShowcase/presentation/flow/showcase/view/InsuranceFlowFragment;

    invoke-virtual {p1}, Lcom/warefly/checkscan/insuranceShowcase/presentation/flow/showcase/view/InsuranceFlowFragment;->providePresenter()Lcom/warefly/checkscan/insuranceShowcase/presentation/flow/showcase/presenter/InsuranceFlowPresenter;

    move-result-object p0

    return-object p0
.end method
