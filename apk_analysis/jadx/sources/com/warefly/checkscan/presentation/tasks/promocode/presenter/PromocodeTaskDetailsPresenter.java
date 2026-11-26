package com.warefly.checkscan.presentation.tasks.promocode.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.tasks.promocode.view.PromocodeTaskDetailsView;
import defpackage.a32;
import defpackage.aa4;
import defpackage.ah;
import defpackage.b06;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.df3;
import defpackage.e02;
import defpackage.hn8;
import defpackage.i57;
import defpackage.ik1;
import defpackage.j59;
import defpackage.jk1;
import defpackage.kd;
import defpackage.kk1;
import defpackage.no8;
import defpackage.pg8;
import defpackage.pq6;
import defpackage.px;
import defpackage.pz3;
import defpackage.qq6;
import defpackage.r57;
import defpackage.s57;
import defpackage.s6;
import defpackage.sq6;
import defpackage.tb7;
import defpackage.tq6;
import defpackage.uf3;
import defpackage.up8;
import defpackage.v73;
import defpackage.vq6;
import defpackage.w73;
import defpackage.x73;
import defpackage.xg5;
import defpackage.y73;
import defpackage.zl2;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.conscrypt.metrics.ConscryptStatsLog;

/* JADX INFO: loaded from: classes5.dex */
public final class PromocodeTaskDetailsPresenter extends BasePresenter<PromocodeTaskDetailsView> implements vq6.a, pq6.a, com.warefly.checkscan.shared.infoBottomSheet.presentation.a.b {
    private final jk1 claimPromocodeTaskUseCase;
    private final zl2 desktopInteractor;
    private final w73 fetchPromocodeCodeUseCase;
    private final y73 fetchPromocodeTaskUseCase;
    private final uf3 flowRouter;
    private final xg5<tq6> sheetContent;
    private final up8 showcaseAnalytics;
    private final int taskId;

