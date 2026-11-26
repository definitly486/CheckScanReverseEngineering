package defpackage;

import androidx.viewbinding.ViewBinding;
import com.google.android.material.card.MaterialCardView;
import com.warefly.checkscan.products.databinding.ItemProductsShopConditionsBinding;
import com.warefly.checkscan.products.presentation.shop.presenter.ShopPresenter;

/* JADX INFO: loaded from: classes5.dex */
public final class iv1 extends vd9<jv1, ItemProductsShopConditionsBinding> {
    public final ShopPresenter b;

    public interface a {
        void onConditionsClicked(String str, String str2);
    }

    public iv1(ShopPresenter shopPresenter) {
        super(hv1.c);
        this.b = shopPresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof jv1;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, jv1 jv1Var) {
        ItemProductsShopConditionsBinding itemProductsShopConditionsBinding = (ItemProductsShopConditionsBinding) viewBinding;
        jv1 jv1Var2 = jv1Var;
        itemProductsShopConditionsBinding.getClass();
        itemProductsShopConditionsBinding.tvTitle.setText(jv1Var2.a);
        MaterialCardView root = itemProductsShopConditionsBinding.getRoot();
        root.getClass();
        root.setOnClickListener(new lb7(new v50(this, jv1Var2, 1)));
    }
}
