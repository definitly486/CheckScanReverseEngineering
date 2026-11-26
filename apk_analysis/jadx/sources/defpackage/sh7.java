package defpackage;

import androidx.core.os.BundleKt;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.presentation.tasks.promocode.view.PromocodeTaskDetailsFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class sh7 implements lk3 {
    public final int a;

    public sh7(int i) {
        this.a = i;
    }

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        PromocodeTaskDetailsFragment.m.getClass();
        PromocodeTaskDetailsFragment promocodeTaskDetailsFragment = new PromocodeTaskDetailsFragment();
        promocodeTaskDetailsFragment.setArguments(BundleKt.bundleOf(new b36("TASK_ID_KEY", Integer.valueOf(this.a))));
        return promocodeTaskDetailsFragment;
    }

    @Override // defpackage.df7
    public final String b() {
        return sh7.class.getName();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof sh7) && this.a == ((sh7) obj).a;
    }

    public final int hashCode() {
        return Integer.hashCode(this.a);
    }

    public final String toString() {
        return kv2.b(this.a, "PromocodeDetailsTask(taskId=", ")");
    }
}
