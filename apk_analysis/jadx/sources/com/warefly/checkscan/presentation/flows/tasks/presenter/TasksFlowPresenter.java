package com.warefly.checkscan.presentation.flows.tasks.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.flows.tasks.view.TasksFlowView;
import com.warefly.checkscan.tasks.presentation.flows.TasksReason;
import defpackage.aa4;
import defpackage.bh7;
import defpackage.fg7;
import defpackage.kg7;
import defpackage.ki7;
import defpackage.sh7;
import defpackage.tg7;
import defpackage.wf7;
import defpackage.xf7;
import defpackage.xh7;

/* JADX INFO: loaded from: classes5.dex */
public final class TasksFlowPresenter extends BasePresenter<TasksFlowView> {
    private final TasksReason reason;

    public TasksFlowPresenter(TasksReason tasksReason) {
        tasksReason.getClass();
        this.reason = tasksReason;
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        TasksFlowView tasksFlowView;
        super.onFirstViewAttach();
        TasksReason tasksReason = this.reason;
        if (tasksReason instanceof TasksReason.DailyTask) {
            TasksFlowView tasksFlowView2 = (TasksFlowView) getViewState();
            if (tasksFlowView2 != null) {
                tasksFlowView2.setLaunchScreen(new kg7(((TasksReason.DailyTask) this.reason).b));
                return;
            }
            return;
        }
        if (tasksReason instanceof TasksReason.MultiTaskDetails) {
            TasksFlowView tasksFlowView3 = (TasksFlowView) getViewState();
            if (tasksFlowView3 != null) {
                tasksFlowView3.setLaunchScreen(new bh7(((TasksReason.MultiTaskDetails) this.reason).b));
                return;
            }
            return;
        }
        if (tasksReason instanceof TasksReason.RewardedMultiTaskDetails) {
            TasksFlowView tasksFlowView4 = (TasksFlowView) getViewState();
            if (tasksFlowView4 != null) {
                tasksFlowView4.setLaunchScreen(new xh7(((TasksReason.RewardedMultiTaskDetails) this.reason).b));
                return;
            }
            return;
        }
        if (tasksReason instanceof TasksReason.TaskDetails) {
            TasksFlowView tasksFlowView5 = (TasksFlowView) getViewState();
            if (tasksFlowView5 != null) {
                tasksFlowView5.setLaunchScreen(new ki7(((TasksReason.TaskDetails) this.reason).b));
                return;
            }
            return;
        }
        if (tasksReason instanceof TasksReason.PromocodeDetailsTask) {
            TasksFlowView tasksFlowView6 = (TasksFlowView) getViewState();
            if (tasksFlowView6 != null) {
                tasksFlowView6.setLaunchScreen(new sh7(((TasksReason.PromocodeDetailsTask) this.reason).b));
                return;
            }
            return;
        }
        if (tasksReason instanceof TasksReason.GroupedTasks) {
            TasksFlowView tasksFlowView7 = (TasksFlowView) getViewState();
            if (tasksFlowView7 != null) {
                tasksFlowView7.setLaunchScreen(new tg7(((TasksReason.GroupedTasks) this.reason).b));
                return;
            }
            return;
        }
        if (tasksReason instanceof TasksReason.CheckboxTaskDetails) {
            TasksFlowView tasksFlowView8 = (TasksFlowView) getViewState();
            if (tasksFlowView8 != null) {
                tasksFlowView8.setLaunchScreen(new wf7(((TasksReason.CheckboxTaskDetails) this.reason).b));
                return;
            }
            return;
        }
        if (tasksReason instanceof TasksReason.CheckboxStepsTaskDetails) {
            TasksFlowView tasksFlowView9 = (TasksFlowView) getViewState();
            if (tasksFlowView9 != null) {
                tasksFlowView9.setLaunchScreen(new xf7(((TasksReason.CheckboxStepsTaskDetails) this.reason).b));
                return;
            }
            return;
        }
        if (!aa4.e(tasksReason, TasksReason.CompletedTasks.b) || (tasksFlowView = (TasksFlowView) getViewState()) == null) {
            return;
        }
        tasksFlowView.setLaunchScreen(fg7.a);
    }
}
