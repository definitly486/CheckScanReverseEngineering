package defpackage;

import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.bankLanding.databinding.ItemRvBankStepsBinding;

/* JADX INFO: loaded from: classes.dex */
public final class eb0 extends vd9<fb0, ItemRvBankStepsBinding> {
    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof fb0;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, fb0 fb0Var) {
        ItemRvBankStepsBinding itemRvBankStepsBinding = (ItemRvBankStepsBinding) viewBinding;
        fb0 fb0Var2 = fb0Var;
        itemRvBankStepsBinding.getClass();
        itemRvBankStepsBinding.tvTitle.setText(fb0Var2.a);
        itemRvBankStepsBinding.tvDescription.setText(fb0Var2.c);
        RecyclerView.Adapter adapter = itemRvBankStepsBinding.rvSteps.getAdapter();
        eu1 eu1Var = adapter instanceof eu1 ? (eu1) adapter : null;
        if (eu1Var != null) {
            eu1Var.submitList(fb0Var2.b);
        }
    }

    @Override // defpackage.vd9
    public final void j(ViewBinding viewBinding) {
        ItemRvBankStepsBinding itemRvBankStepsBinding = (ItemRvBankStepsBinding) viewBinding;
        itemRvBankStepsBinding.getClass();
        RecyclerView recyclerView = itemRvBankStepsBinding.rvSteps;
        recyclerView.setAdapter(new eu1(new ab0(za0.c, 0)));
        recyclerView.addItemDecoration(new db0());
        recyclerView.setLayoutManager(new LinearLayoutManager(itemRvBankStepsBinding.getRoot().getContext(), 1, false));
        recyclerView.setItemAnimator(null);
    }
}
