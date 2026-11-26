package com.warefly.checkscan.presentation.balance.main.presenter;

import androidx.compose.runtime.ComposerKt;
import androidx.media3.extractor.ts.PsExtractor;
import com.warefly.checkscan.R;
import com.warefly.checkscan.auth.presentation.flow.AuthReason;
import com.warefly.checkscan.presentation.balance.main.view.BalanceView;
import com.warefly.checkscan.presentation.balance.withdrawalMethods.base.presenter.WithdrawalPresenter;
import defpackage.a32;
import defpackage.a40;
import defpackage.aa4;
import defpackage.ag;
import defpackage.ah;
import defpackage.av0;
import defpackage.b06;
import defpackage.b10;
import defpackage.b40;
import defpackage.bd2;
import defpackage.be3;
import defpackage.bm3;
import defpackage.c40;
import defpackage.ce3;
import defpackage.d40;
import defpackage.d60;
import defpackage.df3;
import defpackage.dm3;
import defpackage.e02;
import defpackage.f70;
import defpackage.g20;
import defpackage.g30;
import defpackage.gh4;
import defpackage.gj9;
import defpackage.h40;
import defpackage.i57;
import defpackage.id3;
import defpackage.ih7;
import defpackage.iw2;
import defpackage.ix;
import defpackage.j59;
import defpackage.jf6;
import defpackage.kd;
import defpackage.kx2;
import defpackage.l30;
import defpackage.l60;
import defpackage.m13;
import defpackage.mk1;
import defpackage.mo7;
import defpackage.n30;
import defpackage.nh7;
import defpackage.nl3;
import defpackage.o10;
import defpackage.p10;
import defpackage.p20;
import defpackage.p70;
import defpackage.pg8;
import defpackage.pw7;
import defpackage.pz3;
import defpackage.q20;
import defpackage.q70;
import defpackage.qi7;
import defpackage.qn1;
import defpackage.r30;
import defpackage.r57;
import defpackage.rj9;
import defpackage.s10;
import defpackage.se3;
import defpackage.t40;
import defpackage.ta8;
import defpackage.tb7;
import defpackage.tf8;
import defpackage.tw5;
import defpackage.u37;
import defpackage.uf3;
import defpackage.uw5;
import defpackage.w00;
import defpackage.w40;
import defpackage.wi9;
import defpackage.xj9;
import defpackage.y00;
import defpackage.y22;
import defpackage.yi9;
import defpackage.z30;
import defpackage.z60;
import defpackage.z68;
import defpackage.zl2;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class BalancePresenter extends WithdrawalPresenter<BalanceView> implements g30, b10, q70, p10, g20, f70, q20, l60, d60, s10, n30.a, yi9.a, xj9.a, z60.a, y00.a, o10.c, p70.d, rj9 {
    private final zl2 desktopInteractor;
    private final uf3 flowRouter;
    private final b40 interactor;
    private final boolean isOpenAlfa;
    private final uw5 onboardingCardSlidesInteractor;
    private final mo7 sendBannerWatchUseCase;

    @bd2(c = "com.warefly.checkscan.presentation.balance.main.presenter.BalancePresenter$fetchAlfaIdLink$1", f = "BalancePresenter.kt", l = {}, m = "invokeSuspend")
    public static final class a extends pg8 implements bm3<id3<? super y00>, e02<? super j59>, Object> {
        public a(e02<? super a> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return BalancePresenter.this.new a(e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(id3<? super y00> id3Var, e02<? super j59> e02Var) {
            return ((a) create(id3Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            BalanceView balanceView = (BalanceView) BalancePresenter.this.getViewState();
            if (balanceView != null) {
                balanceView.handleLoading(true);
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.balance.main.presenter.BalancePresenter$refreshBlocks$1", f = "BalancePresenter.kt", l = {260}, m = "invokeSuspend")
    public static final class a0 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        public int l;
        public final /* synthetic */ BalancePresenter m;
        public final /* synthetic */ boolean n;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a0(e02 e02Var, BalancePresenter balancePresenter, boolean z) {
            super(2, e02Var);
            this.m = balancePresenter;
            this.n = z;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new a0(e02Var, this.m, this.n);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((a0) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.l;
            BalancePresenter balancePresenter = this.m;
            if (i == 0) {
                r57.b(obj);
                b40 b40Var = balancePresenter.interactor;
                this.l = 1;
                if (b40Var.c(true, this.n, this) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            BalanceView balanceView = (BalanceView) balancePresenter.getViewState();
            if (balanceView != null) {
                balanceView.turnOffRefreshing();
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.balance.main.presenter.BalancePresenter$fetchAlfaIdLink$2", f = "BalancePresenter.kt", l = {}, m = "invokeSuspend")
    public static final class b extends pg8 implements bm3<y00, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public b(e02<? super b> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            b bVar = BalancePresenter.this.new b(e02Var);
            bVar.l = obj;
            return bVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(y00 y00Var, e02<? super j59> e02Var) {
            return ((b) create(y00Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            ((y00) this.l).a(BalancePresenter.this);
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.balance.main.presenter.BalancePresenter$fetchAlfaIdLink$3", f = "BalancePresenter.kt", l = {}, m = "invokeSuspend")
    public static final class c extends pg8 implements dm3<id3<? super y00>, Throwable, e02<? super j59>, Object> {
        public c(e02<? super c> e02Var) {
            super(3, e02Var);
        }

        @Override // defpackage.dm3
        public final Object invoke(id3<? super y00> id3Var, Throwable th, e02<? super j59> e02Var) {
            return BalancePresenter.this.new c(e02Var).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            BalanceView balanceView = (BalanceView) BalancePresenter.this.getViewState();
            if (balanceView != null) {
                balanceView.handleLoading(false);
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
            BalanceView balanceView = (BalanceView) BalancePresenter.this.getViewState();
            if (balanceView != null) {
                balanceView.showSomethingWrong();
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.balance.main.presenter.BalancePresenter$handleVerificationEvent$1", f = "BalancePresenter.kt", l = {}, m = "invokeSuspend")
    public static final class e extends pg8 implements bm3<id3<? super j59>, e02<? super j59>, Object> {
        public e(e02<? super e> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return BalancePresenter.this.new e(e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(id3<? super j59> id3Var, e02<? super j59> e02Var) {
            return ((e) create(id3Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            BalanceView balanceView = (BalanceView) BalancePresenter.this.getViewState();
            if (balanceView != null) {
                balanceView.handleLoading(true);
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.balance.main.presenter.BalancePresenter$handleVerificationEvent$2", f = "BalancePresenter.kt", l = {PsExtractor.VIDEO_STREAM_MASK}, m = "invokeSuspend")
    public static final class f extends pg8 implements bm3<j59, e02<? super j59>, Object> {
        public int l;
        public final /* synthetic */ boolean m;
        public final /* synthetic */ BalancePresenter n;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(e02 e02Var, BalancePresenter balancePresenter, boolean z) {
            super(2, e02Var);
            this.m = z;
            this.n = balancePresenter;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new f(e02Var, this.n, this.m);
        }

        @Override // defpackage.bm3
        public final Object invoke(j59 j59Var, e02<? super j59> e02Var) {
            return ((f) create(j59Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.l;
            if (i == 0) {
                r57.b(obj);
                if (this.m) {
                    b40 b40Var = this.n.interactor;
                    this.l = 1;
                    if (b40.d(3, b40Var, this) == a32Var) {
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

    @bd2(c = "com.warefly.checkscan.presentation.balance.main.presenter.BalancePresenter$handleVerificationEvent$3", f = "BalancePresenter.kt", l = {}, m = "invokeSuspend")
    public static final class g extends pg8 implements dm3<id3<? super j59>, Throwable, e02<? super j59>, Object> {
        public g(e02<? super g> e02Var) {
            super(3, e02Var);
        }

        @Override // defpackage.dm3
        public final Object invoke(id3<? super j59> id3Var, Throwable th, e02<? super j59> e02Var) {
            return BalancePresenter.this.new g(e02Var).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            BalanceView balanceView = (BalanceView) BalancePresenter.this.getViewState();
            if (balanceView != null) {
                balanceView.handleLoading(false);
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.balance.main.presenter.BalancePresenter$newAlternativeTransfer$1", f = "BalancePresenter.kt", l = {}, m = "invokeSuspend")
    public static final class h extends pg8 implements bm3<i57<? extends List<? extends gj9>>, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public h(e02<? super h> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            h hVar = BalancePresenter.this.new h(e02Var);
            hVar.l = obj;
            return hVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(i57<? extends List<? extends gj9>> i57Var, e02<? super j59> e02Var) {
            return ((h) create(i57Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            i57 i57Var = (i57) this.l;
            boolean z = i57Var instanceof i57.a;
            BalancePresenter balancePresenter = BalancePresenter.this;
            if (z) {
                BalanceView balanceView = (BalanceView) balancePresenter.getViewState();
                if (balanceView != null) {
                    balanceView.showSomethingWrong();
                }
            } else if (aa4.e(i57Var, i57.b.a)) {
                BalanceView balanceView2 = (BalanceView) balancePresenter.getViewState();
                if (balanceView2 != null) {
                    balanceView2.handleLoading(true);
                }
            } else if (i57Var instanceof i57.c) {
                List list = (List) ((i57.c) i57Var).a;
                if (list.size() == 1) {
                    balancePresenter.onWithdrawClicked(((gj9) qn1.k0(list)).e, null);
                } else if (list.isEmpty()) {
                    BalanceView balanceView3 = (BalanceView) balancePresenter.getViewState();
                    if (balanceView3 != null) {
                        balanceView3.showSomethingWrong();
                    }
                } else {
                    balancePresenter.onWithdrawClicked(new wi9.l(list), null);
                }
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.balance.main.presenter.BalancePresenter$newAlternativeTransfer$2", f = "BalancePresenter.kt", l = {}, m = "invokeSuspend")
    public static final class i extends pg8 implements dm3<id3<? super i57<? extends List<? extends gj9>>>, Throwable, e02<? super j59>, Object> {
        public i(e02<? super i> e02Var) {
            super(3, e02Var);
        }

        @Override // defpackage.dm3
        public final Object invoke(id3<? super i57<? extends List<? extends gj9>>> id3Var, Throwable th, e02<? super j59> e02Var) {
            return BalancePresenter.this.new i(e02Var).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            BalanceView balanceView = (BalanceView) BalancePresenter.this.getViewState();
            if (balanceView != null) {
                balanceView.handleLoading(false);
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
            BalanceView balanceView = (BalanceView) BalancePresenter.this.getViewState();
            if (balanceView != null) {
                balanceView.showSomethingWrong();
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.balance.main.presenter.BalancePresenter$oldAlfaTransfer$1", f = "BalancePresenter.kt", l = {}, m = "invokeSuspend")
    public static final class k extends pg8 implements bm3<id3<? super a40>, e02<? super j59>, Object> {
        public k(e02<? super k> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return BalancePresenter.this.new k(e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(id3<? super a40> id3Var, e02<? super j59> e02Var) {
            return ((k) create(id3Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            BalanceView balanceView = (BalanceView) BalancePresenter.this.getViewState();
            if (balanceView != null) {
                balanceView.handleLoading(true);
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.balance.main.presenter.BalancePresenter$oldAlfaTransfer$2", f = "BalancePresenter.kt", l = {}, m = "invokeSuspend")
    public static final class l extends pg8 implements bm3<a40, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public l(e02<? super l> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            l lVar = BalancePresenter.this.new l(e02Var);
            lVar.l = obj;
            return lVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(a40 a40Var, e02<? super j59> e02Var) {
            return ((l) create(a40Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            a40 a40Var = (a40) this.l;
            BalanceView balanceView = (BalanceView) BalancePresenter.this.getViewState();
            if (balanceView != null) {
                balanceView.showInfoDialog(a40Var);
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.balance.main.presenter.BalancePresenter$oldAlfaTransfer$3", f = "BalancePresenter.kt", l = {}, m = "invokeSuspend")
    public static final class m extends pg8 implements dm3<id3<? super a40>, Throwable, e02<? super j59>, Object> {
        public m(e02<? super m> e02Var) {
            super(3, e02Var);
        }

        @Override // defpackage.dm3
        public final Object invoke(id3<? super a40> id3Var, Throwable th, e02<? super j59> e02Var) {
            return BalancePresenter.this.new m(e02Var).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            BalanceView balanceView = (BalanceView) BalancePresenter.this.getViewState();
            if (balanceView != null) {
                balanceView.handleLoading(false);
            }
            return j59.a;
        }
    }

    public static final class n extends gh4 implements nl3<Throwable, j59> {
        public n() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(Throwable th) {
            th.getClass();
            BalanceView balanceView = (BalanceView) BalancePresenter.this.getViewState();
            if (balanceView != null) {
                balanceView.showSomethingWrong();
            }
            return j59.a;
        }
    }

    public static final class o extends gh4 implements nl3<w00, j59> {
        public o() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(w00 w00Var) {
            w00 w00Var2 = w00Var;
            w00Var2.getClass();
            BalanceView balanceView = (BalanceView) BalancePresenter.this.getViewState();
            if (balanceView != null) {
                balanceView.showAboutAccrualCashbackDialog(w00Var2);
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.balance.main.presenter.BalancePresenter$onFirstViewAttach$1", f = "BalancePresenter.kt", l = {59}, m = "invokeSuspend")
    public static final class p extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        public int l;

        public p(e02<? super p> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return BalancePresenter.this.new p(e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((p) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.l;
            if (i == 0) {
                r57.b(obj);
                b40 b40Var = BalancePresenter.this.interactor;
                this.l = 1;
                if (b40.d(1, b40Var, this) == a32Var) {
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

    @bd2(c = "com.warefly.checkscan.presentation.balance.main.presenter.BalancePresenter$onFirstViewAttach$2", f = "BalancePresenter.kt", l = {}, m = "invokeSuspend")
    public static final class q extends pg8 implements bm3<zl2.a, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        @bd2(c = "com.warefly.checkscan.presentation.balance.main.presenter.BalancePresenter$onFirstViewAttach$2$1", f = "BalancePresenter.kt", l = {63}, m = "invokeSuspend")
        public static final class a extends pg8 implements bm3<y22, e02<? super j59>, Object> {
            public int l;
            public final /* synthetic */ BalancePresenter m;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(BalancePresenter balancePresenter, e02<? super a> e02Var) {
                super(2, e02Var);
                this.m = balancePresenter;
            }

            @Override // defpackage.cd0
            public final e02<j59> create(Object obj, e02<?> e02Var) {
                return new a(this.m, e02Var);
            }

            @Override // defpackage.bm3
            public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
                return ((a) create(y22Var, e02Var)).invokeSuspend(j59.a);
            }

            @Override // defpackage.cd0
            public final Object invokeSuspend(Object obj) {
                a32 a32Var = a32.COROUTINE_SUSPENDED;
                int i = this.l;
                if (i == 0) {
                    r57.b(obj);
                    b40 b40Var = this.m.interactor;
                    this.l = 1;
                    if (b40.d(3, b40Var, this) == a32Var) {
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

        public q(e02<? super q> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            q qVar = BalancePresenter.this.new q(e02Var);
            qVar.l = obj;
            return qVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(zl2.a aVar, e02<? super j59> e02Var) {
            return ((q) create(aVar, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            if (((zl2.a) this.l) instanceof zl2.a.c) {
                BalancePresenter balancePresenter = BalancePresenter.this;
                av0.c(balancePresenter.getPresenterScope(), null, null, new a(balancePresenter, null), 3);
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.balance.main.presenter.BalancePresenter$onFirstViewAttach$3", f = "BalancePresenter.kt", l = {}, m = "invokeSuspend")
    public static final class r extends pg8 implements bm3<List<? extends pz3>, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public r(e02<? super r> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            r rVar = BalancePresenter.this.new r(e02Var);
            rVar.l = obj;
            return rVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(List<? extends pz3> list, e02<? super j59> e02Var) {
            return ((r) create(list, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            List<? extends pz3> list = (List) this.l;
            BalanceView balanceView = (BalanceView) BalancePresenter.this.getViewState();
            if (balanceView != null) {
                balanceView.showContent(list);
            }
            return j59.a;
        }
    }

    public static final class s extends gh4 implements nl3<Throwable, j59> {
        public s() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(Throwable th) {
            th.getClass();
            BalanceView balanceView = (BalanceView) BalancePresenter.this.getViewState();
            if (balanceView != null) {
                balanceView.showSomethingWrong();
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.balance.main.presenter.BalancePresenter$onFirstViewAttach$5", f = "BalancePresenter.kt", l = {}, m = "invokeSuspend")
    public static final class t extends pg8 implements bm3<Boolean, e02<? super j59>, Object> {
        public /* synthetic */ boolean l;

        public t(e02<? super t> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            t tVar = BalancePresenter.this.new t(e02Var);
            tVar.l = ((Boolean) obj).booleanValue();
            return tVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(Boolean bool, e02<? super j59> e02Var) {
            Boolean bool2 = bool;
            bool2.booleanValue();
            return ((t) create(bool2, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            if (this.l) {
                BalancePresenter.this.flowRouter.d(ih7.a);
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.balance.main.presenter.BalancePresenter$onManagementClick$1", f = "BalancePresenter.kt", l = {}, m = "invokeSuspend")
    public static final class u extends pg8 implements bm3<id3<? super String>, e02<? super j59>, Object> {
        public u(e02<? super u> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return BalancePresenter.this.new u(e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(id3<? super String> id3Var, e02<? super j59> e02Var) {
            return ((u) create(id3Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            BalanceView balanceView = (BalanceView) BalancePresenter.this.getViewState();
            if (balanceView != null) {
                balanceView.handleLoading(true);
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.balance.main.presenter.BalancePresenter$onManagementClick$2", f = "BalancePresenter.kt", l = {}, m = "invokeSuspend")
    public static final class v extends pg8 implements bm3<String, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public v(e02<? super v> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            v vVar = BalancePresenter.this.new v(e02Var);
            vVar.l = obj;
            return vVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(String str, e02<? super j59> e02Var) {
            return ((v) create(str, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            String str = (String) this.l;
            BalanceView balanceView = (BalanceView) BalancePresenter.this.getViewState();
            if (balanceView != null) {
                balanceView.showManagementAlfaDialogCabinet(str);
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.balance.main.presenter.BalancePresenter$onManagementClick$3", f = "BalancePresenter.kt", l = {}, m = "invokeSuspend")
    public static final class w extends pg8 implements dm3<id3<? super String>, Throwable, e02<? super j59>, Object> {
        public w(e02<? super w> e02Var) {
            super(3, e02Var);
        }

        @Override // defpackage.dm3
        public final Object invoke(id3<? super String> id3Var, Throwable th, e02<? super j59> e02Var) {
            return BalancePresenter.this.new w(e02Var).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            BalanceView balanceView = (BalanceView) BalancePresenter.this.getViewState();
            if (balanceView != null) {
                balanceView.handleLoading(false);
            }
            return j59.a;
        }
    }

    public static final class x extends gh4 implements nl3<Throwable, j59> {
        public x() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(Throwable th) {
            th.getClass();
            BalanceView balanceView = (BalanceView) BalancePresenter.this.getViewState();
            if (balanceView != null) {
                balanceView.showSomethingWrong();
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.balance.main.presenter.BalancePresenter$onPromoBannerHideClicked$1", f = "BalancePresenter.kt", l = {ComposerKt.compositionLocalMapKey}, m = "invokeSuspend")
    public static final class y extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        public int l;
        public final /* synthetic */ int n;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public y(int i, e02<? super y> e02Var) {
            super(2, e02Var);
            this.n = i;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return BalancePresenter.this.new y(this.n, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((y) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.l;
            if (i == 0) {
                r57.b(obj);
                b40 b40Var = BalancePresenter.this.interactor;
                this.l = 1;
                if (b40Var.q(this.n, this) == a32Var) {
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

    public static final class z extends gh4 implements nl3<a40, j59> {
        public z() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(a40 a40Var) {
            a40 a40Var2 = a40Var;
            a40Var2.getClass();
            BalanceView balanceView = (BalanceView) BalancePresenter.this.getViewState();
            if (balanceView != null) {
                balanceView.showInfoDialog(a40Var2);
            }
            return j59.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BalancePresenter(b40 b40Var, uw5 uw5Var, mo7 mo7Var, zl2 zl2Var, uf3 uf3Var, jf6 jf6Var, mk1 mk1Var, iw2 iw2Var, boolean z2) {
        super(b40Var, jf6Var, mk1Var, iw2Var);
        b40Var.getClass();
        uw5Var.getClass();
        mo7Var.getClass();
        zl2Var.getClass();
        uf3Var.getClass();
        jf6Var.getClass();
        mk1Var.getClass();
        iw2Var.getClass();
        this.interactor = b40Var;
        this.onboardingCardSlidesInteractor = uw5Var;
        this.sendBannerWatchUseCase = mo7Var;
        this.desktopInteractor = zl2Var;
        this.flowRouter = uf3Var;
        this.isOpenAlfa = z2;
    }

    private final void newAlternativeTransfer() {
        launchInPresenter(m13.b(new be3(new df3(this.interactor.a.i(), new h(null)), new i(null)), "onTransferClicked", new j()));
    }

    private final void oldAlfaTransfer() {
        b40 b40Var = this.interactor;
        b40Var.getClass();
        launchInPresenter(m13.b(new be3(new df3(new ce3(new tb7(new c40(b40Var, null)), new k(null)), new l(null)), new m(null)), "onTransferClick", new n()));
    }

    @Override // o10.c
    public void fetchAlfaIdLink() {
        b40 b40Var = this.interactor;
        launchInPresenter(m13.b(new be3(new df3(new ce3(new d40(b40Var.a.fetchAlfaIdLink(), b40Var), new a(null)), new b(null)), new c(null)), "fetchAlfaIdLink", new d()));
    }

    @Override // p70.d
    public void handleCardWithdrawEvent(long j2) {
        BalanceView balanceView = (BalanceView) getViewState();
        if (balanceView != null) {
            balanceView.startTransferToBankCard(j2);
        }
    }

    @Override // p70.d
    public void handleCommonWithdrawEvent(String str) {
        str.getClass();
        BalanceView balanceView = (BalanceView) getViewState();
        if (balanceView != null) {
            balanceView.openUrl(str);
        }
    }

    @Override // y00.a
    public void handleErrorAlfaIdLink(a40 a40Var) {
        a40Var.getClass();
        BalanceView balanceView = (BalanceView) getViewState();
        if (balanceView != null) {
            balanceView.showInfoDialog(a40Var);
        }
    }

    @Override // p70.d
    public void handlePhoneWithdrawEvent() {
        BalanceView balanceView = (BalanceView) getViewState();
        if (balanceView != null) {
            balanceView.startTransferToPhone();
        }
    }

    @Override // y00.a
    public void handleSuccessAlfaIdLink(String str) {
        str.getClass();
        BalanceView balanceView = (BalanceView) getViewState();
        if (balanceView != null) {
            balanceView.openUrl(str);
        }
    }

    @Override // o10.c
    public void handleVerificationEvent(u37 u37Var, String str, String str2, boolean z2) {
        u37Var.getClass();
        str.getClass();
        str2.getClass();
        b40 b40Var = this.interactor;
        b40Var.getClass();
        launchInPresenter(m13.c(new be3(new df3(new ce3(b40Var.a.p(u37Var, str, str2), new e(null)), new f(null, this, z2)), new g(null)), "sendAlfaVerificationButtonEvent", null, 2));
    }

    @Override // defpackage.g30
    public void onAccrualClick() {
        Object next;
        w00 w00Var;
        b40 b40Var = this.interactor;
        o oVar = new o();
        b40Var.getClass();
        Iterator it = ((List) b40Var.f.getValue()).iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!(next instanceof l30));
        if (next == null || (w00Var = ((l30) next).f) == null) {
            return;
        }
        oVar.invoke(w00Var);
    }

    @Override // com.warefly.checkscan.presentation.balance.withdrawalMethods.base.presenter.WithdrawalPresenter
    public void onAddEmailClicked() {
        uf3 uf3Var = this.flowRouter;
        ix ixVar = new ix(AuthReason.AddEmail.b);
        uf3Var.getClass();
        uf3Var.c.d(ixVar);
    }

    public final void onBackClick() {
        this.flowRouter.c();
    }

    @Override // defpackage.b10
    public void onBannerClick(String str) {
        str.getClass();
        BalanceView balanceView = (BalanceView) getViewState();
        if (balanceView != null) {
            balanceView.openUrl(str);
        }
    }

    @Override // defpackage.p10
    public void onButtonClick(o10 o10Var) {
        o10Var.getClass();
        o10Var.a(this);
    }

    @Override // o10.c
    public void onButtonClickByStateVerification(String str, boolean z2) {
        str.getClass();
        BalanceView balanceView = (BalanceView) getViewState();
        if (balanceView != null) {
            balanceView.openUrl(str);
        }
    }

    @Override // defpackage.g20
    public void onCompactBannerClick(String str) {
        str.getClass();
        BalanceView balanceView = (BalanceView) getViewState();
        if (balanceView != null) {
            balanceView.openUrl(str);
        }
    }

    @Override // defpackage.q20
    public void onExpandChange() {
        b40 b40Var = this.interactor;
        z68 z68Var = b40Var.f;
        ArrayList arrayListV0 = qn1.v0((Collection) z68Var.getValue());
        for (Object obj : arrayListV0) {
            if (obj instanceof p20) {
                boolean z2 = ((p20) obj).b;
                Iterator it = ((List) z68Var.getValue()).iterator();
                int i2 = 0;
                while (true) {
                    if (!it.hasNext()) {
                        i2 = -1;
                        break;
                    } else if (aa4.e(((pz3) it.next()).id(), (byte) 127)) {
                        break;
                    } else {
                        i2++;
                    }
                }
                arrayListV0.set(i2, new p20(!z2 ? R.drawable.ic_arrow_up : R.drawable.ic_arrow_down, b40Var.b.getString(!z2 ? R.string.balance_expand_off : R.string.balance_expand_on), !z2));
                z68Var.k(null, arrayListV0);
                return;
            }
        }
        ag.g("Collection contains no element matching the predicate.");
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        Object value;
        Object value2;
        Object value3;
        super.onFirstViewAttach();
        b40 b40Var = this.interactor;
        z68 z68Var = b40Var.f;
        do {
            value = z68Var.getValue();
        } while (!z68Var.a(value, b40Var.e));
        z68 z68Var2 = b40Var.g;
        do {
            value2 = z68Var2.getValue();
        } while (!z68Var2.a(value2, b40.d.c));
        z68 z68Var3 = b40Var.h;
        do {
            value3 = z68Var3.getValue();
        } while (!z68Var3.a(value3, kx2.b));
        av0.c(getPresenterScope(), null, null, new p(null), 3);
        this.desktopInteractor.c(getPresenterScope(), new q(null));
        launchInPresenter(m13.c(new df3(se3.a(this.interactor.f, new w40(2, null)), new r(null)), null, new s(), 1));
        uw5 uw5Var = this.onboardingCardSlidesInteractor;
        launchInPresenter(m13.c(new df3(se3.a(uw5Var.a.b(), new tw5(uw5Var, null)), new t(null)), "fetchSlides", null, 2));
        if (this.isOpenAlfa) {
            onManagementClick();
        }
    }

    @Override // n30.a
    public void onHidableBannerClicked(String str) {
        str.getClass();
        BalanceView balanceView = (BalanceView) getViewState();
        if (balanceView != null) {
            balanceView.openUrl(str);
        }
    }

    @Override // n30.a
    public void onHideHidableBanner(int i2) {
        Object value;
        ArrayList arrayList;
        b40 b40Var = this.interactor;
        av0.c(b40Var.d, null, null, new t40(i2, b40Var, null), 3);
        z68 z68Var = b40Var.f;
        do {
            value = z68Var.getValue();
            arrayList = new ArrayList();
            for (Object obj : (List) value) {
                pz3 pz3Var = (pz3) obj;
                if (!(pz3Var instanceof r30) || ((r30) pz3Var).a != i2) {
                    arrayList.add(obj);
                }
            }
        } while (!z68Var.a(value, arrayList));
    }

    @Override // defpackage.s10
    public void onManagementClick() {
        launchInPresenter(m13.b(new be3(new df3(new ce3(new h40(this.interactor.a.r()), new u(null)), new v(null)), new w(null)), "onManagementClick", new x()));
    }

    @Override // defpackage.d60
    public void onPromoBannerClicked(int i2, String str) {
        str.getClass();
        new kd.m.a.C0275a(i2).c();
        BalanceView balanceView = (BalanceView) getViewState();
        if (balanceView != null) {
            balanceView.openUrl(str);
        }
    }

    @Override // defpackage.d60
    public void onPromoBannerHideClicked(int i2) {
        new kd.m.a.b(i2).c();
        av0.c(getPresenterScope(), null, null, new y(i2, null), 3);
    }

    @Override // defpackage.d60
    public void onPromoBannerOrdClicked(b06 b06Var) {
        b06Var.getClass();
        BalanceView balanceView = (BalanceView) getViewState();
        if (balanceView != null) {
            balanceView.showOrdDialog(b06Var);
        }
    }

    @Override // defpackage.l60
    public void onPromotionItemClick(String str) {
        Object next;
        str.getClass();
        b40 b40Var = this.interactor;
        z zVar = new z();
        b40Var.getClass();
        Iterator it = ((List) b40Var.f.getValue()).iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!aa4.e(((pz3) next).id(), str));
        z30 z30Var = next instanceof z30 ? (z30) next : null;
        if (z30Var == null) {
            return;
        }
        String str2 = z30Var.d;
        if (ta8.M(str2)) {
            return;
        }
        zVar.invoke(new a40(z30Var.b, str2, z30Var.a, new a40.a(b40Var.b.getString(R.string.balance_info_dialog_default_button_title), null), null, null, 48));
    }

    @Override // z60.a
    public void onSubscriptionBannerClicked(String str) {
        str.getClass();
        BalanceView balanceView = (BalanceView) getViewState();
        if (balanceView != null) {
            balanceView.openUrlInCustomTab(str);
        }
    }

    public final void onSupportClick() {
        new kd.a.h.d().a();
        uf3 uf3Var = this.flowRouter;
        tf8 tf8Var = new tf8(0);
        uf3Var.getClass();
        uf3Var.c.d(tf8Var);
    }

    @Override // defpackage.f70
    public void onTitleWithButtonClick() {
        this.flowRouter.d(new nh7());
    }

    @Override // defpackage.g30
    public void onTransferClick() {
        if (this.interactor.p()) {
            newAlternativeTransfer();
        } else {
            oldAlfaTransfer();
        }
    }

    @Override // defpackage.q70
    public void onWithdrawClick(p70 p70Var) {
        p70Var.getClass();
        p70Var.a(this);
    }

    @Override // defpackage.rj9
    public void onWithdrawClicked(wi9 wi9Var, pw7 pw7Var) {
        wi9Var.getClass();
        onWithdrawEvent(wi9Var);
    }

    @Override // com.warefly.checkscan.presentation.balance.withdrawalMethods.base.presenter.WithdrawalPresenter
    public Object onWithdrawEventHandled(wi9 wi9Var, e02<? super j59> e02Var) {
        Object objD;
        return ((wi9Var instanceof wi9.a) && (objD = b40.d(3, this.interactor, e02Var)) == a32.COROUTINE_SUSPENDED) ? objD : j59.a;
    }

    @Override // xj9.a
    public void onWithdrawalMoreMethodsClicked() {
        this.flowRouter.d(qi7.a);
    }

    @Override // yi9.a
    public void onWithdrawalTransferButtonClicked() {
        if (this.interactor.p()) {
            newAlternativeTransfer();
        } else {
            oldAlfaTransfer();
        }
    }

    public final void refreshBlocks(boolean z2) {
        av0.c(getPresenterScope(), null, null, new a0(null, this, z2), 3);
    }

    public final void sendPromoBannerShown(int i2) {
        new kd.m.a.c(i2).c();
        this.sendBannerWatchUseCase.a(i2);
    }
}
