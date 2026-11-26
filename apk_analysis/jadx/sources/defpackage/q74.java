package defpackage;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.insuranceShowcase.presentation.showcase.view.InsuranceShowcaseFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class q74 implements lk3 {
    public static final q74 a = new q74();

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        InsuranceShowcaseFragment.i.getClass();
        return new InsuranceShowcaseFragment();
    }

    @Override // defpackage.df7
    public final String b() {
        return q74.class.getName();
    }
}
