package defpackage;

import androidx.viewbinding.ViewBinding;
import com.bumptech.glide.a;
import com.warefly.checkscan.databinding.ItemRvAdvancePromoSelectCardCategoryBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class ra extends vd9<xa.e, ItemRvAdvancePromoSelectCardCategoryBinding> {
    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof xa.e;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, xa.e eVar) {
        ItemRvAdvancePromoSelectCardCategoryBinding itemRvAdvancePromoSelectCardCategoryBinding = (ItemRvAdvancePromoSelectCardCategoryBinding) viewBinding;
        xa.e eVar2 = eVar;
        itemRvAdvancePromoSelectCardCategoryBinding.getClass();
        itemRvAdvancePromoSelectCardCategoryBinding.tvTitle.setText(eVar2.a);
        a.e(itemRvAdvancePromoSelectCardCategoryBinding.getRoot()).h(eVar2.b).L(itemRvAdvancePromoSelectCardCategoryBinding.ivCategory);
    }
}
