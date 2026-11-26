package defpackage;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.presentation.bankCardOptions.view.BankCardOptionsFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class pf7 implements lk3 {
    public final long a;

    public pf7(long j) {
        this.a = j;
    }

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        BankCardOptionsFragment bankCardOptionsFragment = new BankCardOptionsFragment();
        bankCardOptionsFragment.setArguments(new h61(this.a).getArguments());
        return bankCardOptionsFragment;
    }

    @Override // defpackage.df7
    public final String b() {
        return pf7.class.getName();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof pf7) && this.a == ((pf7) obj).a;
    }

    public final int hashCode() {
        return Long.hashCode(this.a);
    }

    public final String toString() {
        return bg.d(this.a, "BankCardOptions(bankId=", ")");
    }
}
