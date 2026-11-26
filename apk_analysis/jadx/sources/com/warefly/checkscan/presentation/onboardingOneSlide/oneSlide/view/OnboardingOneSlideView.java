package com.warefly.checkscan.presentation.onboardingOneSlide.oneSlide.view;

import com.warefly.checkscan.core.ui.base.architecture.BaseView;
import com.warefly.checkscan.presentation.onboardingOneSlide.oneSlide.OnboardingOneSlideModel;
import com.warefly.checkscan.presentation.onboardingOneSlide.oneSlide.dialogs.BankClientVerificationModel;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface OnboardingOneSlideView extends BaseView {
    void setUpSlides(List<String> list);

    void shareReferralLink(String str);

    void showAlfaClientVerification(BankClientVerificationModel bankClientVerificationModel);

    void showConfetti();

    void showNetworkError();

    void showSlide(OnboardingOneSlideModel onboardingOneSlideModel);

    void showSubSlide(OnboardingOneSlideModel onboardingOneSlideModel);

    void showToastMessage(String str);
}
