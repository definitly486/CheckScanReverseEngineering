package defpackage;

import androidx.core.os.BundleKt;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.presentation.tasks.multiTaskDetails.view.MultiTaskDetailsFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class bh7 implements lk3 {
    public final int a;

    public bh7(int i) {
        this.a = i;
    }

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        MultiTaskDetailsFragment.m.getClass();
        MultiTaskDetailsFragment multiTaskDetailsFragment = new MultiTaskDetailsFragment();
        multiTaskDetailsFragment.setArguments(BundleKt.bundleOf(new b36("TASK_ID_KEY", Integer.valueOf(this.a))));
        return multiTaskDetailsFragment;
    }

    @Override // defpackage.df7
    public final String b() {
        return bh7.class.getName();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof bh7) && this.a == ((bh7) obj).a;
    }

    public final int hashCode() {
        return Integer.hashCode(this.a);
    }

    public final String toString() {
        return kv2.b(this.a, "MultiTask(taskId=", ")");
    }
}
