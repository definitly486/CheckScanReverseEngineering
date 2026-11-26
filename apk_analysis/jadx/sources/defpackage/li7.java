package defpackage;

import androidx.core.os.BundleKt;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.presentation.flows.tasks.view.TasksFlowFragment;
import com.warefly.checkscan.tasks.presentation.flows.TasksReason;

/* JADX INFO: loaded from: classes5.dex */
public final class li7 implements lk3 {
    public final TasksReason a;

    public li7(TasksReason tasksReason) {
        tasksReason.getClass();
        this.a = tasksReason;
    }

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        TasksFlowFragment.j.getClass();
        TasksReason tasksReason = this.a;
        tasksReason.getClass();
        TasksFlowFragment tasksFlowFragment = new TasksFlowFragment();
        tasksFlowFragment.setArguments(BundleKt.bundleOf(new b36("REASON_FLOW_KEY", tasksReason)));
        return tasksFlowFragment;
    }

    @Override // defpackage.df7
    public final String b() {
        return li7.class.getName();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof li7) && aa4.e(this.a, ((li7) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "TasksFlow(reason=" + this.a + ")";
    }
}
