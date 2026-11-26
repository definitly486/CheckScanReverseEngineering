package defpackage;

import androidx.core.os.BundleKt;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.bankLanding.presentation.bank.view.BankLandingFragment;

/* JADX INFO: loaded from: classes.dex */
public final class ya0 implements lk3 {
    public final int a;

    public ya0(int i) {
        this.a = i;
    }

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        BankLandingFragment.m.getClass();
        BankLandingFragment bankLandingFragment = new BankLandingFragment();
        bankLandingFragment.setArguments(BundleKt.bundleOf(new b36("BANK_LANDING_ID_KEY", Integer.valueOf(this.a))));
        return bankLandingFragment;
    }

    @Override // defpackage.df7
    public final String b() {
        return ya0.class.getName();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ya0) && this.a == ((ya0) obj).a;
    }

    public final int hashCode() {
        return Integer.hashCode(this.a);
    }

    public final String toString() {
        return kv2.b(this.a, "BankLanding(id=", ")");
    }
}
