package defpackage;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.presentation.flows.firstopen.view.FirstOpenFlowFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class qg7 implements lk3 {
    public static final qg7 a = new qg7();

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        return new FirstOpenFlowFragment();
    }

    @Override // defpackage.df7
    public final String b() {
        return qg7.class.getName();
    }
}
