package defpackage;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.bonuses.shopPage.presenter.BonusAdmitadNewPresenter;
import com.warefly.checkscan.presentation.bonuses.shopPage.presenter.h;
import com.warefly.checkscan.presentation.bonuses.shopPage.presenter.i;
import com.warefly.checkscan.presentation.bonuses.shopPage.presenter.j;
import com.warefly.checkscan.presentation.bonuses.shopPage.presenter.k;
import com.warefly.checkscan.presentation.bonuses.shopPage.presenter.l;
import com.warefly.checkscan.presentation.bonuses.shopPage.view.BonusAdmitadNewView;

/* JADX INFO: loaded from: classes5.dex */
public abstract class lx5 {

    public static final class a extends lx5 {
        public static final a a = new a();

        @Override // defpackage.lx5
        public final void a(BonusAdmitadNewPresenter.k kVar) {
            kVar.getClass();
            BonusAdmitadNewPresenter bonusAdmitadNewPresenter = BonusAdmitadNewPresenter.this;
            if (bonusAdmitadNewPresenter.repository.x0()) {
                x9 x9Var = bonusAdmitadNewPresenter.admitadPartnerInteractor;
                mz7<px5> mz7VarB = x9Var.a.b(bonusAdmitadNewPresenter.admitadId);
                k3 k3Var = new k3(new s9(1), 1);
                mz7VarB.getClass();
                bonusAdmitadNewPresenter.disposeOnDestroy(yb8.f(new p08(mz7VarB, k3Var).i(ne7.c).f(rj.a()), null, new com.warefly.checkscan.presentation.bonuses.shopPage.presenter.a(bonusAdmitadNewPresenter), 1), "loadCardButton");
            }
        }
    }

    public static final class b extends lx5 {
        public static final b a = new b();

        @Override // defpackage.lx5
        public final void a(BonusAdmitadNewPresenter.k kVar) {
            kVar.getClass();
            final BonusAdmitadNewPresenter bonusAdmitadNewPresenter = BonusAdmitadNewPresenter.this;
            x9 x9Var = bonusAdmitadNewPresenter.admitadPartnerInteractor;
            mz7<vl2> mz7VarF = x9Var.a.f(bonusAdmitadNewPresenter.admitadId);
            m3 m3Var = new m3(v9.g, 1);
            mz7VarF.getClass();
            BasePresenter.disposeOnDestroy$default(bonusAdmitadNewPresenter, yb8.d(new uz7(new xz7(new p08(mz7VarF, m3Var).i(ne7.c).f(rj.a()), new q8(new com.warefly.checkscan.presentation.bonuses.shopPage.presenter.b(bonusAdmitadNewPresenter), 1)), new h6() { // from class: zk0
                @Override // defpackage.h6
                public final void run() {
                    bonusAdmitadNewPresenter.blocksLoadingState.put(ck0.Description, Boolean.FALSE);
                }
            }), com.warefly.checkscan.presentation.bonuses.shopPage.presenter.c.f, new com.warefly.checkscan.presentation.bonuses.shopPage.presenter.d(bonusAdmitadNewPresenter)), null, 1, null);
        }
    }

    public static final class c extends lx5 {
        public static final c a = new c();

        @Override // defpackage.lx5
        public final void a(BonusAdmitadNewPresenter.k kVar) {
            kVar.getClass();
            BonusAdmitadNewPresenter bonusAdmitadNewPresenter = BonusAdmitadNewPresenter.this;
            BonusAdmitadNewView bonusAdmitadNewView = (BonusAdmitadNewView) bonusAdmitadNewPresenter.getViewState();
            if (bonusAdmitadNewView != null) {
                bonusAdmitadNewView.showOfferExpired();
            }
            BonusAdmitadNewView bonusAdmitadNewView2 = (BonusAdmitadNewView) bonusAdmitadNewPresenter.getViewState();
            if (bonusAdmitadNewView2 != null) {
                bonusAdmitadNewView2.showLoading(false);
            }
        }
    }

    public static final class d extends lx5 {
        public static final d a = new d();

        @Override // defpackage.lx5
        public final void a(BonusAdmitadNewPresenter.k kVar) {
            kVar.getClass();
            BonusAdmitadNewPresenter bonusAdmitadNewPresenter = BonusAdmitadNewPresenter.this;
            bonusAdmitadNewPresenter.hotsPaginator = new s26(new com.warefly.checkscan.presentation.bonuses.shopPage.presenter.e(bonusAdmitadNewPresenter), new dx3(new com.warefly.checkscan.presentation.bonuses.shopPage.presenter.f(bonusAdmitadNewPresenter)));
            s26 s26Var = bonusAdmitadNewPresenter.hotsPaginator;
            if (s26Var != null) {
                s26Var.c();
            }
        }
    }

    public static final class e extends lx5 {
        public static final e a = new e();

        @Override // defpackage.lx5
        public final void a(BonusAdmitadNewPresenter.k kVar) {
            kVar.getClass();
            BonusAdmitadNewPresenter bonusAdmitadNewPresenter = BonusAdmitadNewPresenter.this;
            x9 x9Var = bonusAdmitadNewPresenter.admitadPartnerInteractor;
            mz7<rx5> mz7VarJ = x9Var.a.j(bonusAdmitadNewPresenter.admitadId);
            l3 l3Var = new l3(new w9(1), 1);
            mz7VarJ.getClass();
            BasePresenter.disposeOnDestroy$default(bonusAdmitadNewPresenter, yb8.d(new uz7(new xz7(new p08(mz7VarJ, l3Var).i(ne7.c).f(rj.a()), new cl0(new com.warefly.checkscan.presentation.bonuses.shopPage.presenter.g(bonusAdmitadNewPresenter), 0)), new dl0(bonusAdmitadNewPresenter, 0)), h.f, new i(bonusAdmitadNewPresenter)), null, 1, null);
        }
    }

    public static final class f extends lx5 {
        public static final f a = new f();

        @Override // defpackage.lx5
        public final void a(BonusAdmitadNewPresenter.k kVar) {
            kVar.getClass();
            kVar.a();
        }
    }

    public static final class g extends lx5 {
        public static final g a = new g();

        @Override // defpackage.lx5
        public final void a(BonusAdmitadNewPresenter.k kVar) {
            kVar.getClass();
            final BonusAdmitadNewPresenter bonusAdmitadNewPresenter = BonusAdmitadNewPresenter.this;
            x9 x9Var = bonusAdmitadNewPresenter.admitadPartnerInteractor;
            BasePresenter.disposeOnDestroy$default(bonusAdmitadNewPresenter, yb8.d(new uz7(new xz7(x9Var.a.a(bonusAdmitadNewPresenter.admitadId).i(ne7.c).f(rj.a()), new al0(new j(bonusAdmitadNewPresenter), 0)), new h6() { // from class: bl0
                @Override // defpackage.h6
                public final void run() {
                    bonusAdmitadNewPresenter.blocksLoadingState.put(ck0.OnlineShopSteps, Boolean.FALSE);
                }
            }), k.f, new l(bonusAdmitadNewPresenter)), null, 1, null);
        }
    }

    public abstract void a(BonusAdmitadNewPresenter.k kVar);
}
