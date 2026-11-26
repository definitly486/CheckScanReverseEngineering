package com.warefly.checkscan.presentation.tasks.dialogs.error.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.tasks.dialogs.error.view.TaskErrorView;
import defpackage.hn8;
import defpackage.kd;

/* JADX INFO: loaded from: classes5.dex */
public final class TaskErrorPresenter extends BasePresenter<TaskErrorView> {
    private final hn8 taskError;

    public TaskErrorPresenter(hn8 hn8Var) {
        hn8Var.getClass();
        this.taskError = hn8Var;
    }

    public final void onActionClicked() {
        TaskErrorView taskErrorView = (TaskErrorView) getViewState();
        if (taskErrorView != null) {
            taskErrorView.onDismissDialog();
        }
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        new kd.s0.f.a.d(this.taskError.a, "Fail").a();
        TaskErrorView taskErrorView = (TaskErrorView) getViewState();
        if (taskErrorView != null) {
            taskErrorView.showError(this.taskError);
        }
    }
}
