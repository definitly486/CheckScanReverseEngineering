package defpackage;

import androidx.core.os.BundleKt;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.presentation.tasks.daily.view.DailyTaskFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class kg7 implements lk3 {
    public final int a;

    public kg7(int i) {
        this.a = i;
    }

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        DailyTaskFragment.k.getClass();
        DailyTaskFragment dailyTaskFragment = new DailyTaskFragment();
        dailyTaskFragment.setArguments(BundleKt.bundleOf(new b36("TASK_ID_KEY", Integer.valueOf(this.a))));
        return dailyTaskFragment;
    }

    @Override // defpackage.df7
    public final String b() {
        return kg7.class.getName();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof kg7) && this.a == ((kg7) obj).a;
    }

    public final int hashCode() {
        return Integer.hashCode(this.a);
    }

    public final String toString() {
        return kv2.b(this.a, "DailyTask(taskId=", ")");
    }
}
