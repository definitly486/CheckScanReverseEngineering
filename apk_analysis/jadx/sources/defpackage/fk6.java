package defpackage;

import androidx.core.os.BundleKt;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.products.presentation.product.view.ProductFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class fk6 implements lk3 {
    public final int a;

    public fk6(int i) {
        this.a = i;
    }

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        ProductFragment.j.getClass();
        ProductFragment productFragment = new ProductFragment();
        productFragment.setArguments(BundleKt.bundleOf(new b36("PRODUCT_ID_KEY", Integer.valueOf(this.a))));
        return productFragment;
    }

    @Override // defpackage.df7
    public final String b() {
        return fk6.class.getName();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof fk6) && this.a == ((fk6) obj).a;
    }

    public final int hashCode() {
        return Integer.hashCode(this.a);
    }

    public final String toString() {
        return kv2.b(this.a, "Product(productId=", ")");
    }
}
