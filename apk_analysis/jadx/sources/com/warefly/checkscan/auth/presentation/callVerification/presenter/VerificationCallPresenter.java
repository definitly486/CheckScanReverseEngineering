package com.warefly.checkscan.auth.presentation.callVerification.presenter;

import androidx.media3.extractor.ts.TsExtractor;
import com.warefly.checkscan.auth.presentation.callVerification.view.VerificationCallView;
import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import defpackage.a32;
import defpackage.aa4;
import defpackage.ah;
import defpackage.aq8;
import defpackage.av0;
import defpackage.bd2;
import defpackage.be3;
import defpackage.bm3;
import defpackage.ce3;
import defpackage.df3;
import defpackage.dm3;
import defpackage.dw1;
import defpackage.e02;
import defpackage.g06;
import defpackage.g17;
import defpackage.gx7;
import defpackage.i57;
import defpackage.id3;
import defpackage.j59;
import defpackage.kd;
import defpackage.lx7;
import defpackage.mx;
import defpackage.mx7;
import defpackage.o76;
import defpackage.ox;
import defpackage.pg8;
import defpackage.qe;
import defpackage.r57;
import defpackage.s57;
import defpackage.tb7;
import defpackage.uf3;
import defpackage.y22;
import defpackage.yk2;

/* JADX INFO: loaded from: classes.dex */
public final class VerificationCallPresenter extends BasePresenter<VerificationCallView> implements g06.a {
    public static final a Companion = new a();
    private static final long ONE_MINUTE = 120000;
    private final qe analyticsRepository;
    private final uf3 flowRouter;
    private final String phone;
    private final gx7 signInRetryUseCase;
    private final mx7 signUpConfirmInteractor;

    public static final class a {
    }

