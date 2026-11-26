package defpackage;

import com.warefly.checkscan.R;
import com.warefly.checkscan.databinding.ItemRvBalanceGroupOperationBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class c30 extends gh4 implements ll3<j59> {
    public final /* synthetic */ f30 f;
    public final /* synthetic */ ItemRvBalanceGroupOperationBinding g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c30(f30 f30Var, ItemRvBalanceGroupOperationBinding itemRvBalanceGroupOperationBinding) {
        super(0);
        this.f = f30Var;
        this.g = itemRvBalanceGroupOperationBinding;
    }

    @Override // defpackage.ll3
    public final j59 invoke() {
        this.f.h = true;
        ItemRvBalanceGroupOperationBinding itemRvBalanceGroupOperationBinding = this.g;
        itemRvBalanceGroupOperationBinding.tvExpand.setText(itemRvBalanceGroupOperationBinding.getRoot().getContext().getString(R.string.operations_unexpand_title));
        itemRvBalanceGroupOperationBinding.rvSuboperations.setVisibility(0);
        return j59.a;
    }
}
