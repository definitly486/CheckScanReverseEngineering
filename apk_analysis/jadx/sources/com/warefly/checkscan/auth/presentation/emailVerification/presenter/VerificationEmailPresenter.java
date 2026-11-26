package com.warefly.checkscan.auth.presentation.emailVerification.presenter;

import androidx.constraintlayout.widget.ConstraintLayout;
import com.warefly.checkscan.auth.presentation.emailVerification.view.VerificationEmailView;
import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import defpackage.a32;
import defpackage.aa4;
import defpackage.ah;
import defpackage.am2;
import defpackage.av0;
import defpackage.aw1;
import defpackage.bd2;
import defpackage.be3;
import defpackage.bm3;
import defpackage.ce3;
import defpackage.cx7;
import defpackage.df3;
import defpackage.dm3;
import defpackage.dw1;
import defpackage.e02;
import defpackage.g06;
import defpackage.gw2;
import defpackage.gx7;
import defpackage.i57;
import defpackage.id3;
import defpackage.j3;
import defpackage.j59;
import defpackage.jw2;
import defpackage.ox;
import defpackage.pg8;
import defpackage.r57;
import defpackage.s57;
import defpackage.tb7;
import defpackage.uf3;
import defpackage.y22;
import defpackage.yk2;
import defpackage.z8;
import defpackage.zv1;

/* JADX INFO: loaded from: classes.dex */
public final class VerificationEmailPresenter extends BasePresenter<VerificationEmailView> implements g06.a {
    public static final a Companion = new a();
    private static final long ONE_MINUTE = 120000;
    private final z8 addEmailUseCase;
    private final aw1 confirmEmailUseCase;
    private final String email;
    private final jw2 emailVerificationReason;
    private final uf3 flowRouter;
    private String otpCode;
    private final cx7 signInConfirmInteractor;
    private final gx7 signInRetryUseCase;

    public static final class a {
    }

