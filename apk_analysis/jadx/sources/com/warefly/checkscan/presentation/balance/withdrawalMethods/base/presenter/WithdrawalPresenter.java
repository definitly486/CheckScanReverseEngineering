package com.warefly.checkscan.presentation.balance.withdrawalMethods.base.presenter;

import androidx.media3.extractor.ts.TsExtractor;
import androidx.media3.muxer.WebmConstants;
import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.balance.withdrawalMethods.base.view.WithdrawalView;
import defpackage.a32;
import defpackage.a40;
import defpackage.aa4;
import defpackage.ah;
import defpackage.au2;
import defpackage.b40;
import defpackage.bd2;
import defpackage.be3;
import defpackage.bm3;
import defpackage.ce3;
import defpackage.de3;
import defpackage.df3;
import defpackage.dm3;
import defpackage.e02;
import defpackage.gh4;
import defpackage.hn8;
import defpackage.i57;
import defpackage.id3;
import defpackage.iw2;
import defpackage.j59;
import defpackage.jf6;
import defpackage.kk1;
import defpackage.lk1;
import defpackage.m13;
import defpackage.mb4;
import defpackage.md3;
import defpackage.mk1;
import defpackage.nl3;
import defpackage.no8;
import defpackage.pg8;
import defpackage.qm3;
import defpackage.r57;
import defpackage.s57;
import defpackage.tb7;
import defpackage.wi9;
import defpackage.wt2;
import defpackage.xd3;
import defpackage.y22;
import defpackage.yk2;
import defpackage.yt2;
import defpackage.yv8;
import kotlinx.coroutines.TimeoutCancellationException;

/* JADX INFO: loaded from: classes5.dex */
public abstract class WithdrawalPresenter<V extends WithdrawalView> extends BasePresenter<V> {
    private static final long BUTTON_EVENT_REFRESH_TIMEOUT;
    private static final long BUTTON_EVENT_TIMEOUT;
    private static final a Companion = new a();
    private final b40 balanceInteractor;
    private mb4 buttonEventJob;
    private final mk1 claimTaskRewardUseCase;
    private final iw2 emailValidator;
    private wi9 eventAfterAlert;
    private final jf6 preferencesRepository;

    public static final class a {
    }

