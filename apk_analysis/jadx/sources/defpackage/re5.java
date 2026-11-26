package defpackage;

import com.warefly.checkscan.support.presentation.flow.presenter.SupportFlowPresenter;
import com.warefly.checkscan.support.presentation.flow.view.SupportFlowFragment;
import com.warefly.checkscan.support.presentation.form.presenter.SupportFormPresenter;
import com.warefly.checkscan.support.presentation.form.view.SupportFormFragment;
import com.warefly.checkscan.support.presentation.main.presenter.SupportSectionsPresenter;
import com.warefly.checkscan.support.presentation.main.view.SupportSectionsFragment;
import com.warefly.checkscan.support.presentation.questions.presenter.SupportQuestionsPresenter;
import com.warefly.checkscan.support.presentation.questions.view.SupportQuestionsFragment;
import defpackage.ih5;
import defpackage.pf6;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class re5 {
    public static final HashMap a;
    public static final HashMap b;
    public static final HashMap c;

    static {
        HashMap map = new HashMap();
        a = map;
        map.put(SupportFlowPresenter.class, new a88(1));
        map.put(SupportFormPresenter.class, new lj4(1));
        map.put(SupportSectionsPresenter.class, new i61(1));
        map.put(SupportQuestionsPresenter.class, new h9(1));
        HashMap map2 = new HashMap();
        b = map2;
        map2.put(SupportFlowFragment.class, Arrays.asList(new of6<SupportFlowFragment>() { // from class: com.warefly.checkscan.support.presentation.flow.view.SupportFlowFragment$$PresentersBinder

            public class a extends pf6<SupportFlowFragment> {
                @Override // defpackage.pf6
                public final void a(SupportFlowFragment supportFlowFragment, ih5 ih5Var) {
                    supportFlowFragment.presenter = (SupportFlowPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(SupportFlowFragment supportFlowFragment) {
                    return supportFlowFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<SupportFlowFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", SupportFlowPresenter.class));
                return arrayList;
            }
        }));
        map2.put(SupportFormFragment.class, Arrays.asList(new of6<SupportFormFragment>() { // from class: com.warefly.checkscan.support.presentation.form.view.SupportFormFragment$$PresentersBinder

            public class a extends pf6<SupportFormFragment> {
                @Override // defpackage.pf6
                public final void a(SupportFormFragment supportFormFragment, ih5 ih5Var) {
                    supportFormFragment.presenter = (SupportFormPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(SupportFormFragment supportFormFragment) {
                    return supportFormFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<SupportFormFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", SupportFormPresenter.class));
                return arrayList;
            }
        }));
        map2.put(SupportSectionsFragment.class, Arrays.asList(new of6<SupportSectionsFragment>() { // from class: com.warefly.checkscan.support.presentation.main.view.SupportSectionsFragment$$PresentersBinder

            public class a extends pf6<SupportSectionsFragment> {
                @Override // defpackage.pf6
                public final void a(SupportSectionsFragment supportSectionsFragment, ih5 ih5Var) {
                    supportSectionsFragment.presenter = (SupportSectionsPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(SupportSectionsFragment supportSectionsFragment) {
                    return supportSectionsFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<SupportSectionsFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", SupportSectionsPresenter.class));
                return arrayList;
            }
        }));
        map2.put(SupportQuestionsFragment.class, Arrays.asList(new of6<SupportQuestionsFragment>() { // from class: com.warefly.checkscan.support.presentation.questions.view.SupportQuestionsFragment$$PresentersBinder

            public class a extends pf6<SupportQuestionsFragment> {
                @Override // defpackage.pf6
                public final void a(SupportQuestionsFragment supportQuestionsFragment, ih5 ih5Var) {
                    supportQuestionsFragment.presenter = (SupportQuestionsPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(SupportQuestionsFragment supportQuestionsFragment) {
                    return supportQuestionsFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<SupportQuestionsFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", SupportQuestionsPresenter.class));
                return arrayList;
            }
        }));
        HashMap map3 = new HashMap();
        c = map3;
        map3.put(k9.class, new k9());
        map3.put(hx5.class, new hx5());
    }
}
