.class public interface abstract Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;


# virtual methods
.method public abstract setQueryInSearchView(Ljava/lang/String;)V
.end method

.method public abstract setSearchView()V
.end method

.method public abstract showContent(Ljava/util/List;)V
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

.method public abstract showOrdBottomSheet(Lb06;)V
.end method
