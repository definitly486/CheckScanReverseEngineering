package defpackage;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.presentation.geolocation.view.ClarificationGeolocationFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class dg7 implements lk3 {
    public static final dg7 a = new dg7();

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        return new ClarificationGeolocationFragment();
    }

    @Override // defpackage.df7
    public final String b() {
        return dg7.class.getName();
    }
}
