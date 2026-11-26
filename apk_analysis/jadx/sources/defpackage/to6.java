package defpackage;

import androidx.core.content.ContextCompat;
import androidx.viewbinding.ViewBinding;
import com.bumptech.glide.a;
import com.warefly.checkscan.R;
import com.warefly.checkscan.databinding.ItemRvPromoSelectCardHeaderBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class to6 extends vd9<uo6, ItemRvPromoSelectCardHeaderBinding> {
    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof uo6;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, uo6 uo6Var) {
        ItemRvPromoSelectCardHeaderBinding itemRvPromoSelectCardHeaderBinding = (ItemRvPromoSelectCardHeaderBinding) viewBinding;
        uo6 uo6Var2 = uo6Var;
        itemRvPromoSelectCardHeaderBinding.getClass();
        itemRvPromoSelectCardHeaderBinding.tvTitle.setText(uo6Var2.a);
        itemRvPromoSelectCardHeaderBinding.tvDescription.setText(uo6Var2.b);
        ((h37) a.e(itemRvPromoSelectCardHeaderBinding.getRoot()).h(uo6Var2.c).r(is7.b(pl2.d(4.0f), ContextCompat.getColor(itemRvPromoSelectCardHeaderBinding.getRoot().getContext(), R.color.almostThereMoon)))).b(new s37().B(new e87(pl2.e(4)), true)).L(itemRvPromoSelectCardHeaderBinding.ivLogo);
    }
}
