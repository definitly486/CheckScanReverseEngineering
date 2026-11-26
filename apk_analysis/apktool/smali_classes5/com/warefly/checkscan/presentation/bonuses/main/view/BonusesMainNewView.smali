.class public interface abstract Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;


# virtual methods
.method public abstract changeSearchVisibility(Z)V
.end method

.method public abstract dismissLoadingDialog()V
.end method

.method public abstract openCustomTab(Ljava/lang/String;)V
.end method

.method public abstract openDeeplink(Ljava/lang/String;)V
.end method

.method public abstract scrollNextSpecials(I)V
.end method

.method public abstract setAvatar(Ljava/lang/String;)V
.end method

.method public abstract setBadgeType(Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b;)V
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

.method public abstract showLoadingDialog()V
.end method

.method public abstract showOrdDialog(Lb06;)V
.end method

.method public abstract showPromocodeErrorBottomSheet(Lm6;)V
.end method

.method public abstract showPromocodeSuccessBottomSheet(Lq6;)V
.end method

.method public abstract showToolbar(Z)V
.end method

.method public abstract showUnreadNotificationsBadge(Z)V
.end method
