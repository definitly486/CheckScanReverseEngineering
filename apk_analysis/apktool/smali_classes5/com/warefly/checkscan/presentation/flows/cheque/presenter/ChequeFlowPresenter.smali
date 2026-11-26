.class public final Lcom/warefly/checkscan/presentation/flows/cheque/presenter/ChequeFlowPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/flows/cheque/view/ChequeFlowView;",
        ">;"
    }
.end annotation


# instance fields
.field private final id:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput p1, p0, Lcom/warefly/checkscan/presentation/flows/cheque/presenter/ChequeFlowPresenter;->id:I

    return-void
.end method


# virtual methods
.method public final openChequeById()V
    .locals 3

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/flows/cheque/view/ChequeFlowView;

    if-eqz v0, :cond_0

    new-instance v1, Lzf7;

    iget p0, p0, Lcom/warefly/checkscan/presentation/flows/cheque/presenter/ChequeFlowPresenter;->id:I

    invoke-direct {v1, p0}, Lzf7;-><init>(I)V

    const/4 p0, 0x1

    new-array p0, p0, [Llk3;

    const/4 v2, 0x0

    aput-object v1, p0, v2

    invoke-interface {v0, p0}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowView;->setLaunchScreen([Llk3;)V

    :cond_0
    return-void
.end method
