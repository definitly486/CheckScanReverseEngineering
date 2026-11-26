package com.warefly.checkscan.presentation.verificationCardPhone.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.Deeplink;
import com.warefly.checkscan.presentation.verificationCardPhone.presenter.VerificationCardPhonePresenter;
import com.warefly.checkscan.presentation.verificationCardPhone.view.VerificationCardPhoneView;
import defpackage.c41;
import defpackage.ca0;
import defpackage.cp2;
import defpackage.cw1;
import defpackage.fh7;
import defpackage.gh4;
import defpackage.gl3;
import defpackage.h6;
import defpackage.he7;
import defpackage.hf7;
import defpackage.ig7;
import defpackage.j59;
import defpackage.jf6;
import defpackage.kd;
import defpackage.l76;
import defpackage.ll3;
import defpackage.lq1;
import defpackage.m76;
import defpackage.ne7;
import defpackage.nl3;
import defpackage.nq5;
import defpackage.op;
import defpackage.oq1;
import defpackage.qc9;
import defpackage.qe;
import defpackage.qx1;
import defpackage.r01;
import defpackage.rj;
import defpackage.rm3;
import defpackage.ta8;
import defpackage.tq1;
import defpackage.ua8;
import defpackage.uf3;
import defpackage.uz7;
import defpackage.wg7;
import defpackage.xm1;
import defpackage.xv1;
import defpackage.xz7;
import defpackage.yb8;
import defpackage.zp1;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.io.IOException;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
public final class VerificationCardPhonePresenter extends BasePresenter<VerificationCardPhoneView> {
    private static final int CODE_LENGTH = 4;
    public static final a Companion = new a();
    private static final int DAY = 1;
    private static final int HALF_YEAR = 180;
    private static final int MAX_COUNT = 3;
    private static final int MONTH = 30;
    private static final int ONE = 1;
    private static final int WEEK = 7;
    private static final int ZERO = 0;
    private final qe analyticsRepository;
    private final ca0 bankInteractor;
    private hf7 currentTypeScreen;
    private final gl3 fromType;
    private final int lengthCode;
    private final String phone;
    private final jf6 preferencesRepository;
    private final uf3 router;
    private int sendCount;

    public static final class a {
    }

