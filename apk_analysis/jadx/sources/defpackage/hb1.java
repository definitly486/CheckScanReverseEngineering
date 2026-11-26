package defpackage;

import androidx.viewbinding.ViewBinding;
import com.bumptech.glide.a;
import com.warefly.checkscan.tasks.databinding.ItemRvCheckboxTaskHeaderBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class hb1 extends vd9<ib1, ItemRvCheckboxTaskHeaderBinding> {
    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof ib1;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, ib1 ib1Var) {
        ItemRvCheckboxTaskHeaderBinding itemRvCheckboxTaskHeaderBinding = (ItemRvCheckboxTaskHeaderBinding) viewBinding;
        ib1 ib1Var2 = ib1Var;
        itemRvCheckboxTaskHeaderBinding.getClass();
        a.d(itemRvCheckboxTaskHeaderBinding.getRoot().getContext()).h(ib1Var2.b).L(itemRvCheckboxTaskHeaderBinding.ivLogo);
        itemRvCheckboxTaskHeaderBinding.tvTitle.setText(ib1Var2.a);
    }
}
