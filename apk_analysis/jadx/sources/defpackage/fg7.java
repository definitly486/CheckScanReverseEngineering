package defpackage;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.presentation.tasks.completedTasks.view.CompletedTasksFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class fg7 implements lk3 {
    public static final fg7 a = new fg7();

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        CompletedTasksFragment.j.getClass();
        return new CompletedTasksFragment();
    }

    @Override // defpackage.df7
    public final String b() {
        return fg7.class.getName();
    }
}
