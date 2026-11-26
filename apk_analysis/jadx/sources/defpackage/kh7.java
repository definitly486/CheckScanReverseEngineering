package defpackage;

import androidx.core.os.BundleKt;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.presentation.onboardingOneSlide.oneSlide.OnboardingOneSlideModel;
import com.warefly.checkscan.presentation.onboardingOneSlide.oneSlide.view.OnboardingOneSlideFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class kh7 implements lk3 {
    public final OnboardingOneSlideModel a;

    public kh7(OnboardingOneSlideModel onboardingOneSlideModel) {
        this.a = onboardingOneSlideModel;
    }

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        OnboardingOneSlideFragment.i.getClass();
        OnboardingOneSlideFragment onboardingOneSlideFragment = new OnboardingOneSlideFragment();
        onboardingOneSlideFragment.setArguments(BundleKt.bundleOf(new b36("ONE_SLIDE_KEY", this.a)));
        return onboardingOneSlideFragment;
    }

    @Override // defpackage.df7
    public final String b() {
        return kh7.class.getName();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof kh7) && this.a.equals(((kh7) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "OnboardingOneSlide(slide=" + this.a + ")";
    }
}
