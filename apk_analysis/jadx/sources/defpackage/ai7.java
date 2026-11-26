package defpackage;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.presentation.scanner.onboarding.view.ScannerOnboardingFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class ai7 implements lk3 {
    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        return new ScannerOnboardingFragment();
    }

    @Override // defpackage.df7
    public final String b() {
        return ai7.class.getName();
    }
}
