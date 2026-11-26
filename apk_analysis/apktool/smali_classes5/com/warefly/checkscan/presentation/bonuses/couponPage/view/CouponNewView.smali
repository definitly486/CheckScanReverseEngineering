.class public interface abstract Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;
.implements Ljs7;


# virtual methods
.method public abstract copyCode(Ljava/lang/String;)V
.end method

.method public abstract openCouponUrl(Ljava/lang/String;)V
.end method

.method public abstract openHotItemUrl(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setCouponInfo(Lm32;)V
.end method

.method public abstract setDescriptionInfo(Landroid/text/Spanned;)V
.end method

.method public abstract setFloatingButtonVisibility(Z)V
.end method

.method public abstract setHotItemsInfo(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lyw3;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setStepsInfo(Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lla8;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showActionButtonLoading(Z)V
.end method

.method public abstract showBarCode(Ljava/lang/String;)V
.end method

.method public abstract showFavoriteStatus(Z)V
.end method

.method public abstract showFavoriteStatusIsChanged(ZZ)V
.end method

.method public abstract showImageCode(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract showLoading(Z)V
.end method

.method public abstract showLoadingDialog(Z)V
.end method

.method public abstract showPromocode(Ljava/lang/String;)V
.end method

.method public abstract showPromocodeCopied(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract showQrCode(Ljava/lang/String;)V
.end method

.method public abstract showRedirectDialog(Lsy8;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract showRequestInfoError()V
.end method
