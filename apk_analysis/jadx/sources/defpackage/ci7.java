package defpackage;

import androidx.core.os.BundleKt;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.presentation.balance.promocodes.view.SelectPromocodeFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class ci7 implements lk3 {
    public final int a;

    public ci7(int i) {
        this.a = i;
    }

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        SelectPromocodeFragment.n.getClass();
        SelectPromocodeFragment selectPromocodeFragment = new SelectPromocodeFragment();
        selectPromocodeFragment.setArguments(BundleKt.bundleOf(new b36("PROMOCODES_ID_PARAM", Integer.valueOf(this.a))));
        return selectPromocodeFragment;
    }

    @Override // defpackage.df7
    public final String b() {
        return ci7.class.getName();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ci7) && this.a == ((ci7) obj).a;
    }

    public final int hashCode() {
        return Integer.hashCode(this.a);
    }

    public final String toString() {
        return kv2.b(this.a, "SelectPromocode(id=", ")");
    }
}
