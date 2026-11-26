.class public interface abstract Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;


# virtual methods
.method public abstract scrollNextSpecials(I)V
.end method

.method public abstract scrollToTop()V
.end method

.method public abstract setToolbarTitle(Ljava/lang/String;)V
.end method

.method public abstract showAllData(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcs0;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showFavouriteStatusChanged(Z)V
.end method

.method public abstract showFilterButton(Z)V
.end method

.method public abstract showFilters(Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lg81;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract showLoading(Z)V
.end method

.method public abstract showOrdBottomSheet(Lb06;)V
.end method
