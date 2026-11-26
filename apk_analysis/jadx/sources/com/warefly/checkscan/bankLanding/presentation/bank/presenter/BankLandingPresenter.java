package com.warefly.checkscan.bankLanding.presentation.bank.presenter;

import com.warefly.checkscan.bankLanding.presentation.bank.view.BankLandingView;
import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import defpackage.a32;
import defpackage.aa4;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.df3;
import defpackage.e02;
import defpackage.i57;
import defpackage.j59;
import defpackage.lo7;
import defpackage.na0;
import defpackage.pg8;
import defpackage.px;
import defpackage.r57;
import defpackage.s57;
import defpackage.s63;
import defpackage.t63;
import defpackage.tb7;
import defpackage.uf3;
import defpackage.xg5;
import defpackage.y22;

/* JADX INFO: loaded from: classes.dex */
public final class BankLandingPresenter extends BasePresenter<BankLandingView> {
    private final int bankId;
    private final t63 fetchBankLandingInfoUseCase;
    private final uf3 flowRouter;
    private final lo7 sendBankCardPageEventUseCase;
    private final xg5<i57<na0>> state;

    @bd2(c = "com.warefly.checkscan.bankLanding.presentation.bank.presenter.BankLandingPresenter$fetchInfo$1", f = "BankLandingPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class a extends pg8 implements bm3<i57<? extends na0>, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public a(e02<? super a> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            a aVar = BankLandingPresenter.this.new a(e02Var);
            aVar.l = obj;
            return aVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(i57<? extends na0> i57Var, e02<? super j59> e02Var) {
            return ((a) create(i57Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            Object value;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            i57 i57Var = (i57) this.l;
            xg5 xg5Var = BankLandingPresenter.this.state;
            do {
                value = xg5Var.getValue();
            } while (!xg5Var.a(value, i57Var));
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.bankLanding.presentation.bank.presenter.BankLandingPresenter$onFirstViewAttach$1", f = "BankLandingPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class b extends pg8 implements bm3<i57<? extends na0>, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public b(e02<? super b> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            b bVar = BankLandingPresenter.this.new b(e02Var);
            bVar.l = obj;
            return bVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(i57<? extends na0> i57Var, e02<? super j59> e02Var) {
            return ((b) create(i57Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            i57 i57Var = (i57) this.l;
            boolean z = i57Var instanceof i57.a;
            BankLandingPresenter bankLandingPresenter = BankLandingPresenter.this;
            if (z) {
                BankLandingView bankLandingView = (BankLandingView) bankLandingPresenter.getViewState();
                if (bankLandingView != null) {
                    bankLandingView.showButton(false);
                }
                BankLandingView bankLandingView2 = (BankLandingView) bankLandingPresenter.getViewState();
                if (bankLandingView2 != null) {
                    bankLandingView2.showError(true);
                }
                BankLandingView bankLandingView3 = (BankLandingView) bankLandingPresenter.getViewState();
                if (bankLandingView3 != null) {
                    bankLandingView3.showLoading(false);
                }
            } else if (aa4.e(i57Var, i57.b.a)) {
                BankLandingView bankLandingView4 = (BankLandingView) bankLandingPresenter.getViewState();
                if (bankLandingView4 != null) {
                    bankLandingView4.showButton(false);
                }
                BankLandingView bankLandingView5 = (BankLandingView) bankLandingPresenter.getViewState();
                if (bankLandingView5 != null) {
                    bankLandingView5.showError(false);
                }
                BankLandingView bankLandingView6 = (BankLandingView) bankLandingPresenter.getViewState();
                if (bankLandingView6 != null) {
                    bankLandingView6.showLoading(true);
                }
            } else if (i57Var instanceof i57.c) {
                BankLandingView bankLandingView7 = (BankLandingView) bankLandingPresenter.getViewState();
                if (bankLandingView7 != null) {
                    bankLandingView7.showLoading(false);
                }
                BankLandingView bankLandingView8 = (BankLandingView) bankLandingPresenter.getViewState();
                if (bankLandingView8 != null) {
                    bankLandingView8.showError(false);
                }
                BankLandingView bankLandingView9 = (BankLandingView) bankLandingPresenter.getViewState();
                if (bankLandingView9 != null) {
                    bankLandingView9.showContent((na0) ((i57.c) i57Var).a);
                }
                BankLandingView bankLandingView10 = (BankLandingView) bankLandingPresenter.getViewState();
                if (bankLandingView10 != null) {
                    bankLandingView10.showButton(true);
                }
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.bankLanding.presentation.bank.presenter.BankLandingPresenter$onIssueCardClicked$1", f = "BankLandingPresenter.kt", l = {64}, m = "invokeSuspend")
    public static final class c extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        public int l;

        public c(e02<? super c> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return BankLandingPresenter.this.new c(e02Var);
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
                BankLandingPresenter bankLandingPresenter = BankLandingPresenter.this;
                lo7 lo7Var = bankLandingPresenter.sendBankCardPageEventUseCase;
                int i2 = bankLandingPresenter.bankId;
                this.l = 1;
                Object objA = lo7Var.a.a(i2, "INFO_CLICK", this);
                if (objA != a32Var) {
                    objA = j59.a;
                }
                if (objA == a32Var) {
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

    public BankLandingPresenter(t63 t63Var, uf3 uf3Var, int i, lo7 lo7Var) {
        t63Var.getClass();
        uf3Var.getClass();
        lo7Var.getClass();
        this.fetchBankLandingInfoUseCase = t63Var;
        this.flowRouter = uf3Var;
        this.bankId = i;
        this.sendBankCardPageEventUseCase = lo7Var;
        this.state = px.a(i57.b.a);
    }

    public final void fetchInfo() {
        t63 t63Var = this.fetchBankLandingInfoUseCase;
        int i = this.bankId;
        t63Var.getClass();
        launchInPresenter(new df3(s57.a(new tb7(new s63(t63Var, i, null))), new a(null)));
    }

    public final void onBackClicked() {
        this.flowRouter.c();
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        launchInPresenter(new df3(this.state, new b(null)));
        fetchInfo();
    }

    public final void onIssueCardClicked(String str) {
        str.getClass();
        BankLandingView bankLandingView = (BankLandingView) getViewState();
        if (bankLandingView != null) {
            bankLandingView.openUrlInCustomTab(str);
        }
        av0.c(getPresenterScope(), null, null, new c(null), 3);
    }
}
