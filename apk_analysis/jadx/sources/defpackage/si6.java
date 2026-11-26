package defpackage;

import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.products.databinding.ItemProductDetailsTitleBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class si6 extends vd9<kk6, ItemProductDetailsTitleBinding> {
    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof kk6;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, kk6 kk6Var) {
        ItemProductDetailsTitleBinding itemProductDetailsTitleBinding = (ItemProductDetailsTitleBinding) viewBinding;
        itemProductDetailsTitleBinding.getClass();
        itemProductDetailsTitleBinding.tvTitle.setText(kk6Var.a);
    }
}
