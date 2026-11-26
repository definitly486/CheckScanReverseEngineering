.class public Lcom/warefly/checkscan/presentation/balance/main/view/BalanceView$$State$ShowAlertBeforeWithdrawActionCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/balance/main/view/BalanceView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowAlertBeforeWithdrawActionCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/balance/main/view/BalanceView;",
        ">;"
    }
.end annotation


# instance fields
.field public final alert:Lec;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/balance/main/view/BalanceView$$State;Lec;)V
    .locals 1

    const-string p1, "showAlertBeforeWithdrawAction"

    const-class v0, Lhx5;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceView$$State$ShowAlertBeforeWithdrawActionCommand;->alert:Lec;

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/balance/main/view/BalanceView;)V
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceView$$State$ShowAlertBeforeWithdrawActionCommand;->alert:Lec;

    invoke-interface {p1, p0}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalView;->showAlertBeforeWithdrawAction(Lec;)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceView$$State$ShowAlertBeforeWithdrawActionCommand;->apply(Lcom/warefly/checkscan/presentation/balance/main/view/BalanceView;)V

    return-void
.end method