    public static final /* synthetic */ class b {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[jw2.values().length];
            try {
                iArr[jw2.SignIn.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[jw2.AddEmail.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            a = iArr;
        }
    }

    @bd2(c = "com.warefly.checkscan.auth.presentation.emailVerification.presenter.VerificationEmailPresenter$retryAddingEmail$1", f = "VerificationEmailPresenter.kt", l = {93}, m = "invokeSuspend")
    public static final class c extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        public int l;

        public c(e02<? super c> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return VerificationEmailPresenter.this.new c(e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((c) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.l;
            if (i == 0) {
                r57.b(obj);
                VerificationEmailPresenter verificationEmailPresenter = VerificationEmailPresenter.this;
                z8 z8Var = verificationEmailPresenter.addEmailUseCase;
                String str = verificationEmailPresenter.email;
                this.l = 1;
                if (z8Var.a.d(str, this) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.auth.presentation.emailVerification.presenter.VerificationEmailPresenter$retrySignIn$1", f = "VerificationEmailPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class d extends pg8 implements bm3<i57<? extends Object>, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public d(e02<? super d> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            d dVar = VerificationEmailPresenter.this.new d(e02Var);
            dVar.l = obj;
            return dVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(i57<? extends Object> i57Var, e02<? super j59> e02Var) {
            return ((d) create(i57Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            VerificationEmailView verificationEmailView;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            if ((((i57) this.l) instanceof i57.a) && (verificationEmailView = (VerificationEmailView) VerificationEmailPresenter.this.getViewState()) != null) {
                verificationEmailView.showUnknownError();
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.auth.presentation.emailVerification.presenter.VerificationEmailPresenter$showOtpError$1", f = "VerificationEmailPresenter.kt", l = {100}, m = "invokeSuspend")
    public static final class e extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        public int l;

        public e(e02<? super e> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return VerificationEmailPresenter.this.new e(e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((e) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.l;
            VerificationEmailPresenter verificationEmailPresenter = VerificationEmailPresenter.this;
            if (i == 0) {
                r57.b(obj);
                VerificationEmailView verificationEmailView = (VerificationEmailView) verificationEmailPresenter.getViewState();
                if (verificationEmailView != null) {
                    verificationEmailView.showOtpError(true);
                }
                this.l = 1;
                if (yk2.b(1000L, this) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            VerificationEmailView verificationEmailView2 = (VerificationEmailView) verificationEmailPresenter.getViewState();
            if (verificationEmailView2 != null) {
                verificationEmailView2.showOtpError(false);
            }
            VerificationEmailView verificationEmailView3 = (VerificationEmailView) verificationEmailPresenter.getViewState();
            if (verificationEmailView3 != null) {
                verificationEmailView3.clearOtp();
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.auth.presentation.emailVerification.presenter.VerificationEmailPresenter$startTimer$1", f = "VerificationEmailPresenter.kt", l = {54, ConstraintLayout.LayoutParams.Table.LAYOUT_GONE_MARGIN_BASELINE}, m = "invokeSuspend")
    public static final class f extends pg8 implements bm3<id3<? super Long>, e02<? super j59>, Object> {
        public long l;
        public int m;
        public /* synthetic */ Object n;

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            f fVar = new f(2, e02Var);
            fVar.n = obj;
            return fVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(id3<? super Long> id3Var, e02<? super j59> e02Var) {
            return ((f) create(id3Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Code duplicated, block: B:14:0x003a  */
        /* JADX WARN: Code duplicated, block: B:17:0x004c  */
        /* JADX WARN: Code duplicated, block: B:22:0x005c  */
        /* JADX WARN: Code restructure failed: missing block: B:19:0x0057, code lost:
        
            if (defpackage.yk2.b(1000, r10) == r0) goto L20;
         */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0057 -> B:7:0x0017). Please report as a decompilation issue!!! */
        @Override // defpackage.cd0
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r11) {
            /*
                r10 = this;
                a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
                int r1 = r10.m
                r2 = 1000(0x3e8, double:4.94E-321)
                r4 = 2
                r5 = 1
                if (r1 == 0) goto L2a
                if (r1 == r5) goto L20
                if (r1 != r4) goto L19
                long r6 = r10.l
                java.lang.Object r1 = r10.n
                id3 r1 = (defpackage.id3) r1
                defpackage.r57.b(r11)
            L17:
                r11 = r1
                goto L5a
            L19:
                java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.ah.f(r10)
                r10 = 0
                return r10
            L20:
                long r6 = r10.l
                java.lang.Object r1 = r10.n
                id3 r1 = (defpackage.id3) r1
                defpackage.r57.b(r11)
                goto L4d
            L2a:
                defpackage.r57.b(r11)
                java.lang.Object r11 = r10.n
                id3 r11 = (defpackage.id3) r11
                r6 = 120000(0x1d4c0, double:5.9288E-319)
            L34:
                r8 = 0
                int r1 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
                if (r1 <= 0) goto L5c
                java.lang.Long r1 = new java.lang.Long
                r1.<init>(r6)
                r10.n = r11
                r10.l = r6
                r10.m = r5
                java.lang.Object r1 = r11.emit(r1, r10)
                if (r1 != r0) goto L4c
                goto L59
            L4c:
                r1 = r11
            L4d:
                r10.n = r1
                r10.l = r6
                r10.m = r4
                java.lang.Object r11 = defpackage.yk2.b(r2, r10)
                if (r11 != r0) goto L17
            L59:
                return r0
            L5a:
                long r6 = r6 - r2
                goto L34
            L5c:
                j59 r10 = defpackage.j59.a
                return r10
            */
            throw new UnsupportedOperationException("Method not decompiled: com.warefly.checkscan.auth.presentation.emailVerification.presenter.VerificationEmailPresenter.f.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @bd2(c = "com.warefly.checkscan.auth.presentation.emailVerification.presenter.VerificationEmailPresenter$startTimer$2", f = "VerificationEmailPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class g extends pg8 implements bm3<id3<? super Long>, e02<? super j59>, Object> {
        public g(e02<? super g> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return VerificationEmailPresenter.this.new g(e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(id3<? super Long> id3Var, e02<? super j59> e02Var) {
            return ((g) create(id3Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            VerificationEmailView verificationEmailView = (VerificationEmailView) VerificationEmailPresenter.this.getViewState();
            if (verificationEmailView != null) {
                verificationEmailView.showTimer(true);
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.auth.presentation.emailVerification.presenter.VerificationEmailPresenter$startTimer$3", f = "VerificationEmailPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class h extends pg8 implements bm3<Long, e02<? super j59>, Object> {
        public /* synthetic */ long l;

        public h(e02<? super h> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            h hVar = VerificationEmailPresenter.this.new h(e02Var);
            hVar.l = ((Number) obj).longValue();
            return hVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(Long l, e02<? super j59> e02Var) {
            return ((h) create(Long.valueOf(l.longValue()), e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            long j = this.l;
            VerificationEmailView verificationEmailView = (VerificationEmailView) VerificationEmailPresenter.this.getViewState();
            if (verificationEmailView != null) {
                verificationEmailView.setTimer(j);
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.auth.presentation.emailVerification.presenter.VerificationEmailPresenter$startTimer$4", f = "VerificationEmailPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class i extends pg8 implements dm3<id3<? super Long>, Throwable, e02<? super j59>, Object> {
        public i(e02<? super i> e02Var) {
            super(3, e02Var);
        }

        @Override // defpackage.dm3
        public final Object invoke(id3<? super Long> id3Var, Throwable th, e02<? super j59> e02Var) {
            return VerificationEmailPresenter.this.new i(e02Var).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            VerificationEmailPresenter verificationEmailPresenter = VerificationEmailPresenter.this;
            VerificationEmailView verificationEmailView = (VerificationEmailView) verificationEmailPresenter.getViewState();
            if (verificationEmailView != null) {
                verificationEmailView.showTimer(false);
            }
            VerificationEmailView verificationEmailView2 = (VerificationEmailView) verificationEmailPresenter.getViewState();
            if (verificationEmailView2 != null) {
                verificationEmailView2.showSendAgainButton(true);
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.auth.presentation.emailVerification.presenter.VerificationEmailPresenter$verifyAddEmail$1", f = "VerificationEmailPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class j extends pg8 implements bm3<i57<? extends gw2>, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public j(e02<? super j> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            j jVar = VerificationEmailPresenter.this.new j(e02Var);
            jVar.l = obj;
            return jVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(i57<? extends gw2> i57Var, e02<? super j59> e02Var) {
            return ((j) create(i57Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            i57 i57Var = (i57) this.l;
            boolean z = i57Var instanceof i57.a;
            VerificationEmailPresenter verificationEmailPresenter = VerificationEmailPresenter.this;
            if (z) {
                VerificationEmailView verificationEmailView = (VerificationEmailView) verificationEmailPresenter.getViewState();
                if (verificationEmailView != null) {
                    verificationEmailView.dismissLoadingDialog();
                }
                VerificationEmailView verificationEmailView2 = (VerificationEmailView) verificationEmailPresenter.getViewState();
                if (verificationEmailView2 != null) {
                    verificationEmailView2.showUnknownError();
                }
            } else if (aa4.e(i57Var, i57.b.a)) {
                VerificationEmailView verificationEmailView3 = (VerificationEmailView) verificationEmailPresenter.getViewState();
                if (verificationEmailView3 != null) {
                    verificationEmailView3.showLoadingDialog();
                }
            } else if (i57Var instanceof i57.c) {
                VerificationEmailView verificationEmailView4 = (VerificationEmailView) verificationEmailPresenter.getViewState();
                if (verificationEmailView4 != null) {
                    verificationEmailView4.dismissLoadingDialog();
                }
                verificationEmailPresenter.checkAddEmailVerificationResult((gw2) ((i57.c) i57Var).a);
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.auth.presentation.emailVerification.presenter.VerificationEmailPresenter$verifySignIn$1", f = "VerificationEmailPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class k extends pg8 implements bm3<i57<? extends j3>, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public k(e02<? super k> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            k kVar = VerificationEmailPresenter.this.new k(e02Var);
            kVar.l = obj;
            return kVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(i57<? extends j3> i57Var, e02<? super j59> e02Var) {
            return ((k) create(i57Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            VerificationEmailPresenter.this.checkSignInVerificationResult((i57) this.l);
            return j59.a;
        }
    }

    public VerificationEmailPresenter(String str, uf3 uf3Var, jw2 jw2Var, gx7 gx7Var, cx7 cx7Var, aw1 aw1Var, z8 z8Var) {
        str.getClass();
        uf3Var.getClass();
        jw2Var.getClass();
        gx7Var.getClass();
        cx7Var.getClass();
        aw1Var.getClass();
        z8Var.getClass();
        this.email = str;
        this.flowRouter = uf3Var;
        this.emailVerificationReason = jw2Var;
        this.signInRetryUseCase = gx7Var;
        this.signInConfirmInteractor = cx7Var;
        this.confirmEmailUseCase = aw1Var;
        this.addEmailUseCase = z8Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void checkAddEmailVerificationResult(gw2 gw2Var) {
        VerificationEmailView verificationEmailView;
        if (aa4.e(gw2Var, gw2.a.a)) {
            VerificationEmailView verificationEmailView2 = (VerificationEmailView) getViewState();
            if (verificationEmailView2 != null) {
                verificationEmailView2.showEmailCodeSendError();
                return;
            }
            return;
        }
        if (aa4.e(gw2Var, gw2.b.a)) {
            VerificationEmailView verificationEmailView3 = (VerificationEmailView) getViewState();
            if (verificationEmailView3 != null) {
                verificationEmailView3.showEmailPlacedError();
                return;
            }
            return;
        }
        if (!(gw2Var instanceof gw2.c)) {
            if (!aa4.e(gw2Var, gw2.d.a) || (verificationEmailView = (VerificationEmailView) getViewState()) == null) {
                return;
            }
            verificationEmailView.showUnknownError();
            return;
        }
        VerificationEmailView verificationEmailView4 = (VerificationEmailView) getViewState();
        if (verificationEmailView4 != null) {
            verificationEmailView4.showEmailAddedBottomSheet();
        }
        this.flowRouter.i();
        this.flowRouter.k(Boolean.TRUE, "add_email_key");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void checkSignInVerificationResult(i57<j3> i57Var) {
        if (i57Var instanceof i57.a) {
            VerificationEmailView verificationEmailView = (VerificationEmailView) getViewState();
            if (verificationEmailView != null) {
                verificationEmailView.dismissLoadingDialog();
            }
            VerificationEmailView verificationEmailView2 = (VerificationEmailView) getViewState();
            if (verificationEmailView2 != null) {
                verificationEmailView2.showUnknownError();
                return;
            }
            return;
        }
        if (aa4.e(i57Var, i57.b.a)) {
            VerificationEmailView verificationEmailView3 = (VerificationEmailView) getViewState();
            if (verificationEmailView3 != null) {
                verificationEmailView3.showLoadingDialog();
                return;
            }
            return;
        }
        if (i57Var instanceof i57.c) {
            VerificationEmailView verificationEmailView4 = (VerificationEmailView) getViewState();
            if (verificationEmailView4 != null) {
                verificationEmailView4.dismissLoadingDialog();
            }
            this.flowRouter.i();
            this.flowRouter.k(ox.Login, "auth_verification_result");
        }
    }

    private final void retryAddingEmail() {
        av0.c(getPresenterScope(), null, null, new c(null), 3);
    }

    private final void retrySignIn() {
        launchInPresenter(new df3(this.signInRetryUseCase.a(dw1.EMAIL), new d(null)));
    }

    private final void startTimer() {
        launchInPresenter(new be3(new df3(new ce3(new tb7(new f(2, null)), new g(null)), new h(null)), new i(null)));
    }

    private final void verifyAddEmail(String str) {
        aw1 aw1Var = this.confirmEmailUseCase;
        String str2 = this.email;
        aw1Var.getClass();
        str2.getClass();
        str.getClass();
        launchInPresenter(new df3(s57.a(new tb7(new zv1(aw1Var, str2, str, null))), new j(null)));
    }

    private final void verifySignIn(String str) {
        launchInPresenter(new df3(cx7.a(this.signInConfirmInteractor, null, am2.EMAIL, str, 1), new k(null)));
    }

    public final void onBackClicked() {
        this.flowRouter.c();
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        VerificationEmailView verificationEmailView = (VerificationEmailView) getViewState();
        if (verificationEmailView != null) {
            verificationEmailView.setEmailTyped(this.email);
        }
        startTimer();
    }

    @Override // g06.a
    public void onOtpCodeChange(String str) {
        str.getClass();
        this.otpCode = str;
    }

    @Override // g06.a
    public void onOtpCodeReady(String str) {
        str.getClass();
        this.otpCode = str;
    }

    public final void onSendCodeAgainAgainClicked() {
        startTimer();
        VerificationEmailView verificationEmailView = (VerificationEmailView) getViewState();
        if (verificationEmailView != null) {
            verificationEmailView.showSendAgainButton(false);
        }
        int i2 = b.a[this.emailVerificationReason.ordinal()];
        if (i2 == 1) {
            retrySignIn();
        } else {
            if (i2 != 2) {
                return;
            }
            retryAddingEmail();
        }
    }

    public final void onVerifyClicked() {
        String str = this.otpCode;
        if (str == null || str.length() != 4) {
            return;
        }
        int i2 = b.a[this.emailVerificationReason.ordinal()];
        if (i2 == 1) {
            verifySignIn(str);
        } else {
            if (i2 != 2) {
                return;
            }
            verifyAddEmail(str);
        }
    }

    public final void showOtpError() {
        VerificationEmailView verificationEmailView = (VerificationEmailView) getViewState();
        if (verificationEmailView != null) {
            verificationEmailView.vibrateError();
        }
        av0.c(getPresenterScope(), null, null, new e(null), 3);
    }
}
