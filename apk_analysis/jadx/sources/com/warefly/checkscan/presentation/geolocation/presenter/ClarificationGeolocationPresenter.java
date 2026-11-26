package com.warefly.checkscan.presentation.geolocation.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.geolocation.presenter.ClarificationGeolocationPresenter;
import defpackage.c4;
import defpackage.cg7;
import defpackage.cp2;
import defpackage.du4;
import defpackage.fl3;
import defpackage.gh4;
import defpackage.h6;
import defpackage.hh4;
import defpackage.iv;
import defpackage.j59;
import defpackage.jf6;
import defpackage.kd;
import defpackage.l17;
import defpackage.ne7;
import defpackage.nl3;
import defpackage.p08;
import defpackage.p61;
import defpackage.qe;
import defpackage.qr5;
import defpackage.qx1;
import defpackage.r08;
import defpackage.rj;
import defpackage.rm3;
import defpackage.s4;
import defpackage.sk1;
import defpackage.tk1;
import defpackage.tq5;
import defpackage.uf3;
import defpackage.uk1;
import defpackage.uz7;
import defpackage.vk1;
import defpackage.wz7;
import defpackage.xz7;
import defpackage.y3;
import defpackage.yb8;
import defpackage.yo0;
import defpackage.z79;

/* JADX INFO: loaded from: classes5.dex */
public final class ClarificationGeolocationPresenter extends BasePresenter<ClarificationGeolocationView> {
    private final c4 accountInteractor;
    private final qe analyticsRepository;
    private final p61 catalogInteractor;
    private final uf3 flowRouter;
    private final jf6 preferencesRepository;
    private int regionId;
    private String regionName;

    public static final class a extends gh4 implements nl3<Throwable, j59> {
        public a() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(Throwable th) {
            ClarificationGeolocationView clarificationGeolocationView = (ClarificationGeolocationView) ClarificationGeolocationPresenter.this.getViewState();
            if (clarificationGeolocationView != null) {
                clarificationGeolocationView.showDefaultError();
            }
            return j59.a;
        }
    }

    public static final class b extends gh4 implements nl3<cp2, j59> {
        public b() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(cp2 cp2Var) {
            ClarificationGeolocationView clarificationGeolocationView = (ClarificationGeolocationView) ClarificationGeolocationPresenter.this.getViewState();
            if (clarificationGeolocationView != null) {
                clarificationGeolocationView.showButtonLoading(true);
            }
            return j59.a;
        }
    }

    public static final class c extends gh4 implements nl3<z79.a, j59> {
        public c() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(z79.a aVar) {
            ClarificationGeolocationPresenter.this.updateByCity();
            return j59.a;
        }
    }

    public static final class d extends gh4 implements nl3<l17, j59> {
        public d() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(l17 l17Var) {
            l17 l17Var2 = l17Var;
            ClarificationGeolocationPresenter clarificationGeolocationPresenter = ClarificationGeolocationPresenter.this;
            ClarificationGeolocationView clarificationGeolocationView = (ClarificationGeolocationView) clarificationGeolocationPresenter.getViewState();
            if (clarificationGeolocationView != null) {
                clarificationGeolocationView.showLoading(false);
            }
            l17Var2.getClass();
            clarificationGeolocationPresenter.checkDefinedCity(l17Var2);
            return j59.a;
        }
    }

    public static final class e extends gh4 implements nl3<Throwable, j59> {
        public e() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(Throwable th) {
            ClarificationGeolocationPresenter clarificationGeolocationPresenter = ClarificationGeolocationPresenter.this;
            ClarificationGeolocationView clarificationGeolocationView = (ClarificationGeolocationView) clarificationGeolocationPresenter.getViewState();
            if (clarificationGeolocationView != null) {
                clarificationGeolocationView.showLoading(false);
            }
            new kd.i.a.b.C0266a().a();
            clarificationGeolocationPresenter.flowRouter.j(new cg7(fl3.FailClarification));
            return j59.a;
        }
    }

    public static final class f extends gh4 implements nl3<l17, j59> {
        public f() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(l17 l17Var) {
            l17 l17Var2 = l17Var;
            l17Var2.getClass();
            ClarificationGeolocationPresenter.this.checkDefinedCity(l17Var2);
            return j59.a;
        }
    }

    public static final class g extends gh4 implements nl3<Throwable, j59> {
        public g() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(Throwable th) {
            new kd.i.a.b.C0266a().a();
            ClarificationGeolocationPresenter.this.flowRouter.j(new cg7(fl3.FailClarification));
            return j59.a;
        }
    }

    public static final class h extends gh4 implements nl3<du4, j59> {
        public h() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(du4 du4Var) {
            du4 du4Var2 = du4Var;
            ClarificationGeolocationPresenter clarificationGeolocationPresenter = ClarificationGeolocationPresenter.this;
            ClarificationGeolocationView clarificationGeolocationView = (ClarificationGeolocationView) clarificationGeolocationPresenter.getViewState();
            if (clarificationGeolocationView != null) {
                clarificationGeolocationView.showLoading(false);
            }
            du4Var2.getClass();
            clarificationGeolocationPresenter.getFirstClosestRegions(du4Var2);
            return j59.a;
        }
    }

