package defpackage;

import com.warefly.checkscan.R;
import com.warefly.checkscan.databinding.ItemGroupOperationBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class vy5 extends gh4 implements ll3<j59> {
    public final /* synthetic */ xy5 f;
    public final /* synthetic */ ItemGroupOperationBinding g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public vy5(xy5 xy5Var, ItemGroupOperationBinding itemGroupOperationBinding) {
        super(0);
        this.f = xy5Var;
        this.g = itemGroupOperationBinding;
    }

    @Override // defpackage.ll3
    public final j59 invoke() {
        this.f.i = true;
        ItemGroupOperationBinding itemGroupOperationBinding = this.g;
        itemGroupOperationBinding.tvExpand.setText(itemGroupOperationBinding.getRoot().getContext().getString(R.string.operations_unexpand_title));
        itemGroupOperationBinding.rvSuboperations.setVisibility(0);
        return j59.a;
    }
}
