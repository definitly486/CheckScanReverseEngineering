package com.warefly.checkscan.presentation.tasks.daily.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.tasks.daily.view.DailyTaskView;
import com.warefly.checkscan.tasks.presentation.dailyTask.model.DailyTaskNoAttempts;
import defpackage.a32;
import defpackage.aa4;
import defpackage.bd2;
import defpackage.be3;
import defpackage.bf3;
import defpackage.bm3;
import defpackage.ce3;
import defpackage.d82;
import defpackage.de3;
import defpackage.df3;
import defpackage.dm3;
import defpackage.e02;
import defpackage.e82;
import defpackage.f82;
import defpackage.g82;
import defpackage.i57;
import defpackage.id3;
import defpackage.j59;
import defpackage.l82;
import defpackage.pg8;
import defpackage.r57;
import defpackage.tb7;
import defpackage.uf3;
import defpackage.up8;

/* JADX INFO: loaded from: classes5.dex */
public final class DailyTaskPresenter extends BasePresenter<DailyTaskView> {
    private final uf3 flowRouter;
    private final d82 interactor;
    private final up8 showcaseAnalytics;
    private final int taskId;

    @bd2(c = "com.warefly.checkscan.presentation.tasks.daily.presenter.DailyTaskPresenter$onFirstViewAttach$1", f = "DailyTaskPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class a extends pg8 implements bm3<i57<? extends l82>, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public a(e02<? super a> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            a aVar = DailyTaskPresenter.this.new a(e02Var);
            aVar.l = obj;
            return aVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(i57<? extends l82> i57Var, e02<? super j59> e02Var) {
            return ((a) create(i57Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            i57 i57Var = (i57) this.l;
            boolean z = i57Var instanceof i57.a;
            DailyTaskPresenter dailyTaskPresenter = DailyTaskPresenter.this;
            if (z) {
                DailyTaskView dailyTaskView = (DailyTaskView) dailyTaskPresenter.getViewState();
                if (dailyTaskView != null) {
                    dailyTaskView.showScreenLoadingError();
                }
            } else if (!aa4.e(i57Var, i57.b.a) && (i57Var instanceof i57.c)) {
                l82 l82Var = (l82) ((i57.c) i57Var).a;
                DailyTaskNoAttempts dailyTaskNoAttempts = l82Var.c;
                if (dailyTaskNoAttempts != null) {
                    DailyTaskView dailyTaskView2 = (DailyTaskView) dailyTaskPresenter.getViewState();
                    if (dailyTaskView2 != null) {
                        dailyTaskView2.showNoAttemptsDialog(dailyTaskPresenter.taskId, dailyTaskNoAttempts);
                    }
                } else {
                    DailyTaskView dailyTaskView3 = (DailyTaskView) dailyTaskPresenter.getViewState();
                    if (dailyTaskView3 != null) {
                        dailyTaskView3.showContent(l82Var);
                    }
                }
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.tasks.daily.presenter.DailyTaskPresenter$onGetRewardClicked$1", f = "DailyTaskPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class b extends pg8 implements bm3<id3<? super d82.a>, e02<? super j59>, Object> {
        public b(e02<? super b> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return DailyTaskPresenter.this.new b(e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(id3<? super d82.a> id3Var, e02<? super j59> e02Var) {
            return ((b) create(id3Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            DailyTaskView dailyTaskView = (DailyTaskView) DailyTaskPresenter.this.getViewState();
            if (dailyTaskView != null) {
                dailyTaskView.showButtonLoading(true);
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.tasks.daily.presenter.DailyTaskPresenter$onGetRewardClicked$2", f = "DailyTaskPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class c extends pg8 implements dm3<id3<? super d82.a>, Throwable, e02<? super j59>, Object> {
        public c(e02<? super c> e02Var) {
            super(3, e02Var);
        }

        @Override // defpackage.dm3
        public final Object invoke(id3<? super d82.a> id3Var, Throwable th, e02<? super j59> e02Var) {
            return DailyTaskPresenter.this.new c(e02Var).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            DailyTaskView dailyTaskView = (DailyTaskView) DailyTaskPresenter.this.getViewState();
            if (dailyTaskView != null) {
                dailyTaskView.showButtonLoading(false);
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.tasks.daily.presenter.DailyTaskPresenter$onGetRewardClicked$3", f = "DailyTaskPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class d extends pg8 implements bm3<d82.a, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public d(e02<? super d> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            d dVar = DailyTaskPresenter.this.new d(e02Var);
            dVar.l = obj;
            return dVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(d82.a aVar, e02<? super j59> e02Var) {
            return ((d) create(aVar, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            d82.a aVar = (d82.a) this.l;
            boolean zE = aa4.e(aVar, d82.a.C0178a.a);
            DailyTaskPresenter dailyTaskPresenter = DailyTaskPresenter.this;
            if (zE) {
                DailyTaskView dailyTaskView = (DailyTaskView) dailyTaskPresenter.getViewState();
                if (dailyTaskView != null) {
                    dailyTaskView.showDefaultError();
                }
            } else if (aVar instanceof d82.a.b) {
                DailyTaskView dailyTaskView2 = (DailyTaskView) dailyTaskPresenter.getViewState();
                if (dailyTaskView2 != null) {
                    dailyTaskView2.showResultDialog(dailyTaskPresenter.taskId, ((d82.a.b) aVar).a);
                }
            } else if (aa4.e(aVar, d82.a.c.a)) {
                DailyTaskView dailyTaskView3 = (DailyTaskView) dailyTaskPresenter.getViewState();
                if (dailyTaskView3 != null) {
                    dailyTaskView3.showConfetti();
                }
                DailyTaskView dailyTaskView4 = (DailyTaskView) dailyTaskPresenter.getViewState();
                if (dailyTaskView4 != null) {
                    dailyTaskView4.vibrate();
                }
            }
            return j59.a;
        }
    }

    public DailyTaskPresenter(uf3 uf3Var, d82 d82Var, int i, up8 up8Var) {
        uf3Var.getClass();
        d82Var.getClass();
        up8Var.getClass();
        this.flowRouter = uf3Var;
        this.interactor = d82Var;
        this.taskId = i;
        this.showcaseAnalytics = up8Var;
    }

    public final void onBackClicked() {
        this.flowRouter.c();
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        this.showcaseAnalytics.i(this.taskId);
        this.interactor.a(this.taskId);
        launchInPresenter(new df3(bf3.b(this.interactor.g), new a(null)));
    }

    public final void onGetRewardClicked() {
        this.showcaseAnalytics.m(this.taskId);
        d82 d82Var = this.interactor;
        int i = this.taskId;
        d82Var.getClass();
        launchInPresenter(new df3(new be3(new ce3(new df3(new de3(new tb7(new e82(d82Var, i, null)), new f82(3, null)), new g82(d82Var, i, null)), new b(null)), new c(null)), new d(null)));
    }

    public final void refreshContent() {
        this.interactor.a(this.taskId);
    }
}
