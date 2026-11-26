package defpackage;

import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.databinding.ItemRvDescriptionBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class gt5 extends vd9<hq8, ItemRvDescriptionBinding> {
    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof hq8;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, hq8 hq8Var) {
        ItemRvDescriptionBinding itemRvDescriptionBinding = (ItemRvDescriptionBinding) viewBinding;
        itemRvDescriptionBinding.getClass();
        itemRvDescriptionBinding.tvDescription.setText(hq8Var.a);
    }
}
