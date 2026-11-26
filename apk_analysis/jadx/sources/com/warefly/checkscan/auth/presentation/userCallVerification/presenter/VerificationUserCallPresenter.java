package com.warefly.checkscan.auth.presentation.userCallVerification.presenter;

import com.warefly.checkscan.auth.presentation.userCallVerification.view.VerificationUserCallView;
import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import defpackage.a32;
import defpackage.aa4;
import defpackage.au2;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.ce3;
import defpackage.cg3;
import defpackage.cu0;
import defpackage.cx7;
import defpackage.df3;
import defpackage.dg3;
import defpackage.ds5;
import defpackage.dw1;
import defpackage.e02;
import defpackage.es5;
import defpackage.f02;
import defpackage.fs5;
import defpackage.g17;
import defpackage.gs5;
import defpackage.gx2;
import defpackage.gx7;
import defpackage.hd3;
import defpackage.i57;
import defpackage.id3;
import defpackage.j3;
import defpackage.j59;
import defpackage.jw2;
import defpackage.kx;
import defpackage.m91;
import defpackage.mb4;
import defpackage.nl3;
import defpackage.o76;
import defpackage.ox;
import defpackage.pg8;
import defpackage.r57;
import defpackage.se3;
import defpackage.sr;
import defpackage.tb7;
import defpackage.uf3;
import defpackage.wt2;
import defpackage.yt2;

/* JADX INFO: loaded from: classes.dex */
public final class VerificationUserCallPresenter extends BasePresenter<VerificationUserCallView> {
    private final String callPhone;
    private final String email;
    private final uf3 flowRouter;
    private final gs5 observeCallVerifiedUseCase;
    private final String phone;
    private mb4 pollingJob;
    private final cx7 signInConfirmInteractor;
    private final gx7 signInRetryUseCase;

    public static final class a implements hd3<i57<? extends j3>> {
        public final /* synthetic */ m91 b;
        public final /* synthetic */ VerificationUserCallPresenter c;

        /* JADX INFO: renamed from: com.warefly.checkscan.auth.presentation.userCallVerification.presenter.VerificationUserCallPresenter$a$a, reason: collision with other inner class name */
        public static final class C0156a<T> implements id3 {
            public final /* synthetic */ id3 b;
            public final /* synthetic */ VerificationUserCallPresenter c;

            /* JADX INFO: renamed from: com.warefly.checkscan.auth.presentation.userCallVerification.presenter.VerificationUserCallPresenter$a$a$a, reason: collision with other inner class name */
            @bd2(c = "com.warefly.checkscan.auth.presentation.userCallVerification.presenter.VerificationUserCallPresenter$onCallClicked$$inlined$map$1$2", f = "VerificationUserCallPresenter.kt", l = {218, 217}, m = "emit")
            public static final class C0157a extends f02 {
                public id3 l;
                public /* synthetic */ Object m;
                public int n;

                public C0157a(e02 e02Var) {
                    super(e02Var);
                }

                @Override // defpackage.cd0
                public final Object invokeSuspend(Object obj) {
                    this.m = obj;
                    this.n |= Integer.MIN_VALUE;
                    return C0156a.this.emit(null, this);
                }
            }

            public C0156a(id3 id3Var, VerificationUserCallPresenter verificationUserCallPresenter) {
                this.b = id3Var;
                this.c = verificationUserCallPresenter;
            }

