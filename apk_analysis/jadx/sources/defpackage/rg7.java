package defpackage;

import androidx.core.os.BundleKt;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.presentation.gift.view.GiftFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class rg7 implements lk3 {
    public final int a;

    public rg7(int i) {
        this.a = i;
    }

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        GiftFragment.h.getClass();
        GiftFragment giftFragment = new GiftFragment();
        giftFragment.setArguments(BundleKt.bundleOf(new b36("GIFT_KEY", Integer.valueOf(this.a))));
        return giftFragment;
    }

    @Override // defpackage.df7
    public final String b() {
        return rg7.class.getName();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof rg7) && this.a == ((rg7) obj).a;
    }

    public final int hashCode() {
        return Integer.hashCode(this.a);
    }

    public final String toString() {
        return kv2.b(this.a, "Gift(id=", ")");
    }
}
