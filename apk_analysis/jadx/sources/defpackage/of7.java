package defpackage;

import androidx.core.os.BundleKt;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.presentation.balance.main.view.BalanceFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class of7 implements lk3 {
    public final boolean a;

    public of7(boolean z) {
        this.a = z;
    }

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        BalanceFragment.u.getClass();
        BalanceFragment balanceFragment = new BalanceFragment();
        balanceFragment.setArguments(BundleKt.bundleOf(new b36("OPEN_ALFA", Boolean.valueOf(this.a))));
        return balanceFragment;
    }

    @Override // defpackage.df7
    public final String b() {
        return of7.class.getName();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof of7) && this.a == ((of7) obj).a;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.a);
    }

    public final String toString() {
        return l2.c("Balance(isOpenAlfa=", ")", this.a);
    }

    public of7() {
        this(false);
    }
}
