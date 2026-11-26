.class public final Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardPresenter$e;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardPresenter;->onTransferClicked(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardPresenter$e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Lfz8;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardPresenter$e;->f:Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lfz8;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardPresenter$e;->f:Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardPresenter;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardView;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardView;->showTransferringMoney(Z)V

    iget-object v1, p1, Lfz8;->a:Lfz8$a;

    sget-object v2, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardPresenter$e$a;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardPresenter;->access$getCashBackInteractor$p(Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardPresenter;)Lp51;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lp51;->i:Lct6;

    sget-object v1, Lp51$a;->ToPhone:Lp51$a;

    invoke-virtual {p0, v1}, Lct6;->onNext(Ljava/lang/Object;)V

    iget-object p0, p1, Lfz8;->c:Ljava/lang/String;

    iget-object p1, p1, Lfz8;->d:Ljava/lang/String;

    invoke-interface {v0, p0, p1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardView;->showApproveTransferDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p0, p1, Lfz8;->e:Ljava/lang/String;

    invoke-interface {v0, p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardView;->showTransferMoneyError(Ljava/lang/String;)V

    :cond_1
    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
