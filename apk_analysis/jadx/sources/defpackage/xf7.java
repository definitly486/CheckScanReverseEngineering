package defpackage;

import androidx.core.os.BundleKt;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.presentation.tasks.checkboxSteps.view.CheckboxTaskStepsDetailsFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class xf7 implements lk3 {
    public final int a;

    public xf7(int i) {
        this.a = i;
    }

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        CheckboxTaskStepsDetailsFragment.m.getClass();
        CheckboxTaskStepsDetailsFragment checkboxTaskStepsDetailsFragment = new CheckboxTaskStepsDetailsFragment();
        checkboxTaskStepsDetailsFragment.setArguments(BundleKt.bundleOf(new b36("TASK_ID_KEY", Integer.valueOf(this.a))));
        return checkboxTaskStepsDetailsFragment;
    }

    @Override // defpackage.df7
    public final String b() {
        return xf7.class.getName();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof xf7) && this.a == ((xf7) obj).a;
    }

    public final int hashCode() {
        return Integer.hashCode(this.a);
    }

    public final String toString() {
        return kv2.b(this.a, "CheckboxTaskStepsDetails(taskId=", ")");
    }
}
