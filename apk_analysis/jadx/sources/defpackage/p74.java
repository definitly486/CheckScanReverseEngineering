package defpackage;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.insuranceShowcase.presentation.flow.showcase.view.InsuranceFlowFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class p74 implements lk3 {
    public static final p74 a = new p74();

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        InsuranceFlowFragment.k.getClass();
        return new InsuranceFlowFragment();
    }

    @Override // defpackage.df7
    public final String b() {
        return p74.class.getName();
    }
}
