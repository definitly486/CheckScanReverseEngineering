package com.warefly.checkscan.presentation.balance.transferCashback.coupons.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import defpackage.a9;
import defpackage.e09;
import defpackage.gh4;
import defpackage.gq6;
import defpackage.j59;
import defpackage.lg1;
import defpackage.mz7;
import defpackage.ne7;
import defpackage.nl3;
import defpackage.p08;
import defpackage.p51;
import defpackage.qx1;
import defpackage.r08;
import defpackage.rj;
import defpackage.s51;
import defpackage.uz7;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class TransferCouponPresenter extends BasePresenter<TransferCouponView> {
    private final p51 interactor;
    private int programIdPres;
    private gq6.a transferInfo;

    public static final class a extends gh4 implements nl3<gq6, j59> {
        public a() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(gq6 gq6Var) {
            gq6 gq6Var2 = gq6Var;
            gq6.a aVarA = gq6Var2.a();
            TransferCouponPresenter transferCouponPresenter = TransferCouponPresenter.this;
            transferCouponPresenter.transferInfo = aVarA;
            TransferCouponView transferCouponView = (TransferCouponView) transferCouponPresenter.getViewState();
            if (transferCouponView != null) {
                transferCouponView.showInfo(gq6Var2.a(), gq6Var2.b());
            }
            return j59.a;
        }
    }

    public static final class b extends gh4 implements nl3<Throwable, j59> {
        public b() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(Throwable th) {
            TransferCouponView transferCouponView = (TransferCouponView) TransferCouponPresenter.this.getViewState();
            if (transferCouponView != null) {
                transferCouponView.showErrorInfoNotLoaded();
            }
            return j59.a;
        }
    }

    public static final class c extends gh4 implements nl3<e09, j59> {
        public c() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(e09 e09Var) {
            e09 e09Var2 = e09Var;
            TransferCouponPresenter transferCouponPresenter = TransferCouponPresenter.this;
            transferCouponPresenter.loadInfo();
            e09Var2.getClass();
            transferCouponPresenter.onTransferClicked(e09Var2);
            return j59.a;
        }
    }

    public static final class d extends gh4 implements nl3<Throwable, j59> {
        public static final d f = new d(1);

        @Override // defpackage.nl3
        public final j59 invoke(Throwable th) {
            return j59.a;
        }
    }

    public TransferCouponPresenter(p51 p51Var) {
        p51Var.getClass();
        this.interactor = p51Var;
        this.programIdPres = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void loadInfo() {
        TransferCouponView transferCouponView = (TransferCouponView) getViewState();
        int i = 1;
        if (transferCouponView != null) {
            transferCouponView.showLoadingInfo(true);
        }
        p51 p51Var = this.interactor;
        int i2 = this.programIdPres;
        mz7<List<gq6>> mz7VarB = p51Var.a.b(0);
        a9 a9Var = new a9(new s51(i2), 2);
        mz7VarB.getClass();
        uz7 uz7Var = new uz7(new p08(mz7VarB, a9Var).i(ne7.c).f(rj.a()), new lg1(this, i));
        final a aVar = new a();
        qx1 qx1Var = new qx1() { // from class: jz8
            @Override // defpackage.qx1
            public final void accept(Object obj) {
                aVar.invoke(obj);
            }
        };
        final b bVar = new b();
        BasePresenter.disposeOnDestroy$default(this, uz7Var.g(qx1Var, new qx1() { // from class: kz8
            @Override // defpackage.qx1
            public final void accept(Object obj) {
                bVar.invoke(obj);
            }
        }), null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void loadInfo$lambda$0(TransferCouponPresenter transferCouponPresenter) {
        TransferCouponView transferCouponView = (TransferCouponView) transferCouponPresenter.getViewState();
        if (transferCouponView != null) {
            transferCouponView.showLoadingInfo(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onTransferClicked(e09 e09Var) {
        TransferCouponView transferCouponView = (TransferCouponView) getViewState();
        if (transferCouponView != null) {
            transferCouponView.showTransferringMoney(true);
        }
        TransferCouponView transferCouponView2 = (TransferCouponView) getViewState();
        if (transferCouponView2 != null) {
            transferCouponView2.showTransferMoneySuccess(e09Var);
        }
    }

    public final void onClickTransfer(int i) {
        p51 p51Var = this.interactor;
        r08 r08VarF = p51Var.a.e(i, this.programIdPres).i(ne7.c).f(rj.a());
        final c cVar = new c();
        qx1 qx1Var = new qx1() { // from class: lz8
            @Override // defpackage.qx1
            public final void accept(Object obj) {
                cVar.invoke(obj);
            }
        };
        final d dVar = d.f;
        BasePresenter.disposeOnDestroy$default(this, r08VarF.g(qx1Var, new qx1() { // from class: mz8
            @Override // defpackage.qx1
            public final void accept(Object obj) {
                dVar.invoke(obj);
            }
        }), null, 1, null);
    }

    public final void onCopyPromoCode(String str) {
        str.getClass();
        TransferCouponView transferCouponView = (TransferCouponView) getViewState();
        if (transferCouponView != null) {
            transferCouponView.showPopupCopied(str);
        }
    }

    public final void onFLowToFullRules() {
        gq6.a.C0192a c0192aD;
        TransferCouponView transferCouponView = (TransferCouponView) getViewState();
        if (transferCouponView != null) {
            gq6.a aVar = this.transferInfo;
            String strA = (aVar == null || (c0192aD = aVar.d()) == null) ? null : c0192aD.a();
            strA.getClass();
            transferCouponView.openUrl(strA);
        }
    }

    public final void onRetryLoadInfo() {
        loadInfo();
    }

    public final void onShown(int i) {
        this.programIdPres = i;
        loadInfo();
    }
}
