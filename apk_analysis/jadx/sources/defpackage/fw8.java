package defpackage;

import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.bonuses.databinding.ItemRvTitleBinding;

/* JADX INFO: loaded from: classes.dex */
public final class fw8 extends vd9<hw8, ItemRvTitleBinding> {
    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof hw8;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, hw8 hw8Var) {
        ItemRvTitleBinding itemRvTitleBinding = (ItemRvTitleBinding) viewBinding;
        itemRvTitleBinding.getClass();
        itemRvTitleBinding.tvTitle.setText(hw8Var.a);
    }
}