    public static final class i extends gh4 implements nl3<Throwable, j59> {
        public i() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(Throwable th) {
            ClarificationGeolocationPresenter clarificationGeolocationPresenter = ClarificationGeolocationPresenter.this;
            ClarificationGeolocationView clarificationGeolocationView = (ClarificationGeolocationView) clarificationGeolocationPresenter.getViewState();
            if (clarificationGeolocationView != null) {
                clarificationGeolocationView.showLoading(false);
            }
            new kd.i.a.b.C0266a().a();
            clarificationGeolocationPresenter.flowRouter.j(new cg7(fl3.FailClarification));
            return j59.a;
        }
    }

    public ClarificationGeolocationPresenter(uf3 uf3Var, p61 p61Var, c4 c4Var, jf6 jf6Var, qe qeVar) {
        uf3Var.getClass();
        p61Var.getClass();
        c4Var.getClass();
        jf6Var.getClass();
        qeVar.getClass();
        this.flowRouter = uf3Var;
        this.catalogInteractor = p61Var;
        this.accountInteractor = c4Var;
        this.preferencesRepository = jf6Var;
        this.analyticsRepository = qeVar;
        this.regionId = -1;
        this.regionName = "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void checkDefinedCity(l17 l17Var) {
        if (l17Var.a() == 0) {
            new kd.i.a.b.C0266a().a();
            this.flowRouter.j(new cg7(fl3.FailClarification));
            return;
        }
        new kd.i.a.b.C0267b("Success").a();
        this.catalogInteractor.b(l17Var);
        ClarificationGeolocationView clarificationGeolocationView = (ClarificationGeolocationView) getViewState();
        if (clarificationGeolocationView != null) {
            clarificationGeolocationView.showSuggestCity(l17Var);
        }
        this.regionId = l17Var.a();
        this.regionName = l17Var.b();
    }

    private final void confirmCity(int i2) {
        new kd.i.a.AbstractC0264a.c("Ok").a();
        c4 c4Var = this.accountInteractor;
        String strValueOf = String.valueOf(i2);
        c4Var.getClass();
        strValueOf.getClass();
        r08 r08VarF = new p08(c4Var.b.j(strValueOf), new y3(new s4(c4Var, strValueOf), 0)).i(ne7.c).f(rj.a());
        final a aVar = new a();
        disposeOnDestroy(yb8.f(new uz7(new xz7(new wz7(r08VarF, new qx1() { // from class: qk1
            @Override // defpackage.qx1
            public final void accept(Object obj) {
                aVar.invoke(obj);
            }
        }), new yo0(new b(), 1)), new h6() { // from class: rk1
            @Override // defpackage.h6
            public final void run() {
                ClarificationGeolocationPresenter.confirmCity$lambda$8(this.a);
            }
        }), null, new c(), 1), "confirmCity");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void confirmCity$lambda$8(ClarificationGeolocationPresenter clarificationGeolocationPresenter) {
        ClarificationGeolocationView clarificationGeolocationView = (ClarificationGeolocationView) clarificationGeolocationPresenter.getViewState();
        if (clarificationGeolocationView != null) {
            clarificationGeolocationView.showButtonLoading(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void getFirstClosestRegions(du4 du4Var) {
        r08 r08VarF = this.catalogInteractor.a(du4Var).i(ne7.c).f(rj.a());
        iv ivVar = new iv(new f(), 1);
        final g gVar = new g();
        BasePresenter.disposeOnDestroy$default(this, r08VarF.g(ivVar, new qx1() { // from class: pk1
            @Override // defpackage.qx1
            public final void accept(Object obj) {
                gVar.invoke(obj);
            }
        }), null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateByCity() {
        this.catalogInteractor.b(new l17(this.regionId, this.regionName));
        this.preferencesRepository.a0();
        this.flowRouter.g(com.warefly.checkscan.presentation.e.a);
    }

    public final void getBonusRegionByIP() {
        ClarificationGeolocationView clarificationGeolocationView = (ClarificationGeolocationView) getViewState();
        if (clarificationGeolocationView != null) {
            clarificationGeolocationView.showLoading(true);
        }
        int i2 = 0;
        BasePresenter.disposeOnDestroy$default(this, this.catalogInteractor.a.a().i(ne7.c).f(rj.a()).g(new uk1(new d(), i2), new vk1(new e(), i2)), null, 1, null);
    }

    public final void pressedCorrect() {
        confirmCity(this.regionId);
    }

    public final void pressedNo() {
        new kd.i.a.AbstractC0264a.C0265a("Change").a();
        this.flowRouter.j(new cg7(fl3.Location));
    }

    public final void setLocationProperty(boolean z) {
        this.analyticsRepository.a(z);
    }

    public final void updateLocation() {
        ClarificationGeolocationView clarificationGeolocationView = (ClarificationGeolocationView) getViewState();
        if (clarificationGeolocationView != null) {
            clarificationGeolocationView.showLoading(true);
        }
        qr5 qr5VarE = ((tq5) this.catalogInteractor.h.getValue()).g(ne7.c).e(rj.a());
        int i2 = 0;
        hh4 hh4Var = new hh4(new sk1(new h(), i2), new tk1(new i(), i2), rm3.c);
        qr5VarE.a(hh4Var);
        BasePresenter.disposeOnDestroy$default(this, hh4Var, null, 1, null);
    }
}
