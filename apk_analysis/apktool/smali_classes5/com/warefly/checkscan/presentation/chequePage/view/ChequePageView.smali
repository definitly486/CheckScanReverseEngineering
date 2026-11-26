.class public interface abstract Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;


# virtual methods
.method public abstract openChequeInfoFormDialog(ILjava/lang/String;)V
.end method

.method public abstract scrollNextSpecials(I)V
.end method

.method public abstract showAdInfoDialog(Lb06;)V
.end method

.method public abstract showBanners(Lxv7;)V
.end method

.method public abstract showCards(ZLjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showCategoryTutorial()V
.end method

.method public abstract showChequeAlert(Lkd1;)V
.end method

.method public abstract showChequeInfo(Lhd1;)V
.end method

.method public abstract showChequeOperations(ZLjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showChequeProducts(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lra4;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showCouldntGetCategoriesOfCheque()V
.end method

.method public abstract showCouldntLoadCheque(Z)V
.end method

.method public abstract showCoupons(Ljava/util/List;Ljava/lang/Integer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation
.end method

.method public abstract showEmptyCards(Z)V
.end method

.method public abstract showEmptyCardsError(Z)V
.end method

.method public abstract showEmptyCardsProgress(Z)V
.end method

.method public abstract showLoadingCheque(Z)V
.end method

.method public abstract showLoadingContent(Z)V
.end method

.method public abstract showLoadingProducts(Z)V
.end method

.method public abstract showNoProductsInCheque()V
.end method

.method public abstract showPageOfCardsProgress(Z)V
.end method

.method public abstract showProductCategoryReported(Z)V
.end method

.method public abstract showReasonRejectCashback(Ljava/lang/String;)V
.end method

.method public abstract showRefreshCardsProgress(Z)V
.end method

.method public abstract showShareCheque(Lhd1;)V
.end method

.method public abstract showUpdateToAccessMessage()V
.end method

.method public abstract showWaitLayout(Z)V
.end method
