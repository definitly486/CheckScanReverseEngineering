package defpackage;

import androidx.core.os.BundleKt;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.products.presentation.shop.view.ShopFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class hk6 implements lk3 {
    public final int a;
    public final boolean b;

    public hk6(int i, boolean z) {
        this.a = i;
        this.b = z;
    }

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        ShopFragment.k.getClass();
        ShopFragment shopFragment = new ShopFragment();
        shopFragment.setArguments(BundleKt.bundleOf(new b36("SHOP_ID_KEY", Integer.valueOf(this.a)), new b36("IS_MERCHANT_KEY", Boolean.valueOf(this.b))));
        return shopFragment;
    }

    @Override // defpackage.df7
    public final String b() {
        return hk6.class.getName();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof hk6)) {
            return false;
        }
        hk6 hk6Var = (hk6) obj;
        return this.a == hk6Var.a && this.b == hk6Var.b;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.b) + (Integer.hashCode(this.a) * 31);
    }

    public final String toString() {
        return "Shop(shopId=" + this.a + ", isMerchant=" + this.b + ")";
    }
}
