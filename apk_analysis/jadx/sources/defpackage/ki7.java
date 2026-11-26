package defpackage;

import androidx.core.os.BundleKt;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.presentation.tasks.taskDetails.view.TaskDetailsFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class ki7 implements lk3 {
    public final int a;

    public ki7(int i) {
        this.a = i;
    }

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        TaskDetailsFragment.m.getClass();
        TaskDetailsFragment taskDetailsFragment = new TaskDetailsFragment();
        taskDetailsFragment.setArguments(BundleKt.bundleOf(new b36("TASK_ID_KEY", Integer.valueOf(this.a))));
        return taskDetailsFragment;
    }

    @Override // defpackage.df7
    public final String b() {
        return ki7.class.getName();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ki7) && this.a == ((ki7) obj).a;
    }

    public final int hashCode() {
        return Integer.hashCode(this.a);
    }

    public final String toString() {
        return kv2.b(this.a, "TasksDetails(taskId=", ")");
    }
}
