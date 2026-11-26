package defpackage;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.subscriptionLanding.presentation.flow.subscriptionLanding.view.SubscriptionLandingFlowFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class qc8 implements lk3 {
    public static final qc8 a = new qc8();

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        SubscriptionLandingFlowFragment.j.getClass();
        return new SubscriptionLandingFlowFragment();
    }

    @Override // defpackage.df7
    public final String b() {
        return qc8.class.getName();
    }
}
