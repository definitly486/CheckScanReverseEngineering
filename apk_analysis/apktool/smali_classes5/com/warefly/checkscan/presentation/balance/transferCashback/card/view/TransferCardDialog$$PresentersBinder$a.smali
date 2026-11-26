.class public final Lcom/warefly/checkscan/presentation/balance/transferCashback/card/view/TransferCardDialog$$PresentersBinder$a;
.super Lpf6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/balance/transferCashback/card/view/TransferCardDialog$$PresentersBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpf6<",
        "Lcom/warefly/checkscan/presentation/balance/transferCashback/card/view/TransferCardDialog;",
        ">;"
    }
.end annotation


# virtual methods
.method public final a(Ljava/lang/Object;Lih5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/view/TransferCardDialog;

    check-cast p2, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardPresenter;

    iput-object p2, p1, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/view/TransferCardDialog;->presenter:Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardPresenter;

    return-void
.end method

.method public final b(Ljava/lang/Object;)Lih5;
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/view/TransferCardDialog;

    invoke-virtual {p1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/view/TransferCardDialog;->providePresenter()Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardPresenter;

    move-result-object p0

    return-object p0
.end method
