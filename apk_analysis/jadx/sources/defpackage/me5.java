package defpackage;

import com.warefly.checkscan.personalform.presentation.form.presenter.PersonalDataFormPresenter;
import com.warefly.checkscan.personalform.presentation.form.view.PersonalDataFormFragment;
import defpackage.ih5;
import defpackage.pf6;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class me5 {
    public static final HashMap a;
    public static final HashMap b;
    public static final HashMap c;

    static {
        HashMap map = new HashMap();
        a = map;
        map.put(PersonalDataFormPresenter.class, new j71(2));
        HashMap map2 = new HashMap();
        b = map2;
        map2.put(PersonalDataFormFragment.class, Arrays.asList(new of6<PersonalDataFormFragment>() { // from class: com.warefly.checkscan.personalform.presentation.form.view.PersonalDataFormFragment$$PresentersBinder

            public class a extends pf6<PersonalDataFormFragment> {
                @Override // defpackage.pf6
                public final void a(PersonalDataFormFragment personalDataFormFragment, ih5 ih5Var) {
                    personalDataFormFragment.presenter = (PersonalDataFormPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(PersonalDataFormFragment personalDataFormFragment) {
                    return personalDataFormFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<PersonalDataFormFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", PersonalDataFormPresenter.class));
                return arrayList;
            }
        }));
        HashMap map3 = new HashMap();
        c = map3;
        map3.put(k9.class, new k9());
        map3.put(hx5.class, new hx5());
    }
}
