package defpackage;

import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.bankLanding.databinding.ItemRvBankBenefitsBinding;

/* JADX INFO: loaded from: classes.dex */
public final class ja0 extends vd9<ka0, ItemRvBankBenefitsBinding> {
    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof ka0;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, ka0 ka0Var) {
        ItemRvBankBenefitsBinding itemRvBankBenefitsBinding = (ItemRvBankBenefitsBinding) viewBinding;
        ka0 ka0Var2 = ka0Var;
        itemRvBankBenefitsBinding.getClass();
        itemRvBankBenefitsBinding.tvTitle.setText(ka0Var2.a);
        RecyclerView.Adapter adapter = itemRvBankBenefitsBinding.rvBenefits.getAdapter();
        eu1 eu1Var = adapter instanceof eu1 ? (eu1) adapter : null;
        if (eu1Var != null) {
            eu1Var.submitList(ka0Var2.b);
        }
    }

    @Override // defpackage.vd9
    public final void j(ViewBinding viewBinding) {
        ItemRvBankBenefitsBinding itemRvBankBenefitsBinding = (ItemRvBankBenefitsBinding) viewBinding;
        itemRvBankBenefitsBinding.getClass();
        RecyclerView recyclerView = itemRvBankBenefitsBinding.rvBenefits;
        recyclerView.setAdapter(new eu1(new fa0(ea0.c, 0)));
        recyclerView.setLayoutManager(new LinearLayoutManager(itemRvBankBenefitsBinding.getRoot().getContext(), 1, false));
        recyclerView.addItemDecoration(new ia0());
        recyclerView.setItemAnimator(null);
    }
}
