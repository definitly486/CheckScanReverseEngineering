package defpackage;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.presentation.statistics.view.StatisticsFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class gi7 implements lk3 {
    public static final gi7 a = new gi7();

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        return new StatisticsFragment();
    }

    @Override // defpackage.df7
    public final String b() {
        return gi7.class.getName();
    }
}