            /* JADX WARN: Code duplicated, block: B:7:0x0013  */
            /* JADX WARN: Code restructure failed: missing block: B:20:0x0060, code lost:
            
                if (r7.emit(r9, r8) == r0) goto L21;
             */
            @Override // defpackage.id3
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object emit(java.lang.Object r8, defpackage.e02 r9) {
                /*
                    r7 = this;
                    boolean r8 = r9 instanceof com.warefly.checkscan.auth.presentation.userCallVerification.presenter.VerificationUserCallPresenter.a.C0156a.C0157a
                    if (r8 == 0) goto L13
                    r8 = r9
                    com.warefly.checkscan.auth.presentation.userCallVerification.presenter.VerificationUserCallPresenter$a$a$a r8 = (com.warefly.checkscan.auth.presentation.userCallVerification.presenter.VerificationUserCallPresenter.a.C0156a.C0157a) r8
                    int r0 = r8.n
                    r1 = -2147483648(0xffffffff80000000, float:-0.0)
                    r2 = r0 & r1
                    if (r2 == 0) goto L13
                    int r0 = r0 - r1
                    r8.n = r0
                    goto L18
                L13:
                    com.warefly.checkscan.auth.presentation.userCallVerification.presenter.VerificationUserCallPresenter$a$a$a r8 = new com.warefly.checkscan.auth.presentation.userCallVerification.presenter.VerificationUserCallPresenter$a$a$a
                    r8.<init>(r9)
                L18:
                    java.lang.Object r9 = r8.m
                    a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
                    int r1 = r8.n
                    r2 = 0
                    r3 = 2
                    r4 = 1
                    if (r1 == 0) goto L37
                    if (r1 == r4) goto L31
                    if (r1 != r3) goto L2b
                    defpackage.r57.b(r9)
                    goto L63
                L2b:
                    java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
                    defpackage.ah.f(r7)
                    return r2
                L31:
                    id3 r7 = r8.l
                    defpackage.r57.b(r9)
                    goto L58
                L37:
                    defpackage.r57.b(r9)
                    com.warefly.checkscan.auth.presentation.userCallVerification.presenter.VerificationUserCallPresenter r9 = r7.c
                    cx7 r1 = com.warefly.checkscan.auth.presentation.userCallVerification.presenter.VerificationUserCallPresenter.access$getSignInConfirmInteractor$p(r9)
                    java.lang.String r9 = com.warefly.checkscan.auth.presentation.userCallVerification.presenter.VerificationUserCallPresenter.access$getPhone$p(r9)
                    am2 r5 = defpackage.am2.USER_CALL
                    r6 = 4
                    de3 r9 = defpackage.cx7.a(r1, r9, r5, r2, r6)
                    id3 r7 = r7.b
                    r8.l = r7
                    r8.n = r4
                    java.lang.Object r9 = defpackage.ue3.e(r9, r8)
                    if (r9 != r0) goto L58
                    goto L62
                L58:
                    r8.l = r2
                    r8.n = r3
                    java.lang.Object r7 = r7.emit(r9, r8)
                    if (r7 != r0) goto L63
                L62:
                    return r0
                L63:
                    j59 r7 = defpackage.j59.a
                    return r7
                */
                throw new UnsupportedOperationException("Method not decompiled: com.warefly.checkscan.auth.presentation.userCallVerification.presenter.VerificationUserCallPresenter.a.C0156a.emit(java.lang.Object, e02):java.lang.Object");
            }
        }

        public a(m91 m91Var, VerificationUserCallPresenter verificationUserCallPresenter) {
            this.b = m91Var;
            this.c = verificationUserCallPresenter;
        }

