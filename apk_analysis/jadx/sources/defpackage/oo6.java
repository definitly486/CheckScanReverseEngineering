package defpackage;

import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.databinding.ItemRvPromoSelectCardDescriptionBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class oo6 extends vd9<po6, ItemRvPromoSelectCardDescriptionBinding> {
    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof po6;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, po6 po6Var) {
        ItemRvPromoSelectCardDescriptionBinding itemRvPromoSelectCardDescriptionBinding = (ItemRvPromoSelectCardDescriptionBinding) viewBinding;
        po6 po6Var2 = po6Var;
        itemRvPromoSelectCardDescriptionBinding.getClass();
        itemRvPromoSelectCardDescriptionBinding.tvTitle.setText(po6Var2.a);
        itemRvPromoSelectCardDescriptionBinding.tvDescription.setText(po6Var2.b);
    }
}
