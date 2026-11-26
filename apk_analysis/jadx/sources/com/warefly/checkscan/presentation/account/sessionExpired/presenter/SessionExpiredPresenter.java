package com.warefly.checkscan.presentation.account.sessionExpired.presenter;

import com.warefly.checkscan.auth.presentation.flow.AuthReason;
import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.account.sessionExpired.presenter.SessionExpiredPresenter;
import com.warefly.checkscan.presentation.e;
import defpackage.c00;
import defpackage.cp2;
import defpackage.df7;
import defpackage.gh4;
import defpackage.h6;
import defpackage.ix;
import defpackage.j59;
import defpackage.kd;
import defpackage.kv;
import defpackage.lk3;
import defpackage.ne7;
import defpackage.nl3;
import defpackage.qx1;
import defpackage.r08;
import defpackage.rj;
import defpackage.t57;
import defpackage.uf3;
import defpackage.uz7;
import defpackage.vz;
import defpackage.xu4;
import defpackage.xz7;
import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public final class SessionExpiredPresenter extends BasePresenter<SessionExpiredView> {
    private final kv authInteractor;
    private final uf3 flowRouter;

    public static final class a extends gh4 implements nl3<cp2, j59> {
        public a() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(cp2 cp2Var) {
            new kd.a.h.b().a();
            SessionExpiredView sessionExpiredView = (SessionExpiredView) SessionExpiredPresenter.this.getViewState();
            if (sessionExpiredView != null) {
                sessionExpiredView.showLoading(true);
            }
            return j59.a;
        }
    }

    public static final class b extends gh4 implements nl3<xu4, j59> {
        public b() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(xu4 xu4Var) {
            SessionExpiredPresenter.this.flowRouter.c.f((df7[]) Arrays.copyOf(new lk3[]{e.a, new ix(new AuthReason.Login((String) null, (String) null, 7))}, 2));
            return j59.a;
        }
    }

    public static final class c extends gh4 implements nl3<Throwable, j59> {
        public c() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(Throwable th) {
            th.getClass();
            SessionExpiredView sessionExpiredView = (SessionExpiredView) SessionExpiredPresenter.this.getViewState();
            if (sessionExpiredView != null) {
                sessionExpiredView.showCouldntLogout();
            }
            return j59.a;
        }
    }

    public SessionExpiredPresenter(uf3 uf3Var, kv kvVar) {
        uf3Var.getClass();
        kvVar.getClass();
        this.flowRouter = uf3Var;
        this.authInteractor = kvVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onBtnGoClicked$lambda$2(SessionExpiredPresenter sessionExpiredPresenter) {
        SessionExpiredView sessionExpiredView = (SessionExpiredView) sessionExpiredPresenter.getViewState();
        if (sessionExpiredView != null) {
            sessionExpiredView.showLoading(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onFirstViewAttach$lambda$0(SessionExpiredPresenter sessionExpiredPresenter, Object obj) {
        obj.getClass();
        uf3 uf3Var = sessionExpiredPresenter.flowRouter;
        uf3Var.getClass();
        uf3Var.c.g(e.a);
    }

    public final void onBackPressed() {
        uf3 uf3Var = this.flowRouter;
        uf3Var.getClass();
        uf3Var.b(new c00(null), new vz());
    }

    public final synchronized void onBtnGoClicked() {
        r08 r08VarF = this.authInteractor.d().i(ne7.c).f(rj.a());
        final a aVar = new a();
        cp2 cp2VarSubscribeIfPayloadIsFree = subscribeIfPayloadIsFree(new uz7(new xz7(r08VarF, new qx1() { // from class: yq7
            @Override // defpackage.qx1
            public final void accept(Object obj) {
                aVar.invoke(obj);
            }
        }), new h6() { // from class: zq7
            @Override // defpackage.h6
            public final void run() {
                SessionExpiredPresenter.onBtnGoClicked$lambda$2(this.a);
            }
        }), new b(), new c());
        if (cp2VarSubscribeIfPayloadIsFree != null) {
            BasePresenter.disposeOnDestroy$default(this, cp2VarSubscribeIfPayloadIsFree, null, 1, null);
        }
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        this.flowRouter.l(new t57() { // from class: xq7
            @Override // defpackage.t57
            public final void onResult(Object obj) {
                SessionExpiredPresenter.onFirstViewAttach$lambda$0(this.a, obj);
            }
        });
    }

    public final synchronized void onSendFeedback() {
        if (!isRequestInProgress()) {
            new kd.a.h.d().a();
            SessionExpiredView sessionExpiredView = (SessionExpiredView) getViewState();
            if (sessionExpiredView != null) {
                sessionExpiredView.startFeedback();
            }
        }
    }
}
