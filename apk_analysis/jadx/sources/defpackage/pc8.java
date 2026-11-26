package defpackage;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.subscriptionLanding.presentation.landing.view.LandingFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class pc8 implements lk3 {
    public static final pc8 a = new pc8();

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        LandingFragment.i.getClass();
        return new LandingFragment();
    }

    @Override // defpackage.df7
    public final String b() {
        return pc8.class.getName();
    }
}
