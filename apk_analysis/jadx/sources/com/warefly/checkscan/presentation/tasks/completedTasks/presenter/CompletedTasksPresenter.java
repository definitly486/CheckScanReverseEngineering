package com.warefly.checkscan.presentation.tasks.completedTasks.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.core.ui.base.architecture.BaseView;
import com.warefly.checkscan.presentation.tasks.completedTasks.view.CompletedTasksView;
import com.warefly.checkscan.tasks.presentation.flows.TasksReason;
import defpackage.a32;
import defpackage.aa4;
import defpackage.am8;
import defpackage.b47;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.c47;
import defpackage.c73;
import defpackage.d73;
import defpackage.df3;
import defpackage.e02;
import defpackage.em8;
import defpackage.fe;
import defpackage.i57;
import defpackage.j59;
import defpackage.kd;
import defpackage.li7;
import defpackage.pg8;
import defpackage.pm8;
import defpackage.px;
import defpackage.r57;
import defpackage.s57;
import defpackage.so8;
import defpackage.tb7;
import defpackage.uf3;
import defpackage.up8;
import defpackage.xg5;
import defpackage.xn8;
import defpackage.zl2;
import defpackage.zn8;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class CompletedTasksPresenter extends BasePresenter<CompletedTasksView> implements am8.b, pm8.b, fe {
    private final xg5<i57<List<so8>>> content;
    private final zl2 desktopInteractor;
    private final d73 fetchCompletedTasksUseCase;
    private final uf3 flowRouter;
    private final List<em8> loadingContent;
    private final c47 resolveTaskOpenTargetUseCase;
    private final up8 showcaseAnalytics;

    @bd2(c = "com.warefly.checkscan.presentation.tasks.completedTasks.presenter.CompletedTasksPresenter$loadContent$1", f = "CompletedTasksPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class a extends pg8 implements bm3<i57<? extends List<? extends so8>>, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public a(e02<? super a> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            a aVar = CompletedTasksPresenter.this.new a(e02Var);
            aVar.l = obj;
            return aVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(i57<? extends List<? extends so8>> i57Var, e02<? super j59> e02Var) {
            return ((a) create(i57Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            Object value;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            i57 i57Var = (i57) this.l;
            xg5 xg5Var = CompletedTasksPresenter.this.content;
            do {
                value = xg5Var.getValue();
            } while (!xg5Var.a(value, i57Var));
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.tasks.completedTasks.presenter.CompletedTasksPresenter$onFirstViewAttach$1", f = "CompletedTasksPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class b extends pg8 implements bm3<i57<? extends List<? extends so8>>, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public b(e02<? super b> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            b bVar = CompletedTasksPresenter.this.new b(e02Var);
            bVar.l = obj;
            return bVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(i57<? extends List<? extends so8>> i57Var, e02<? super j59> e02Var) {
            return ((b) create(i57Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            i57 i57Var = (i57) this.l;
            boolean z = i57Var instanceof i57.a;
            CompletedTasksPresenter completedTasksPresenter = CompletedTasksPresenter.this;
            if (z) {
                CompletedTasksView completedTasksView = (CompletedTasksView) completedTasksPresenter.getViewState();
                if (completedTasksView != null) {
                    completedTasksView.showErrorLoading(true);
                }
            } else if (aa4.e(i57Var, i57.b.a)) {
                CompletedTasksView completedTasksView2 = (CompletedTasksView) completedTasksPresenter.getViewState();
                if (completedTasksView2 != null) {
                    completedTasksView2.setContent(completedTasksPresenter.loadingContent);
                }
            } else if (i57Var instanceof i57.c) {
                CompletedTasksView completedTasksView3 = (CompletedTasksView) completedTasksPresenter.getViewState();
                if (completedTasksView3 != null) {
                    completedTasksView3.showErrorLoading(false);
                }
                CompletedTasksView completedTasksView4 = (CompletedTasksView) completedTasksPresenter.getViewState();
                if (completedTasksView4 != null) {
                    completedTasksView4.setContent((List) ((i57.c) i57Var).a);
                }
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.tasks.completedTasks.presenter.CompletedTasksPresenter$openSkipDetailsTask$1", f = "CompletedTasksPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class c extends pg8 implements bm3<i57<? extends xn8>, e02<? super j59>, Object> {
        public /* synthetic */ Object l;
        public final /* synthetic */ TasksReason n;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(TasksReason tasksReason, e02<? super c> e02Var) {
            super(2, e02Var);
            this.n = tasksReason;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            c cVar = CompletedTasksPresenter.this.new c(this.n, e02Var);
            cVar.l = obj;
            return cVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(i57<? extends xn8> i57Var, e02<? super j59> e02Var) {
            return ((c) create(i57Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            i57 i57Var = (i57) this.l;
            boolean z = i57Var instanceof i57.a;
            CompletedTasksPresenter completedTasksPresenter = CompletedTasksPresenter.this;
            if (z) {
                CompletedTasksView completedTasksView = (CompletedTasksView) completedTasksPresenter.getViewState();
                if (completedTasksView != null) {
                    completedTasksView.showLoading(false);
                }
                CompletedTasksView completedTasksView2 = (CompletedTasksView) completedTasksPresenter.getViewState();
                if (completedTasksView2 != null) {
                    completedTasksView2.showDefaultError();
                }
            } else if (aa4.e(i57Var, i57.b.a)) {
                CompletedTasksView completedTasksView3 = (CompletedTasksView) completedTasksPresenter.getViewState();
                if (completedTasksView3 != null) {
                    completedTasksView3.showLoading(true);
                }
            } else if (i57Var instanceof i57.c) {
                CompletedTasksView completedTasksView4 = (CompletedTasksView) completedTasksPresenter.getViewState();
                if (completedTasksView4 != null) {
                    completedTasksView4.showLoading(false);
                }
                zn8.a(completedTasksPresenter.flowRouter, (xn8) ((i57.c) i57Var).a, this.n, (BaseView) completedTasksPresenter.getViewState());
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.tasks.completedTasks.presenter.CompletedTasksPresenter$refreshContent$1", f = "CompletedTasksPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class d extends pg8 implements bm3<i57<? extends List<? extends so8>>, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public d(e02<? super d> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            d dVar = CompletedTasksPresenter.this.new d(e02Var);
            dVar.l = obj;
            return dVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(i57<? extends List<? extends so8>> i57Var, e02<? super j59> e02Var) {
            return ((d) create(i57Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            Object value;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            i57 i57Var = (i57) this.l;
            if (i57Var instanceof i57.c) {
                xg5 xg5Var = CompletedTasksPresenter.this.content;
                do {
                    value = xg5Var.getValue();
                } while (!xg5Var.a(value, i57Var));
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.tasks.completedTasks.presenter.CompletedTasksPresenter$subscribeOnEvents$1", f = "CompletedTasksPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class e extends pg8 implements bm3<zl2.a, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public e(e02<? super e> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            e eVar = CompletedTasksPresenter.this.new e(e02Var);
            eVar.l = obj;
            return eVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(zl2.a aVar, e02<? super j59> e02Var) {
            return ((e) create(aVar, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            if (((zl2.a) this.l) instanceof zl2.a.h) {
                CompletedTasksPresenter.this.refreshContent();
            }
            return j59.a;
        }
    }

    public CompletedTasksPresenter(uf3 uf3Var, d73 d73Var, c47 c47Var, zl2 zl2Var, up8 up8Var) {
        uf3Var.getClass();
        d73Var.getClass();
        c47Var.getClass();
        zl2Var.getClass();
        up8Var.getClass();
        this.flowRouter = uf3Var;
        this.fetchCompletedTasksUseCase = d73Var;
        this.resolveTaskOpenTargetUseCase = c47Var;
        this.desktopInteractor = zl2Var;
        this.showcaseAnalytics = up8Var;
        this.content = px.a(i57.b.a);
        ArrayList arrayList = new ArrayList(10);
        for (int i = 0; i < 10; i++) {
            arrayList.add(em8.a);
        }
        this.loadingContent = arrayList;
    }

    private final void loadContent() {
        d73 d73Var = this.fetchCompletedTasksUseCase;
        d73Var.getClass();
        launchInPresenter(new df3(s57.a(new tb7(new c73(d73Var, null))), new a(null)));
    }

    private final void openSkipDetailsTask(int i, TasksReason tasksReason) {
        c47 c47Var = this.resolveTaskOpenTargetUseCase;
        c47Var.getClass();
        launchInPresenter(new df3(s57.a(new tb7(new b47(c47Var, i, null))), new c(tasksReason, null)));
    }

    private final void subscribeOnEvents() {
        this.desktopInteractor.c(getPresenterScope(), new e(null));
    }

    public final void onBackClicked() {
        this.flowRouter.c();
    }

    @Override // am8.b
    public void onClaimReward(int i) {
    }

    @Override // pm8.b
    public void onDailyTaskCardClicked(int i) {
        new kd.s0.c.a.C0287a().a();
        uf3 uf3Var = this.flowRouter;
        li7 li7Var = new li7(new TasksReason.DailyTask(i));
        uf3Var.getClass();
        uf3Var.c.d(li7Var);
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        this.showcaseAnalytics.f();
        loadContent();
        launchInPresenter(new df3(this.content, new b(null)));
        subscribeOnEvents();
    }

    @Override // am8.b
    public void onTaskClicked(int i, TasksReason tasksReason, boolean z) {
        tasksReason.getClass();
        new kd.s0.f.a.c(i).a();
        if (z && (tasksReason instanceof TasksReason.TaskDetails)) {
            openSkipDetailsTask(i, tasksReason);
            return;
        }
        uf3 uf3Var = this.flowRouter;
        li7 li7Var = new li7(tasksReason);
        uf3Var.getClass();
        uf3Var.c.d(li7Var);
    }

    public final void refreshContent() {
        CompletedTasksView completedTasksView = (CompletedTasksView) getViewState();
        if (completedTasksView != null) {
            completedTasksView.turnOffRefreshing();
        }
        d73 d73Var = this.fetchCompletedTasksUseCase;
        d73Var.getClass();
        launchInPresenter(new df3(s57.a(new tb7(new c73(d73Var, null))), new d(null)));
    }

    @Override // pm8.b
    public void sendDailyTaskShownEvent() {
        new kd.s0.c.a.b().a();
    }

    @Override // defpackage.fe
    public void sendTaskShownEvent(int i) {
        new kd.s0.f.a.e(i).a();
    }
}
