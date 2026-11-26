package defpackage;

import androidx.recyclerview.widget.GridLayoutManager;
import com.warefly.checkscan.products.presentation.products.view.ProductsFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class cj6 extends GridLayoutManager.SpanSizeLookup {
    public final /* synthetic */ ProductsFragment a;

    public cj6(ProductsFragment productsFragment) {
        this.a = productsFragment;
    }

    @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
    public final int getSpanSize(int i) {
        i58 i58Var = this.a.h;
        pz3 pz3VarE = i58Var != null ? i58Var.i.e(i) : null;
        return ((pz3VarE instanceof cn) || (pz3VarE instanceof ka3)) ? 2 : 1;
    }
}
