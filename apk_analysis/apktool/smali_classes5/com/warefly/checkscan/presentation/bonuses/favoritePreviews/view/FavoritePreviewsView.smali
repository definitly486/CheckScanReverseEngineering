.class public interface abstract Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/view/FavoritePreviewsView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;


# virtual methods
.method public abstract setToolbarTitle(Ljava/lang/String;)V
.end method

.method public abstract showData(Ljava/util/List;)V
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

.method public abstract showLoading(Z)V
.end method

.method public abstract showOrdBottomSheet(Lb06;)V
.end method