        @Override // defpackage.hd3
        public final Object collect(id3<? super i57<? extends j3>> id3Var, e02 e02Var) {
            Object objCollect = this.b.collect(new C0156a(id3Var, this.c), e02Var);
            return objCollect == a32.COROUTINE_SUSPENDED ? objCollect : j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.auth.presentation.userCallVerification.presenter.VerificationUserCallPresenter$onCallClicked$1", f = "VerificationUserCallPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class b extends pg8 implements nl3<e02<? super j59>, Object> {
        public b(e02<? super b> e02Var) {
            super(1, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(e02<?> e02Var) {
            return VerificationUserCallPresenter.this.new b(e02Var);
        }

        @Override // defpackage.nl3
        public final Object invoke(e02<? super j59> e02Var) {
            return ((b) create(e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            VerificationUserCallPresenter verificationUserCallPresenter = VerificationUserCallPresenter.this;
            VerificationUserCallView verificationUserCallView = (VerificationUserCallView) verificationUserCallPresenter.getViewState();
            if (verificationUserCallView != null) {
                verificationUserCallView.showLoadingButton(false);
            }
            VerificationUserCallView verificationUserCallView2 = (VerificationUserCallView) verificationUserCallPresenter.getViewState();
            if (verificationUserCallView2 != null) {
                verificationUserCallView2.showUnknownError();
            }
            mb4 pollingJob = verificationUserCallPresenter.getPollingJob();
            if (pollingJob != null) {
                pollingJob.cancel(null);
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.auth.presentation.userCallVerification.presenter.VerificationUserCallPresenter$onCallClicked$3", f = "VerificationUserCallPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class c extends pg8 implements bm3<i57<? extends j3>, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public c(e02<? super c> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            c cVar = VerificationUserCallPresenter.this.new c(e02Var);
            cVar.l = obj;
            return cVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(i57<? extends j3> i57Var, e02<? super j59> e02Var) {
            return ((c) create(i57Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            i57 i57Var = (i57) this.l;
            if (!(i57Var instanceof i57.a) && !aa4.e(i57Var, i57.b.a) && (i57Var instanceof i57.c)) {
                VerificationUserCallPresenter verificationUserCallPresenter = VerificationUserCallPresenter.this;
                verificationUserCallPresenter.flowRouter.i();
                verificationUserCallPresenter.flowRouter.k(ox.Login, "auth_verification_result");
                mb4 pollingJob = verificationUserCallPresenter.getPollingJob();
                if (pollingJob != null) {
                    pollingJob.cancel(null);
                }
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.auth.presentation.userCallVerification.presenter.VerificationUserCallPresenter$onTryEmailClicked$1", f = "VerificationUserCallPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class d extends pg8 implements bm3<i57<? extends Object>, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public d(e02<? super d> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            d dVar = VerificationUserCallPresenter.this.new d(e02Var);
            dVar.l = obj;
            return dVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(i57<? extends Object> i57Var, e02<? super j59> e02Var) {
            return ((d) create(i57Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            i57 i57Var = (i57) this.l;
            boolean z = i57Var instanceof i57.a;
            VerificationUserCallPresenter verificationUserCallPresenter = VerificationUserCallPresenter.this;
            if (z) {
                VerificationUserCallView verificationUserCallView = (VerificationUserCallView) verificationUserCallPresenter.getViewState();
                if (verificationUserCallView != null) {
                    verificationUserCallView.dismissLoadingDialog();
                }
                VerificationUserCallView verificationUserCallView2 = (VerificationUserCallView) verificationUserCallPresenter.getViewState();
                if (verificationUserCallView2 != null) {
                    verificationUserCallView2.showUnknownError();
                }
            } else if (aa4.e(i57Var, i57.b.a)) {
                VerificationUserCallView verificationUserCallView3 = (VerificationUserCallView) verificationUserCallPresenter.getViewState();
                if (verificationUserCallView3 != null) {
                    verificationUserCallView3.showLoadingDialog();
                }
            } else if (i57Var instanceof i57.c) {
                VerificationUserCallView verificationUserCallView4 = (VerificationUserCallView) verificationUserCallPresenter.getViewState();
                if (verificationUserCallView4 != null) {
                    verificationUserCallView4.dismissLoadingDialog();
                }
                verificationUserCallPresenter.flowRouter.j(new kx(verificationUserCallPresenter.email, jw2.SignIn));
            }
            return j59.a;
        }
    }

    public VerificationUserCallPresenter(String str, String str2, String str3, uf3 uf3Var, gx7 gx7Var, cx7 cx7Var, gs5 gs5Var) {
        str.getClass();
        str2.getClass();
        uf3Var.getClass();
        gx7Var.getClass();
        cx7Var.getClass();
        gs5Var.getClass();
        this.phone = str;
        this.callPhone = str2;
        this.email = str3;
        this.flowRouter = uf3Var;
        this.signInRetryUseCase = gx7Var;
        this.signInConfirmInteractor = cx7Var;
        this.observeCallVerifiedUseCase = gs5Var;
    }

    public final mb4 getPollingJob() {
        return this.pollingJob;
    }

    public final void onBackClicked() {
        this.flowRouter.c();
    }

    public final void onCallClicked() {
        VerificationUserCallView verificationUserCallView = (VerificationUserCallView) getViewState();
        if (verificationUserCallView != null) {
            verificationUserCallView.showLoadingButton(true);
        }
        VerificationUserCallView verificationUserCallView2 = (VerificationUserCallView) getViewState();
        if (verificationUserCallView2 != null) {
            verificationUserCallView2.openPhoneCallApp(this.callPhone);
        }
        mb4 mb4Var = this.pollingJob;
        if (mb4Var != null) {
            mb4Var.cancel(null);
        }
        b bVar = new b(null);
        wt2.a aVar = wt2.c;
        tb7 tb7Var = new tb7(new cg3(yt2.e(5, au2.MINUTES), new dg3(1, null), yt2.e(10, au2.SECONDS), bVar, null));
        gs5 gs5Var = this.observeCallVerifiedUseCase;
        hd3[] hd3VarArr = {tb7Var, new es5(new ds5(new ce3(gs5Var.a.c(), new fs5(gs5Var, null))))};
        int i = se3.a;
        this.pollingJob = launchInPresenter(new df3(new a(new m91(new sr(hd3VarArr), gx2.b, -2, cu0.SUSPEND), this), new c(null)));
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        VerificationUserCallView verificationUserCallView = (VerificationUserCallView) getViewState();
        if (verificationUserCallView != null) {
            g17 g17Var = o76.a;
            String str = this.phone;
            str.getClass();
            StringBuilder sb = new StringBuilder();
            int length = str.length();
            for (int i = 0; i < length; i++) {
                char cCharAt = str.charAt(i);
                if (Character.isDigit(cCharAt)) {
                    sb.append(cCharAt);
                }
            }
            String string = sb.toString();
            if (string.length() == 11) {
                str = "+" + string.charAt(0) + " " + string.charAt(1) + "** *** " + string.charAt(7) + string.charAt(8) + " " + string.charAt(9) + string.charAt(10);
            }
            g17 g17Var2 = o76.a;
            String str2 = this.callPhone;
            str2.getClass();
            verificationUserCallView.setDescription(str, o76.a.g("$1 ($2) $3 $4 $5", str2));
        }
        VerificationUserCallView verificationUserCallView2 = (VerificationUserCallView) getViewState();
        if (verificationUserCallView2 != null) {
            verificationUserCallView2.showEmailMethod(this.email != null);
        }
    }

    public final void onTryEmailClicked() {
        if (this.email != null) {
            VerificationUserCallView verificationUserCallView = (VerificationUserCallView) getViewState();
            if (verificationUserCallView != null) {
                verificationUserCallView.showLoadingButton(false);
            }
            mb4 mb4Var = this.pollingJob;
            if (mb4Var != null) {
                mb4Var.cancel(null);
            }
            launchInPresenter(new df3(this.signInRetryUseCase.a(dw1.EMAIL), new d(null)));
        }
    }

    public final void setPollingJob(mb4 mb4Var) {
        this.pollingJob = mb4Var;
    }
}
