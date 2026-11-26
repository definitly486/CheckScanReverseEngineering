.class public interface abstract Lcom/warefly/checkscan/profile/presentation/main/view/ProfileView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;


# virtual methods
.method public abstract copyInviteCode(Ljava/lang/String;)V
.end method

.method public abstract dismissDeleteWarningDialog()V
.end method

.method public abstract dismissLoadingDialog()V
.end method

.method public abstract dismissLogoutWarningDialog()V
.end method

.method public abstract requestGallery()V
.end method

.method public abstract shareReferralLink(Ljava/lang/String;)V
.end method

.method public abstract showErrorDeleteAccount()V
.end method

.method public abstract showErrorTryAgain(Z)V
.end method

.method public abstract showFaqPage(Ljava/lang/String;)V
.end method

.method public abstract showLargeFile()V
.end method

.method public abstract showLoadingDialog()V
.end method

.method public abstract showLoadingSpinner(Z)V
.end method

.method public abstract showNetworkError()V
.end method

.method public abstract showPromocodeEnterBottomSheet(Lcom/warefly/checkscan/profile/domain/entities/PromocodeBlock;)V
.end method

.method public abstract showPromocodeErrorBottomSheet(Lm6;)V
.end method

.method public abstract showScreen(Ljava/util/List;)V
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

.method public abstract showToastMessage(Ljava/lang/String;)V
.end method

.method public abstract showUnSuccessLogOut()V
.end method

.method public abstract showWarningDeleteAccount()V
.end method

.method public abstract showWarningLogoutDialog()V
.end method
