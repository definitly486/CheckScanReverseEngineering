package defpackage;

import com.warefly.checkscan.R;
import com.warefly.checkscan.databinding.ItemGroupOperationBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class wy5 extends gh4 implements ll3<j59> {
    public final /* synthetic */ xy5 f;
    public final /* synthetic */ ItemGroupOperationBinding g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public wy5(xy5 xy5Var, ItemGroupOperationBinding itemGroupOperationBinding) {
        super(0);
        this.f = xy5Var;
        this.g = itemGroupOperationBinding;
    }

    @Override // defpackage.ll3
    public final j59 invoke() {
        this.f.i = false;
        ItemGroupOperationBinding itemGroupOperationBinding = this.g;
        itemGroupOperationBinding.tvExpand.setText(itemGroupOperationBinding.getRoot().getContext().getString(R.string.operations_expand_title));
        itemGroupOperationBinding.rvSuboperations.setVisibility(8);
        return j59.a;
    }
}
