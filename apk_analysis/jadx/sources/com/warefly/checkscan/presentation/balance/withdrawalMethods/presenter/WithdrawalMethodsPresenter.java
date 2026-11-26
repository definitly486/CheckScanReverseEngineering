package com.warefly.checkscan.presentation.balance.withdrawalMethods.presenter;

import com.warefly.checkscan.auth.presentation.flow.AuthReason;
import com.warefly.checkscan.presentation.balance.withdrawalMethods.base.presenter.WithdrawalPresenter;
import com.warefly.checkscan.presentation.balance.withdrawalMethods.view.WithdrawalMethodsView;
import defpackage.a32;
import defpackage.b40;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.df3;
import defpackage.e02;
import defpackage.iw2;
import defpackage.ix;
import defpackage.j59;
import defpackage.jf6;
import defpackage.mk1;
import defpackage.pg8;
import defpackage.pw7;
import defpackage.r57;
import defpackage.rj9;
import defpackage.uf3;
import defpackage.wi9;

/* JADX INFO: loaded from: classes5.dex */
public final class WithdrawalMethodsPresenter extends WithdrawalPresenter<WithdrawalMethodsView> implements rj9 {
    private final b40 balanceInteractor;
    private final uf3 flowRouter;
    private final jf6 preferencesRepository;

    @bd2(c = "com.warefly.checkscan.presentation.balance.withdrawalMethods.presenter.WithdrawalMethodsPresenter$onFirstViewAttach$1", f = "WithdrawalMethodsPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class a extends pg8 implements bm3<b40.d, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public a(e02<? super a> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            a aVar = WithdrawalMethodsPresenter.this.new a(e02Var);
            aVar.l = obj;
            return aVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(b40.d dVar, e02<? super j59> e02Var) {
            return ((a) create(dVar, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            b40.d dVar = (b40.d) this.l;
            WithdrawalMethodsPresenter withdrawalMethodsPresenter = WithdrawalMethodsPresenter.this;
            WithdrawalMethodsView withdrawalMethodsView = (WithdrawalMethodsView) withdrawalMethodsPresenter.getViewState();
            if (withdrawalMethodsView != null) {
                withdrawalMethodsView.setToolbarTitle(dVar.a);
            }
            WithdrawalMethodsView withdrawalMethodsView2 = (WithdrawalMethodsView) withdrawalMethodsPresenter.getViewState();
            if (withdrawalMethodsView2 != null) {
                withdrawalMethodsView2.showWithdrawalMethods(dVar.b);
            }
            return j59.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WithdrawalMethodsPresenter(b40 b40Var, jf6 jf6Var, uf3 uf3Var, mk1 mk1Var, iw2 iw2Var) {
        super(b40Var, jf6Var, mk1Var, iw2Var);
        b40Var.getClass();
        jf6Var.getClass();
        uf3Var.getClass();
        mk1Var.getClass();
        iw2Var.getClass();
        this.balanceInteractor = b40Var;
        this.preferencesRepository = jf6Var;
        this.flowRouter = uf3Var;
    }

    @Override // com.warefly.checkscan.presentation.balance.withdrawalMethods.base.presenter.WithdrawalPresenter
    public void onAddEmailClicked() {
        uf3 uf3Var = this.flowRouter;
        ix ixVar = new ix(AuthReason.AddEmail.b);
        uf3Var.getClass();
        uf3Var.c.d(ixVar);
    }

    public final void onBackClicked() {
        this.flowRouter.c();
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        launchInPresenter(new df3(this.balanceInteractor.g, new a(null)));
    }

    @Override // defpackage.rj9
    public void onWithdrawClicked(wi9 wi9Var, pw7 pw7Var) {
        wi9Var.getClass();
        onWithdrawEvent(wi9Var);
    }

    @Override // com.warefly.checkscan.presentation.balance.withdrawalMethods.base.presenter.WithdrawalPresenter
    public Object onWithdrawEventHandled(wi9 wi9Var, e02<? super j59> e02Var) {
        Object objD;
        return ((wi9Var instanceof wi9.a) && (objD = b40.d(2, this.balanceInteractor, e02Var)) == a32.COROUTINE_SUSPENDED) ? objD : j59.a;
    }
}
