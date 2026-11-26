package defpackage;

import com.warefly.checkscan.subscriptionLanding.presentation.flow.subscriptionLanding.presenter.SubscriptionLandingFlowPresenter;
import com.warefly.checkscan.subscriptionLanding.presentation.flow.subscriptionLanding.view.SubscriptionLandingFlowFragment;
import com.warefly.checkscan.subscriptionLanding.presentation.landing.presenter.LandingPresenter;
import com.warefly.checkscan.subscriptionLanding.presentation.landing.view.LandingFragment;
import defpackage.ih5;
import defpackage.pf6;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class qe5 {
    public static final HashMap a;
    public static final HashMap b;
    public static final HashMap c;

    static {
        HashMap map = new HashMap();
        a = map;
        map.put(SubscriptionLandingFlowPresenter.class, new zw5(1));
        map.put(LandingPresenter.class, new lj4(0));
        HashMap map2 = new HashMap();
        b = map2;
        map2.put(SubscriptionLandingFlowFragment.class, Arrays.asList(new of6<SubscriptionLandingFlowFragment>() { // from class: com.warefly.checkscan.subscriptionLanding.presentation.flow.subscriptionLanding.view.SubscriptionLandingFlowFragment$$PresentersBinder

            public class a extends pf6<SubscriptionLandingFlowFragment> {
                @Override // defpackage.pf6
                public final void a(SubscriptionLandingFlowFragment subscriptionLandingFlowFragment, ih5 ih5Var) {
                    subscriptionLandingFlowFragment.presenter = (SubscriptionLandingFlowPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(SubscriptionLandingFlowFragment subscriptionLandingFlowFragment) {
                    return subscriptionLandingFlowFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<SubscriptionLandingFlowFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", SubscriptionLandingFlowPresenter.class));
                return arrayList;
            }
        }));
        map2.put(LandingFragment.class, Arrays.asList(new of6<LandingFragment>() { // from class: com.warefly.checkscan.subscriptionLanding.presentation.landing.view.LandingFragment$$PresentersBinder

            public class a extends pf6<LandingFragment> {
                @Override // defpackage.pf6
                public final void a(LandingFragment landingFragment, ih5 ih5Var) {
                    landingFragment.presenter = (LandingPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(LandingFragment landingFragment) {
                    return landingFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<LandingFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", LandingPresenter.class));
                return arrayList;
            }
        }));
        HashMap map3 = new HashMap();
        c = map3;
        map3.put(k9.class, new k9());
        map3.put(hx5.class, new hx5());
    }
}
