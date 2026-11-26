package defpackage;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.presentation.onboardingOneSlide.holder.view.OnboardingOneSlideHolderFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class lh7 implements lk3 {
    public static final lh7 a = new lh7();

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        return new OnboardingOneSlideHolderFragment();
    }

    @Override // defpackage.df7
    public final String b() {
        return lh7.class.getName();
    }
}
