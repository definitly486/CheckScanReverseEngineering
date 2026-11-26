package com.warefly.checkscan.presentation.bankCardOptions.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.bankCardOptions.presenter.BankCardOptionsPresenter;
import defpackage.br5;
import defpackage.e90;
import defpackage.er5;
import defpackage.f90;
import defpackage.g90;
import defpackage.gh4;
import defpackage.h6;
import defpackage.h90;
import defpackage.j08;
import defpackage.j59;
import defpackage.jr5;
import defpackage.ne7;
import defpackage.nl3;
import defpackage.nq5;
import defpackage.p51;
import defpackage.rj;
import defpackage.t90;
import defpackage.uf3;
import defpackage.uz7;
import defpackage.wb0;
import defpackage.wr5;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class BankCardOptionsPresenter extends BasePresenter<BankCardsOptionsView> {
    public static final a Companion = new a();
    private static final String LOG_TAG = "BankCardsPresenter";
    private final long bankId;
    private final p51 cashBackInteractor;
    private final uf3 flowRouter;

    public static final class a {
    }

    public static final class b extends gh4 implements nl3<wb0, wr5<? extends t90>> {
        public static final b f = new b(1);

        @Override // defpackage.nl3
        public final wr5<? extends t90> invoke(wb0 wb0Var) {
            wb0 wb0Var2 = wb0Var;
            wb0Var2.getClass();
            List<t90> listA = wb0Var2.a();
            nq5.a(listA, "source is null");
            return new jr5(listA);
        }
    }

    public static final class c extends gh4 implements nl3<t90, Boolean> {
        public c() {
            super(1);
        }

        @Override // defpackage.nl3
        public final Boolean invoke(t90 t90Var) {
            t90 t90Var2 = t90Var;
            t90Var2.getClass();
            return Boolean.valueOf(t90Var2.f().get(0).a() == BankCardOptionsPresenter.this.bankId);
        }
    }

    public static final class d extends gh4 implements nl3<t90, j59> {
        public d() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(t90 t90Var) {
            t90 t90Var2 = t90Var;
            t90Var2.getClass();
            ((BankCardsOptionsView) BankCardOptionsPresenter.this.getViewState()).showOptions(t90Var2);
            return j59.a;
        }
    }

    public static final class e extends gh4 implements nl3<Throwable, j59> {
        public e() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(Throwable th) {
            th.getClass();
            BankCardOptionsPresenter bankCardOptionsPresenter = BankCardOptionsPresenter.this;
            ((BankCardsOptionsView) bankCardOptionsPresenter.getViewState()).showBankCardOptionsInfoLoadingError();
            bankCardOptionsPresenter.onBackPressed();
            return j59.a;
        }
    }

    public BankCardOptionsPresenter(uf3 uf3Var, p51 p51Var, long j) {
        uf3Var.getClass();
        p51Var.getClass();
        this.flowRouter = uf3Var;
        this.cashBackInteractor = p51Var;
        this.bankId = j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showBankCardOptionsInfo$lambda$0(BankCardOptionsPresenter bankCardOptionsPresenter) {
        BankCardsOptionsView bankCardsOptionsView = (BankCardsOptionsView) bankCardOptionsPresenter.getViewState();
        if (bankCardsOptionsView != null) {
            bankCardsOptionsView.showLoading(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final wr5 showBankCardOptionsInfo$lambda$1(nl3 nl3Var, Object obj) {
        return (wr5) nl3Var.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean showBankCardOptionsInfo$lambda$2(nl3 nl3Var, Object obj) {
        return ((Boolean) nl3Var.invoke(obj)).booleanValue();
    }

    public final void onBackPressed() {
        this.flowRouter.c();
    }

    public final void onOrderCardOptionPressed(t90.a aVar) {
        aVar.getClass();
        ((BankCardsOptionsView) getViewState()).openOption(aVar);
    }

    public final void showBankCardOptionsInfo() {
        BankCardsOptionsView bankCardsOptionsView = (BankCardsOptionsView) getViewState();
        if (bankCardsOptionsView != null) {
            bankCardsOptionsView.showLoading(true);
        }
        p51 p51Var = this.cashBackInteractor;
        int i = 0;
        BasePresenter.disposeOnDestroy$default(this, new br5(new er5(new j08(new uz7(p51Var.a.h(p51Var.c.O0()).i(ne7.c).f(rj.a()), new h6() { // from class: d90
            @Override // defpackage.h6
            public final void run() {
                BankCardOptionsPresenter.showBankCardOptionsInfo$lambda$0(this.a);
            }
        }), new e90(b.f, i)), new f90(new c(), i))).g(new g90(new d(), i), new h90(new e(), i)), null, 1, null);
    }
}
