package com.warefly.checkscan.presentation.tasks.taskDetails.presenter;

import com.warefly.checkscan.auth.presentation.flow.AuthReason;
import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.tasks.taskDetails.presenter.TaskDetailsPresenter;
import com.warefly.checkscan.presentation.tasks.taskDetails.view.TaskDetailsView;
import defpackage.a32;
import defpackage.aa4;
import defpackage.b06;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.df3;
import defpackage.e02;
import defpackage.hn8;
import defpackage.i57;
import defpackage.ix;
import defpackage.j59;
import defpackage.kd;
import defpackage.kk1;
import defpackage.lk1;
import defpackage.mk1;
import defpackage.n83;
import defpackage.no8;
import defpackage.o83;
import defpackage.p83;
import defpackage.pg8;
import defpackage.q83;
import defpackage.r57;
import defpackage.s57;
import defpackage.t57;
import defpackage.tb7;
import defpackage.uf3;
import defpackage.um8;
import defpackage.up8;
import defpackage.vm8;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class TaskDetailsPresenter extends BasePresenter<TaskDetailsView> implements vm8.b {
    private String afterSignUpEvent;
    private final mk1 claimTaskRewardUseCase;
    private final o83 fetchTaskActionUseCase;
    private final q83 fetchTaskDetailsUseCase;
    private final uf3 flowRouter;
    private final up8 showcaseAnalytics;
    private final int taskId;

    @bd2(c = "com.warefly.checkscan.presentation.tasks.taskDetails.presenter.TaskDetailsPresenter$loadContent$1", f = "TaskDetailsPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class a extends pg8 implements bm3<i57<? extends um8>, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public a(e02<? super a> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            a aVar = TaskDetailsPresenter.this.new a(e02Var);
            aVar.l = obj;
            return aVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(i57<? extends um8> i57Var, e02<? super j59> e02Var) {
            return ((a) create(i57Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            i57 i57Var = (i57) this.l;
            boolean z = i57Var instanceof i57.a;
            TaskDetailsPresenter taskDetailsPresenter = TaskDetailsPresenter.this;
            if (z) {
                TaskDetailsView taskDetailsView = (TaskDetailsView) taskDetailsPresenter.getViewState();
                if (taskDetailsView != null) {
                    taskDetailsView.showLoadingSpinner(false);
                }
                TaskDetailsView taskDetailsView2 = (TaskDetailsView) taskDetailsPresenter.getViewState();
                if (taskDetailsView2 != null) {
                    taskDetailsView2.showErrorState(true);
                }
            } else if (aa4.e(i57Var, i57.b.a)) {
                TaskDetailsView taskDetailsView3 = (TaskDetailsView) taskDetailsPresenter.getViewState();
                if (taskDetailsView3 != null) {
                    taskDetailsView3.showLoadingSpinner(true);
                }
                TaskDetailsView taskDetailsView4 = (TaskDetailsView) taskDetailsPresenter.getViewState();
                if (taskDetailsView4 != null) {
                    taskDetailsView4.showErrorState(false);
                }
            } else if (i57Var instanceof i57.c) {
                TaskDetailsView taskDetailsView5 = (TaskDetailsView) taskDetailsPresenter.getViewState();
                if (taskDetailsView5 != null) {
                    taskDetailsView5.showErrorState(false);
                }
                TaskDetailsView taskDetailsView6 = (TaskDetailsView) taskDetailsPresenter.getViewState();
                if (taskDetailsView6 != null) {
                    taskDetailsView6.showDetails((um8) ((i57.c) i57Var).a);
                }
                TaskDetailsView taskDetailsView7 = (TaskDetailsView) taskDetailsPresenter.getViewState();
                if (taskDetailsView7 != null) {
                    taskDetailsView7.showLoadingSpinner(false);
                }
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.tasks.taskDetails.presenter.TaskDetailsPresenter$onActionClicked$1", f = "TaskDetailsPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class b extends pg8 implements bm3<i57<? extends String>, e02<? super j59>, Object> {
        public /* synthetic */ Object l;
        public final /* synthetic */ boolean n;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(boolean z, e02<? super b> e02Var) {
            super(2, e02Var);
            this.n = z;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            b bVar = TaskDetailsPresenter.this.new b(this.n, e02Var);
            bVar.l = obj;
            return bVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(i57<? extends String> i57Var, e02<? super j59> e02Var) {
            return ((b) create(i57Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            i57 i57Var = (i57) this.l;
            boolean z = i57Var instanceof i57.a;
            TaskDetailsPresenter taskDetailsPresenter = TaskDetailsPresenter.this;
            if (z) {
                TaskDetailsView taskDetailsView = (TaskDetailsView) taskDetailsPresenter.getViewState();
                if (taskDetailsView != null) {
                    taskDetailsView.showActionLoading(false);
                }
                TaskDetailsView taskDetailsView2 = (TaskDetailsView) taskDetailsPresenter.getViewState();
                if (taskDetailsView2 != null) {
                    taskDetailsView2.showError();
                }
            } else if (aa4.e(i57Var, i57.b.a)) {
                TaskDetailsView taskDetailsView3 = (TaskDetailsView) taskDetailsPresenter.getViewState();
                if (taskDetailsView3 != null) {
                    taskDetailsView3.showActionLoading(true);
                }
            } else if (i57Var instanceof i57.c) {
                TaskDetailsView taskDetailsView4 = (TaskDetailsView) taskDetailsPresenter.getViewState();
                if (taskDetailsView4 != null) {
                    taskDetailsView4.showActionLoading(false);
                }
                if (this.n) {
                    taskDetailsPresenter.afterSignUpEvent = (String) ((i57.c) i57Var).a;
                    uf3 uf3Var = taskDetailsPresenter.flowRouter;
                    ix ixVar = new ix(new AuthReason.Login((String) null, (String) null, 7));
                    uf3Var.getClass();
                    uf3Var.c.d(ixVar);
                } else {
                    TaskDetailsView taskDetailsView5 = (TaskDetailsView) taskDetailsPresenter.getViewState();
                    if (taskDetailsView5 != null) {
                        taskDetailsView5.openUrl((String) ((i57.c) i57Var).a);
                    }
                }
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.tasks.taskDetails.presenter.TaskDetailsPresenter$onClaimClicked$1", f = "TaskDetailsPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class c extends pg8 implements bm3<i57<? extends kk1>, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public c(e02<? super c> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            c cVar = TaskDetailsPresenter.this.new c(e02Var);
            cVar.l = obj;
            return cVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(i57<? extends kk1> i57Var, e02<? super j59> e02Var) {
            return ((c) create(i57Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            i57 i57Var = (i57) this.l;
            boolean z = i57Var instanceof i57.a;
            TaskDetailsPresenter taskDetailsPresenter = TaskDetailsPresenter.this;
            if (z) {
                TaskDetailsView taskDetailsView = (TaskDetailsView) taskDetailsPresenter.getViewState();
                if (taskDetailsView != null) {
                    taskDetailsView.showError();
                }
                TaskDetailsView taskDetailsView2 = (TaskDetailsView) taskDetailsPresenter.getViewState();
                if (taskDetailsView2 != null) {
                    taskDetailsView2.showClaimButtonLoading(false);
                }
            } else if (aa4.e(i57Var, i57.b.a)) {
                TaskDetailsView taskDetailsView3 = (TaskDetailsView) taskDetailsPresenter.getViewState();
                if (taskDetailsView3 != null) {
                    taskDetailsView3.showClaimButtonLoading(true);
                }
            } else if (i57Var instanceof i57.c) {
                TaskDetailsView taskDetailsView4 = (TaskDetailsView) taskDetailsPresenter.getViewState();
                if (taskDetailsView4 != null) {
                    taskDetailsView4.showClaimButtonLoading(false);
                }
                kk1 kk1Var = (kk1) ((i57.c) i57Var).a;
                if (kk1Var != null) {
                    taskDetailsPresenter.handleClaimResult(kk1Var);
                }
                taskDetailsPresenter.loadContent();
            }
            return j59.a;
        }
    }

    public TaskDetailsPresenter(int i, q83 q83Var, o83 o83Var, mk1 mk1Var, uf3 uf3Var, up8 up8Var) {
        q83Var.getClass();
        o83Var.getClass();
        mk1Var.getClass();
        uf3Var.getClass();
        up8Var.getClass();
        this.taskId = i;
        this.fetchTaskDetailsUseCase = q83Var;
        this.fetchTaskActionUseCase = o83Var;
        this.claimTaskRewardUseCase = mk1Var;
        this.flowRouter = uf3Var;
        this.showcaseAnalytics = up8Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void handleClaimResult(kk1 kk1Var) {
        if (kk1Var instanceof no8) {
            this.showcaseAnalytics.p(this.taskId);
            TaskDetailsView taskDetailsView = (TaskDetailsView) getViewState();
            if (taskDetailsView != null) {
                taskDetailsView.showTaskSuccess(this.taskId, (no8) kk1Var);
                return;
            }
            return;
        }
        if (kk1Var instanceof hn8) {
            this.showcaseAnalytics.j(this.taskId);
            TaskDetailsView taskDetailsView2 = (TaskDetailsView) getViewState();
            if (taskDetailsView2 != null) {
                taskDetailsView2.showTaskError((hn8) kk1Var);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onFirstViewAttach$lambda$1(TaskDetailsPresenter taskDetailsPresenter, Object obj) {
        TaskDetailsView taskDetailsView;
        obj.getClass();
        String str = taskDetailsPresenter.afterSignUpEvent;
        if (str != null && (taskDetailsView = (TaskDetailsView) taskDetailsPresenter.getViewState()) != null) {
            taskDetailsView.openUrlInCustomTab(str);
        }
        taskDetailsPresenter.afterSignUpEvent = null;
    }

    public final void loadContent() {
        q83 q83Var = this.fetchTaskDetailsUseCase;
        int i = this.taskId;
        q83Var.getClass();
        launchInPresenter(new df3(s57.a(new tb7(new p83(q83Var, i, null))), new a(null)));
    }

    public final void onActionClicked(boolean z) {
        new kd.s0.f.a.C0289a(this.taskId).a();
        this.showcaseAnalytics.h(this.taskId);
        o83 o83Var = this.fetchTaskActionUseCase;
        int i = this.taskId;
        o83Var.getClass();
        launchInPresenter(new df3(s57.a(new tb7(new n83(o83Var, i, null))), new b(z, null)));
    }

    public final void onBackClicked() {
        this.flowRouter.c();
    }

    @Override // vm8.b
    public void onBadgeQuestionClicked(String str) {
        str.getClass();
        TaskDetailsView taskDetailsView = (TaskDetailsView) getViewState();
        if (taskDetailsView != null) {
            taskDetailsView.openUrlInCustomTab(str);
        }
    }

    public final void onClaimClicked(int i) {
        mk1 mk1Var = this.claimTaskRewardUseCase;
        mk1Var.getClass();
        launchInPresenter(new df3(s57.a(new tb7(new lk1(mk1Var, i, null))), new c(null)));
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        this.showcaseAnalytics.e(this.taskId);
        this.flowRouter.l(new t57() { // from class: ym8
            @Override // defpackage.t57
            public final void onResult(Object obj) {
                TaskDetailsPresenter.onFirstViewAttach$lambda$1(this.a, obj);
            }
        });
    }

    public final void onInfoBadgeClicked(List<com.warefly.checkscan.shared.infoBottomSheet.presentation.b.a> list) {
        list.getClass();
        TaskDetailsView taskDetailsView = (TaskDetailsView) getViewState();
        if (taskDetailsView != null) {
            taskDetailsView.showInfoBottomSheet(list);
        }
    }

    public final void onOrdClicked(b06 b06Var) {
        b06Var.getClass();
        TaskDetailsView taskDetailsView = (TaskDetailsView) getViewState();
        if (taskDetailsView != null) {
            taskDetailsView.showOrdInfoDialog(b06Var);
        }
    }
}
