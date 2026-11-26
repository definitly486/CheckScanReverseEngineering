.class public interface abstract Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;


# virtual methods
.method public abstract hideErrors()V
.end method

.method public abstract setTransferEnabled(Z)V
.end method

.method public abstract showApproveTransferDialog(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract showErrorInfoNotLoaded(Z)V
.end method

.method public abstract showInfo(Laz8;)V
.end method

.method public abstract showInvalidTransferSumError()V
.end method

.method public abstract showLoadingInfo(Z)V
.end method

.method public abstract showMaxTransferSumExceeded()V
.end method

.method public abstract showMinTransferSumNotReached(I)V
.end method

.method public abstract showPromocodes(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzj9;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showTransferMoneyError(Ljava/lang/String;)V
.end method

.method public abstract showTransferringMoney(Z)V
.end method

.method public abstract startTransferToCoupon(I)V
.end method
