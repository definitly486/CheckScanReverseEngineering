package defpackage;

import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.products.databinding.ItemProductOfferConditionsBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class nh6 extends vd9<bi6, ItemProductOfferConditionsBinding> {
    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof bi6;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, bi6 bi6Var) {
        ItemProductOfferConditionsBinding itemProductOfferConditionsBinding = (ItemProductOfferConditionsBinding) viewBinding;
        bi6 bi6Var2 = bi6Var;
        itemProductOfferConditionsBinding.getClass();
        itemProductOfferConditionsBinding.tvTitle.setText(bi6Var2.a);
        RecyclerView.Adapter adapter = itemProductOfferConditionsBinding.rvConditions.getAdapter();
        eu1 eu1Var = adapter instanceof eu1 ? (eu1) adapter : null;
        if (eu1Var != null) {
            eu1Var.submitList(bi6Var2.b);
        }
    }

    @Override // defpackage.vd9
    public final void j(ViewBinding viewBinding) {
        ItemProductOfferConditionsBinding itemProductOfferConditionsBinding = (ItemProductOfferConditionsBinding) viewBinding;
        itemProductOfferConditionsBinding.getClass();
        itemProductOfferConditionsBinding.rvConditions.setLayoutManager(new LinearLayoutManager(itemProductOfferConditionsBinding.getRoot().getContext(), 1, false));
        itemProductOfferConditionsBinding.rvConditions.setAdapter(new eu1(new kh6(jh6.c, 0)));
        itemProductOfferConditionsBinding.rvConditions.addItemDecoration(new mh6());
    }
}
