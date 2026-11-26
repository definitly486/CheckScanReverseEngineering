package defpackage;

import androidx.core.os.BundleKt;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.presentation.chequePage.view.ChequePageFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class zf7 implements lk3 {
    public final int a;

    public zf7(int i) {
        this.a = i;
    }

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        ChequePageFragment.q.getClass();
        ChequePageFragment chequePageFragment = new ChequePageFragment();
        chequePageFragment.setArguments(BundleKt.bundleOf(new b36("CHEQUE_ID_KEY", Integer.valueOf(this.a)), new b36("CHEQUE_JSON_KEY", null)));
        return chequePageFragment;
    }

    @Override // defpackage.df7
    public final String b() {
        return zf7.class.getName();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof zf7) && this.a == ((zf7) obj).a;
    }

    public final int hashCode() {
        return Integer.hashCode(this.a) * 31;
    }

    public final String toString() {
        return kv2.b(this.a, "ChequePage(chequeId=", ", cheque=null)");
    }
}
