package defpackage;

import com.warefly.checkscan.R;
import com.warefly.checkscan.databinding.ItemRvBalanceGroupOperationBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class d30 extends gh4 implements ll3<j59> {
    public final /* synthetic */ f30 f;
    public final /* synthetic */ ItemRvBalanceGroupOperationBinding g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d30(f30 f30Var, ItemRvBalanceGroupOperationBinding itemRvBalanceGroupOperationBinding) {
        super(0);
        this.f = f30Var;
        this.g = itemRvBalanceGroupOperationBinding;
    }

    @Override // defpackage.ll3
    public final j59 invoke() {
        this.f.h = false;
        ItemRvBalanceGroupOperationBinding itemRvBalanceGroupOperationBinding = this.g;
        itemRvBalanceGroupOperationBinding.tvExpand.setText(itemRvBalanceGroupOperationBinding.getRoot().getContext().getString(R.string.operations_expand_title));
        itemRvBalanceGroupOperationBinding.rvSuboperations.setVisibility(8);
        return j59.a;
    }
}
