package defpackage;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.presentation.electrocheque.onboarding.view.ElectroChequesOnboardingFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class mg7 implements lk3 {
    public static final mg7 a = new mg7();

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        return new ElectroChequesOnboardingFragment();
    }

    @Override // defpackage.df7
    public final String b() {
        return mg7.class.getName();
    }
}
