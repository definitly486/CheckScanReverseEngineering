package defpackage;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.profile.presentation.main.view.ProfileFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class um6 implements lk3 {
    public static final um6 a = new um6();

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        ProfileFragment.n.getClass();
        return new ProfileFragment();
    }

    @Override // defpackage.df7
    public final String b() {
        return um6.class.getName();
    }
}
