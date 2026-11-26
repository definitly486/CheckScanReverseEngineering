package defpackage;

import androidx.core.os.BundleKt;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.products.presentation.flow.ProductsReason;
import com.warefly.checkscan.products.presentation.flow.view.ProductsFlowFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class gk6 implements lk3 {
    public final ProductsReason a;

    public gk6(ProductsReason productsReason) {
        productsReason.getClass();
        this.a = productsReason;
    }

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        ProductsFlowFragment.j.getClass();
        ProductsReason productsReason = this.a;
        productsReason.getClass();
        ProductsFlowFragment productsFlowFragment = new ProductsFlowFragment();
        productsFlowFragment.setArguments(BundleKt.bundleOf(new b36("REASON_KEY", productsReason)));
        return productsFlowFragment;
    }

    @Override // defpackage.df7
    public final String b() {
        return gk6.class.getName();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof gk6) && aa4.e(this.a, ((gk6) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "ProductsFlow(reason=" + this.a + ")";
    }
}
