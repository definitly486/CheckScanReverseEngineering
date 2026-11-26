.class public final Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/view/TransferSBPDialog$$PresentersBinder$a;
.super Lpf6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/view/TransferSBPDialog$$PresentersBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpf6<",
        "Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/view/TransferSBPDialog;",
        ">;"
    }
.end annotation


# virtual methods
.method public final a(Ljava/lang/Object;Lih5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/view/TransferSBPDialog;

    check-cast p2, Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/presenter/TransferSBPPresenter;

    iput-object p2, p1, Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/view/TransferSBPDialog;->presenter:Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/presenter/TransferSBPPresenter;

    return-void
.end method

.method public final b(Ljava/lang/Object;)Lih5;
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/view/TransferSBPDialog;

    invoke-virtual {p1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/view/TransferSBPDialog;->providePresenter()Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/presenter/TransferSBPPresenter;

    move-result-object p0

    return-object p0
.end method
