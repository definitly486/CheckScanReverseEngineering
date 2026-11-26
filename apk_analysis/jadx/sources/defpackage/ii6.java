package defpackage;

import androidx.viewbinding.ViewBinding;
import com.google.android.material.card.MaterialCardView;
import com.warefly.checkscan.products.databinding.ItemProductShopBinding;
import com.warefly.checkscan.products.presentation.product.presenter.ProductPresenter;

/* JADX INFO: loaded from: classes5.dex */
public final class ii6 extends vd9<ji6, ItemProductShopBinding> {
    public final ProductPresenter b;

    public interface a {
        void onShopItemClicked(int i);
    }

    public ii6(ProductPresenter productPresenter) {
        super(hi6.c);
        this.b = productPresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof ji6;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, ji6 ji6Var) {
        ItemProductShopBinding itemProductShopBinding = (ItemProductShopBinding) viewBinding;
        ji6 ji6Var2 = ji6Var;
        itemProductShopBinding.getClass();
        com.bumptech.glide.a.e(itemProductShopBinding.getRoot()).h(ji6Var2.c).L(itemProductShopBinding.ivLogo);
        itemProductShopBinding.tvBody.setText(ji6Var2.b);
        MaterialCardView root = itemProductShopBinding.getRoot();
        root.getClass();
        root.setOnClickListener(new lb7(new p30(this, ji6Var2, 3)));
    }
}
