package defpackage;

import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.R;
import com.warefly.checkscan.databinding.ItemRvSbpTransferBanksBinding;
import com.warefly.checkscan.presentation.balance.transferCashback.sbp.presenter.TransferSBPPresenter;

/* JADX INFO: loaded from: classes5.dex */
public final class p09 extends vd9<q09, ItemRvSbpTransferBanksBinding> {
    public final TransferSBPPresenter b;

    public p09(TransferSBPPresenter transferSBPPresenter) {
        super(n09.c);
        this.b = transferSBPPresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof q09;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, q09 q09Var) {
        ItemRvSbpTransferBanksBinding itemRvSbpTransferBanksBinding = (ItemRvSbpTransferBanksBinding) viewBinding;
        q09 q09Var2 = q09Var;
        itemRvSbpTransferBanksBinding.getClass();
        itemRvSbpTransferBanksBinding.tvTitle.setText(itemRvSbpTransferBanksBinding.getRoot().getContext().getString(R.string.sbp_banks_hint));
        RecyclerView.Adapter adapter = itemRvSbpTransferBanksBinding.rvBanks.getAdapter();
        eu1 eu1Var = adapter instanceof eu1 ? (eu1) adapter : null;
        if (eu1Var != null) {
            eu1Var.submitList(q09Var2.a);
        }
    }

    @Override // defpackage.vd9
    public final void j(ViewBinding viewBinding) {
        ItemRvSbpTransferBanksBinding itemRvSbpTransferBanksBinding = (ItemRvSbpTransferBanksBinding) viewBinding;
        itemRvSbpTransferBanksBinding.getClass();
        itemRvSbpTransferBanksBinding.rvBanks.setAdapter(new eu1(new l09(this.b)));
        itemRvSbpTransferBanksBinding.rvBanks.addItemDecoration(new o09());
        itemRvSbpTransferBanksBinding.rvBanks.setItemAnimator(null);
    }
}
