package defpackage;

import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.products.databinding.ItemShopProductsBinding;
import com.warefly.checkscan.products.presentation.shop.presenter.ShopPresenter;

/* JADX INFO: loaded from: classes5.dex */
public final class aj6 extends vd9<lk6, ItemShopProductsBinding> {
    public final ShopPresenter b;

    public aj6(ShopPresenter shopPresenter) {
        super(yi6.c);
        this.b = shopPresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof lk6;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, lk6 lk6Var) {
        ItemShopProductsBinding itemShopProductsBinding = (ItemShopProductsBinding) viewBinding;
        lk6 lk6Var2 = lk6Var;
        itemShopProductsBinding.getClass();
        RecyclerView.Adapter adapter = itemShopProductsBinding.rvProducts.getAdapter();
        i58 i58Var = adapter instanceof i58 ? (i58) adapter : null;
        if (i58Var != null) {
            i58Var.submitList(lk6Var2.a);
        }
    }

    @Override // defpackage.vd9
    public final void j(ViewBinding viewBinding) {
        ItemShopProductsBinding itemShopProductsBinding = (ItemShopProductsBinding) viewBinding;
        itemShopProductsBinding.getClass();
        RecyclerView recyclerView = itemShopProductsBinding.rvProducts;
        recyclerView.setLayoutManager(new GridLayoutManager(recyclerView.getContext(), 2));
        recyclerView.setAdapter(new i58(new dw8(), new wg6(this.b)));
        recyclerView.addItemDecoration(new zi6());
        recyclerView.setItemAnimator(null);
    }
}
