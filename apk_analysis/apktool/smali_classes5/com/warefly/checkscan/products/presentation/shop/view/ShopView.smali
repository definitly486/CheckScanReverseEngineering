.class public interface abstract Lcom/warefly/checkscan/products/presentation/shop/view/ShopView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;


# virtual methods
.method public abstract setMerchantScrollListener()V
.end method

.method public abstract setToolbarTitle(Ljava/lang/String;)V
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

.method public abstract showError(Z)V
.end method

.method public abstract showImage(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract showInfoBottomSheet(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract showLoading(Z)V
.end method

.method public abstract showScanButton(Z)V
.end method

.method public abstract showToolbarTitle(Z)V
.end method
