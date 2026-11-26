package defpackage;

import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.databinding.ItemRvBalanceTitleBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class d70 extends vd9<e70, ItemRvBalanceTitleBinding> {
    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof e70;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, e70 e70Var) {
        ItemRvBalanceTitleBinding itemRvBalanceTitleBinding = (ItemRvBalanceTitleBinding) viewBinding;
        itemRvBalanceTitleBinding.getClass();
        itemRvBalanceTitleBinding.tvTitle.setText(e70Var.a);
    }
}
