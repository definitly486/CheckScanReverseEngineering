package com.warefly.checkscan.presentation.tasks.rewardedMultiTask.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.tasks.rewardedMultiTask.view.RewardedMultiTaskDetailsView;
import defpackage.a32;
import defpackage.aa4;
import defpackage.b06;
import defpackage.b36;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.df3;
import defpackage.e02;
import defpackage.e77;
import defpackage.hn8;
import defpackage.i57;
import defpackage.j59;
import defpackage.k77;
import defpackage.kd;
import defpackage.kk1;
import defpackage.kn1;
import defpackage.kx2;
import defpackage.m77;
import defpackage.no8;
import defpackage.o77;
import defpackage.on8;
import defpackage.pg8;
import defpackage.px;
import defpackage.pz3;
import defpackage.r57;
import defpackage.rn8;
import defpackage.s57;
import defpackage.sn8;
import defpackage.tb7;
import defpackage.uf3;
import defpackage.up8;
import defpackage.vn8;
import defpackage.xg5;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class RewardedMultiTaskDetailsPresenter extends BasePresenter<RewardedMultiTaskDetailsView> implements m77.a, e77.a, com.warefly.checkscan.shared.infoBottomSheet.presentation.a.b {
    private final uf3 flowRouter;
    private final vn8 interactor;
    private final xg5<k77> sheetContent;
    private final up8 showcaseAnalytics;
    private final int taskId;

    @bd2(c = "com.warefly.checkscan.presentation.tasks.rewardedMultiTask.presenter.RewardedMultiTaskDetailsPresenter$loadContent$1", f = "RewardedMultiTaskDetailsPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class a extends pg8 implements bm3<i57<? extends k77>, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public a(e02<? super a> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            a aVar = RewardedMultiTaskDetailsPresenter.this.new a(e02Var);
            aVar.l = obj;
            return aVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(i57<? extends k77> i57Var, e02<? super j59> e02Var) {
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
            RewardedMultiTaskDetailsPresenter rewardedMultiTaskDetailsPresenter = RewardedMultiTaskDetailsPresenter.this;
            if (z) {
                ((RewardedMultiTaskDetailsView) rewardedMultiTaskDetailsPresenter.getViewState()).showErrorState(true);
                RewardedMultiTaskDetailsView rewardedMultiTaskDetailsView = (RewardedMultiTaskDetailsView) rewardedMultiTaskDetailsPresenter.getViewState();
                if (rewardedMultiTaskDetailsView != null) {
                    rewardedMultiTaskDetailsView.showLoading(false);
                }
            } else if (aa4.e(i57Var, i57.b.a)) {
                RewardedMultiTaskDetailsView rewardedMultiTaskDetailsView2 = (RewardedMultiTaskDetailsView) rewardedMultiTaskDetailsPresenter.getViewState();
                if (rewardedMultiTaskDetailsView2 != null) {
                    rewardedMultiTaskDetailsView2.showErrorState(false);
                }
                ((RewardedMultiTaskDetailsView) rewardedMultiTaskDetailsPresenter.getViewState()).showLoading(true);
            } else if (i57Var instanceof i57.c) {
                RewardedMultiTaskDetailsView rewardedMultiTaskDetailsView3 = (RewardedMultiTaskDetailsView) rewardedMultiTaskDetailsPresenter.getViewState();
                if (rewardedMultiTaskDetailsView3 != null) {
                    rewardedMultiTaskDetailsView3.showErrorState(false);
                }
                ((RewardedMultiTaskDetailsView) rewardedMultiTaskDetailsPresenter.getViewState()).showLoading(false);
                xg5 xg5Var = rewardedMultiTaskDetailsPresenter.sheetContent;
                do {
                    value = xg5Var.getValue();
                } while (!xg5Var.a(value, (k77) ((i57.c) i57Var).a));
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.tasks.rewardedMultiTask.presenter.RewardedMultiTaskDetailsPresenter$onFirstViewAttach$1", f = "RewardedMultiTaskDetailsPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class b extends pg8 implements bm3<k77, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public b(e02<? super b> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            b bVar = RewardedMultiTaskDetailsPresenter.this.new b(e02Var);
            bVar.l = obj;
            return bVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(k77 k77Var, e02<? super j59> e02Var) {
            return ((b) create(k77Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            RewardedMultiTaskDetailsView rewardedMultiTaskDetailsView;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            k77 k77Var = (k77) this.l;
            if (k77Var != null && (rewardedMultiTaskDetailsView = (RewardedMultiTaskDetailsView) RewardedMultiTaskDetailsPresenter.this.getViewState()) != null) {
                rewardedMultiTaskDetailsView.showDetails(k77Var);
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.tasks.rewardedMultiTask.presenter.RewardedMultiTaskDetailsPresenter$onRewardedSubTaskClaim$1", f = "RewardedMultiTaskDetailsPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class c extends pg8 implements bm3<i57<? extends b36<? extends kk1, ? extends k77>>, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public c(e02<? super c> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            c cVar = RewardedMultiTaskDetailsPresenter.this.new c(e02Var);
            cVar.l = obj;
            return cVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(i57<? extends b36<? extends kk1, ? extends k77>> i57Var, e02<? super j59> e02Var) {
            return ((c) create(i57Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            Object value;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            i57 i57Var = (i57) this.l;
            boolean z = i57Var instanceof i57.a;
            RewardedMultiTaskDetailsPresenter rewardedMultiTaskDetailsPresenter = RewardedMultiTaskDetailsPresenter.this;
            if (z) {
                RewardedMultiTaskDetailsView rewardedMultiTaskDetailsView = (RewardedMultiTaskDetailsView) rewardedMultiTaskDetailsPresenter.getViewState();
                if (rewardedMultiTaskDetailsView != null) {
                    rewardedMultiTaskDetailsView.showError();
                }
                rewardedMultiTaskDetailsPresenter.setSubTaskClaimButtonLoading(false);
            } else if (aa4.e(i57Var, i57.b.a)) {
                rewardedMultiTaskDetailsPresenter.setSubTaskClaimButtonLoading(true);
            } else if (i57Var instanceof i57.c) {
                b36 b36Var = (b36) ((i57.c) i57Var).a;
                kk1 kk1Var = (kk1) b36Var.b;
                if (kk1Var != null) {
                    rewardedMultiTaskDetailsPresenter.handleClaimResult(kk1Var);
                }
                xg5 xg5Var = rewardedMultiTaskDetailsPresenter.sheetContent;
                do {
                    value = xg5Var.getValue();
                } while (!xg5Var.a(value, (k77) b36Var.c));
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.tasks.rewardedMultiTask.presenter.RewardedMultiTaskDetailsPresenter$onRewardedSubTaskClicked$1", f = "RewardedMultiTaskDetailsPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class d extends pg8 implements bm3<i57<? extends String>, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public d(e02<? super d> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            d dVar = RewardedMultiTaskDetailsPresenter.this.new d(e02Var);
            dVar.l = obj;
            return dVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(i57<? extends String> i57Var, e02<? super j59> e02Var) {
            return ((d) create(i57Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            RewardedMultiTaskDetailsView rewardedMultiTaskDetailsView;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            i57 i57Var = (i57) this.l;
            boolean z = i57Var instanceof i57.a;
            RewardedMultiTaskDetailsPresenter rewardedMultiTaskDetailsPresenter = RewardedMultiTaskDetailsPresenter.this;
            if (z) {
                RewardedMultiTaskDetailsView rewardedMultiTaskDetailsView2 = (RewardedMultiTaskDetailsView) rewardedMultiTaskDetailsPresenter.getViewState();
                if (rewardedMultiTaskDetailsView2 != null) {
                    rewardedMultiTaskDetailsView2.showError();
                }
                rewardedMultiTaskDetailsPresenter.setSubTaskActionButtonLoading(false);
            } else if (aa4.e(i57Var, i57.b.a)) {
                rewardedMultiTaskDetailsPresenter.setSubTaskActionButtonLoading(true);
            } else if (i57Var instanceof i57.c) {
                rewardedMultiTaskDetailsPresenter.setSubTaskActionButtonLoading(false);
                String str = (String) ((i57.c) i57Var).a;
                if (str != null && (rewardedMultiTaskDetailsView = (RewardedMultiTaskDetailsView) rewardedMultiTaskDetailsPresenter.getViewState()) != null) {
                    rewardedMultiTaskDetailsView.openUrlInCustomTab(str);
                }
            }
            return j59.a;
        }
    }

    public RewardedMultiTaskDetailsPresenter(int i, vn8 vn8Var, uf3 uf3Var, up8 up8Var) {
        vn8Var.getClass();
        uf3Var.getClass();
        up8Var.getClass();
        this.taskId = i;
        this.interactor = vn8Var;
        this.flowRouter = uf3Var;
        this.showcaseAnalytics = up8Var;
        this.sheetContent = px.a(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void handleClaimResult(kk1 kk1Var) {
        if (kk1Var instanceof no8) {
            this.showcaseAnalytics.p(this.taskId);
            RewardedMultiTaskDetailsView rewardedMultiTaskDetailsView = (RewardedMultiTaskDetailsView) getViewState();
            if (rewardedMultiTaskDetailsView != null) {
                rewardedMultiTaskDetailsView.showTaskSuccess(this.taskId, (no8) kk1Var);
                return;
            }
            return;
        }
        if (kk1Var instanceof hn8) {
            this.showcaseAnalytics.j(this.taskId);
            RewardedMultiTaskDetailsView rewardedMultiTaskDetailsView2 = (RewardedMultiTaskDetailsView) getViewState();
            if (rewardedMultiTaskDetailsView2 != null) {
                rewardedMultiTaskDetailsView2.showTaskError((hn8) kk1Var);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setSubTaskActionButtonLoading(boolean z) {
        k77 value;
        k77 k77Var;
        k77 value2 = this.sheetContent.getValue();
        List<pz3> list = value2 != null ? value2.a : null;
        if (list == null) {
            list = kx2.b;
        }
        List<pz3> list2 = list;
        ArrayList arrayList = new ArrayList(kn1.q(list2, 10));
        for (Object objD : list2) {
            if (objD instanceof o77) {
                o77 o77Var = (o77) objD;
                o77.a aVar = o77Var.d;
                objD = o77.d(o77Var, aVar != null ? o77.a.a(aVar, z) : null, null, 119);
            }
            arrayList.add(objD);
        }
        xg5<k77> xg5Var = this.sheetContent;
        do {
            value = xg5Var.getValue();
            k77Var = value;
        } while (!xg5Var.a(value, k77Var != null ? new k77(arrayList, k77Var.b) : null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setSubTaskClaimButtonLoading(boolean z) {
        k77 value;
        k77 k77Var;
        k77 value2 = this.sheetContent.getValue();
        List<pz3> list = value2 != null ? value2.a : null;
        if (list == null) {
            list = kx2.b;
        }
        List<pz3> list2 = list;
        ArrayList arrayList = new ArrayList(kn1.q(list2, 10));
        for (Object objD : list2) {
            if (objD instanceof o77) {
                o77 o77Var = (o77) objD;
                o77.a aVar = o77Var.e;
                objD = o77.d(o77Var, null, aVar != null ? o77.a.a(aVar, z) : null, 111);
            }
            arrayList.add(objD);
        }
        xg5<k77> xg5Var = this.sheetContent;
        do {
            value = xg5Var.getValue();
            k77Var = value;
        } while (!xg5Var.a(value, k77Var != null ? new k77(arrayList, k77Var.b) : null));
    }

    public final void loadContent() {
        vn8 vn8Var = this.interactor;
        int i = this.taskId;
        vn8Var.getClass();
        launchInPresenter(new df3(s57.a(new tb7(new rn8(vn8Var, i, null))), new a(null)));
    }

    public final void onBackClicked() {
        this.flowRouter.c();
    }

    @Override // e77.a
    public void onBadgeQuestionClicked(String str) {
        str.getClass();
        RewardedMultiTaskDetailsView rewardedMultiTaskDetailsView = (RewardedMultiTaskDetailsView) getViewState();
        if (rewardedMultiTaskDetailsView != null) {
            rewardedMultiTaskDetailsView.openUrlInCustomTab(str);
        }
    }

    @Override // com.warefly.checkscan.shared.infoBottomSheet.presentation.a.b
    public void onConditionsClicked(List<com.warefly.checkscan.shared.infoBottomSheet.presentation.b.a> list) {
        list.getClass();
        RewardedMultiTaskDetailsView rewardedMultiTaskDetailsView = (RewardedMultiTaskDetailsView) getViewState();
        if (rewardedMultiTaskDetailsView != null) {
            rewardedMultiTaskDetailsView.showInfoBottomSheet(list);
        }
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        this.showcaseAnalytics.e(this.taskId);
        launchInPresenter(new df3(this.sheetContent, new b(null)));
    }

    public final void onOrdClicked(b06 b06Var) {
        b06Var.getClass();
        RewardedMultiTaskDetailsView rewardedMultiTaskDetailsView = (RewardedMultiTaskDetailsView) getViewState();
        if (rewardedMultiTaskDetailsView != null) {
            rewardedMultiTaskDetailsView.showOrdInfoDialog(b06Var);
        }
    }

    @Override // m77.a
    public void onRewardedSubTaskClaim(int i) {
        vn8 vn8Var = this.interactor;
        int i2 = this.taskId;
        vn8Var.getClass();
        launchInPresenter(new df3(s57.a(new tb7(new on8(vn8Var, i2, i, null))), new c(null)));
    }

    @Override // m77.a
    public void onRewardedSubTaskClicked(int i) {
        new kd.s0.f.a.b(this.taskId, i).a();
        this.showcaseAnalytics.o(this.taskId, i);
        vn8 vn8Var = this.interactor;
        int i2 = this.taskId;
        vn8Var.getClass();
        launchInPresenter(new df3(s57.a(new tb7(new sn8(vn8Var, i2, i, null))), new d(null)));
    }
}
