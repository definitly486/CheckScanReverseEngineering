package com.warefly.checkscan.auth.presentation.main.presenter;

import androidx.constraintlayout.widget.ConstraintLayout;
import com.warefly.checkscan.auth.presentation.main.view.PhoneSignUpView;
import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import defpackage.a32;
import defpackage.aa4;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.df3;
import defpackage.dw1;
import defpackage.e02;
import defpackage.ev;
import defpackage.fx;
import defpackage.hr7;
import defpackage.hx7;
import defpackage.i57;
import defpackage.ix7;
import defpackage.j59;
import defpackage.jw2;
import defpackage.jx;
import defpackage.ka4;
import defpackage.kx;
import defpackage.mx;
import defpackage.nx;
import defpackage.ob;
import defpackage.pg8;
import defpackage.px;
import defpackage.q76;
import defpackage.qn1;
import defpackage.r57;
import defpackage.s57;
import defpackage.s83;
import defpackage.t83;
import defpackage.tb7;
import defpackage.ub;
import defpackage.uf3;
import defpackage.xg5;
import defpackage.y22;
import defpackage.z76;
import defpackage.z99;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class PhoneSignUpPresenter extends BasePresenter<PhoneSignUpView> implements ob.a {
    public static final a Companion = new a();
    private static final String PHONE_PREFIX = "+7";
    private final fx authRouter;
    private final xg5<z76> authState;
    private final s83 fetchUserAgreementsUseCase;
    private final t83 fetchUserPolicyUseCase;
    private final uf3 flowRouter;
    private final String inviteCode;
    private final ka4 isAuthShowSkipButtonUseCase;
    private final q76 phoneValidator;
    private final hr7 setAuthSkipButtonUseCase;
    private final ix7 signInUseCase;

    public static final class a {
    }

    @bd2(c = "com.warefly.checkscan.auth.presentation.main.presenter.PhoneSignUpPresenter$onFirstViewAttach$1", f = "PhoneSignUpPresenter.kt", l = {ConstraintLayout.LayoutParams.Table.LAYOUT_GONE_MARGIN_BASELINE}, m = "invokeSuspend")
    public static final class b extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        public int l;

        public b(e02<? super b> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return PhoneSignUpPresenter.this.new b(e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((b) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            Object value;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.l;
            PhoneSignUpPresenter phoneSignUpPresenter = PhoneSignUpPresenter.this;
            if (i == 0) {
                r57.b(obj);
                s83 s83Var = phoneSignUpPresenter.fetchUserAgreementsUseCase;
                this.l = 1;
                obj = s83Var.a(this);
                if (obj == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            Map map = (Map) obj;
            xg5 xg5Var = phoneSignUpPresenter.authState;
            do {
                value = xg5Var.getValue();
            } while (!xg5Var.a(value, z76.a((z76) value, null, null, map, 3)));
            PhoneSignUpView phoneSignUpView = (PhoneSignUpView) phoneSignUpPresenter.getViewState();
            if (phoneSignUpView != null) {
                phoneSignUpView.showAgreements(qn1.t0(map.values()));
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.auth.presentation.main.presenter.PhoneSignUpPresenter$onFirstViewAttach$2", f = "PhoneSignUpPresenter.kt", l = {60}, m = "invokeSuspend")
    public static final class c extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        public int l;

        public c(e02<? super c> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return PhoneSignUpPresenter.this.new c(e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((c) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            PhoneSignUpView phoneSignUpView;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.l;
            PhoneSignUpPresenter phoneSignUpPresenter = PhoneSignUpPresenter.this;
            if (i == 0) {
                r57.b(obj);
                t83 t83Var = phoneSignUpPresenter.fetchUserPolicyUseCase;
                this.l = 1;
                obj = t83Var.a.c(this);
                if (obj == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            z99 z99Var = (z99) obj;
            if (z99Var != null && (phoneSignUpView = (PhoneSignUpView) phoneSignUpPresenter.getViewState()) != null) {
                phoneSignUpView.showUserPolicy(z99Var);
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.auth.presentation.main.presenter.PhoneSignUpPresenter$onNextClicked$1", f = "PhoneSignUpPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class d extends pg8 implements bm3<i57<? extends ev>, e02<? super j59>, Object> {
        public /* synthetic */ Object l;
        public final /* synthetic */ z76 n;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(z76 z76Var, e02<? super d> e02Var) {
            super(2, e02Var);
            this.n = z76Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            d dVar = PhoneSignUpPresenter.this.new d(this.n, e02Var);
            dVar.l = obj;
            return dVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(i57<? extends ev> i57Var, e02<? super j59> e02Var) {
            return ((d) create(i57Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            i57 i57Var = (i57) this.l;
            boolean z = i57Var instanceof i57.a;
            PhoneSignUpPresenter phoneSignUpPresenter = PhoneSignUpPresenter.this;
            if (z) {
                PhoneSignUpView phoneSignUpView = (PhoneSignUpView) phoneSignUpPresenter.getViewState();
                if (phoneSignUpView != null) {
                    phoneSignUpView.dismissLoadingDialog();
                }
                PhoneSignUpView phoneSignUpView2 = (PhoneSignUpView) phoneSignUpPresenter.getViewState();
                if (phoneSignUpView2 != null) {
                    phoneSignUpView2.showUnknownError();
                }
            } else if (aa4.e(i57Var, i57.b.a)) {
                PhoneSignUpView phoneSignUpView3 = (PhoneSignUpView) phoneSignUpPresenter.getViewState();
                if (phoneSignUpView3 != null) {
                    phoneSignUpView3.showLoadingDialog();
                }
            } else if (i57Var instanceof i57.c) {
                PhoneSignUpView phoneSignUpView4 = (PhoneSignUpView) phoneSignUpPresenter.getViewState();
                if (phoneSignUpView4 != null) {
                    phoneSignUpView4.dismissLoadingDialog();
                }
                phoneSignUpPresenter.proceedWithAuthInfo(this.n, (ev) ((i57.c) i57Var).a);
            }
            return j59.a;
        }
    }

    public PhoneSignUpPresenter(uf3 uf3Var, fx fxVar, String str, q76 q76Var, t83 t83Var, s83 s83Var, ix7 ix7Var, ka4 ka4Var, hr7 hr7Var) {
        uf3Var.getClass();
        fxVar.getClass();
        q76Var.getClass();
        t83Var.getClass();
        s83Var.getClass();
        ix7Var.getClass();
        ka4Var.getClass();
        hr7Var.getClass();
        this.flowRouter = uf3Var;
        this.authRouter = fxVar;
        this.inviteCode = str;
        this.phoneValidator = q76Var;
        this.fetchUserPolicyUseCase = t83Var;
        this.fetchUserAgreementsUseCase = s83Var;
        this.signInUseCase = ix7Var;
        this.isAuthShowSkipButtonUseCase = ka4Var;
        this.setAuthSkipButtonUseCase = hr7Var;
        this.authState = px.a(z76.d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void proceedWithAuthInfo(z76 z76Var, ev evVar) {
        if (aa4.e(evVar, ev.a.a)) {
            PhoneSignUpView phoneSignUpView = (PhoneSignUpView) getViewState();
            if (phoneSignUpView != null) {
                phoneSignUpView.showInviteCodeFieldError(true);
                return;
            }
            return;
        }
        if (aa4.e(evVar, ev.f.a)) {
            PhoneSignUpView phoneSignUpView2 = (PhoneSignUpView) getViewState();
            if (phoneSignUpView2 != null) {
                phoneSignUpView2.showUnknownError();
                return;
            }
            return;
        }
        if (evVar instanceof ev.b) {
            this.flowRouter.j(new kx(((ev.b) evVar).a, jw2.SignIn));
            return;
        }
        if (evVar instanceof ev.c) {
            ev.c cVar = (ev.c) evVar;
            this.flowRouter.j(new nx(cVar.a, this.phoneValidator.a.g("", z76Var.a), cVar.b));
            return;
        }
        if (evVar instanceof ev.d) {
            this.flowRouter.j(new jx(this.phoneValidator.a.g("", z76Var.a)));
        } else if (evVar instanceof ev.e) {
            this.flowRouter.j(new mx(this.phoneValidator.a.g("", z76Var.a)));
        }
    }

    private final void setAgreement(ub.a aVar) {
        z76 value;
        z76 z76VarA;
        xg5<z76> xg5Var = this.authState;
        do {
            value = xg5Var.getValue();
            z76VarA = value;
            LinkedHashMap linkedHashMap = new LinkedHashMap(z76VarA.c);
            ub ubVar = (ub) linkedHashMap.get(aVar);
            if (ubVar != null) {
                boolean z = !ubVar.c;
                ub.a aVar2 = ubVar.a;
                String str = ubVar.b;
                aVar2.getClass();
                linkedHashMap.put(aVar, new ub(aVar2, str, z));
                j59 j59Var = j59.a;
                z76VarA = z76.a(z76VarA, null, null, linkedHashMap, 3);
            }
        } while (!xg5Var.a(value, z76VarA));
    }

    @Override // ob.a
    public void onAgreementClicked(ub.a aVar) {
        aVar.getClass();
        setAgreement(aVar);
        PhoneSignUpView phoneSignUpView = (PhoneSignUpView) getViewState();
        if (phoneSignUpView != null) {
            phoneSignUpView.showAgreements(qn1.t0(this.authState.getValue().c.values()));
        }
    }

    public final void onBackClicked() {
        this.flowRouter.c();
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        if (this.inviteCode != null) {
            PhoneSignUpView phoneSignUpView = (PhoneSignUpView) getViewState();
            if (phoneSignUpView != null) {
                phoneSignUpView.showInviteCodeField();
            }
            PhoneSignUpView phoneSignUpView2 = (PhoneSignUpView) getViewState();
            if (phoneSignUpView2 != null) {
                phoneSignUpView2.setInviteCodeFiled(this.inviteCode);
            }
        }
        av0.c(getPresenterScope(), null, null, new b(null), 3);
        av0.c(getPresenterScope(), null, null, new c(null), 3);
        if (this.isAuthShowSkipButtonUseCase.a.d()) {
            this.setAuthSkipButtonUseCase.a.e(false);
            PhoneSignUpView phoneSignUpView3 = (PhoneSignUpView) getViewState();
            if (phoneSignUpView3 != null) {
                phoneSignUpView3.showSkipButton();
            }
        }
    }

    public final void onInviteCodeChanged(String str) {
        z76 value;
        str.getClass();
        xg5<z76> xg5Var = this.authState;
        do {
            value = xg5Var.getValue();
        } while (!xg5Var.a(value, z76.a(value, null, str, null, 5)));
        PhoneSignUpView phoneSignUpView = (PhoneSignUpView) getViewState();
        if (phoneSignUpView != null) {
            phoneSignUpView.showInviteCodeFieldError(false);
        }
    }

    public final void onNextClicked() {
        z76 value = this.authState.getValue();
        q76 q76Var = this.phoneValidator;
        String str = value.a;
        Map<ub.a, ub> map = value.c;
        q76Var.getClass();
        if (!q76Var.b.e(q76Var.a.g("", str))) {
            PhoneSignUpView phoneSignUpView = (PhoneSignUpView) getViewState();
            if (phoneSignUpView != null) {
                phoneSignUpView.showPhoneFieldError(true);
                return;
            }
            return;
        }
        ub ubVar = map.get(ub.a.USER);
        if (ubVar == null || !ubVar.c) {
            PhoneSignUpView phoneSignUpView2 = (PhoneSignUpView) getViewState();
            if (phoneSignUpView2 != null) {
                phoneSignUpView2.flashAgreementsError();
                return;
            }
            return;
        }
        ix7 ix7Var = this.signInUseCase;
        String strG = this.phoneValidator.a.g("", value.a);
        ub ubVar2 = map.get(ub.a.SMS);
        boolean z = ubVar2 != null && ubVar2.c;
        dw1 dw1Var = dw1.SMS;
        String str2 = value.b;
        ix7Var.getClass();
        dw1Var.getClass();
        launchInPresenter(new df3(s57.a(new tb7(new hx7(ix7Var, strG, str2, z, dw1Var, null))), new d(value, null)));
    }

    public final void onOpenLinkWebViewClicked(String str) {
        str.getClass();
        PhoneSignUpView phoneSignUpView = (PhoneSignUpView) getViewState();
        if (phoneSignUpView != null) {
            phoneSignUpView.showAgreementBottomSheet(str);
        }
    }

    public final void onPhoneChanged(String str) {
        z76 value;
        str.getClass();
        xg5<z76> xg5Var = this.authState;
        do {
            value = xg5Var.getValue();
        } while (!xg5Var.a(value, z76.a(value, PHONE_PREFIX.concat(str), null, null, 6)));
        PhoneSignUpView phoneSignUpView = (PhoneSignUpView) getViewState();
        if (phoneSignUpView != null) {
            phoneSignUpView.showPhoneFieldError(false);
        }
    }

    public final void onShowInviteCodeClicked() {
        PhoneSignUpView phoneSignUpView = (PhoneSignUpView) getViewState();
        if (phoneSignUpView != null) {
            phoneSignUpView.showInviteCodeField();
        }
    }

    public final void onSkipRegistrationClicked() {
        this.authRouter.b();
    }

    public final void onSupportClicked() {
        this.authRouter.c();
    }
}
