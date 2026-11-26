.class public interface abstract Lcom/warefly/checkscan/presentation/cheques/view/ChequesView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;


# virtual methods
.method public abstract openDeeplink(Ljava/lang/String;)V
.end method

.method public abstract refreshSorts(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lu48;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showAlfaProgressCheques(Ljava/lang/String;Landroid/text/SpannableString;IZ)V
.end method

.method public abstract showBanner(Lxb0;)V
.end method

.method public abstract showBannerIgnored()V
.end method

.method public abstract showCheques(Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract showChequesDuringOnboarding(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showChequesLoading(Z)V
.end method

.method public abstract showCouldntDeleteCheque()V
.end method

.method public abstract showCouldntLoadCheques(Z)V
.end method

.method public abstract showDateRange(Ljava/util/Date;Ljava/util/Date;Z)V
.end method

.method public abstract showDateSortDialog()V
.end method

.method public abstract showDeselectDateButton(Z)V
.end method

.method public abstract showError()V
.end method

.method public abstract showExpenses(J)V
.end method

.method public abstract showGoScanFirstReceipt(Z)V
.end method

.method public abstract showLoadingElectrocheques(Z)V
.end method

.method public abstract showMiniBanner(Ljava/lang/String;Ljava/lang/String;Lb06;)V
.end method

.method public abstract showNoChequesForSelectedFilter(Z)V
.end method

.method public abstract showOrdAdDialog(Lb06;)V
.end method

.method public abstract showPoll(Lz96;)V
.end method

.method public abstract showSorts(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lu48;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showSumSortDialog()V
.end method

.method public abstract showUnauthorized()V
.end method

.method public abstract updateChequeQueueCount(I)V
.end method