    public static final /* synthetic */ class b {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[gl3.values().length];
            try {
                iArr[gl3.ISSUE_CARD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[gl3.PHONE_CHANGE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            a = iArr;
        }
    }

    public static final class c extends gh4 implements nl3<cp2, j59> {
        public c() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(cp2 cp2Var) {
            VerificationCardPhoneView verificationCardPhoneView = (VerificationCardPhoneView) VerificationCardPhonePresenter.this.getViewState();
            if (verificationCardPhoneView != null) {
                verificationCardPhoneView.showLoading(true);
            }
            return j59.a;
        }
    }

    public static final class d extends gh4 implements nl3<Throwable, j59> {
        public d() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(Throwable th) {
            th.getClass();
            VerificationCardPhonePresenter.this.onBackPressed();
            return j59.a;
        }
    }

    public static final class e extends gh4 implements nl3<c41, j59> {

        public static final /* synthetic */ class a {
            public static final /* synthetic */ int[] a;

            static {
                int[] iArr = new int[gl3.values().length];
                try {
                    iArr[gl3.ISSUE_CARD.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                a = iArr;
            }
        }

        public e() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(c41 c41Var) {
            VerificationCardPhonePresenter verificationCardPhonePresenter = VerificationCardPhonePresenter.this;
            if (a.a[verificationCardPhonePresenter.fromType.ordinal()] == 1) {
                verificationCardPhonePresenter.bankInteractor.d.onNext(Boolean.TRUE);
                verificationCardPhonePresenter.router.a(new ig7(0));
            } else {
                verificationCardPhonePresenter.router.h(new com.warefly.checkscan.presentation.c(Deeplink.CashBackFlow.CashbackProfile.c));
            }
            return j59.a;
        }
    }

    public static final class f extends gh4 implements nl3<cp2, j59> {
        public f() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(cp2 cp2Var) {
            VerificationCardPhoneView verificationCardPhoneView = (VerificationCardPhoneView) VerificationCardPhonePresenter.this.getViewState();
            if (verificationCardPhoneView != null) {
                verificationCardPhoneView.showLoading(true);
            }
            return j59.a;
        }
    }

    public static final class g extends gh4 implements nl3<Throwable, j59> {
        public g() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(Throwable th) {
            th.getClass();
            VerificationCardPhonePresenter.this.invalidCode();
            return j59.a;
        }
    }

    public static final class h extends gh4 implements ll3<j59> {
        public final /* synthetic */ cw1 g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(cw1 cw1Var) {
            super(0);
            this.g = cw1Var;
        }

        @Override // defpackage.ll3
        public final j59 invoke() {
            VerificationCardPhonePresenter verificationCardPhonePresenter = VerificationCardPhonePresenter.this;
            verificationCardPhonePresenter.successCode(verificationCardPhonePresenter.phone, this.g);
            return j59.a;
        }
    }

    public static final class i extends gh4 implements ll3<j59> {
        public i() {
            super(0);
        }

        @Override // defpackage.ll3
        public final j59 invoke() {
            VerificationCardPhonePresenter.this.closeError();
            return j59.a;
        }
    }

    public static final class j extends gh4 implements nl3<cp2, j59> {
        public j() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(cp2 cp2Var) {
            VerificationCardPhoneView verificationCardPhoneView = (VerificationCardPhoneView) VerificationCardPhonePresenter.this.getViewState();
            if (verificationCardPhoneView != null) {
                verificationCardPhoneView.showLoading(true);
            }
            return j59.a;
        }
    }

    public static final class k extends gh4 implements nl3<Throwable, j59> {
        public k() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(Throwable th) {
            th.getClass();
            VerificationCardPhoneView verificationCardPhoneView = (VerificationCardPhoneView) VerificationCardPhonePresenter.this.getViewState();
            if (verificationCardPhoneView != null) {
                verificationCardPhoneView.showError(false, false, false);
            }
            return j59.a;
        }
    }

    public static final class l extends gh4 implements nl3<xv1, j59> {
        public l() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(xv1 xv1Var) {
            xv1 xv1Var2 = xv1Var;
            boolean z = xv1Var2 instanceof xv1.c;
            VerificationCardPhonePresenter verificationCardPhonePresenter = VerificationCardPhonePresenter.this;
            if (z) {
                VerificationCardPhoneView verificationCardPhoneView = (VerificationCardPhoneView) verificationCardPhonePresenter.getViewState();
                if (verificationCardPhoneView != null) {
                    verificationCardPhoneView.showTimeForRepeatCode();
                }
                verificationCardPhonePresenter.showFields(((xv1.c) xv1Var2).a);
            } else if (xv1Var2 instanceof xv1.b) {
                VerificationCardPhoneView verificationCardPhoneView2 = (VerificationCardPhoneView) verificationCardPhonePresenter.getViewState();
                if (verificationCardPhoneView2 != null) {
                    verificationCardPhoneView2.showError(false, true, false);
                }
            } else if (xv1Var2 instanceof xv1.a) {
                VerificationCardPhoneView verificationCardPhoneView3 = (VerificationCardPhoneView) verificationCardPhonePresenter.getViewState();
                if (verificationCardPhoneView3 != null) {
                    verificationCardPhoneView3.showError(false, false, true);
                }
            } else {
                VerificationCardPhoneView verificationCardPhoneView4 = (VerificationCardPhoneView) verificationCardPhonePresenter.getViewState();
                if (verificationCardPhoneView4 != null) {
                    verificationCardPhoneView4.showError(true, false, false);
                }
            }
            return j59.a;
        }
    }

    public VerificationCardPhonePresenter(String str, gl3 gl3Var, uf3 uf3Var, ca0 ca0Var, jf6 jf6Var, int i2, qe qeVar) {
        str.getClass();
        gl3Var.getClass();
        uf3Var.getClass();
        ca0Var.getClass();
        jf6Var.getClass();
        qeVar.getClass();
        this.phone = str;
        this.fromType = gl3Var;
        this.router = uf3Var;
        this.bankInteractor = ca0Var;
        this.preferencesRepository = jf6Var;
        this.lengthCode = i2;
        this.analyticsRepository = qeVar;
        this.currentTypeScreen = hf7.SmsScreen;
    }

    private final void balanceScreen() {
        uf3 uf3Var = this.router;
        com.warefly.checkscan.presentation.c cVar = new com.warefly.checkscan.presentation.c(Deeplink.CashBackFlow.CashbackProfile.c);
        uf3Var.getClass();
        uf3Var.c.g(cVar);
    }

    private final void checkIntentEnable() {
        BasePresenter.disposeOnDestroy$default(this, yb8.d(new uz7(new xz7(this.bankInteractor.a().i(ne7.c).f(rj.a()), new op(new c(), 1)), new h6() { // from class: lc9
            @Override // defpackage.h6
            public final void run() {
                VerificationCardPhonePresenter.checkIntentEnable$lambda$6(this.a);
            }
        }), new d(), new e()), null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void checkIntentEnable$lambda$6(VerificationCardPhonePresenter verificationCardPhonePresenter) {
        VerificationCardPhoneView verificationCardPhoneView = (VerificationCardPhoneView) verificationCardPhonePresenter.getViewState();
        if (verificationCardPhoneView != null) {
            verificationCardPhoneView.showLoading(false);
        }
    }

    private final void confirmCode(String str, cw1 cw1Var) {
        ca0 ca0Var = this.bankInteractor;
        qc9 qc9Var = qc9.ACCOUNT;
        ca0Var.getClass();
        str.getClass();
        cw1Var.getClass();
        qc9Var.getClass();
        lq1 lq1VarF = ca0Var.a.j(new xm1(str, cw1Var, qc9Var)).i(ne7.c).f(rj.a());
        final f fVar = new f();
        qx1 qx1Var = new qx1() { // from class: mc9
            @Override // defpackage.qx1
            public final void accept(Object obj) {
                fVar.invoke(obj);
            }
        };
        rm3.e eVar = rm3.d;
        rm3.d dVar = rm3.c;
        BasePresenter.disposeOnDestroy$default(this, yb8.e(new zp1(new oq1(lq1VarF, qx1Var, eVar, dVar, dVar), new h6() { // from class: nc9
            @Override // defpackage.h6
            public final void run() {
                VerificationCardPhonePresenter.confirmCode$lambda$1(this.a);
            }
        }), new h(cw1Var), new g()), null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void confirmCode$lambda$1(VerificationCardPhonePresenter verificationCardPhonePresenter) {
        VerificationCardPhoneView verificationCardPhoneView = (VerificationCardPhoneView) verificationCardPhonePresenter.getViewState();
        if (verificationCardPhoneView != null) {
            verificationCardPhoneView.showLoading(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void invalidCode() {
        VerificationCardPhoneView verificationCardPhoneView = (VerificationCardPhoneView) getViewState();
        if (verificationCardPhoneView != null) {
            verificationCardPhoneView.showErrorCode();
        }
        if (this.sendCount >= 3) {
            this.bankInteractor.getClass();
            he7 he7Var = ne7.b;
            nq5.a(TimeUnit.SECONDS, "unit is null");
            nq5.a(he7Var, "scheduler is null");
            BasePresenter.disposeOnDestroy$default(this, yb8.g(new tq1(he7Var).i(ne7.c).f(rj.a()), null, new i(), 1), null, 1, null);
        }
    }

    private final void requestCodeOld() {
        int i2 = 1;
        BasePresenter.disposeOnDestroy$default(this, yb8.d(new uz7(new xz7(this.bankInteractor.b(this.phone, this.currentTypeScreen == hf7.SmsScreen ? cw1.SMS : cw1.CALL).i(ne7.c).f(rj.a()), new l76(new j(), i2)), new m76(this, i2)), new k(), new l()), null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void requestCodeOld$lambda$4(VerificationCardPhonePresenter verificationCardPhonePresenter) {
        VerificationCardPhoneView verificationCardPhoneView = (VerificationCardPhoneView) verificationCardPhonePresenter.getViewState();
        if (verificationCardPhoneView != null) {
            verificationCardPhoneView.showLoading(false);
        }
    }

    private final void requestSmsCode() {
        VerificationCardPhoneView verificationCardPhoneView = (VerificationCardPhoneView) getViewState();
        if (verificationCardPhoneView != null) {
            verificationCardPhoneView.showSendSmsCode(this.phone);
        }
        int i2 = b.a[this.fromType.ordinal()];
        if (i2 == 1 || i2 == 2) {
            showFields(this.lengthCode);
        } else {
            requestCodeOld();
        }
    }

    private final void sendEvent(cw1 cw1Var) {
        int i2 = b.a[this.fromType.ordinal()];
        if (i2 != 1) {
            if (i2 != 2) {
                return;
            }
            kd.f0.a.C0254a.e.a();
        } else if (cw1Var == cw1.SMS) {
            kd.j.b.C0270b.e.a();
        } else {
            kd.j.b.a.e.a();
        }
    }

    private final void sendUserRegisteredEvent() {
        kd.a.k.C0232a.e.a();
        this.analyticsRepository.f();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showFields(int i2) {
        VerificationCardPhoneView verificationCardPhoneView = (VerificationCardPhoneView) getViewState();
        if (verificationCardPhoneView != null) {
            verificationCardPhoneView.updateTextField();
        }
        if (i2 == 4) {
            VerificationCardPhoneView verificationCardPhoneView2 = (VerificationCardPhoneView) getViewState();
            if (verificationCardPhoneView2 != null) {
                verificationCardPhoneView2.showShortCode();
            }
        } else if (i2 == 5) {
            VerificationCardPhoneView verificationCardPhoneView3 = (VerificationCardPhoneView) getViewState();
            if (verificationCardPhoneView3 != null) {
                verificationCardPhoneView3.showMiddleCode();
            }
        } else if (i2 == 6) {
            ((VerificationCardPhoneView) getViewState()).showLongCode();
        }
        VerificationCardPhoneView verificationCardPhoneView4 = (VerificationCardPhoneView) getViewState();
        if (verificationCardPhoneView4 != null) {
            verificationCardPhoneView4.showTimeForRepeatCode();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void successCode(String str, cw1 cw1Var) {
        this.preferencesRepository.n(str);
        if (b.a[this.fromType.ordinal()] == 2) {
            this.router.i();
        } else {
            sendUserRegisteredEvent();
            checkIntentEnable();
        }
        sendEvent(cw1Var);
    }

    public final void closeError() {
        int i2 = b.a[this.fromType.ordinal()];
        uf3 uf3Var = this.router;
        if (i2 == 2) {
            uf3Var.i();
        } else {
            uf3Var.getClass();
            uf3Var.c.g(com.warefly.checkscan.presentation.e.a);
        }
    }

    public final String formatTime(long j2) {
        return j2 / 10 == 0 ? r01.c(j2, CommonUrlParts.Values.FALSE_INTEGER) : String.valueOf(j2);
    }

    public final void onBackPressed() {
        int i2 = b.a[this.fromType.ordinal()];
        uf3 uf3Var = this.router;
        if (i2 == 1) {
            uf3Var.a(new fh7(false));
        } else if (i2 == 2) {
            uf3Var.i();
        } else {
            uf3Var.getClass();
            uf3Var.c.g(com.warefly.checkscan.presentation.e.a);
        }
    }

    public final void onCancelClick() {
        int iR = this.preferencesRepository.r();
        if (iR == 0) {
            this.preferencesRepository.H0(1);
        } else if (iR == 1) {
            this.preferencesRepository.H0(7);
        } else if (iR == 7) {
            this.preferencesRepository.H0(30);
        } else if (iR == 30) {
            this.preferencesRepository.H0(HALF_YEAR);
        }
        balanceScreen();
    }

    public final void onConfirmClick() {
        this.router.h(new wg7());
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        requestSmsCode();
    }

    public final void repeatCode() {
        requestCodeOld();
    }

    public final void requestCallCode() {
        this.currentTypeScreen = hf7.CallScreen;
        if (b.a[this.fromType.ordinal()] != 1) {
            requestCodeOld();
            return;
        }
        repeatCode();
        VerificationCardPhoneView verificationCardPhoneView = (VerificationCardPhoneView) getViewState();
        if (verificationCardPhoneView != null) {
            verificationCardPhoneView.setCaseCall(this.phone, this.lengthCode);
        }
    }

    public final void sendCode(String str) {
        str.getClass();
        this.sendCount++;
        confirmCode(str, this.currentTypeScreen == hf7.SmsScreen ? cw1.SMS : cw1.CALL);
    }

    public final void sendSmsCodeFromReceiver(String str) throws IOException {
        VerificationCardPhoneView verificationCardPhoneView;
        if (str == null || ta8.M(str)) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            char cCharAt = str.charAt(i2);
            if (Character.isDigit(cCharAt)) {
                sb.append(cCharAt);
            }
        }
        String strL0 = ua8.l0(4, sb.toString());
        if (strL0.length() != 4 || (verificationCardPhoneView = (VerificationCardPhoneView) getViewState()) == null) {
            return;
        }
        verificationCardPhoneView.setCodeFromSms(strL0);
    }

    public final void showSendCodeAgain() {
        if (this.currentTypeScreen == hf7.SmsScreen) {
            VerificationCardPhoneView verificationCardPhoneView = (VerificationCardPhoneView) getViewState();
            if (verificationCardPhoneView != null) {
                verificationCardPhoneView.showSendSmsAgain();
                return;
            }
            return;
        }
        VerificationCardPhoneView verificationCardPhoneView2 = (VerificationCardPhoneView) getViewState();
        if (verificationCardPhoneView2 != null) {
            verificationCardPhoneView2.showRepeatCallAgain();
        }
    }
}
