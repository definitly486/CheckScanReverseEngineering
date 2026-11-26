package defpackage;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.presentation.onboardingCard.view.OnBoardingCardSlidesFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class ih7 implements lk3 {
    public static final ih7 a = new ih7();

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        return new OnBoardingCardSlidesFragment();
    }

    @Override // defpackage.df7
    public final String b() {
        return ih7.class.getName();
    }
}
