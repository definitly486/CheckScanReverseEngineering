package com.warefly.checkscan.presentation.flows.cobrand.presenter;

import com.warefly.checkscan.auth.presentation.flow.AuthReason;
import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.Deeplink;
import com.warefly.checkscan.presentation.e;
import com.warefly.checkscan.presentation.f;
import com.warefly.checkscan.presentation.flows.cobrand.view.CobrandView;
import defpackage.bu3;
import defpackage.d62;
import defpackage.df7;
import defpackage.f90;
import defpackage.fh7;
import defpackage.gh4;
import defpackage.ig7;
import defpackage.ix;
import defpackage.j59;
import defpackage.jf6;
import defpackage.jh2;
import defpackage.la4;
import defpackage.lk3;
import defpackage.ll3;
import defpackage.mz7;
import defpackage.ne7;
import defpackage.nl3;
import defpackage.p08;
import defpackage.p51;
import defpackage.rj;
import defpackage.t51;
import defpackage.t99;
import defpackage.uf3;
import defpackage.yb8;
import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public final class CobrandPresenter extends BasePresenter<CobrandView> implements bu3 {
    private final p51 cashBackInteractor;
    private final Deeplink.d deeplink;
    private final uf3 flowRouter;
    private final jf6 preferencesRepository;

    public static final class a extends gh4 implements nl3<Throwable, j59> {
        public a() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(Throwable th) {
            th.getClass();
            uf3 uf3Var = CobrandPresenter.this.flowRouter;
            f fVar = new f(new Deeplink.Desktop.Balance(false));
            uf3Var.getClass();
            uf3Var.c.g(fVar);
            return j59.a;
        }
    }

    public static final class b extends gh4 implements nl3<la4, j59> {
        public final /* synthetic */ ll3<j59> f;
        public final /* synthetic */ CobrandPresenter g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(ll3<j59> ll3Var, CobrandPresenter cobrandPresenter) {
            super(1);
            this.f = ll3Var;
            this.g = cobrandPresenter;
        }

        @Override // defpackage.nl3
        public final j59 invoke(la4 la4Var) {
            if (la4Var.a.a) {
                this.f.invoke();
            } else {
                uf3 uf3Var = this.g.flowRouter;
                f fVar = new f(new Deeplink.Desktop.Balance(false));
                uf3Var.getClass();
                uf3Var.c.g(fVar);
            }
            return j59.a;
        }
    }

    public static final class c extends gh4 implements ll3<j59> {
        public c() {
            super(0);
        }

        @Override // defpackage.ll3
        public final j59 invoke() {
            CobrandView cobrandView = (CobrandView) CobrandPresenter.this.getViewState();
            if (cobrandView != null) {
                cobrandView.setLaunchScreen(new fh7(true));
            }
            return j59.a;
        }
    }

    public static final class d extends gh4 implements ll3<j59> {
        public d() {
            super(0);
        }

        @Override // defpackage.ll3
        public final j59 invoke() {
            CobrandPresenter cobrandPresenter = CobrandPresenter.this;
            if (cobrandPresenter.preferencesRepository.G0()) {
                CobrandView cobrandView = (CobrandView) cobrandPresenter.getViewState();
                if (cobrandView != null) {
                    cobrandView.setLaunchScreen(new ig7(d62.Deeplink));
                }
            } else {
                cobrandPresenter.handleAnonUser();
            }
            return j59.a;
        }
    }

    public CobrandPresenter(p51 p51Var, Deeplink.d dVar, jf6 jf6Var, uf3 uf3Var) {
        p51Var.getClass();
        jf6Var.getClass();
        uf3Var.getClass();
        this.cashBackInteractor = p51Var;
        this.deeplink = dVar;
        this.preferencesRepository = jf6Var;
        this.flowRouter = uf3Var;
    }

    private final void checkCobrandUser(ll3<j59> ll3Var) {
        mz7<t99> mz7VarB = this.cashBackInteractor.b.b();
        f90 f90Var = new f90(t51.g, 1);
        mz7VarB.getClass();
        BasePresenter.disposeOnDestroy$default(this, yb8.d(new p08(mz7VarB, f90Var).i(ne7.c).f(rj.a()), new a(), new b(ll3Var, this)), null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void handleAnonUser() {
        String str = null;
        this.flowRouter.c.f((df7[]) Arrays.copyOf(new lk3[]{e.a, new ix(new AuthReason.Login(str, str, 7))}, 2));
    }

    @Override // defpackage.bu3
    public void handleCobrandAbout() {
        checkCobrandUser(new c());
    }

    @Override // defpackage.bu3
    public void handleCreateCard() {
        checkCobrandUser(new d());
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        Deeplink.d dVar = this.deeplink;
        if (dVar != null) {
            dVar.f(this);
            return;
        }
        uf3 uf3Var = this.flowRouter;
        f fVar = new f(new Deeplink.Desktop.Balance(false));
        uf3Var.getClass();
        uf3Var.c.g(fVar);
    }

    public /* synthetic */ CobrandPresenter(p51 p51Var, Deeplink.d dVar, jf6 jf6Var, uf3 uf3Var, int i, jh2 jh2Var) {
        this(p51Var, (i & 2) != 0 ? null : dVar, jf6Var, uf3Var);
    }
}
