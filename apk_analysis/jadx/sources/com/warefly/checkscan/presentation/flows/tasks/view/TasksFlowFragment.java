package com.warefly.checkscan.presentation.flows.tasks.view;

import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import com.warefly.checkscan.core.ui.base.architecture.FlowFragment;
import com.warefly.checkscan.core.ui.databinding.LoadingLayoutContainerBinding;
import com.warefly.checkscan.presentation.flows.tasks.presenter.TasksFlowPresenter;
import com.warefly.checkscan.tasks.presentation.flows.TasksReason;
import defpackage.bs6;
import defpackage.x07;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class TasksFlowFragment extends FlowFragment<LoadingLayoutContainerBinding> implements TasksFlowView {
    public static final a j;
    public static final /* synthetic */ ze4<Object>[] k;
    public TasksFlowPresenter presenter;

    public static final class a {
    }

    static {
        bs6 bs6Var = new bs6(TasksFlowFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/core/ui/databinding/LoadingLayoutContainerBinding;", 0);
        x07.a.getClass();
        k = new ze4[]{bs6Var};
        j = new a();
    }

    public final TasksFlowPresenter providePresenter() throws Exception {
        Parcelable parcelable;
        Bundle bundleRequireArguments = requireArguments();
        bundleRequireArguments.getClass();
        if (Build.VERSION.SDK_INT >= 33) {
            parcelable = (Parcelable) bundleRequireArguments.getParcelable("REASON_FLOW_KEY", TasksReason.class);
        } else {
            Parcelable parcelable2 = bundleRequireArguments.getParcelable("REASON_FLOW_KEY");
            if (!(parcelable2 instanceof TasksReason)) {
                parcelable2 = null;
            }
            parcelable = (TasksReason) parcelable2;
        }
        TasksReason tasksReason = (TasksReason) parcelable;
        if (tasksReason != null) {
            return new TasksFlowPresenter(tasksReason);
        }
        throw new Exception("TasksReason can not be null");
    }
}
