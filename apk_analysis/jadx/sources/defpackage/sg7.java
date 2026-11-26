package defpackage;

import androidx.core.os.BundleKt;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.presentation.flows.gift.view.GiftFlowFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class sg7 implements lk3 {
    public final int a;

    public sg7(int i) {
        this.a = i;
    }

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        GiftFlowFragment.j.getClass();
        GiftFlowFragment giftFlowFragment = new GiftFlowFragment();
        giftFlowFragment.setArguments(BundleKt.bundleOf(new b36("GIFT_ID_KEY", Integer.valueOf(this.a))));
        return giftFlowFragment;
    }

    @Override // defpackage.df7
    public final String b() {
        return sg7.class.getName();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof sg7) && this.a == ((sg7) obj).a;
    }

    public final int hashCode() {
        return Integer.hashCode(this.a);
    }

    public final String toString() {
        return kv2.b(this.a, "GiftFlow(id=", ")");
    }
}
