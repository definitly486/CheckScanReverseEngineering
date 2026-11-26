package com.warefly.checkscan.presentation.bonuses.bonusProgram.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.Deeplink;
import com.warefly.checkscan.presentation.bonuses.bonusProgram.view.PointsProgramView;
import defpackage.aa4;
import defpackage.c4;
import defpackage.f9;
import defpackage.gh4;
import defpackage.go0;
import defpackage.h62;
import defpackage.h90;
import defpackage.io0;
import defpackage.j59;
import defpackage.jf6;
import defpackage.jo0;
import defpackage.ne7;
import defpackage.nl3;
import defpackage.qx1;
import defpackage.r08;
import defpackage.rj;
import defpackage.uf3;
import defpackage.uf6;
import defpackage.yb8;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class PointsProgramPresenter extends BasePresenter<PointsProgramView> {
    private final c4 accountInteractor;
    private go0 bonusProgram;
    private final io0 bonusProgramInteractor;
    private final String cardLinkSuffix;
    private final uf3 flowRouter;
    private final jf6 preferencesRepository;
    private final long programId;

    public static final class a extends gh4 implements nl3<Throwable, j59> {
        public a() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(Throwable th) {
            th.getClass();
            PointsProgramView pointsProgramView = (PointsProgramView) PointsProgramPresenter.this.getViewState();
            if (pointsProgramView != null) {
                pointsProgramView.showCouldntLoadProgram();
            }
            return j59.a;
        }
    }

    public static final class b extends gh4 implements nl3<go0, j59> {
        public b() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(go0 go0Var) {
            String strA;
            String strB;
            go0 go0Var2 = go0Var;
            go0Var2.getClass();
            PointsProgramPresenter pointsProgramPresenter = PointsProgramPresenter.this;
            pointsProgramPresenter.bonusProgram = go0Var2;
            PointsProgramView pointsProgramView = (PointsProgramView) pointsProgramPresenter.getViewState();
            if (pointsProgramView != null) {
                long j = pointsProgramPresenter.programId;
                String strB2 = go0Var2.b();
                uf6 uf6VarC = go0Var2.c();
                if (uf6VarC == null || (strA = uf6VarC.a()) == null) {
                    strA = "";
                }
                uf6 uf6VarC2 = go0Var2.c();
                if (uf6VarC2 == null || (strB = uf6VarC2.b()) == null) {
                    strB = "";
                }
                pointsProgramView.showProgram(j, strB2, strA, strB, go0Var2.a());
                pointsProgramView.showLoadingProgram(false);
                PointsProgramView pointsProgramView2 = (PointsProgramView) pointsProgramPresenter.getViewState();
                if (pointsProgramView2 != null) {
                    pointsProgramView2.showLoadingProgram(false);
                }
                pointsProgramPresenter.showAgreement();
            }
            pointsProgramPresenter.afterProgramLoad();
            return j59.a;
        }
    }

    public static final class c extends gh4 implements nl3<Integer, j59> {
        public c() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(Integer num) {
            Integer num2 = num;
            PointsProgramView pointsProgramView = (PointsProgramView) PointsProgramPresenter.this.getViewState();
            if (pointsProgramView != null) {
                num2.getClass();
                pointsProgramView.updateBalance(num2.intValue());
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
            PointsProgramView pointsProgramView = (PointsProgramView) PointsProgramPresenter.this.getViewState();
            if (pointsProgramView != null) {
                pointsProgramView.showCouldntUpdateBalance();
            }
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
            PointsProgramView pointsProgramView = (PointsProgramView) PointsProgramPresenter.this.getViewState();
            if (pointsProgramView != null) {
                pointsProgramView.showCouldntGetAgreement();
            }
            return j59.a;
        }
    }

    public static final class f extends gh4 implements nl3<String, j59> {
        public f() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(String str) {
            String str2 = str;
            PointsProgramView pointsProgramView = (PointsProgramView) PointsProgramPresenter.this.getViewState();
            if (pointsProgramView != null) {
                str2.getClass();
                pointsProgramView.showAgreement(str2);
            }
            return j59.a;
        }
    }

    public static final class g extends gh4 implements nl3<List<? extends jo0>, j59> {
        public g() {
            super(1);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // defpackage.nl3
        public final j59 invoke(List<? extends jo0> list) {
            List<? extends jo0> list2 = list;
            PointsProgramView pointsProgramView = (PointsProgramView) PointsProgramPresenter.this.getViewState();
            if (pointsProgramView != 0) {
                list2.getClass();
                pointsProgramView.showTerms(list2);
            }
            return j59.a;
        }
    }

    public static final class h extends gh4 implements nl3<Throwable, j59> {
        public h() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(Throwable th) {
            ((PointsProgramView) PointsProgramPresenter.this.getViewState()).showCouldntGetTerms();
            return j59.a;
        }
    }

    public PointsProgramPresenter(long j, uf3 uf3Var, io0 io0Var, c4 c4Var, jf6 jf6Var) {
        uf3Var.getClass();
        io0Var.getClass();
        c4Var.getClass();
        jf6Var.getClass();
        this.programId = j;
        this.flowRouter = uf3Var;
        this.bonusProgramInteractor = io0Var;
        this.accountInteractor = c4Var;
        this.preferencesRepository = jf6Var;
        this.cardLinkSuffix = new Deeplink.Catalog.BonusProgram(j).d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void afterProgramLoad() {
        showTransfer();
        showTermsOfProgram();
    }

    private final void loadBonusProgram() {
        PointsProgramView pointsProgramView = (PointsProgramView) getViewState();
        if (pointsProgramView != null) {
            pointsProgramView.showLoadingProgram(true);
        }
        io0 io0Var = this.bonusProgramInteractor;
        BasePresenter.disposeOnDestroy$default(this, yb8.d(io0Var.a.e(this.programId).i(ne7.c).f(rj.a()), new a(), new b()), null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showAgreement() {
        io0 io0Var = this.bonusProgramInteractor;
        BasePresenter.disposeOnDestroy$default(this, yb8.d(io0Var.a.d(this.programId).i(ne7.c).f(rj.a()), new e(), new f()), null, 1, null);
    }

    private final void showTermsOfProgram() {
        io0 io0Var = this.bonusProgramInteractor;
        r08 r08VarF = io0Var.a.c(this.programId).i(ne7.c).f(rj.a());
        h90 h90Var = new h90(new g(), 1);
        final h hVar = new h();
        BasePresenter.disposeOnDestroy$default(this, r08VarF.g(h90Var, new qx1() { // from class: y96
            @Override // defpackage.qx1
            public final void accept(Object obj) {
                hVar.invoke(obj);
            }
        }), null, 1, null);
    }

    private final void showTransfer() {
        PointsProgramView pointsProgramView = (PointsProgramView) getViewState();
        if (pointsProgramView != null) {
            pointsProgramView.enableTransfer(this.accountInteractor.a.G0(), this.programId);
        }
    }

    public final String getCardLinkSuffix() {
        return this.cardLinkSuffix;
    }

    public final void onBackPressed() {
        this.flowRouter.c();
    }

    public final void onBalanceMaybeChanged() {
        PointsProgramView pointsProgramView = (PointsProgramView) getViewState();
        if (pointsProgramView != null) {
            pointsProgramView.showUpdatingBalance();
        }
        io0 io0Var = this.bonusProgramInteractor;
        int i = 1;
        BasePresenter.disposeOnDestroy$default(this, io0Var.a.a(this.programId).i(ne7.c).f(rj.a()).g(new h62(new c(), i), new f9(new d(), i)), null, 1, null);
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        loadBonusProgram();
    }

    public final void onRefresh() {
        loadBonusProgram();
    }

    public final void onShareCardClicked() {
        PointsProgramView pointsProgramView = (PointsProgramView) getViewState();
        if (pointsProgramView != null) {
            String str = this.cardLinkSuffix;
            go0 go0Var = this.bonusProgram;
            if (go0Var == null) {
                aa4.j("bonusProgram");
                throw null;
            }
            String strB = go0Var.b();
            String strD = this.preferencesRepository.d();
            go0 go0Var2 = this.bonusProgram;
            if (go0Var2 == null) {
                aa4.j("bonusProgram");
                throw null;
            }
            String strA = go0Var2.a();
            if (strA == null) {
                strA = "";
            }
            pointsProgramView.shareCard(str, strB, strD, strA);
        }
    }

    public final void showLoadingDialog(boolean z) {
        PointsProgramView pointsProgramView = (PointsProgramView) getViewState();
        if (pointsProgramView != null) {
            pointsProgramView.showLoadingDialog(z);
        }
    }
}
