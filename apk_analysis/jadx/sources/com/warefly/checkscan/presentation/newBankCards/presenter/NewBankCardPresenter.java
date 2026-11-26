package com.warefly.checkscan.presentation.newBankCards.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.newBankCards.view.NewBankCardsView;
import defpackage.cp2;
import defpackage.gh4;
import defpackage.j59;
import defpackage.k90;
import defpackage.kn1;
import defpackage.ne7;
import defpackage.nl3;
import defpackage.p51;
import defpackage.pf7;
import defpackage.qn1;
import defpackage.rj;
import defpackage.sl0;
import defpackage.t90;
import defpackage.ta8;
import defpackage.uf3;
import defpackage.uz7;
import defpackage.wb0;
import defpackage.wm5;
import defpackage.xz7;
import defpackage.yb8;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class NewBankCardPresenter extends BasePresenter<NewBankCardsView> {
    private final p51 cashBackInteractor;
    private final uf3 flowRouter;

    public static final class a extends gh4 implements nl3<cp2, j59> {
        public a() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(cp2 cp2Var) {
            NewBankCardsView newBankCardsView = (NewBankCardsView) NewBankCardPresenter.this.getViewState();
            if (newBankCardsView != null) {
                newBankCardsView.handleProgress(true);
            }
            return j59.a;
        }
    }

    public static final class b extends gh4 implements nl3<wb0, j59> {
        public b() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(wb0 wb0Var) {
            NewBankCardsView newBankCardsView;
            NewBankCardsView newBankCardsView2;
            String str;
            String str2;
            wb0 wb0Var2 = wb0Var;
            List<t90> listA = wb0Var2.a();
            ArrayList arrayList = new ArrayList(kn1.q(listA, 10));
            for (t90 t90Var : listA) {
                t90.a aVar = (t90.a) qn1.V(t90Var.f());
                long jA = aVar != null ? aVar.a() : 0L;
                String strE = t90Var.e();
                String strB = t90Var.b();
                if (strB == null) {
                    strB = "";
                }
                String strD = t90Var.d();
                if (strD == null) {
                    strD = "";
                }
                String strC = t90Var.c();
                if (strC == null) {
                    strC = "";
                }
                String strA = t90Var.a();
                if (strA == null) {
                    String str3 = strC;
                    str2 = "";
                    str = str3;
                } else {
                    str = strC;
                    str2 = strA;
                }
                arrayList.add(new k90(strE, strB, strD, str, str2, jA));
            }
            String strB2 = wb0Var2.b().b();
            NewBankCardPresenter newBankCardPresenter = NewBankCardPresenter.this;
            if (strB2 != null && !ta8.M(strB2) && (newBankCardsView2 = (NewBankCardsView) newBankCardPresenter.getViewState()) != null) {
                newBankCardsView2.setTitle(wb0Var2.b().b());
            }
            String strA2 = wb0Var2.b().a();
            if (strA2 != null && !ta8.M(strA2) && (newBankCardsView = (NewBankCardsView) newBankCardPresenter.getViewState()) != null) {
                newBankCardsView.setDescription(wb0Var2.b().a());
            }
            if (arrayList.isEmpty()) {
                NewBankCardsView newBankCardsView3 = (NewBankCardsView) newBankCardPresenter.getViewState();
                if (newBankCardsView3 != null) {
                    newBankCardsView3.showNoCards();
                }
            } else {
                NewBankCardsView newBankCardsView4 = (NewBankCardsView) newBankCardPresenter.getViewState();
                if (newBankCardsView4 != null) {
                    newBankCardsView4.showData(arrayList);
                }
            }
            return j59.a;
        }
    }

    public NewBankCardPresenter(uf3 uf3Var, p51 p51Var) {
        uf3Var.getClass();
        p51Var.getClass();
        this.flowRouter = uf3Var;
        this.cashBackInteractor = p51Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onFirstViewAttach$lambda$1(NewBankCardPresenter newBankCardPresenter) {
        NewBankCardsView newBankCardsView = (NewBankCardsView) newBankCardPresenter.getViewState();
        if (newBankCardsView != null) {
            newBankCardsView.handleProgress(false);
        }
    }

    public final void onBackClick() {
        this.flowRouter.c();
    }

    public final void onCardClick(long j) {
        this.flowRouter.d(new pf7(j));
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        p51 p51Var = this.cashBackInteractor;
        BasePresenter.disposeOnDestroy$default(this, yb8.f(new uz7(new xz7(p51Var.a.h(p51Var.c.O0()).i(ne7.c).f(rj.a()), new sl0(new a(), 1)), new wm5(this, 0)), null, new b(), 1), null, 1, null);
    }
}
