package defpackage;

import com.warefly.checkscan.shared.universalWebView.presentation.flow.presenter.UniversalWebViewFlowPresenter;
import com.warefly.checkscan.shared.universalWebView.presentation.flow.view.UniversalWebViewFlowFragment;
import com.warefly.checkscan.shared.universalWebView.presentation.presenter.UniversalWebViewPresenter;
import com.warefly.checkscan.shared.universalWebView.presentation.view.UniversalWebViewFragment;
import defpackage.ih5;
import defpackage.pf6;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class pe5 {
    public static final HashMap a;
    public static final HashMap b;
    public static final HashMap c;

    static {
        HashMap map = new HashMap();
        a = map;
        map.put(UniversalWebViewFlowPresenter.class, new p69());
        map.put(UniversalWebViewPresenter.class, new s69());
        HashMap map2 = new HashMap();
        b = map2;
        map2.put(UniversalWebViewFlowFragment.class, Arrays.asList(new of6<UniversalWebViewFlowFragment>() { // from class: com.warefly.checkscan.shared.universalWebView.presentation.flow.view.UniversalWebViewFlowFragment$$PresentersBinder

            public class a extends pf6<UniversalWebViewFlowFragment> {
                @Override // defpackage.pf6
                public final void a(UniversalWebViewFlowFragment universalWebViewFlowFragment, ih5 ih5Var) {
                    universalWebViewFlowFragment.presenter = (UniversalWebViewFlowPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(UniversalWebViewFlowFragment universalWebViewFlowFragment) {
                    return universalWebViewFlowFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<UniversalWebViewFlowFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", UniversalWebViewFlowPresenter.class));
                return arrayList;
            }
        }));
        map2.put(UniversalWebViewFragment.class, Arrays.asList(new of6<UniversalWebViewFragment>() { // from class: com.warefly.checkscan.shared.universalWebView.presentation.view.UniversalWebViewFragment$$PresentersBinder

            public class a extends pf6<UniversalWebViewFragment> {
                @Override // defpackage.pf6
                public final void a(UniversalWebViewFragment universalWebViewFragment, ih5 ih5Var) {
                    universalWebViewFragment.presenter = (UniversalWebViewPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(UniversalWebViewFragment universalWebViewFragment) {
                    return universalWebViewFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<UniversalWebViewFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", UniversalWebViewPresenter.class));
                return arrayList;
            }
        }));
        HashMap map3 = new HashMap();
        c = map3;
        map3.put(i9.class, new i9());
        map3.put(k9.class, new k9());
        map3.put(hx5.class, new hx5());
    }
}
