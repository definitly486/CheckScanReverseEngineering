package defpackage;

import com.warefly.checkscan.insuranceShowcase.presentation.flow.showcase.presenter.InsuranceFlowPresenter;
import com.warefly.checkscan.insuranceShowcase.presentation.flow.showcase.view.InsuranceFlowFragment;
import com.warefly.checkscan.insuranceShowcase.presentation.showcase.presenter.InsuranceShowcasePresenter;
import com.warefly.checkscan.insuranceShowcase.presentation.showcase.view.InsuranceShowcaseFragment;
import defpackage.ih5;
import defpackage.pf6;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class le5 {
    public static final HashMap a;
    public static final HashMap b;
    public static final HashMap c;

    static {
        HashMap map = new HashMap();
        a = map;
        map.put(InsuranceFlowPresenter.class, new w64());
        map.put(InsuranceShowcasePresenter.class, new i5(1));
        HashMap map2 = new HashMap();
        b = map2;
        map2.put(InsuranceFlowFragment.class, Arrays.asList(new of6<InsuranceFlowFragment>() { // from class: com.warefly.checkscan.insuranceShowcase.presentation.flow.showcase.view.InsuranceFlowFragment$$PresentersBinder

            public class a extends pf6<InsuranceFlowFragment> {
                @Override // defpackage.pf6
                public final void a(InsuranceFlowFragment insuranceFlowFragment, ih5 ih5Var) {
                    insuranceFlowFragment.presenter = (InsuranceFlowPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(InsuranceFlowFragment insuranceFlowFragment) {
                    return insuranceFlowFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<InsuranceFlowFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", InsuranceFlowPresenter.class));
                return arrayList;
            }
        }));
        map2.put(InsuranceShowcaseFragment.class, Arrays.asList(new of6<InsuranceShowcaseFragment>() { // from class: com.warefly.checkscan.insuranceShowcase.presentation.showcase.view.InsuranceShowcaseFragment$$PresentersBinder

            public class a extends pf6<InsuranceShowcaseFragment> {
                @Override // defpackage.pf6
                public final void a(InsuranceShowcaseFragment insuranceShowcaseFragment, ih5 ih5Var) {
                    insuranceShowcaseFragment.presenter = (InsuranceShowcasePresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(InsuranceShowcaseFragment insuranceShowcaseFragment) {
                    return insuranceShowcaseFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<InsuranceShowcaseFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", InsuranceShowcasePresenter.class));
                return arrayList;
            }
        }));
        HashMap map3 = new HashMap();
        c = map3;
        map3.put(k9.class, new k9());
        map3.put(hx5.class, new hx5());
    }
}
