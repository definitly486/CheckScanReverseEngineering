package defpackage;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.presentation.geolocation.view.SuccessGeolocationFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class hi7 implements lk3 {
    public static final hi7 a = new hi7();

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        return new SuccessGeolocationFragment();
    }

    @Override // defpackage.df7
    public final String b() {
        return hi7.class.getName();
    }
}
