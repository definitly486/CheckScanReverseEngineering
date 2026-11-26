package defpackage;

import androidx.core.os.BundleKt;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.presentation.tasks.main.view.TasksFragment;
import com.warefly.checkscan.tasks.presentation.flows.TasksReason;

/* JADX INFO: loaded from: classes5.dex */
public final class ji7 implements lk3 {
    public final TasksReason a;

    public ji7(TasksReason tasksReason) {
        this.a = tasksReason;
    }

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        TasksFragment.q.getClass();
        TasksFragment tasksFragment = new TasksFragment();
        tasksFragment.setArguments(BundleKt.bundleOf(new b36("REASON_KEY", this.a)));
        return tasksFragment;
    }

    @Override // defpackage.df7
    public final String b() {
        return ji7.class.getName();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ji7) && aa4.e(this.a, ((ji7) obj).a);
    }

    public final int hashCode() {
        TasksReason tasksReason = this.a;
        if (tasksReason == null) {
            return 0;
        }
        return tasksReason.hashCode();
    }

    public final String toString() {
        return "Tasks(reason=" + this.a + ")";
    }

    public ji7() {
        this(null);
    }
}