    @bd2(c = "com.warefly.checkscan.auth.presentation.callVerification.presenter.VerificationCallPresenter$onCallAgainAgainClicked$1", f = "VerificationCallPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class b extends pg8 implements bm3<i57<? extends Object>, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public b(e02<? super b> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            b bVar = VerificationCallPresenter.this.new b(e02Var);
            bVar.l = obj;
            return bVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(i57<? extends Object> i57Var, e02<? super j59> e02Var) {
            return ((b) create(i57Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            VerificationCallView verificationCallView;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            if ((((i57) this.l) instanceof i57.a) && (verificationCallView = (VerificationCallView) VerificationCallPresenter.this.getViewState()) != null) {
                verificationCallView.showUnknownError();
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.auth.presentation.callVerification.presenter.VerificationCallPresenter$onOtpCodeReady$1", f = "VerificationCallPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class c extends pg8 implements bm3<i57<? extends aq8>, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public c(e02<? super c> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            c cVar = VerificationCallPresenter.this.new c(e02Var);
            cVar.l = obj;
            return cVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(i57<? extends aq8> i57Var, e02<? super j59> e02Var) {
            return ((c) create(i57Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            i57 i57Var = (i57) this.l;
            boolean z = i57Var instanceof i57.a;
            VerificationCallPresenter verificationCallPresenter = VerificationCallPresenter.this;
            if (z) {
                VerificationCallView verificationCallView = (VerificationCallView) verificationCallPresenter.getViewState();
                if (verificationCallView != null) {
                    verificationCallView.dismissLoadingDialog();
                }
                VerificationCallView verificationCallView2 = (VerificationCallView) verificationCallPresenter.getViewState();
                if (verificationCallView2 != null) {
                    verificationCallView2.showUnknownError();
                }
            } else if (aa4.e(i57Var, i57.b.a)) {
                VerificationCallView verificationCallView3 = (VerificationCallView) verificationCallPresenter.getViewState();
                if (verificationCallView3 != null) {
                    verificationCallView3.showLoadingDialog();
                }
            } else if (i57Var instanceof i57.c) {
                verificationCallPresenter.sendUserRegistered();
                VerificationCallView verificationCallView4 = (VerificationCallView) verificationCallPresenter.getViewState();
                if (verificationCallView4 != null) {
                    verificationCallView4.dismissLoadingDialog();
                }
                verificationCallPresenter.flowRouter.i();
                verificationCallPresenter.flowRouter.k(ox.SignUp, "auth_verification_result");
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.auth.presentation.callVerification.presenter.VerificationCallPresenter$showOtpError$1", f = "VerificationCallPresenter.kt", l = {TsExtractor.TS_STREAM_TYPE_DVBSUBS}, m = "invokeSuspend")
    public static final class d extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        public int l;

        public d(e02<? super d> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return VerificationCallPresenter.this.new d(e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((d) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.l;
            VerificationCallPresenter verificationCallPresenter = VerificationCallPresenter.this;
            if (i == 0) {
                r57.b(obj);
                VerificationCallView verificationCallView = (VerificationCallView) verificationCallPresenter.getViewState();
                if (verificationCallView != null) {
                    verificationCallView.showOtpError(true);
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
            VerificationCallView verificationCallView2 = (VerificationCallView) verificationCallPresenter.getViewState();
            if (verificationCallView2 != null) {
                verificationCallView2.showOtpError(false);
            }
            VerificationCallView verificationCallView3 = (VerificationCallView) verificationCallPresenter.getViewState();
            if (verificationCallView3 != null) {
                verificationCallView3.clearOtp();
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.auth.presentation.callVerification.presenter.VerificationCallPresenter$startTimer$1", f = "VerificationCallPresenter.kt", l = {49, 50}, m = "invokeSuspend")
    public static final class e extends pg8 implements bm3<id3<? super Long>, e02<? super j59>, Object> {
        public long l;
        public int m;
        public /* synthetic */ Object n;

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            e eVar = new e(2, e02Var);
            eVar.n = obj;
            return eVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(id3<? super Long> id3Var, e02<? super j59> e02Var) {
            return ((e) create(id3Var, e02Var)).invokeSuspend(j59.a);
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
            throw new UnsupportedOperationException("Method not decompiled: com.warefly.checkscan.auth.presentation.callVerification.presenter.VerificationCallPresenter.e.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @bd2(c = "com.warefly.checkscan.auth.presentation.callVerification.presenter.VerificationCallPresenter$startTimer$2", f = "VerificationCallPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class f extends pg8 implements bm3<id3<? super Long>, e02<? super j59>, Object> {
        public f(e02<? super f> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return VerificationCallPresenter.this.new f(e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(id3<? super Long> id3Var, e02<? super j59> e02Var) {
            return ((f) create(id3Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            VerificationCallPresenter verificationCallPresenter = VerificationCallPresenter.this;
            VerificationCallView verificationCallView = (VerificationCallView) verificationCallPresenter.getViewState();
            if (verificationCallView != null) {
                verificationCallView.showTimer(true);
            }
            VerificationCallView verificationCallView2 = (VerificationCallView) verificationCallPresenter.getViewState();
            if (verificationCallView2 != null) {
                verificationCallView2.showTrySmsButton(false);
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.auth.presentation.callVerification.presenter.VerificationCallPresenter$startTimer$3", f = "VerificationCallPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class g extends pg8 implements bm3<Long, e02<? super j59>, Object> {
        public /* synthetic */ long l;

        public g(e02<? super g> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            g gVar = VerificationCallPresenter.this.new g(e02Var);
            gVar.l = ((Number) obj).longValue();
            return gVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(Long l, e02<? super j59> e02Var) {
            return ((g) create(Long.valueOf(l.longValue()), e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            long j = this.l;
            VerificationCallView verificationCallView = (VerificationCallView) VerificationCallPresenter.this.getViewState();
            if (verificationCallView != null) {
                verificationCallView.setTimer(j);
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.auth.presentation.callVerification.presenter.VerificationCallPresenter$startTimer$4", f = "VerificationCallPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class h extends pg8 implements dm3<id3<? super Long>, Throwable, e02<? super j59>, Object> {
        public h(e02<? super h> e02Var) {
            super(3, e02Var);
        }

        @Override // defpackage.dm3
        public final Object invoke(id3<? super Long> id3Var, Throwable th, e02<? super j59> e02Var) {
            return VerificationCallPresenter.this.new h(e02Var).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            VerificationCallPresenter verificationCallPresenter = VerificationCallPresenter.this;
            VerificationCallView verificationCallView = (VerificationCallView) verificationCallPresenter.getViewState();
            if (verificationCallView != null) {
                verificationCallView.showTimer(false);
            }
            VerificationCallView verificationCallView2 = (VerificationCallView) verificationCallPresenter.getViewState();
            if (verificationCallView2 != null) {
                verificationCallView2.showSendAgainButton(true);
            }
            VerificationCallView verificationCallView3 = (VerificationCallView) verificationCallPresenter.getViewState();
            if (verificationCallView3 != null) {
                verificationCallView3.showTrySmsButton(true);
            }
            return j59.a;
        }
    }

    public VerificationCallPresenter(String str, uf3 uf3Var, mx7 mx7Var, gx7 gx7Var, qe qeVar) {
        str.getClass();
        uf3Var.getClass();
        mx7Var.getClass();
        gx7Var.getClass();
        qeVar.getClass();
        this.phone = str;
        this.flowRouter = uf3Var;
        this.signUpConfirmInteractor = mx7Var;
        this.signInRetryUseCase = gx7Var;
        this.analyticsRepository = qeVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void sendUserRegistered() {
        kd.a.k.C0232a.e.a();
        this.analyticsRepository.f();
    }

    private final void startTimer() {
        launchInPresenter(new be3(new df3(new ce3(new tb7(new e(2, null)), new f(null)), new g(null)), new h(null)));
    }

    public final void onBackClicked() {
        this.flowRouter.c();
    }

    public final void onCallAgainAgainClicked() {
        startTimer();
        VerificationCallView verificationCallView = (VerificationCallView) getViewState();
        if (verificationCallView != null) {
            verificationCallView.showSendAgainButton(false);
        }
        launchInPresenter(new df3(this.signInRetryUseCase.a(dw1.CALL), new b(null)));
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        VerificationCallView verificationCallView = (VerificationCallView) getViewState();
        if (verificationCallView != null) {
            g17 g17Var = o76.a;
            String str = this.phone;
            str.getClass();
            verificationCallView.setPhoneTyped(o76.a.g("$1 $2 $3 $4 $5", str));
        }
        startTimer();
    }

    @Override // g06.a
    public void onOtpCodeChange(String str) {
        str.getClass();
    }

    @Override // g06.a
    public void onOtpCodeReady(String str) {
        str.getClass();
        mx7 mx7Var = this.signUpConfirmInteractor;
        String str2 = this.phone;
        mx7Var.getClass();
        str2.getClass();
        launchInPresenter(new df3(s57.a(new tb7(new lx7(mx7Var, str2, str, null))), new c(null)));
    }

    public final void onTrySmsVerificationClicked() {
        this.flowRouter.h(new mx(this.phone));
    }

    public final void showOtpError() {
        VerificationCallView verificationCallView = (VerificationCallView) getViewState();
        if (verificationCallView != null) {
            verificationCallView.vibrateError();
        }
        av0.c(getPresenterScope(), null, null, new d(null), 3);
    }
}
