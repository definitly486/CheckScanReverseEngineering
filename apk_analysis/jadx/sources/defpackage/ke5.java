package defpackage;

import com.warefly.checkscan.bankLanding.presentation.bank.presenter.BankLandingPresenter;
import com.warefly.checkscan.bankLanding.presentation.bank.view.BankLandingFragment;
import defpackage.ih5;
import defpackage.pf6;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class ke5 {
    public static final HashMap a;
    public static final HashMap b;
    public static final HashMap c;

    static {
        HashMap map = new HashMap();
        a = map;
        map.put(BankLandingPresenter.class, new ta0(0));
        HashMap map2 = new HashMap();
        b = map2;
        map2.put(BankLandingFragment.class, Arrays.asList(new of6<BankLandingFragment>() { // from class: com.warefly.checkscan.bankLanding.presentation.bank.view.BankLandingFragment$$PresentersBinder

            public class a extends pf6<BankLandingFragment> {
                @Override // defpackage.pf6
                public final void a(BankLandingFragment bankLandingFragment, ih5 ih5Var) {
                    bankLandingFragment.presenter = (BankLandingPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(BankLandingFragment bankLandingFragment) {
                    return bankLandingFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<BankLandingFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", BankLandingPresenter.class));
                return arrayList;
            }
        }));
        HashMap map3 = new HashMap();
        c = map3;
        map3.put(k9.class, new k9());
        map3.put(hx5.class, new hx5());
    }
}
