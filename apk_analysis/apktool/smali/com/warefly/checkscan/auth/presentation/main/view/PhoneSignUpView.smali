.class public interface abstract Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;


# virtual methods
.method public abstract dismissLoadingDialog()V
.end method

.method public abstract flashAgreementsError()V
.end method

.method public abstract setInviteCodeFiled(Ljava/lang/String;)V
.end method

.method public abstract showAgreementBottomSheet(Ljava/lang/String;)V
.end method

.method public abstract showAgreements(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lub;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showInviteCodeField()V
.end method

.method public abstract showInviteCodeFieldError(Z)V
.end method

.method public abstract showLoadingDialog()V
.end method

.method public abstract showPhoneFieldError(Z)V
.end method

.method public abstract showSkipButton()V
.end method

.method public abstract showUnknownError()V
.end method

.method public abstract showUserPolicy(Lz99;)V
.end method
