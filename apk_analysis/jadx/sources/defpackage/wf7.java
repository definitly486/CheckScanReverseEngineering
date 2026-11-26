package defpackage;

import androidx.core.os.BundleKt;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.presentation.tasks.checkbox.view.CheckboxTaskDetailsFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class wf7 implements lk3 {
    public final int a;

    public wf7(int i) {
        this.a = i;
    }

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        CheckboxTaskDetailsFragment.m.getClass();
        CheckboxTaskDetailsFragment checkboxTaskDetailsFragment = new CheckboxTaskDetailsFragment();
        checkboxTaskDetailsFragment.setArguments(BundleKt.bundleOf(new b36("TASK_ID_KEY", Integer.valueOf(this.a))));
        return checkboxTaskDetailsFragment;
    }

    @Override // defpackage.df7
    public final String b() {
        return wf7.class.getName();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof wf7) && this.a == ((wf7) obj).a;
    }

    public final int hashCode() {
        return Integer.hashCode(this.a);
    }

    public final String toString() {
        return kv2.b(this.a, "CheckboxTaskDetails(taskId=", ")");
    }
}