    @bd2(c = "com.warefly.checkscan.presentation.balance.withdrawalMethods.base.presenter.WithdrawalPresenter$onClaimRewardClicked$1", f = "WithdrawalPresenter.kt", l = {TsExtractor.TS_STREAM_TYPE_AC3}, m = "invokeSuspend")
    public static final class b extends pg8 implements bm3<i57<? extends kk1>, e02<? super j59>, Object> {
        public int l;
        public /* synthetic */ Object m;
        public final /* synthetic */ WithdrawalPresenter<V> n;
        public final /* synthetic */ int o;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(WithdrawalPresenter<V> withdrawalPresenter, int i, e02<? super b> e02Var) {
            super(2, e02Var);
            this.n = withdrawalPresenter;
            this.o = i;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            b bVar = new b(this.n, this.o, e02Var);
            bVar.m = obj;
            return bVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(i57<? extends kk1> i57Var, e02<? super j59> e02Var) {
            return ((b) create(i57Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.l;
            if (i == 0) {
                r57.b(obj);
                i57 i57Var = (i57) this.m;
                boolean z = i57Var instanceof i57.a;
                WithdrawalPresenter<V> withdrawalPresenter = this.n;
                if (z) {
                    V viewState = withdrawalPresenter.getViewState();
                    if (viewState != null) {
                        viewState.handleLoading(false);
                    }
                    V viewState2 = withdrawalPresenter.getViewState();
                    if (viewState2 != null) {
                        viewState2.showSomethingWrong();
                    }
                } else if (aa4.e(i57Var, i57.b.a)) {
                    V viewState3 = withdrawalPresenter.getViewState();
                    if (viewState3 != null) {
                        viewState3.handleLoading(true);
                    }
                } else if (i57Var instanceof i57.c) {
                    V viewState4 = withdrawalPresenter.getViewState();
                    if (viewState4 != null) {
                        viewState4.handleLoading(false);
                    }
                    kk1 kk1Var = (kk1) ((i57.c) i57Var).a;
                    int i2 = this.o;
                    if (kk1Var != null) {
                        withdrawalPresenter.handleClaimResult(i2, kk1Var);
                    }
                    wi9.a aVar = new wi9.a(i2);
                    this.l = 1;
                    if (withdrawalPresenter.onWithdrawEventHandled(aVar, this) == a32Var) {
                        return a32Var;
                    }
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

    @bd2(c = "com.warefly.checkscan.presentation.balance.withdrawalMethods.base.presenter.WithdrawalPresenter$onTransferCardClicked$1", f = "WithdrawalPresenter.kt", l = {WebmConstants.MkvEbmlElement.PIXEL_HEIGHT}, m = "invokeSuspend")
    public static final class c extends pg8 implements bm3<i57<? extends a40>, e02<? super j59>, Object> {
        public int l;
        public /* synthetic */ Object m;
        public final /* synthetic */ WithdrawalPresenter<V> n;
        public final /* synthetic */ wi9 o;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(WithdrawalPresenter<V> withdrawalPresenter, wi9 wi9Var, e02<? super c> e02Var) {
            super(2, e02Var);
            this.n = withdrawalPresenter;
            this.o = wi9Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            c cVar = new c(this.n, this.o, e02Var);
            cVar.m = obj;
            return cVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(i57<? extends a40> i57Var, e02<? super j59> e02Var) {
            return ((c) create(i57Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.l;
            if (i == 0) {
                r57.b(obj);
                i57 i57Var = (i57) this.m;
                boolean z = i57Var instanceof i57.a;
                WithdrawalPresenter<V> withdrawalPresenter = this.n;
                if (z) {
                    V viewState = withdrawalPresenter.getViewState();
                    if (viewState != null) {
                        viewState.showSomethingWrong();
                    }
                } else if (!aa4.e(i57Var, i57.b.a) && (i57Var instanceof i57.c)) {
                    V viewState2 = withdrawalPresenter.getViewState();
                    if (viewState2 != null) {
                        viewState2.showInfoDialog((a40) ((i57.c) i57Var).a);
                    }
                    this.l = 1;
                    if (withdrawalPresenter.onWithdrawEventHandled(this.o, this) == a32Var) {
                        return a32Var;
                    }
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

    @bd2(c = "com.warefly.checkscan.presentation.balance.withdrawalMethods.base.presenter.WithdrawalPresenter$onTransferCardClicked$2", f = "WithdrawalPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class d extends pg8 implements dm3<id3<? super i57<? extends a40>>, Throwable, e02<? super j59>, Object> {
        public final /* synthetic */ WithdrawalPresenter<V> l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(WithdrawalPresenter<V> withdrawalPresenter, e02<? super d> e02Var) {
            super(3, e02Var);
            this.l = withdrawalPresenter;
        }

        @Override // defpackage.dm3
        public final Object invoke(id3<? super i57<? extends a40>> id3Var, Throwable th, e02<? super j59> e02Var) {
            return new d(this.l, e02Var).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            V viewState = this.l.getViewState();
            if (viewState != null) {
                viewState.handleLoading(false);
            }
            return j59.a;
        }
    }

    public static final class e extends gh4 implements nl3<Throwable, j59> {
        public final /* synthetic */ WithdrawalPresenter<V> f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(WithdrawalPresenter<V> withdrawalPresenter) {
            super(1);
            this.f = withdrawalPresenter;
        }

        @Override // defpackage.nl3
        public final j59 invoke(Throwable th) {
            th.getClass();
            V viewState = this.f.getViewState();
            if (viewState != null) {
                viewState.showSomethingWrong();
            }
            return j59.a;
        }
    }

    public static final /* synthetic */ class f extends qm3 implements nl3<wi9, j59> {
        @Override // defpackage.nl3
        public final j59 invoke(wi9 wi9Var) {
            wi9 wi9Var2 = wi9Var;
            wi9Var2.getClass();
            ((WithdrawalPresenter) this.receiver).onWithdrawEvent(wi9Var2);
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.balance.withdrawalMethods.base.presenter.WithdrawalPresenter$refreshAfterButtonEvent$2", f = "WithdrawalPresenter.kt", l = {WebmConstants.MkvEbmlElement.BLOCK_GROUP, 162}, m = "invokeSuspend")
    public static final class g extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        public int l;
        public final /* synthetic */ WithdrawalPresenter<V> m;
        public final /* synthetic */ wi9 n;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(WithdrawalPresenter<V> withdrawalPresenter, wi9 wi9Var, e02<? super g> e02Var) {
            super(2, e02Var);
            this.m = withdrawalPresenter;
            this.n = wi9Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new g(this.m, this.n, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((g) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:15:0x0036, code lost:
        
            if (r2.onWithdrawEventHandled(r6, r5) == r0) goto L16;
         */
        @Override // defpackage.cd0
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r6) {
            /*
                r5 = this;
                a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
                int r1 = r5.l
                com.warefly.checkscan.presentation.balance.withdrawalMethods.base.presenter.WithdrawalPresenter<V extends com.warefly.checkscan.presentation.balance.withdrawalMethods.base.view.WithdrawalView> r2 = r5.m
                r3 = 2
                r4 = 1
                if (r1 == 0) goto L1d
                if (r1 == r4) goto L19
                if (r1 != r3) goto L12
                defpackage.r57.b(r6)     // Catch: java.lang.Exception -> L39 java.util.concurrent.CancellationException -> L5f
                goto L5c
            L12:
                java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.ah.f(r5)
                r5 = 0
                return r5
            L19:
                defpackage.r57.b(r6)
                goto L2e
            L1d:
                defpackage.r57.b(r6)
                b40 r6 = com.warefly.checkscan.presentation.balance.withdrawalMethods.base.presenter.WithdrawalPresenter.access$getBalanceInteractor$p(r2)
                r5.l = r4
                r1 = 3
                java.lang.Object r6 = defpackage.b40.d(r1, r6, r5)
                if (r6 != r0) goto L2e
                goto L38
            L2e:
                wi9 r6 = r5.n     // Catch: java.lang.Exception -> L39 java.util.concurrent.CancellationException -> L5f
                r5.l = r3     // Catch: java.lang.Exception -> L39 java.util.concurrent.CancellationException -> L5f
                java.lang.Object r5 = r2.onWithdrawEventHandled(r6, r5)     // Catch: java.lang.Exception -> L39 java.util.concurrent.CancellationException -> L5f
                if (r5 != r0) goto L5c
            L38:
                return r0
            L39:
                r5 = move-exception
                com.warefly.checkscan.component.logger.CrashlyticsException$Flow r6 = new com.warefly.checkscan.component.logger.CrashlyticsException$Flow
                java.lang.String r0 = r5.getLocalizedMessage()
                if (r0 != 0) goto L4a
                java.lang.String r0 = r5.getMessage()
                if (r0 != 0) goto L4a
                java.lang.String r0 = "unknown error"
            L4a:
                java.lang.String r5 = "refreshAfterButtonEvent, "
                java.lang.String r5 = r5.concat(r0)
                java.lang.String r0 = "Flow: "
                java.lang.String r5 = r0.concat(r5)
                r6.<init>(r5)
                defpackage.s0.d(r6)
            L5c:
                j59 r5 = defpackage.j59.a
                return r5
            L5f:
                r5 = move-exception
                throw r5
            */
            throw new UnsupportedOperationException("Method not decompiled: com.warefly.checkscan.presentation.balance.withdrawalMethods.base.presenter.WithdrawalPresenter.g.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.balance.withdrawalMethods.base.presenter.WithdrawalPresenter$sendButtonEvent$1", f = "WithdrawalPresenter.kt", l = {149}, m = "invokeSuspend")
    public static final class h extends pg8 implements dm3<id3<? super j59>, Throwable, e02<? super j59>, Object> {
        public int l;
        public /* synthetic */ id3 m;
        public /* synthetic */ Throwable n;

        @Override // defpackage.dm3
        public final Object invoke(id3<? super j59> id3Var, Throwable th, e02<? super j59> e02Var) {
            h hVar = new h(3, e02Var);
            hVar.m = id3Var;
            hVar.n = th;
            return hVar.invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) throws Throwable {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.l;
            if (i == 0) {
                r57.b(obj);
                id3 id3Var = this.m;
                Throwable th = this.n;
                if (!(th instanceof TimeoutCancellationException)) {
                    throw th;
                }
                j59 j59Var = j59.a;
                this.m = null;
                this.l = 1;
                if (id3Var.emit(j59Var, this) == a32Var) {
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

    @bd2(c = "com.warefly.checkscan.presentation.balance.withdrawalMethods.base.presenter.WithdrawalPresenter$sendButtonEvent$2", f = "WithdrawalPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class i extends pg8 implements bm3<id3<? super j59>, e02<? super j59>, Object> {
        public final /* synthetic */ WithdrawalPresenter<V> l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public i(WithdrawalPresenter<V> withdrawalPresenter, e02<? super i> e02Var) {
            super(2, e02Var);
            this.l = withdrawalPresenter;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new i(this.l, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(id3<? super j59> id3Var, e02<? super j59> e02Var) {
            return ((i) create(id3Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            V viewState = this.l.getViewState();
            if (viewState != null) {
                viewState.handleLoading(true);
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.balance.withdrawalMethods.base.presenter.WithdrawalPresenter$sendButtonEvent$3", f = "WithdrawalPresenter.kt", l = {151}, m = "invokeSuspend")
    public static final class j extends pg8 implements bm3<j59, e02<? super j59>, Object> {
        public int l;
        public final /* synthetic */ WithdrawalPresenter<V> m;
        public final /* synthetic */ wi9 n;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public j(WithdrawalPresenter<V> withdrawalPresenter, wi9 wi9Var, e02<? super j> e02Var) {
            super(2, e02Var);
            this.m = withdrawalPresenter;
            this.n = wi9Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new j(this.m, this.n, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(j59 j59Var, e02<? super j59> e02Var) {
            return ((j) create(j59Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.l;
            if (i == 0) {
                r57.b(obj);
                this.l = 1;
                if (this.m.refreshAfterButtonEvent(this.n, this) == a32Var) {
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

    @bd2(c = "com.warefly.checkscan.presentation.balance.withdrawalMethods.base.presenter.WithdrawalPresenter$sendButtonEvent$4", f = "WithdrawalPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class k extends pg8 implements dm3<id3<? super j59>, Throwable, e02<? super j59>, Object> {
        public final /* synthetic */ WithdrawalPresenter<V> l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public k(WithdrawalPresenter<V> withdrawalPresenter, e02<? super k> e02Var) {
            super(3, e02Var);
            this.l = withdrawalPresenter;
        }

        @Override // defpackage.dm3
        public final Object invoke(id3<? super j59> id3Var, Throwable th, e02<? super j59> e02Var) {
            return new k(this.l, e02Var).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            V viewState = this.l.getViewState();
            if (viewState != null) {
                viewState.handleLoading(false);
            }
            return j59.a;
        }
    }

    public static final class l extends gh4 implements nl3<Throwable, j59> {
        public final /* synthetic */ WithdrawalPresenter<V> f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public l(WithdrawalPresenter<V> withdrawalPresenter) {
            super(1);
            this.f = withdrawalPresenter;
        }

        @Override // defpackage.nl3
        public final j59 invoke(Throwable th) {
            th.getClass();
            V viewState = this.f.getViewState();
            if (viewState != null) {
                viewState.showSomethingWrong();
            }
            return j59.a;
        }
    }

    static {
        wt2.a aVar = wt2.c;
        au2 au2Var = au2.SECONDS;
        BUTTON_EVENT_TIMEOUT = yt2.e(5, au2Var);
        BUTTON_EVENT_REFRESH_TIMEOUT = yt2.e(15, au2Var);
    }

    public WithdrawalPresenter(b40 b40Var, jf6 jf6Var, mk1 mk1Var, iw2 iw2Var) {
        b40Var.getClass();
        jf6Var.getClass();
        mk1Var.getClass();
        iw2Var.getClass();
        this.balanceInteractor = b40Var;
        this.preferencesRepository = jf6Var;
        this.claimTaskRewardUseCase = mk1Var;
        this.emailValidator = iw2Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void handleClaimResult(int i2, kk1 kk1Var) {
        V viewState;
        if (kk1Var instanceof no8) {
            V viewState2 = getViewState();
            if (viewState2 != null) {
                viewState2.showTaskSuccess(i2, (no8) kk1Var);
                return;
            }
            return;
        }
        if (!(kk1Var instanceof hn8) || (viewState = getViewState()) == null) {
            return;
        }
        viewState.showTaskError((hn8) kk1Var);
    }

    private final boolean hasEmail() {
        return this.emailValidator.a(this.preferencesRepository.c0());
    }

    private final void onTransferCardClicked(wi9 wi9Var, long j2) {
        launchInPresenter(m13.b(new be3(new df3(this.balanceInteractor.a.k(j2), new c(this, wi9Var, null)), new d(this, null)), "onTransferClick", new e(this)));
    }

    public static /* synthetic */ <V extends WithdrawalView> Object onWithdrawEventHandled$suspendImpl(WithdrawalPresenter<V> withdrawalPresenter, wi9 wi9Var, e02<? super j59> e02Var) {
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object refreshAfterButtonEvent(wi9 wi9Var, e02<? super j59> e02Var) {
        long j2 = BUTTON_EVENT_REFRESH_TIMEOUT;
        return yv8.c(yk2.d(j2), new g(this, wi9Var, null), e02Var);
    }

    private final void sendButtonEvent(wi9 wi9Var, String str) {
        b40 b40Var = this.balanceInteractor;
        b40Var.getClass();
        str.getClass();
        this.buttonEventJob = launchInPresenter(m13.b(new be3(new df3(new ce3(new de3(new md3(new xd3(BUTTON_EVENT_TIMEOUT, b40Var.a.b(str), null)), new h(3, null)), new i(this, null)), new j(this, wi9Var, null)), new k(this, null)), "sendButtonEvent", new l(this)));
    }

    private final boolean sendsButtonEvent(wi9 wi9Var) {
        if (wi9Var instanceof wi9.j ? true : wi9Var instanceof wi9.i) {
            return true;
        }
        if (wi9Var instanceof wi9.k) {
            return sendsButtonEvent(((wi9.k) wi9Var).b);
        }
        return false;
    }

    public final void handleFinalCardAlertResult(boolean z) {
        wi9 wi9Var;
        if (!z || (wi9Var = this.eventAfterAlert) == null) {
            return;
        }
        onWithdrawEvent(wi9Var);
        this.eventAfterAlert = null;
    }

    public abstract void onAddEmailClicked();

    public final void onClaimRewardClicked(int i2) {
        mk1 mk1Var = this.claimTaskRewardUseCase;
        mk1Var.getClass();
        launchInPresenter(m13.c(new df3(s57.a(new tb7(new lk1(mk1Var, i2, null))), new b(this, i2, null)), "onClaimRewardClicked", null, 2));
    }

    public void onWithdrawEvent(wi9 wi9Var) {
        mb4 mb4Var;
        wi9Var.getClass();
        if (sendsButtonEvent(wi9Var) && (mb4Var = this.buttonEventJob) != null && mb4Var.isActive()) {
            return;
        }
        if (wi9Var instanceof wi9.f) {
            V viewState = getViewState();
            if (viewState != null) {
                viewState.openUrl(null);
                return;
            }
            return;
        }
        if (wi9Var instanceof wi9.e) {
            V viewState2 = getViewState();
            if (viewState2 != null) {
                viewState2.openCustomTab(((wi9.e) wi9Var).a);
                return;
            }
            return;
        }
        if (wi9Var instanceof wi9.d) {
            V viewState3 = getViewState();
            if (viewState3 != null) {
                viewState3.showBankPageDialog(((wi9.d) wi9Var).a);
                return;
            }
            return;
        }
        if (wi9Var instanceof wi9.m) {
            V viewState4 = getViewState();
            if (viewState4 != null) {
                viewState4.startTransferToBankCard(0L);
                return;
            }
            return;
        }
        if (wi9Var instanceof wi9.g) {
            if (hasEmail()) {
                V viewState5 = getViewState();
                if (viewState5 != null) {
                    viewState5.startTransferToPhone();
                    return;
                }
                return;
            }
            V viewState6 = getViewState();
            if (viewState6 != null) {
                viewState6.showAddEmailDialog();
                return;
            }
            return;
        }
        if (wi9Var instanceof wi9.h) {
            if (hasEmail()) {
                V viewState7 = getViewState();
                if (viewState7 != null) {
                    viewState7.startTransferSBP(((wi9.h) wi9Var).a);
                    return;
                }
                return;
            }
            V viewState8 = getViewState();
            if (viewState8 != null) {
                viewState8.showAddEmailDialog();
                return;
            }
            return;
        }
        if (wi9Var instanceof wi9.j) {
            sendButtonEvent(wi9Var, ((wi9.j) wi9Var).a);
            return;
        }
        if (wi9Var instanceof wi9.i) {
            V viewState9 = getViewState();
            if (viewState9 != null) {
                viewState9.openUrl(((wi9.i) wi9Var).a);
            }
            sendButtonEvent(wi9Var, ((wi9.i) wi9Var).b);
            return;
        }
        if (wi9Var instanceof wi9.l) {
            V viewState10 = getViewState();
            if (viewState10 != null) {
                viewState10.showWithdrawalCards(((wi9.l) wi9Var).a, new f(1, this, WithdrawalPresenter.class, "onWithdrawEvent", "onWithdrawEvent(Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/listener/WithdrawEvent;)V", 0));
                return;
            }
            return;
        }
        if (wi9Var instanceof wi9.c) {
            onTransferCardClicked(wi9Var, ((wi9.c) wi9Var).a);
            return;
        }
        if (wi9Var instanceof wi9.a) {
            onClaimRewardClicked(((wi9.a) wi9Var).a);
            return;
        }
        if (!(wi9Var instanceof wi9.k)) {
            wi9Var.equals(wi9.b.a);
            return;
        }
        wi9.k kVar = (wi9.k) wi9Var;
        this.eventAfterAlert = kVar.b;
        V viewState11 = getViewState();
        if (viewState11 != null) {
            viewState11.showAlertBeforeWithdrawAction(kVar.a);
        }
    }

    public Object onWithdrawEventHandled(wi9 wi9Var, e02<? super j59> e02Var) {
        return onWithdrawEventHandled$suspendImpl(this, wi9Var, e02Var);
    }
}