    @bd2(c = "com.warefly.checkscan.presentation.tasks.promocode.presenter.PromocodeTaskDetailsPresenter$loadContent$1", f = "PromocodeTaskDetailsPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class a extends pg8 implements bm3<i57<? extends tq6>, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public a(e02<? super a> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            a aVar = PromocodeTaskDetailsPresenter.this.new a(e02Var);
            aVar.l = obj;
            return aVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(i57<? extends tq6> i57Var, e02<? super j59> e02Var) {
            return ((a) create(i57Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            Object value;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            i57 i57Var = (i57) this.l;
            boolean z = i57Var instanceof i57.a;
            PromocodeTaskDetailsPresenter promocodeTaskDetailsPresenter = PromocodeTaskDetailsPresenter.this;
            if (z) {
                PromocodeTaskDetailsView promocodeTaskDetailsView = (PromocodeTaskDetailsView) promocodeTaskDetailsPresenter.getViewState();
                if (promocodeTaskDetailsView != null) {
                    promocodeTaskDetailsView.showErrorState(true);
                }
                PromocodeTaskDetailsView promocodeTaskDetailsView2 = (PromocodeTaskDetailsView) promocodeTaskDetailsPresenter.getViewState();
                if (promocodeTaskDetailsView2 != null) {
                    promocodeTaskDetailsView2.showLoading(false);
                }
            } else if (aa4.e(i57Var, i57.b.a)) {
                PromocodeTaskDetailsView promocodeTaskDetailsView3 = (PromocodeTaskDetailsView) promocodeTaskDetailsPresenter.getViewState();
                if (promocodeTaskDetailsView3 != null) {
                    promocodeTaskDetailsView3.showErrorState(false);
                }
                PromocodeTaskDetailsView promocodeTaskDetailsView4 = (PromocodeTaskDetailsView) promocodeTaskDetailsPresenter.getViewState();
                if (promocodeTaskDetailsView4 != null) {
                    promocodeTaskDetailsView4.showLoading(true);
                }
            } else if (i57Var instanceof i57.c) {
                PromocodeTaskDetailsView promocodeTaskDetailsView5 = (PromocodeTaskDetailsView) promocodeTaskDetailsPresenter.getViewState();
                if (promocodeTaskDetailsView5 != null) {
                    promocodeTaskDetailsView5.showErrorState(false);
                }
                PromocodeTaskDetailsView promocodeTaskDetailsView6 = (PromocodeTaskDetailsView) promocodeTaskDetailsPresenter.getViewState();
                if (promocodeTaskDetailsView6 != null) {
                    promocodeTaskDetailsView6.showLoading(false);
                }
                xg5 xg5Var = promocodeTaskDetailsPresenter.sheetContent;
                do {
                    value = xg5Var.getValue();
                } while (!xg5Var.a(value, (tq6) ((i57.c) i57Var).a));
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.tasks.promocode.presenter.PromocodeTaskDetailsPresenter$onActivatePromocodeClicked$1", f = "PromocodeTaskDetailsPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class b extends pg8 implements bm3<i57<? extends s6>, e02<? super j59>, Object> {
        public /* synthetic */ Object l;
        public final /* synthetic */ String n;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(String str, e02<? super b> e02Var) {
            super(2, e02Var);
            this.n = str;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            b bVar = PromocodeTaskDetailsPresenter.this.new b(this.n, e02Var);
            bVar.l = obj;
            return bVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(i57<? extends s6> i57Var, e02<? super j59> e02Var) {
            return ((b) create(i57Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            i57 i57Var = (i57) this.l;
            boolean z = i57Var instanceof i57.a;
            PromocodeTaskDetailsPresenter promocodeTaskDetailsPresenter = PromocodeTaskDetailsPresenter.this;
            if (z) {
                PromocodeTaskDetailsView promocodeTaskDetailsView = (PromocodeTaskDetailsView) promocodeTaskDetailsPresenter.getViewState();
                if (promocodeTaskDetailsView != null) {
                    promocodeTaskDetailsView.showError();
                }
                promocodeTaskDetailsPresenter.showClaimButtonLoading(false);
            } else if (aa4.e(i57Var, i57.b.a)) {
                promocodeTaskDetailsPresenter.showActivateButtonLoading(true);
            } else if (i57Var instanceof i57.c) {
                promocodeTaskDetailsPresenter.showActivateButtonLoading(false);
                String str = ((s6) ((i57.c) i57Var).a).a;
                if (str != null) {
                    promocodeTaskDetailsPresenter.handlePromocodeActivate(str);
                }
                if (str != null && !str.equals("Промокоды закончились")) {
                    PromocodeTaskDetailsView promocodeTaskDetailsView2 = (PromocodeTaskDetailsView) promocodeTaskDetailsPresenter.getViewState();
                    if (promocodeTaskDetailsView2 != null) {
                        promocodeTaskDetailsView2.showPromocodeCopied(str);
                    }
                    PromocodeTaskDetailsView promocodeTaskDetailsView3 = (PromocodeTaskDetailsView) promocodeTaskDetailsPresenter.getViewState();
                    if (promocodeTaskDetailsView3 != null) {
                        promocodeTaskDetailsView3.openUrl(this.n);
                    }
                }
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.tasks.promocode.presenter.PromocodeTaskDetailsPresenter$onCheckRewardClicked$1", f = "PromocodeTaskDetailsPresenter.kt", l = {ConscryptStatsLog.TLS_HANDSHAKE_REPORTED__CIPHER_SUITE__TLS_RSA_WITH_AES_256_GCM_SHA384}, m = "invokeSuspend")
    public static final class c extends pg8 implements bm3<i57<? extends kk1>, e02<? super j59>, Object> {
        public int l;
        public /* synthetic */ Object m;

        public c(e02<? super c> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            c cVar = PromocodeTaskDetailsPresenter.this.new c(e02Var);
            cVar.m = obj;
            return cVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(i57<? extends kk1> i57Var, e02<? super j59> e02Var) {
            return ((c) create(i57Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.l;
            PromocodeTaskDetailsPresenter promocodeTaskDetailsPresenter = PromocodeTaskDetailsPresenter.this;
            if (i == 0) {
                r57.b(obj);
                i57 i57Var = (i57) this.m;
                if (i57Var instanceof i57.a) {
                    PromocodeTaskDetailsView promocodeTaskDetailsView = (PromocodeTaskDetailsView) promocodeTaskDetailsPresenter.getViewState();
                    if (promocodeTaskDetailsView != null) {
                        promocodeTaskDetailsView.showError();
                    }
                    promocodeTaskDetailsPresenter.showClaimButtonLoading(false);
                } else if (aa4.e(i57Var, i57.b.a)) {
                    promocodeTaskDetailsPresenter.showClaimButtonLoading(true);
                } else if (i57Var instanceof i57.c) {
                    promocodeTaskDetailsPresenter.showClaimButtonLoading(false);
                    kk1 kk1Var = (kk1) ((i57.c) i57Var).a;
                    if (kk1Var != null) {
                        promocodeTaskDetailsPresenter.handleClaimResult(kk1Var);
                    }
                    zl2 zl2Var = promocodeTaskDetailsPresenter.desktopInteractor;
                    this.l = 1;
                    if (zl2Var.a(zl2.a.h.a, this) == a32Var) {
                        return a32Var;
                    }
                }
                return j59.a;
            }
            if (i != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            promocodeTaskDetailsPresenter.flowRouter.c();
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.tasks.promocode.presenter.PromocodeTaskDetailsPresenter$onFirstViewAttach$1", f = "PromocodeTaskDetailsPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class d extends pg8 implements bm3<tq6, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public d(e02<? super d> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            d dVar = PromocodeTaskDetailsPresenter.this.new d(e02Var);
            dVar.l = obj;
            return dVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(tq6 tq6Var, e02<? super j59> e02Var) {
            return ((d) create(tq6Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            PromocodeTaskDetailsView promocodeTaskDetailsView;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            tq6 tq6Var = (tq6) this.l;
            if (tq6Var != null && (promocodeTaskDetailsView = (PromocodeTaskDetailsView) PromocodeTaskDetailsPresenter.this.getViewState()) != null) {
                promocodeTaskDetailsView.showDetails(tq6Var);
            }
            return j59.a;
        }
    }

    public PromocodeTaskDetailsPresenter(int i, uf3 uf3Var, y73 y73Var, w73 w73Var, jk1 jk1Var, zl2 zl2Var, up8 up8Var) {
        uf3Var.getClass();
        y73Var.getClass();
        w73Var.getClass();
        jk1Var.getClass();
        zl2Var.getClass();
        up8Var.getClass();
        this.taskId = i;
        this.flowRouter = uf3Var;
        this.fetchPromocodeTaskUseCase = y73Var;
        this.fetchPromocodeCodeUseCase = w73Var;
        this.claimPromocodeTaskUseCase = jk1Var;
        this.desktopInteractor = zl2Var;
        this.showcaseAnalytics = up8Var;
        this.sheetContent = px.a(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void handleClaimResult(kk1 kk1Var) {
        if (kk1Var instanceof no8) {
            this.showcaseAnalytics.p(this.taskId);
            PromocodeTaskDetailsView promocodeTaskDetailsView = (PromocodeTaskDetailsView) getViewState();
            if (promocodeTaskDetailsView != null) {
                promocodeTaskDetailsView.showTaskSuccess(this.taskId, (no8) kk1Var);
                return;
            }
            return;
        }
        if (kk1Var instanceof hn8) {
            this.showcaseAnalytics.j(this.taskId);
            PromocodeTaskDetailsView promocodeTaskDetailsView2 = (PromocodeTaskDetailsView) getViewState();
            if (promocodeTaskDetailsView2 != null) {
                promocodeTaskDetailsView2.showTaskError((hn8) kk1Var);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void handlePromocodeActivate(String str) {
        Integer numValueOf;
        tq6 value;
        tq6 tq6Var;
        tq6 value2 = this.sheetContent.getValue();
        if (value2 != null) {
            Iterator<pz3> it = value2.b.iterator();
            int i = 0;
            while (true) {
                if (!it.hasNext()) {
                    i = -1;
                    break;
                } else if (it.next() instanceof sq6) {
                    break;
                } else {
                    i++;
                }
            }
            numValueOf = Integer.valueOf(i);
        } else {
            numValueOf = null;
        }
        if ((numValueOf != null && numValueOf.intValue() == -1) || numValueOf == null) {
            return;
        }
        ArrayList arrayList = new ArrayList(value2.b);
        Object obj = arrayList.get(numValueOf.intValue());
        if ((obj instanceof sq6 ? (sq6) obj : null) != null) {
            arrayList.set(numValueOf.intValue(), new sq6(str));
            xg5<tq6> xg5Var = this.sheetContent;
            do {
                value = xg5Var.getValue();
                tq6Var = value;
            } while (!xg5Var.a(value, tq6Var != null ? new tq6(tq6Var.a, arrayList, tq6Var.c) : null));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showActivateButtonLoading(boolean z) {
        Integer numValueOf;
        tq6 value;
        tq6 tq6Var;
        tq6 value2 = this.sheetContent.getValue();
        if (value2 != null) {
            Iterator<pz3> it = value2.b.iterator();
            int i = 0;
            while (true) {
                if (!it.hasNext()) {
                    i = -1;
                    break;
                }
                pz3 next = it.next();
                if ((next instanceof qq6) && ((qq6) next).a == qq6.a.Activate) {
                    break;
                } else {
                    i++;
                }
            }
            numValueOf = Integer.valueOf(i);
        } else {
            numValueOf = null;
        }
        if ((numValueOf != null && numValueOf.intValue() == -1) || numValueOf == null) {
            return;
        }
        ArrayList arrayList = new ArrayList(value2.b);
        Object obj = arrayList.get(numValueOf.intValue());
        qq6 qq6Var = obj instanceof qq6 ? (qq6) obj : null;
        if (qq6Var != null) {
            arrayList.set(numValueOf.intValue(), qq6.d(qq6Var, z));
            xg5<tq6> xg5Var = this.sheetContent;
            do {
                value = xg5Var.getValue();
                tq6Var = value;
            } while (!xg5Var.a(value, tq6Var != null ? new tq6(tq6Var.a, arrayList, tq6Var.c) : null));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showClaimButtonLoading(boolean z) {
        Integer numValueOf;
        tq6 value;
        tq6 tq6Var;
        tq6 value2 = this.sheetContent.getValue();
        if (value2 != null) {
            Iterator<pz3> it = value2.b.iterator();
            int i = 0;
            while (true) {
                if (!it.hasNext()) {
                    i = -1;
                    break;
                }
                pz3 next = it.next();
                if ((next instanceof qq6) && ((qq6) next).a == qq6.a.Reward) {
                    break;
                } else {
                    i++;
                }
            }
            numValueOf = Integer.valueOf(i);
        } else {
            numValueOf = null;
        }
        if ((numValueOf != null && numValueOf.intValue() == -1) || numValueOf == null) {
            return;
        }
        ArrayList arrayList = new ArrayList(value2.b);
        Object obj = arrayList.get(numValueOf.intValue());
        qq6 qq6Var = obj instanceof qq6 ? (qq6) obj : null;
        if (qq6Var != null) {
            arrayList.set(numValueOf.intValue(), qq6.d(qq6Var, z));
            xg5<tq6> xg5Var = this.sheetContent;
            do {
                value = xg5Var.getValue();
                tq6Var = value;
            } while (!xg5Var.a(value, tq6Var != null ? new tq6(tq6Var.a, arrayList, tq6Var.c) : null));
        }
    }

    public final void loadContent() {
        y73 y73Var = this.fetchPromocodeTaskUseCase;
        int i = this.taskId;
        y73Var.getClass();
        launchInPresenter(new df3(s57.a(new tb7(new x73(y73Var, i, null))), new a(null)));
    }

    @Override // pq6.a
    public void onActivatePromocodeClicked(String str, int i, boolean z) {
        str.getClass();
        new kd.s0.f.a.C0289a(this.taskId).a();
        this.showcaseAnalytics.h(this.taskId);
        w73 w73Var = this.fetchPromocodeCodeUseCase;
        int i2 = this.taskId;
        w73Var.getClass();
        launchInPresenter(new df3(s57.a(new tb7(new v73(z, w73Var, i, i2, null))), new b(str, null)));
    }

    public final void onBackClicked() {
        this.flowRouter.c();
    }

    @Override // vq6.a
    public void onBadgeQuestionClicked(String str) {
        str.getClass();
        PromocodeTaskDetailsView promocodeTaskDetailsView = (PromocodeTaskDetailsView) getViewState();
        if (promocodeTaskDetailsView != null) {
            promocodeTaskDetailsView.openUrlInCustomTab(str);
        }
    }

    @Override // pq6.a
    public void onCheckRewardClicked() {
        jk1 jk1Var = this.claimPromocodeTaskUseCase;
        int i = this.taskId;
        jk1Var.getClass();
        launchInPresenter(new df3(s57.a(new tb7(new ik1(jk1Var, i, null))), new c(null)));
    }

    @Override // com.warefly.checkscan.shared.infoBottomSheet.presentation.a.b
    public void onConditionsClicked(List<com.warefly.checkscan.shared.infoBottomSheet.presentation.b.a> list) {
        list.getClass();
        PromocodeTaskDetailsView promocodeTaskDetailsView = (PromocodeTaskDetailsView) getViewState();
        if (promocodeTaskDetailsView != null) {
            promocodeTaskDetailsView.showInfoBottomSheet(list);
        }
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        this.showcaseAnalytics.e(this.taskId);
        launchInPresenter(new df3(this.sheetContent, new d(null)));
    }

    public final void onOrdClicked(b06 b06Var) {
        b06Var.getClass();
        PromocodeTaskDetailsView promocodeTaskDetailsView = (PromocodeTaskDetailsView) getViewState();
        if (promocodeTaskDetailsView != null) {
            promocodeTaskDetailsView.showOrdInfoDialog(b06Var);
        }
    }
}
