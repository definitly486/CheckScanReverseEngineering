.class public interface abstract Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;


# virtual methods
.method public abstract handleLoading(Z)V
.end method

.method public abstract openCustomTab(Ljava/lang/String;)V
.end method

.method public abstract showAddEmailDialog()V
.end method

.method public abstract showAlertBeforeWithdrawAction(Lec;)V
.end method

.method public abstract showBankPageDialog(Ljava/lang/String;)V
.end method

.method public abstract showInfoDialog(La40;)V
.end method

.method public abstract showSomethingWrong()V
.end method

.method public abstract showTaskError(Lhn8;)V
.end method

.method public abstract showTaskSuccess(ILno8;)V
.end method

.method public abstract showWithdrawalCards(Ljava/util/List;Lnl3;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lgj9;",
            ">;",
            "Lnl3<",
            "-",
            "Lwi9;",
            "Lj59;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract startTransferSBP(Ljava/lang/String;)V
.end method

.method public abstract startTransferToBankCard(J)V
.end method

.method public abstract startTransferToPhone()V
.end method
