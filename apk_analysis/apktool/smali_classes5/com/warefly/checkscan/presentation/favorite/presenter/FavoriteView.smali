.class public interface abstract Lcom/warefly/checkscan/presentation/favorite/presenter/FavoriteView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;


# virtual methods
.method public abstract setShopsEmpty(Z)V
.end method

.method public abstract showData(Ljava/util/List;)V
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

.method public abstract showFavouriteStatusChanged(Z)V
.end method

.method public abstract showNoShops(Z)V
.end method

.method public abstract showOrdBottomSheet(Lb06;)V
.end method

.method public abstract showPromocodes(Ljava/util/List;)V
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

.method public abstract showShopsTitle(Z)V
.end method
