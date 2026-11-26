package defpackage;

import androidx.core.os.BundleKt;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.presentation.flows.cheque.view.ChequeFlowFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class yf7 implements lk3 {
    public final int a;

    public yf7(int i) {
        this.a = i;
    }

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        ChequeFlowFragment.j.getClass();
        ChequeFlowFragment chequeFlowFragment = new ChequeFlowFragment();
        chequeFlowFragment.setArguments(BundleKt.bundleOf(new b36("CHEQUE_ID_KEY", Integer.valueOf(this.a))));
        return chequeFlowFragment;
    }

    @Override // defpackage.df7
    public final String b() {
        return yf7.class.getName();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof yf7) && this.a == ((yf7) obj).a;
    }

    public final int hashCode() {
        return Integer.hashCode(this.a);
    }

    public final String toString() {
        return kv2.b(this.a, "ChequeFlow(chequeId=", ")");
    }
}
