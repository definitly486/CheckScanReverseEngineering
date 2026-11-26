package defpackage;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.presentation.flows.account.view.AccountFlowFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class if7 implements lk3 {
    public static final if7 a = new if7();

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        return new AccountFlowFragment();
    }

    @Override // defpackage.df7
    public final String b() {
        return if7.class.getName();
    }
}
