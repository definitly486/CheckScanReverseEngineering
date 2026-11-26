.class public interface abstract Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;


# virtual methods
.method public abstract setUpSlides(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract shareReferralLink(Ljava/lang/String;)V
.end method

.method public abstract showAlfaClientVerification(Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/dialogs/BankClientVerificationModel;)V
.end method

.method public abstract showConfetti()V
.end method

.method public abstract showNetworkError()V
.end method

.method public abstract showSlide(Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/OnboardingOneSlideModel;)V
.end method

.method public abstract showSubSlide(Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/OnboardingOneSlideModel;)V
.end method

.method public abstract showToastMessage(Ljava/lang/String;)V
.end method
