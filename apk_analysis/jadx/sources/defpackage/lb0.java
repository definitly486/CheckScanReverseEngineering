package defpackage;

import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.bankLanding.databinding.ItemRvBankTextsBinding;

/* JADX INFO: loaded from: classes.dex */
public final class lb0 extends vd9<mb0, ItemRvBankTextsBinding> {
    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof mb0;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, mb0 mb0Var) {
        ItemRvBankTextsBinding itemRvBankTextsBinding = (ItemRvBankTextsBinding) viewBinding;
        mb0 mb0Var2 = mb0Var;
        itemRvBankTextsBinding.getClass();
        itemRvBankTextsBinding.tvTitle.setText(mb0Var2.a);
        RecyclerView.Adapter adapter = itemRvBankTextsBinding.rvTexts.getAdapter();
        eu1 eu1Var = adapter instanceof eu1 ? (eu1) adapter : null;
        if (eu1Var != null) {
            eu1Var.submitList(mb0Var2.b);
        }
    }

    @Override // defpackage.vd9
    public final void j(ViewBinding viewBinding) {
        ItemRvBankTextsBinding itemRvBankTextsBinding = (ItemRvBankTextsBinding) viewBinding;
        itemRvBankTextsBinding.getClass();
        RecyclerView recyclerView = itemRvBankTextsBinding.rvTexts;
        recyclerView.setAdapter(new eu1(new hb0(gb0.c, 0)));
        recyclerView.setLayoutManager(new LinearLayoutManager(itemRvBankTextsBinding.getRoot().getContext(), 1, false));
        recyclerView.addItemDecoration(new kb0());
        recyclerView.setItemAnimator(null);
    }
}
