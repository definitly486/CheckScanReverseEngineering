package com.warefly.checkscan.presentation.bonuses.promocodes.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import defpackage.bm0;
import defpackage.e90;
import defpackage.er6;
import defpackage.gh4;
import defpackage.in0;
import defpackage.j4;
import defpackage.j59;
import defpackage.jl0;
import defpackage.kd;
import defpackage.ll3;
import defpackage.md;
import defpackage.mz7;
import defpackage.ne7;
import defpackage.nl3;
import defpackage.p08;
import defpackage.pd;
import defpackage.qb0;
import defpackage.qf7;
import defpackage.rd;
import defpackage.rj;
import defpackage.rm0;
import defpackage.rp0;
import defpackage.s26;
import defpackage.sq0;
import defpackage.td;
import defpackage.tm0;
import defpackage.uf3;
import defpackage.vd;
import defpackage.w3;
import defpackage.xd;
import defpackage.yb8;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class PromocodesPresenter extends BasePresenter<PromocodesView> {
    private final int catId;
    private final uf3 flowRouter;
    private final bm0 interactor;
    private final boolean isFavorite;
    private s26<er6> promocodesController;
    private final String query;

    public static final class a implements s26.m<er6> {
        public final c a;

        public a(c cVar) {
            this.a = cVar;
        }

        @Override // s26.m
        public final void a(Throwable th) {
            ((PromocodesView) this.a.invoke()).hideLoading(true);
        }

        @Override // s26.m
        public final void b() {
        }

        @Override // s26.m
        public final void c(boolean z) {
        }

        @Override // s26.m
        public final void d(List list, boolean z) {
            list.getClass();
            c cVar = this.a;
            ((PromocodesView) cVar.invoke()).hideLoading(true);
            ((PromocodesView) cVar.invoke()).showPromocodes(list);
        }

        @Override // s26.m
        public final void e(boolean z) {
        }

        @Override // s26.m
        public final void f(boolean z) {
        }

        @Override // s26.m
        public final void g(boolean z) {
            ((PromocodesView) this.a.invoke()).hideLoading(true);
        }

        @Override // s26.m
        public final void h(boolean z) {
            ((PromocodesView) this.a.invoke()).hideLoading(true);
        }
    }

    public static final class b extends gh4 implements nl3<Integer, mz7<List<? extends er6>>> {
        public b() {
            super(1);
        }

        @Override // defpackage.nl3
        public final mz7<List<? extends er6>> invoke(Integer num) {
            int iIntValue = num.intValue();
            PromocodesPresenter promocodesPresenter = PromocodesPresenter.this;
            if (promocodesPresenter.catId != -1) {
                bm0 bm0Var = promocodesPresenter.interactor;
                return new p08(bm0Var.a.p(Integer.valueOf(promocodesPresenter.catId), Integer.valueOf(bm0Var.e), iIntValue), new jl0(tm0.f, 0)).i(ne7.c).f(rj.a());
            }
            if (promocodesPresenter.query.length() > 0) {
                bm0 bm0Var2 = promocodesPresenter.interactor;
                String str = promocodesPresenter.query;
                bm0Var2.getClass();
                str.getClass();
                return new p08(bm0Var2.a.j(str, iIntValue, Integer.valueOf(bm0Var2.e)), new qb0(in0.f, 1)).i(ne7.c).f(rj.a());
            }
            bm0 bm0Var3 = promocodesPresenter.interactor;
            boolean z = promocodesPresenter.isFavorite;
            int i = bm0Var3.e;
            rp0 rp0Var = bm0Var3.a;
            return (z ? new p08(rp0Var.k(iIntValue, Integer.valueOf(i)), new w3(rm0.f, 1)) : new p08(rp0Var.o(iIntValue, Integer.valueOf(i)), new e90(j4.h, 1))).i(ne7.c).f(rj.a());
        }
    }

    public static final class c extends gh4 implements ll3<PromocodesView> {
        public c() {
            super(0);
        }

        @Override // defpackage.ll3
        public final PromocodesView invoke() {
            V viewState = PromocodesPresenter.this.getViewState();
            viewState.getClass();
            return (PromocodesView) viewState;
        }
    }

    public static final class d extends gh4 implements ll3<j59> {
        public final /* synthetic */ boolean f;
        public final /* synthetic */ int g;
        public final /* synthetic */ PromocodesPresenter h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(boolean z, int i, PromocodesPresenter promocodesPresenter) {
            super(0);
            this.f = z;
            this.g = i;
            this.h = promocodesPresenter;
        }

        @Override // defpackage.ll3
        public final j59 invoke() {
            boolean z = this.f;
            int i = this.g;
            if (z) {
                new kd.e.b.C0241b(i).a();
                new md(i).a();
            } else {
                new kd.e.b.f(i).a();
                new td(i).a();
            }
            PromocodesPresenter promocodesPresenter = this.h;
            s26 s26Var = promocodesPresenter.promocodesController;
            if (s26Var != null) {
                s26Var.c();
            }
            PromocodesView promocodesView = (PromocodesView) promocodesPresenter.getViewState();
            if (promocodesView != null) {
                promocodesView.sendPromocodesUpdateResult();
            }
            return j59.a;
        }
    }

    public PromocodesPresenter(uf3 uf3Var, bm0 bm0Var, int i, String str, boolean z) {
        uf3Var.getClass();
        bm0Var.getClass();
        str.getClass();
        this.flowRouter = uf3Var;
        this.interactor = bm0Var;
        this.catId = i;
        this.query = str;
        this.isFavorite = z;
    }

    private final void loadPromocodes() {
        s26<er6> s26Var = new s26<>(new b(), new a(new c()));
        s26Var.c();
        this.promocodesController = s26Var;
    }

    public final void loadMorePromocodes() {
        s26<er6> s26Var = this.promocodesController;
        if (s26Var != null) {
            s26Var.a();
        }
    }

    public final void onBackPressed() {
        this.flowRouter.c();
    }

    public final void onFavoriteClicked(int i, boolean z) {
        BasePresenter.disposeOnDestroy$default(this, yb8.g(this.interactor.e(i, z).i(ne7.c).f(rj.a()), null, new d(z, i, this), 1), null, 1, null);
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        loadPromocodes();
    }

    public final void onPromocodeClicked(int i) {
        if (this.catId != -1) {
            new vd(i).a();
            new pd(i).a();
        } else if (this.query.length() > 0) {
            new xd(i).a();
            new rd(i).a();
        }
        uf3 uf3Var = this.flowRouter;
        qf7 qf7Var = new qf7(i, sq0.COUPON, 1);
        uf3Var.getClass();
        uf3Var.c.d(qf7Var);
    }
}
