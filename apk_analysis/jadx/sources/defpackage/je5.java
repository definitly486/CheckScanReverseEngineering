package defpackage;

import com.warefly.checkscan.auth.presentation.addEmail.presenter.AddEmailPresenter;
import com.warefly.checkscan.auth.presentation.addEmail.view.AddEmailFragment;
import com.warefly.checkscan.auth.presentation.callVerification.presenter.VerificationCallPresenter;
import com.warefly.checkscan.auth.presentation.callVerification.view.VerificationCallFragment;
import com.warefly.checkscan.auth.presentation.emailVerification.presenter.VerificationEmailPresenter;
import com.warefly.checkscan.auth.presentation.emailVerification.view.VerificationEmailFragment;
import com.warefly.checkscan.auth.presentation.flow.presenter.AuthFlowPresenter;
import com.warefly.checkscan.auth.presentation.flow.view.AuthFlowFragment;
import com.warefly.checkscan.auth.presentation.main.presenter.PhoneSignUpPresenter;
import com.warefly.checkscan.auth.presentation.main.view.PhoneSignUpFragment;
import com.warefly.checkscan.auth.presentation.smsVerification.presenter.VerificationSmsPresenter;
import com.warefly.checkscan.auth.presentation.smsVerification.view.VerificationSmsFragment;
import com.warefly.checkscan.auth.presentation.userCallVerification.presenter.VerificationUserCallPresenter;
import com.warefly.checkscan.auth.presentation.userCallVerification.view.VerificationUserCallFragment;
import defpackage.ih5;
import defpackage.pf6;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class je5 {
    public static final HashMap a;
    public static final HashMap b;
    public static final HashMap c;

    static {
        HashMap map = new HashMap();
        a = map;
        map.put(AddEmailPresenter.class, new y8(0));
        map.put(VerificationCallPresenter.class, new ye1(1));
        map.put(VerificationEmailPresenter.class, new bp6(2));
        map.put(AuthFlowPresenter.class, new dv(0));
        map.put(PhoneSignUpPresenter.class, new y76(0));
        map.put(VerificationSmsPresenter.class, new y76(1));
        map.put(VerificationUserCallPresenter.class, new s42(4));
        HashMap map2 = new HashMap();
        b = map2;
        map2.put(AddEmailFragment.class, Arrays.asList(new of6<AddEmailFragment>() { // from class: com.warefly.checkscan.auth.presentation.addEmail.view.AddEmailFragment$$PresentersBinder

            public class a extends pf6<AddEmailFragment> {
                @Override // defpackage.pf6
                public final void a(AddEmailFragment addEmailFragment, ih5 ih5Var) {
                    addEmailFragment.presenter = (AddEmailPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(AddEmailFragment addEmailFragment) {
                    return addEmailFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<AddEmailFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", AddEmailPresenter.class));
                return arrayList;
            }
        }));
        map2.put(VerificationCallFragment.class, Arrays.asList(new of6<VerificationCallFragment>() { // from class: com.warefly.checkscan.auth.presentation.callVerification.view.VerificationCallFragment$$PresentersBinder

            public class a extends pf6<VerificationCallFragment> {
                @Override // defpackage.pf6
                public final void a(VerificationCallFragment verificationCallFragment, ih5 ih5Var) {
                    verificationCallFragment.presenter = (VerificationCallPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(VerificationCallFragment verificationCallFragment) {
                    return verificationCallFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<VerificationCallFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", VerificationCallPresenter.class));
                return arrayList;
            }
        }));
        map2.put(VerificationEmailFragment.class, Arrays.asList(new of6<VerificationEmailFragment>() { // from class: com.warefly.checkscan.auth.presentation.emailVerification.view.VerificationEmailFragment$$PresentersBinder

            public class a extends pf6<VerificationEmailFragment> {
                @Override // defpackage.pf6
                public final void a(VerificationEmailFragment verificationEmailFragment, ih5 ih5Var) {
                    verificationEmailFragment.presenter = (VerificationEmailPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(VerificationEmailFragment verificationEmailFragment) {
                    return verificationEmailFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<VerificationEmailFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", VerificationEmailPresenter.class));
                return arrayList;
            }
        }));
        map2.put(AuthFlowFragment.class, Arrays.asList(new of6<AuthFlowFragment>() { // from class: com.warefly.checkscan.auth.presentation.flow.view.AuthFlowFragment$$PresentersBinder

            public class a extends pf6<AuthFlowFragment> {
                @Override // defpackage.pf6
                public final void a(AuthFlowFragment authFlowFragment, ih5 ih5Var) {
                    authFlowFragment.presenter = (AuthFlowPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(AuthFlowFragment authFlowFragment) {
                    return authFlowFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<AuthFlowFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", AuthFlowPresenter.class));
                return arrayList;
            }
        }));
        map2.put(PhoneSignUpFragment.class, Arrays.asList(new of6<PhoneSignUpFragment>() { // from class: com.warefly.checkscan.auth.presentation.main.view.PhoneSignUpFragment$$PresentersBinder

            public class a extends pf6<PhoneSignUpFragment> {
                @Override // defpackage.pf6
                public final void a(PhoneSignUpFragment phoneSignUpFragment, ih5 ih5Var) {
                    phoneSignUpFragment.presenter = (PhoneSignUpPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(PhoneSignUpFragment phoneSignUpFragment) {
                    return phoneSignUpFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<PhoneSignUpFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", PhoneSignUpPresenter.class));
                return arrayList;
            }
        }));
        map2.put(VerificationSmsFragment.class, Arrays.asList(new of6<VerificationSmsFragment>() { // from class: com.warefly.checkscan.auth.presentation.smsVerification.view.VerificationSmsFragment$$PresentersBinder

            public class a extends pf6<VerificationSmsFragment> {
                @Override // defpackage.pf6
                public final void a(VerificationSmsFragment verificationSmsFragment, ih5 ih5Var) {
                    verificationSmsFragment.presenter = (VerificationSmsPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(VerificationSmsFragment verificationSmsFragment) {
                    return verificationSmsFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<VerificationSmsFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", VerificationSmsPresenter.class));
                return arrayList;
            }
        }));
        map2.put(VerificationUserCallFragment.class, Arrays.asList(new of6<VerificationUserCallFragment>() { // from class: com.warefly.checkscan.auth.presentation.userCallVerification.view.VerificationUserCallFragment$$PresentersBinder

            public class a extends pf6<VerificationUserCallFragment> {
                @Override // defpackage.pf6
                public final void a(VerificationUserCallFragment verificationUserCallFragment, ih5 ih5Var) {
                    verificationUserCallFragment.presenter = (VerificationUserCallPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(VerificationUserCallFragment verificationUserCallFragment) {
                    return verificationUserCallFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<VerificationUserCallFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", VerificationUserCallPresenter.class));
                return arrayList;
            }
        }));
        HashMap map3 = new HashMap();
        c = map3;
        map3.put(k9.class, new k9());
        map3.put(hx5.class, new hx5());
    }
}
