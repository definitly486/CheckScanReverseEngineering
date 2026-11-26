.class public final Lcom/warefly/checkscan/presentation/flows/verification/presenter/VerificationFlowPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/flows/verification/view/VerificationFlowView;",
        ">;"
    }
.end annotation


# instance fields
.field private final args:Lpc9;

.field private final preferencesRepository:Ljf6;


# direct methods
.method public constructor <init>(Ljf6;Lpc9;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/flows/verification/presenter/VerificationFlowPresenter;->preferencesRepository:Ljf6;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/flows/verification/presenter/VerificationFlowPresenter;->args:Lpc9;

    return-void
.end method


# virtual methods
.method public onFirstViewAttach()V
    .locals 4

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/flows/verification/view/VerificationFlowView;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/flows/verification/presenter/VerificationFlowPresenter;->args:Lpc9;

    iget-object v1, v1, Lpc9;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x0

    :cond_1
    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/flows/verification/presenter/VerificationFlowPresenter;->preferencesRepository:Ljf6;

    invoke-interface {v1}, Ljf6;->U0()Ljava/lang/String;

    move-result-object v1

    :cond_2
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/verification/presenter/VerificationFlowPresenter;->args:Lpc9;

    iget-object p0, p0, Lpc9;->b:Lgl3;

    new-instance v2, Loi7;

    const/4 v3, 0x4

    invoke-direct {v2, v1, p0, v3}, Loi7;-><init>(Ljava/lang/String;Lgl3;I)V

    const/4 p0, 0x1

    new-array p0, p0, [Llk3;

    const/4 v1, 0x0

    aput-object v2, p0, v1

    invoke-interface {v0, p0}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowView;->setLaunchScreen([Llk3;)V

    :cond_3
    return-void
.end method
