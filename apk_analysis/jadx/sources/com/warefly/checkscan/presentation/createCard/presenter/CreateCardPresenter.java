package com.warefly.checkscan.presentation.createCard.presenter;

import com.warefly.checkscan.R;
import com.warefly.checkscan.auth.presentation.flow.AuthReason;
import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.Deeplink;
import com.warefly.checkscan.presentation.createCard.presenter.CreateCardPresenter;
import com.warefly.checkscan.presentation.createCard.view.CreateCardView;
import defpackage.a32;
import defpackage.b36;
import defpackage.b41;
import defpackage.ba0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.c41;
import defpackage.ca0;
import defpackage.ce3;
import defpackage.cp2;
import defpackage.cw1;
import defpackage.d62;
import defpackage.de3;
import defpackage.df3;
import defpackage.dm3;
import defpackage.e02;
import defpackage.fh7;
import defpackage.g17;
import defpackage.g90;
import defpackage.ga1;
import defpackage.gh4;
import defpackage.gl3;
import defpackage.h6;
import defpackage.h62;
import defpackage.hl0;
import defpackage.i3;
import defpackage.id3;
import defpackage.ix;
import defpackage.j59;
import defpackage.jf6;
import defpackage.kd;
import defpackage.mz7;
import defpackage.ne7;
import defpackage.nl3;
import defpackage.ob0;
import defpackage.oi7;
import defpackage.p08;
import defpackage.pg8;
import defpackage.qx1;
import defpackage.r08;
import defpackage.r57;
import defpackage.rj;
import defpackage.ta8;
import defpackage.tb7;
import defpackage.u89;
import defpackage.uf3;
import defpackage.uz7;
import defpackage.v99;
import defpackage.vf7;
import defpackage.wd1;
import defpackage.x90;
import defpackage.xv1;
import defpackage.xz7;
import defpackage.y74;
import defpackage.y90;
import defpackage.yb8;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class CreateCardPresenter extends BasePresenter<CreateCardView> implements u89 {
    public static final a Companion = new a();
    private static final String SCREEN_ANALYTICS_TAG = "CobrandCreate";
    private final ca0 bankInteractor;
    private final uf3 flowRouter;
    private final d62 fromType;
    private final jf6 preferencesRepository;
    private final i3 validator;

    public static final class a {
    }

    public static final /* synthetic */ class b {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[d62.values().length];
            try {
                iArr[d62.Default.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[d62.RegisterToCreate.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            a = iArr;
        }
    }

    public static final class c extends gh4 implements nl3<Throwable, j59> {
        public c() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(Throwable th) {
            th.getClass();
            CreateCardView createCardView = (CreateCardView) CreateCardPresenter.this.getViewState();
            if (createCardView != null) {
                createCardView.showError(null);
            }
            return j59.a;
        }
    }

    public static final class d extends gh4 implements nl3<ob0<? extends String>, j59> {
        public d() {
            super(1);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // defpackage.nl3
        public final j59 invoke(ob0<? extends String> ob0Var) {
            CreateCardView createCardView;
            ob0<? extends String> ob0Var2 = ob0Var;
            boolean z = ob0Var2 instanceof ob0.b;
            CreateCardPresenter createCardPresenter = CreateCardPresenter.this;
            if (z) {
                CreateCardView createCardView2 = (CreateCardView) createCardPresenter.getViewState();
                if (createCardView2 != null) {
                    createCardView2.showUpridWebDialog((String) ((ob0.b) ob0Var2).a);
                }
            } else if ((ob0Var2 instanceof ob0.a) && (createCardView = (CreateCardView) createCardPresenter.getViewState()) != null) {
                createCardView.showError(((ob0.a) ob0Var2).a);
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.createCard.presenter.CreateCardPresenter$onFirstViewAttach$1", f = "CreateCardPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class e extends pg8 implements bm3<id3<? super Boolean>, e02<? super j59>, Object> {
        public e(e02<? super e> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return CreateCardPresenter.this.new e(e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(id3<? super Boolean> id3Var, e02<? super j59> e02Var) {
            return ((e) create(id3Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            CreateCardView createCardView = (CreateCardView) CreateCardPresenter.this.getViewState();
            if (createCardView != null) {
                createCardView.showLoadingSpinner(true);
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.createCard.presenter.CreateCardPresenter$onFirstViewAttach$2", f = "CreateCardPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class f extends pg8 implements bm3<Boolean, e02<? super j59>, Object> {
        public /* synthetic */ boolean l;

        public f(e02<? super f> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            f fVar = CreateCardPresenter.this.new f(e02Var);
            fVar.l = ((Boolean) obj).booleanValue();
            return fVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(Boolean bool, e02<? super j59> e02Var) {
            Boolean bool2 = bool;
            bool2.booleanValue();
            return ((f) create(bool2, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            boolean z = this.l;
            CreateCardPresenter createCardPresenter = CreateCardPresenter.this;
            if (z) {
                createCardPresenter.showUpridWebDialogFromStart();
            } else {
                CreateCardView createCardView = (CreateCardView) createCardPresenter.getViewState();
                if (createCardView != null) {
                    createCardView.showLoadingSpinner(false);
                }
                createCardPresenter.showUpridWebDialogWhenEvent();
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.createCard.presenter.CreateCardPresenter$onFirstViewAttach$3", f = "CreateCardPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class g extends pg8 implements dm3<id3<? super Boolean>, Throwable, e02<? super j59>, Object> {
        public g(e02<? super g> e02Var) {
            super(3, e02Var);
        }

        @Override // defpackage.dm3
        public final Object invoke(id3<? super Boolean> id3Var, Throwable th, e02<? super j59> e02Var) {
            return CreateCardPresenter.this.new g(e02Var).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            CreateCardPresenter createCardPresenter = CreateCardPresenter.this;
            CreateCardView createCardView = (CreateCardView) createCardPresenter.getViewState();
            if (createCardView != null) {
                createCardView.showLoadingSpinner(false);
            }
            createCardPresenter.showUpridWebDialogWhenEvent();
            return j59.a;
        }
    }

    public static final class h extends gh4 implements bm3<Boolean, c41, b36<? extends Boolean, ? extends c41>> {
        public static final h f = new h(2);

        @Override // defpackage.bm3
        public final b36<? extends Boolean, ? extends c41> invoke(Boolean bool, c41 c41Var) {
            Boolean bool2 = bool;
            c41 c41Var2 = c41Var;
            bool2.getClass();
            c41Var2.getClass();
            return new b36<>(bool2, c41Var2);
        }
    }

    public static final class i extends gh4 implements nl3<cp2, j59> {
        public i() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(cp2 cp2Var) {
            CreateCardView createCardView = (CreateCardView) CreateCardPresenter.this.getViewState();
            if (createCardView != null) {
                createCardView.showLoading(true);
            }
            return j59.a;
        }
    }

    public static final class j extends gh4 implements nl3<Throwable, j59> {
        public j() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(Throwable th) {
            th.getClass();
            CreateCardView createCardView = (CreateCardView) CreateCardPresenter.this.getViewState();
            if (createCardView != null) {
                createCardView.showError(null);
            }
            return j59.a;
        }
    }

    public static final class k extends gh4 implements nl3<b36<? extends Boolean, ? extends c41>, j59> {
        public final /* synthetic */ String g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public k(String str) {
            super(1);
            this.g = str;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // defpackage.nl3
        public final j59 invoke(b36<? extends Boolean, ? extends c41> b36Var) {
            b36<? extends Boolean, ? extends c41> b36Var2 = b36Var;
            b41 b41Var = ((c41) b36Var2.c).a;
            b41 b41Var2 = b41.NOT_REGISTERED;
            CreateCardPresenter createCardPresenter = CreateCardPresenter.this;
            if (b41Var == b41Var2) {
                uf3 uf3Var = createCardPresenter.flowRouter;
                String str = null;
                ix ixVar = new ix(new AuthReason.Login(str, str, 7));
                uf3Var.getClass();
                uf3Var.c.d(ixVar);
            } else {
                i3 i3Var = createCardPresenter.validator;
                String strU0 = createCardPresenter.preferencesRepository.U0();
                i3Var.getClass();
                String strReplace = strU0.replace('-', ' ');
                strReplace.getClass();
                String strReplace2 = strReplace.replace('(', ' ');
                strReplace2.getClass();
                String strReplace3 = strReplace2.replace(')', ' ');
                strReplace3.getClass();
                StringBuilder sb = new StringBuilder();
                String str2 = this.g;
                int length = str2.length();
                for (int i = 0; i < length; i++) {
                    char cCharAt = str2.charAt(i);
                    if (!ga1.e(cCharAt)) {
                        sb.append(cCharAt);
                    }
                }
                String string = sb.toString();
                StringBuilder sb2 = new StringBuilder();
                int length2 = strReplace3.length();
                for (int i2 = 0; i2 < length2; i2++) {
                    char cCharAt2 = strReplace3.charAt(i2);
                    if (!ga1.e(cCharAt2)) {
                        sb2.append(cCharAt2);
                    }
                }
                if (string.equals(sb2.toString())) {
                    A a = b36Var2.b;
                    a.getClass();
                    if (((Boolean) a).booleanValue()) {
                        createCardPresenter.getLinkForUprid();
                    } else {
                        createCardPresenter.requestVerificationPhone(str2);
                    }
                } else {
                    createCardPresenter.requestVerificationPhone(str2);
                }
            }
            return j59.a;
        }
    }

    public static final class l extends gh4 implements nl3<cp2, j59> {
        public l() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(cp2 cp2Var) {
            CreateCardView createCardView = (CreateCardView) CreateCardPresenter.this.getViewState();
            if (createCardView != null) {
                createCardView.showLoading(true);
            }
            return j59.a;
        }
    }

    public static final class m extends gh4 implements nl3<Throwable, j59> {
        public m() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(Throwable th) {
            th.getClass();
            CreateCardView createCardView = (CreateCardView) CreateCardPresenter.this.getViewState();
            if (createCardView != null) {
                createCardView.showError(null);
            }
            return j59.a;
        }
    }

    public static final class n extends gh4 implements nl3<xv1, j59> {
        public final /* synthetic */ String g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public n(String str) {
            super(1);
            this.g = str;
        }

        @Override // defpackage.nl3
        public final j59 invoke(xv1 xv1Var) {
            xv1 xv1Var2 = xv1Var;
            boolean z = xv1Var2 instanceof xv1.c;
            CreateCardPresenter createCardPresenter = CreateCardPresenter.this;
            if (z) {
                createCardPresenter.eventUpgradeFormOpened();
                createCardPresenter.flowRouter.j(new oi7(this.g, gl3.ISSUE_CARD, ((xv1.c) xv1Var2).a));
            } else if (xv1Var2 instanceof xv1.b) {
                CreateCardView createCardView = (CreateCardView) createCardPresenter.getViewState();
                if (createCardView != null) {
                    createCardView.showPhoneUsedError();
                }
            } else {
                CreateCardView createCardView2 = (CreateCardView) createCardPresenter.getViewState();
                if (createCardView2 != null) {
                    createCardView2.showTimeConfirmError();
                }
            }
            return j59.a;
        }
    }

    public static final class o extends gh4 implements nl3<cp2, j59> {
        public o() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(cp2 cp2Var) {
            CreateCardView createCardView = (CreateCardView) CreateCardPresenter.this.getViewState();
            if (createCardView != null) {
                createCardView.enableIssueButton(false);
            }
            return j59.a;
        }
    }

    public static final class p extends gh4 implements nl3<Throwable, j59> {
        public p() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(Throwable th) {
            th.getClass();
            CreateCardView createCardView = (CreateCardView) CreateCardPresenter.this.getViewState();
            if (createCardView != null) {
                createCardView.showError(null);
            }
            return j59.a;
        }
    }

    public static final class q extends gh4 implements nl3<ob0<? extends String>, j59> {
        public q() {
            super(1);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // defpackage.nl3
        public final j59 invoke(ob0<? extends String> ob0Var) {
            CreateCardView createCardView;
            ob0<? extends String> ob0Var2 = ob0Var;
            boolean z = ob0Var2 instanceof ob0.b;
            CreateCardPresenter createCardPresenter = CreateCardPresenter.this;
            if (z) {
                CreateCardView createCardView2 = (CreateCardView) createCardPresenter.getViewState();
                if (createCardView2 != null) {
                    createCardView2.showUpridWebDialog((String) ((ob0.b) ob0Var2).a);
                }
            } else if ((ob0Var2 instanceof ob0.a) && (createCardView = (CreateCardView) createCardPresenter.getViewState()) != null) {
                createCardView.showError(((ob0.a) ob0Var2).a);
            }
            return j59.a;
        }
    }

    public static final class r extends gh4 implements nl3<Boolean, j59> {
        public r() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(Boolean bool) {
            Boolean bool2 = bool;
            bool2.getClass();
            if (bool2.booleanValue()) {
                CreateCardPresenter.this.getLinkForUprid();
            }
            return j59.a;
        }
    }

    public CreateCardPresenter(uf3 uf3Var, jf6 jf6Var, i3 i3Var, ca0 ca0Var, d62 d62Var) {
        uf3Var.getClass();
        jf6Var.getClass();
        i3Var.getClass();
        ca0Var.getClass();
        d62Var.getClass();
        this.flowRouter = uf3Var;
        this.preferencesRepository = jf6Var;
        this.validator = i3Var;
        this.bankInteractor = ca0Var;
        this.fromType = d62Var;
    }

    private final void checkNumber() {
        if (!this.preferencesRepository.G0()) {
            kd.j.c.e.e.a();
            CreateCardView createCardView = (CreateCardView) getViewState();
            if (createCardView != null) {
                createCardView.isHaveNumber(false, false, null);
                return;
            }
            return;
        }
        String strU0 = this.preferencesRepository.U0();
        if (ta8.M(strU0)) {
            kd.j.c.e.e.a();
            CreateCardView createCardView2 = (CreateCardView) getViewState();
            if (createCardView2 != null) {
                createCardView2.isHaveNumber(false, false, null);
                return;
            }
            return;
        }
        boolean zD = this.validator.d(strU0);
        this.validator.getClass();
        boolean zB = i3.b(strU0);
        if (!zD || !zB) {
            kd.j.c.C0273c.e.a();
            CreateCardView createCardView3 = (CreateCardView) getViewState();
            if (createCardView3 != null) {
                this.validator.getClass();
                createCardView3.isHaveNumber(true, false, strU0.length() >= 9 ? ta8.V(strU0, 2, new y74(2, 9, 1).c + 1, " *** *** ** ").toString() : " *** *** ** ");
                return;
            }
            return;
        }
        kd.j.c.d.e.a();
        CreateCardView createCardView4 = (CreateCardView) getViewState();
        if (createCardView4 != null) {
            i3 i3Var = this.validator;
            i3Var.getClass();
            g17 g17Var = i3Var.c;
            String str = i3Var.d;
            g17Var.getClass();
            str.getClass();
            String strReplaceFirst = g17Var.b.matcher(strU0).replaceFirst(str);
            strReplaceFirst.getClass();
            createCardView4.isHaveNumber(true, true, strReplaceFirst);
        }
    }

    private final void eventAttemptRegister() {
        BasePresenter.disposeOnDestroy$default(this, yb8.g(this.bankInteractor.a.d().i(ne7.c).f(rj.a()), null, null, 3), null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void eventUpgradeFormOpened() {
        BasePresenter.disposeOnDestroy$default(this, yb8.g(this.bankInteractor.a.c().i(ne7.c).f(rj.a()), null, null, 3), null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void getLinkForUprid() {
        BasePresenter.disposeOnDestroy$default(this, yb8.d(this.bankInteractor.a.i().i(ne7.c).f(rj.a()), new c(), new d()), null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b36 onIssueClick$lambda$0(bm3 bm3Var, Object obj, Object obj2) {
        return (b36) bm3Var.invoke(obj, obj2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onIssueClick$lambda$2(CreateCardPresenter createCardPresenter) {
        CreateCardView createCardView = (CreateCardView) createCardPresenter.getViewState();
        if (createCardView != null) {
            createCardView.showLoading(false);
        }
    }

    private final void openBalanceScreen() {
        this.flowRouter.c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void requestVerificationPhone(String str) {
        BasePresenter.disposeOnDestroy$default(this, yb8.d(new uz7(new xz7(this.bankInteractor.b(str, cw1.SMS).i(ne7.c).f(rj.a()), new g90(new l(), 1)), new h6() { // from class: g62
            @Override // defpackage.h6
            public final void run() {
                CreateCardPresenter.requestVerificationPhone$lambda$4(this.a);
            }
        }), new m(), new n(str)), null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void requestVerificationPhone$lambda$4(CreateCardPresenter createCardPresenter) {
        CreateCardView createCardView = (CreateCardView) createCardPresenter.getViewState();
        if (createCardView != null) {
            createCardView.showLoading(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showUpridWebDialogFromStart() {
        r08 r08VarF = this.bankInteractor.a.i().i(ne7.c).f(rj.a());
        final o oVar = new o();
        BasePresenter.disposeOnDestroy$default(this, yb8.d(new uz7(new xz7(r08VarF, new qx1() { // from class: e62
            @Override // defpackage.qx1
            public final void accept(Object obj) {
                oVar.invoke(obj);
            }
        }), new h6() { // from class: f62
            @Override // defpackage.h6
            public final void run() {
                CreateCardPresenter.showUpridWebDialogFromStart$lambda$7(this.a);
            }
        }), new p(), new q()), null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showUpridWebDialogFromStart$lambda$7(CreateCardPresenter createCardPresenter) {
        CreateCardView createCardView = (CreateCardView) createCardPresenter.getViewState();
        if (createCardView != null) {
            createCardView.enableIssueButton(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showUpridWebDialogWhenEvent() {
        BasePresenter.disposeOnDestroy$default(this, yb8.h(this.bankInteractor.d.g(ne7.c).e(rj.a()), null, new r(), 3), null, 1, null);
    }

    public final void editNumberClick() {
        kd.j.c.b.e.a();
        uf3 uf3Var = this.flowRouter;
        uf3Var.getClass();
        uf3Var.c.d(vf7.a);
    }

    public final void onBackClick() {
        int i2 = b.a[this.fromType.ordinal()];
        uf3 uf3Var = this.flowRouter;
        if (i2 == 1) {
            uf3Var.a(new fh7(false));
        } else if (i2 != 2) {
            uf3Var.i();
        } else {
            uf3Var.c();
        }
    }

    public void onClosePlasticReject(String str) {
        str.getClass();
        this.bankInteractor.c(str);
        openBalanceScreen();
    }

    @Override // defpackage.u89
    public void onClosePlasticWait(String str) {
        str.getClass();
        this.bankInteractor.c(str);
        openBalanceScreen();
    }

    @Override // defpackage.u89
    public void onCloseReject(String str) {
        str.getClass();
        kd.j.b.e.e.a();
        this.bankInteractor.c(str);
        openBalanceScreen();
    }

    @Override // defpackage.u89
    public void onCloseStartDownloadingAlfa(String str) {
        str.getClass();
        this.bankInteractor.c(str);
        CreateCardView createCardView = (CreateCardView) getViewState();
        if (createCardView != null) {
            createCardView.dismissUpridDialog();
        }
        this.flowRouter.g(new com.warefly.checkscan.presentation.f(new Deeplink.Desktop.Balance(false)));
        CreateCardView createCardView2 = (CreateCardView) getViewState();
        if (createCardView2 != null) {
            createCardView2.openUrl(this.bankInteractor.c.getString(R.string.alfa_download_android_apk));
        }
    }

    @Override // defpackage.u89
    public void onCloseSuccess(String str) {
        str.getClass();
        kd.j.b.h.e.a();
        this.bankInteractor.c(str);
        CreateCardView createCardView = (CreateCardView) getViewState();
        if (createCardView != null) {
            createCardView.dismissUpridDialog();
        }
        openBalanceScreen();
    }

    @Override // defpackage.u89
    public void onCloseUpridWeb() {
        CreateCardView createCardView = (CreateCardView) getViewState();
        if (createCardView != null) {
            createCardView.dismissUpridDialog();
        }
        openBalanceScreen();
    }

    @Override // defpackage.u89
    public void onCloseUserExist(String str) {
        str.getClass();
        kd.j.b.f.e.a();
        this.bankInteractor.c(str);
        CreateCardView createCardView = (CreateCardView) getViewState();
        if (createCardView != null) {
            createCardView.dismissUpridDialog();
        }
        this.flowRouter.g(new com.warefly.checkscan.presentation.f(new Deeplink.Desktop.Balance(false)));
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        Map mapSingletonMap = Collections.singletonMap("Appeared", SCREEN_ANALYTICS_TAG);
        mapSingletonMap.getClass();
        new kd.n0.a("Screen", mapSingletonMap).a();
        eventAttemptRegister();
        checkNumber();
        if (this.fromType == d62.RegisterToCreate) {
            showUpridWebDialogFromStart();
            return;
        }
        ca0 ca0Var = this.bankInteractor;
        ca0Var.getClass();
        launchInPresenter(new de3(new df3(new ce3(new tb7(new y90(ca0Var, null)), new e(null)), new f(null)), new g(null)));
    }

    public final void onIssueClick(String str) {
        str.getClass();
        kd.j.c.a.e.a();
        String str2 = null;
        if (!this.preferencesRepository.G0()) {
            uf3 uf3Var = this.flowRouter;
            ix ixVar = new ix(new AuthReason.Login(str2, str2, 7));
            uf3Var.getClass();
            uf3Var.c.d(ixVar);
            return;
        }
        mz7<v99> mz7VarB = this.bankInteractor.a.b();
        int i2 = 0;
        x90 x90Var = new x90(ba0.g, i2);
        mz7VarB.getClass();
        BasePresenter.disposeOnDestroy$default(this, yb8.d(new uz7(new xz7(mz7.j(new p08(mz7VarB, x90Var), this.bankInteractor.a(), new hl0(h.f, 2)).i(ne7.c).f(rj.a()), new h62(new i(), i2)), new wd1(this, 1)), new j(), new k(str)), null, 1, null);
    }

    public final void onNumberChanged(String str) {
        str.getClass();
        this.validator.getClass();
        boolean zB = i3.b(str);
        boolean zD = this.validator.d(str);
        CreateCardView createCardView = (CreateCardView) getViewState();
        if (createCardView != null) {
            createCardView.showIncorrectPhoneMessage(!zB);
        }
        CreateCardView createCardView2 = (CreateCardView) getViewState();
        if (createCardView2 != null) {
            createCardView2.enableIssueButton(zD && zB);
        }
    }
}
