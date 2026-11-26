package defpackage;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.presentation.flows.electrocheques.view.ElectroChequesFlowFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class lg7 implements lk3 {
    public static final lg7 a = new lg7();

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        return new ElectroChequesFlowFragment();
    }

    @Override // defpackage.df7
    public final String b() {
        return lg7.class.getName();
    }
}
