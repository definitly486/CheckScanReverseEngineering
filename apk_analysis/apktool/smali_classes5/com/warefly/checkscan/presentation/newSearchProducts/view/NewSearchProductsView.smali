.class public interface abstract Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;


# virtual methods
.method public abstract allProductInChequeLoaded()V
.end method

.method public abstract hidePopularCategory()V
.end method

.method public abstract hideProducts()V
.end method

.method public abstract hideShops()V
.end method

.method public abstract setItemFromChip(Ljava/lang/String;)V
.end method

.method public abstract showChips(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showLoading(Z)V
.end method

.method public abstract showProducts(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lfn5;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showShopInCheques(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lfn5;",
            ">;)V"
        }
    .end annotation
.end method
