package defpackage;

import com.warefly.checkscan.profile.presentation.main.dialogs.enter.presenter.ProfilePromocodeEnterPresenter;
import com.warefly.checkscan.profile.presentation.main.dialogs.enter.view.ProfilePromocodeEnterBottomSheet;
import com.warefly.checkscan.profile.presentation.main.presenter.ProfilePresenter;
import com.warefly.checkscan.profile.presentation.main.view.ProfileFragment;
import defpackage.ih5;
import defpackage.pf6;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class oe5 {
    public static final HashMap a;
    public static final HashMap b;
    public static final HashMap c;

    static {
        HashMap map = new HashMap();
        a = map;
        map.put(ProfilePromocodeEnterPresenter.class, new na4(1));
        map.put(ProfilePresenter.class, new hm6());
        HashMap map2 = new HashMap();
        b = map2;
        map2.put(ProfilePromocodeEnterBottomSheet.class, Arrays.asList(new of6<ProfilePromocodeEnterBottomSheet>() { // from class: com.warefly.checkscan.profile.presentation.main.dialogs.enter.view.ProfilePromocodeEnterBottomSheet$$PresentersBinder

            public class a extends pf6<ProfilePromocodeEnterBottomSheet> {
                @Override // defpackage.pf6
                public final void a(ProfilePromocodeEnterBottomSheet profilePromocodeEnterBottomSheet, ih5 ih5Var) {
                    profilePromocodeEnterBottomSheet.presenter = (ProfilePromocodeEnterPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(ProfilePromocodeEnterBottomSheet profilePromocodeEnterBottomSheet) {
                    return profilePromocodeEnterBottomSheet.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<ProfilePromocodeEnterBottomSheet>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", ProfilePromocodeEnterPresenter.class));
                return arrayList;
            }
        }));
        map2.put(ProfileFragment.class, Arrays.asList(new of6<ProfileFragment>() { // from class: com.warefly.checkscan.profile.presentation.main.view.ProfileFragment$$PresentersBinder

            public class a extends pf6<ProfileFragment> {
                @Override // defpackage.pf6
                public final void a(ProfileFragment profileFragment, ih5 ih5Var) {
                    profileFragment.presenter = (ProfilePresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(ProfileFragment profileFragment) {
                    return profileFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<ProfileFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", ProfilePresenter.class));
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
