.class public final Lcom/warefly/checkscan/presentation/chequePage/share/cheque/presenter/ShareChequePresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/chequePage/share/cheque/presenter/ShareChequeView;",
        ">;"
    }
.end annotation


# instance fields
.field private cheque:Lhd1;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChequeReceived(Lhd1;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/chequePage/share/cheque/presenter/ShareChequePresenter;->cheque:Lhd1;

    return-void
.end method

.method public final onShareOptionClicked(Lcom/warefly/checkscan/presentation/chequePage/share/cheque/presenter/ShareChequeView$a;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/chequePage/share/cheque/presenter/ShareChequeView;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/chequePage/share/cheque/presenter/ShareChequePresenter;->cheque:Lhd1;

    if-eqz p0, :cond_0

    invoke-interface {v0, p1, p0}, Lcom/warefly/checkscan/presentation/chequePage/share/cheque/presenter/ShareChequeView;->shareAs(Lcom/warefly/checkscan/presentation/chequePage/share/cheque/presenter/ShareChequeView$a;Lhd1;)V

    return-void

    :cond_0
    const-string p0, "cheque"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    return-void
.end method
