.class public interface abstract Lcom/warefly/checkscan/presentation/balance/main/view/BalanceView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalView;


# virtual methods
.method public abstract openMail(Landroid/net/Uri;Ljava/lang/String;)V
.end method

.method public abstract showAboutAccrualCashbackDialog(Lw00;)V
.end method

.method public abstract showContent(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lpz3;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showManagementAlfaDialogCabinet(Ljava/lang/String;)V
.end method

.method public abstract showOrdDialog(Lb06;)V
.end method

.method public abstract turnOffRefreshing()V
.end method
