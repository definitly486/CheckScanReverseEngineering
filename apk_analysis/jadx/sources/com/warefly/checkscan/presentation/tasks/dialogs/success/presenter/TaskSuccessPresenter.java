package com.warefly.checkscan.presentation.tasks.dialogs.success.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.tasks.dialogs.success.view.TaskSuccessView;
import defpackage.a32;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.kd;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;
import defpackage.yk2;

/* JADX INFO: loaded from: classes5.dex */
public final class TaskSuccessPresenter extends BasePresenter<TaskSuccessView> {
    public static final a Companion = new a();
    private static final long WAIT_ENTER_ANIMATION = 400;
    private final int taskId;

    public static final class a {
    }

    @bd2(c = "com.warefly.checkscan.presentation.tasks.dialogs.success.presenter.TaskSuccessPresenter$onFirstViewAttach$1", f = "TaskSuccessPresenter.kt", l = {21}, m = "invokeSuspend")
    public static final class b extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        public int l;

        public b(e02<? super b> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return TaskSuccessPresenter.this.new b(e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((b) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.l;
            if (i == 0) {
                r57.b(obj);
                this.l = 1;
                if (yk2.b(TaskSuccessPresenter.WAIT_ENTER_ANIMATION, this) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            TaskSuccessPresenter taskSuccessPresenter = TaskSuccessPresenter.this;
            TaskSuccessView taskSuccessView = (TaskSuccessView) taskSuccessPresenter.getViewState();
            if (taskSuccessView != null) {
                taskSuccessView.showConfetti();
            }
            TaskSuccessView taskSuccessView2 = (TaskSuccessView) taskSuccessPresenter.getViewState();
            if (taskSuccessView2 != null) {
                taskSuccessView2.vibrate();
            }
            return j59.a;
        }
    }

    public TaskSuccessPresenter(int i) {
        this.taskId = i;
    }

    public final void dismiss() {
        TaskSuccessView taskSuccessView = (TaskSuccessView) getViewState();
        if (taskSuccessView != null) {
            taskSuccessView.dismissDialog();
        }
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        new kd.s0.f.a.C0290f(this.taskId, "Success").a();
        av0.c(getPresenterScope(), null, null, new b(null), 3);
    }

    public final void openDeeplink(String str) {
        str.getClass();
        TaskSuccessView taskSuccessView = (TaskSuccessView) getViewState();
        if (taskSuccessView != null) {
            taskSuccessView.openUrlInCustomTab(str);
        }
        TaskSuccessView taskSuccessView2 = (TaskSuccessView) getViewState();
        if (taskSuccessView2 != null) {
            taskSuccessView2.dismissDialog();
        }
    }
}
