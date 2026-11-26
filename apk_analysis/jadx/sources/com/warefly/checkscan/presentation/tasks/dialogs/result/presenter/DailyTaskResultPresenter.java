package com.warefly.checkscan.presentation.tasks.dialogs.result.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.tasks.dialogs.result.view.DailyTaskResultView;
import com.warefly.checkscan.tasks.presentation.dailyTask.model.DailyTaskResult;
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
import defpackage.up8;
import defpackage.y22;
import defpackage.yk2;

/* JADX INFO: loaded from: classes5.dex */
public final class DailyTaskResultPresenter extends BasePresenter<DailyTaskResultView> {
    public static final a Companion = new a();
    private static final long WAIT_ENTER_ANIMATION = 500;
    private final DailyTaskResult result;
    private final up8 showcaseAnalytics;
    private final int taskId;

    public static final class a {
    }

    @bd2(c = "com.warefly.checkscan.presentation.tasks.dialogs.result.presenter.DailyTaskResultPresenter$onFirstViewAttach$1", f = "DailyTaskResultPresenter.kt", l = {28}, m = "invokeSuspend")
    public static final class b extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        public int l;

        public b(e02<? super b> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return DailyTaskResultPresenter.this.new b(e02Var);
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
                if (yk2.b(500L, this) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            DailyTaskResultPresenter.this.showConfetti();
            return j59.a;
        }
    }

    public DailyTaskResultPresenter(int i, DailyTaskResult dailyTaskResult, up8 up8Var) {
        dailyTaskResult.getClass();
        up8Var.getClass();
        this.taskId = i;
        this.result = dailyTaskResult;
        this.showcaseAnalytics = up8Var;
    }

    private final void sendEventIfHasTwoButtons() {
        DailyTaskResult dailyTaskResult = this.result;
        if (dailyTaskResult.f == null || dailyTaskResult.e == null) {
            return;
        }
        new kd.s0.c.d.a("Transfer button").a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showConfetti() {
        DailyTaskResultView dailyTaskResultView = (DailyTaskResultView) getViewState();
        if (dailyTaskResultView != null) {
            dailyTaskResultView.vibrate();
        }
        DailyTaskResultView dailyTaskResultView2 = (DailyTaskResultView) getViewState();
        if (dailyTaskResultView2 != null) {
            dailyTaskResultView2.showConfetti();
        }
    }

    public final void onActionButtonClicked() {
        String str;
        DailyTaskResultView dailyTaskResultView;
        sendEventIfHasTwoButtons();
        this.showcaseAnalytics.r(this.taskId);
        DailyTaskResult.Button button = this.result.e;
        if (button != null && (str = button.c) != null && (dailyTaskResultView = (DailyTaskResultView) getViewState()) != null) {
            dailyTaskResultView.openUrl(str);
        }
        DailyTaskResultView dailyTaskResultView2 = (DailyTaskResultView) getViewState();
        if (dailyTaskResultView2 != null) {
            dailyTaskResultView2.dismissDialog();
        }
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        new kd.s0.c.d.b("Shows").a();
        this.showcaseAnalytics.b(this.taskId);
        DailyTaskResultView dailyTaskResultView = (DailyTaskResultView) getViewState();
        if (dailyTaskResultView != null) {
            dailyTaskResultView.showResult(this.result);
        }
        av0.c(getPresenterScope(), null, null, new b(null), 3);
    }

    public final void onSecondActionButtonClicked() {
        String str;
        DailyTaskResultView dailyTaskResultView;
        this.showcaseAnalytics.g(this.taskId);
        DailyTaskResult.Button button = this.result.f;
        if (button != null && (str = button.c) != null && (dailyTaskResultView = (DailyTaskResultView) getViewState()) != null) {
            dailyTaskResultView.openUrl(str);
        }
        DailyTaskResultView dailyTaskResultView2 = (DailyTaskResultView) getViewState();
        if (dailyTaskResultView2 != null) {
            dailyTaskResultView2.dismissDialog();
        }
    }
}
