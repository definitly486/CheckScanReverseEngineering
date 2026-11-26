package com.warefly.checkscan.presentation.bonuses.coupons.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.bonuses.coupons.presenter.CouponsPresenter;
import com.warefly.checkscan.presentation.bonuses.coupons.view.CouponsView;
import defpackage.cp2;
import defpackage.gg7;
import defpackage.gh4;
import defpackage.gr6;
import defpackage.h6;
import defpackage.h63;
import defpackage.hv;
import defpackage.j59;
import defpackage.ll3;
import defpackage.mz7;
import defpackage.ne7;
import defpackage.nl3;
import defpackage.p08;
import defpackage.q42;
import defpackage.q9;
import defpackage.rj;
import defpackage.rr6;
import defpackage.uf3;
import defpackage.uz7;
import defpackage.x46;
import defpackage.x9;
import defpackage.xz7;
import defpackage.yb8;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class CouponsPresenter extends BasePresenter<CouponsView> {
    private final long admitadId;
    private final x9 admitadPartnerInteractor;
    private final q42 couponsInteractor;
    private final uf3 router;

    public static final class a extends gh4 implements nl3<cp2, j59> {
        public a() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(cp2 cp2Var) {
            CouponsView couponsView = (CouponsView) CouponsPresenter.this.getViewState();
            if (couponsView != null) {
                couponsView.showLoading(true);
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
            th.getClass();
            CouponsView couponsView = (CouponsView) CouponsPresenter.this.getViewState();
            if (couponsView != null) {
                couponsView.showError();
            }
            return j59.a;
        }
    }

    public static final class c extends gh4 implements nl3<List<? extends gr6>, j59> {
        public c() {
            super(1);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // defpackage.nl3
        public final j59 invoke(List<? extends gr6> list) {
            List<? extends gr6> list2 = list;
            CouponsView couponsView = (CouponsView) CouponsPresenter.this.getViewState();
            if (couponsView != 0) {
                list2.getClass();
                couponsView.setCoupons(list2);
            }
            return j59.a;
        }
    }

    public static final class d extends gh4 implements nl3<Throwable, j59> {
        public final /* synthetic */ boolean g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(boolean z) {
            super(1);
            this.g = z;
        }

        @Override // defpackage.nl3
        public final j59 invoke(Throwable th) {
            th.getClass();
            CouponsView couponsView = (CouponsView) CouponsPresenter.this.getViewState();
            if (couponsView != null) {
                couponsView.showFavoriteStatusIsChanged(false, this.g);
            }
            return j59.a;
        }
    }

    public static final class e extends gh4 implements ll3<j59> {
        public final /* synthetic */ boolean g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(boolean z) {
            super(0);
            this.g = z;
        }

        @Override // defpackage.ll3
        public final j59 invoke() {
            CouponsPresenter couponsPresenter = CouponsPresenter.this;
            CouponsView couponsView = (CouponsView) couponsPresenter.getViewState();
            if (couponsView != null) {
                couponsView.showFavoriteStatusIsChanged(true, this.g);
            }
            couponsPresenter.loadCoupons();
            return j59.a;
        }
    }

    public CouponsPresenter(uf3 uf3Var, long j, x9 x9Var, q42 q42Var) {
        uf3Var.getClass();
        x9Var.getClass();
        q42Var.getClass();
        this.router = uf3Var;
        this.admitadId = j;
        this.admitadPartnerInteractor = x9Var;
        this.couponsInteractor = q42Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void loadCoupons$lambda$1(CouponsPresenter couponsPresenter) {
        CouponsView couponsView = (CouponsView) couponsPresenter.getViewState();
        if (couponsView != null) {
            couponsView.showLoading(false);
        }
    }

    public final void loadCoupons() {
        x9 x9Var = this.admitadPartnerInteractor;
        mz7<List<rr6>> mz7VarG = x9Var.a.g(this.admitadId);
        q9 q9Var = new q9(new x46(x9Var), 0);
        mz7VarG.getClass();
        BasePresenter.disposeOnDestroy$default(this, yb8.d(new uz7(new xz7(new p08(mz7VarG, q9Var).i(ne7.c).f(rj.a()), new hv(new a(), 1)), new h6() { // from class: r42
            @Override // defpackage.h6
            public final void run() {
                CouponsPresenter.loadCoupons$lambda$1(this.a);
            }
        }), new b(), new c()), null, 1, null);
    }

    public final void onBackClick() {
        this.router.c();
    }

    public final void onCouponCLick(long j) {
        this.router.d(new gg7(j));
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        loadCoupons();
    }

    public final void setFavouriteCoupon(long j, boolean z) {
        BasePresenter.disposeOnDestroy$default(this, yb8.e(this.couponsInteractor.a.f(new h63(z, j)).i(ne7.c).f(rj.a()), new e(z), new d(z)), null, 1, null);
    }

    public final void tryAgainClick() {
        loadCoupons();
    }
}
