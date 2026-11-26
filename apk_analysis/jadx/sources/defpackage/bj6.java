package defpackage;

import com.warefly.checkscan.products.presentation.products.view.ProductsFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class bj6 extends gh4 implements ll3<j59> {
    public final /* synthetic */ ProductsFragment f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bj6(ProductsFragment productsFragment) {
        super(0);
        this.f = productsFragment;
    }

    @Override // defpackage.ll3
    public final j59 invoke() {
        this.f.o().loadNextPage();
        return j59.a;
    }
}
