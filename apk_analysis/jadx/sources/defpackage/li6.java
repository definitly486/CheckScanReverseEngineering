package defpackage;

import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import com.google.android.flexbox.FlexboxLayoutManager;
import com.warefly.checkscan.products.databinding.ItemProductShopsBinding;
import com.warefly.checkscan.products.presentation.product.presenter.ProductPresenter;

/* JADX INFO: loaded from: classes5.dex */
public final class li6 extends vd9<ni6, ItemProductShopsBinding> {
    public final ProductPresenter b;

    /* JADX INFO: loaded from: classes.dex */
    public interface a {
        void onCollapseShops(boolean z);
    }

    public li6(ProductPresenter productPresenter) {
        super(ki6.c);
        this.b = productPresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof ni6;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, ni6 ni6Var) {
        ItemProductShopsBinding itemProductShopsBinding = (ItemProductShopsBinding) viewBinding;
        ni6 ni6Var2 = ni6Var;
        itemProductShopsBinding.getClass();
        itemProductShopsBinding.tvTitle.setText(ni6Var2.a);
        RecyclerView.Adapter adapter = itemProductShopsBinding.rvShops.getAdapter();
        eu1 eu1Var = adapter instanceof eu1 ? (eu1) adapter : null;
        if (eu1Var != null) {
            eu1Var.submitList(ni6Var2.c);
        }
        itemProductShopsBinding.rvShops.post(new fu4(itemProductShopsBinding, ni6Var2, this));
        TextView textView = itemProductShopsBinding.btnCollapse;
        textView.getClass();
        textView.setOnClickListener(new lb7(new qo0(this, ni6Var2, 2)));
    }

    @Override // defpackage.vd9
    public final void j(ViewBinding viewBinding) {
        ItemProductShopsBinding itemProductShopsBinding = (ItemProductShopsBinding) viewBinding;
        itemProductShopsBinding.getClass();
        RecyclerView recyclerView = itemProductShopsBinding.rvShops;
        recyclerView.setAdapter(new eu1(new ii6(this.b)));
        FlexboxLayoutManager flexboxLayoutManager = new FlexboxLayoutManager(itemProductShopsBinding.getRoot().getContext());
        flexboxLayoutManager.B(0);
        flexboxLayoutManager.C(1);
        flexboxLayoutManager.D(0);
        recyclerView.setLayoutManager(flexboxLayoutManager);
        recyclerView.addItemDecoration(new mi6());
    }
}
