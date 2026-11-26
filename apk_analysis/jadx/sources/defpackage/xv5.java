package defpackage;

import androidx.viewpager2.widget.ViewPager2;
import com.warefly.checkscan.presentation.onboardingCard.presenter.OnBoardingCardSlidesPresenter;
import com.warefly.checkscan.presentation.onboardingCard.view.OnBoardingCardSlidesFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class xv5 extends ViewPager2.OnPageChangeCallback {
    public final /* synthetic */ OnBoardingCardSlidesFragment i;

    public xv5(OnBoardingCardSlidesFragment onBoardingCardSlidesFragment) {
        this.i = onBoardingCardSlidesFragment;
    }

    @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
    public final void onPageSelected(int i) {
        OnBoardingCardSlidesPresenter onBoardingCardSlidesPresenter = this.i.presenter;
        if (onBoardingCardSlidesPresenter != null) {
            onBoardingCardSlidesPresenter.onSlideSelected(i);
        } else {
            aa4.j("presenter");
            throw null;
        }
    }
}
