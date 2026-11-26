package defpackage;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.presentation.balance.withdrawalMethods.view.WithdrawalMethodsFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class qi7 implements lk3 {
    public static final qi7 a = new qi7();

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        return new WithdrawalMethodsFragment();
    }

    @Override // defpackage.df7
    public final String b() {
        return qi7.class.getName();
    }
}
