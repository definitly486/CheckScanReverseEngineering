package defpackage;

import androidx.viewbinding.ViewBinding;
import com.bumptech.glide.a;
import com.warefly.checkscan.R;
import com.warefly.checkscan.subscriptionLanding.databinding.ItemLandingCardBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class ci4 extends vd9<tj4, ItemLandingCardBinding> {
    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof tj4;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, tj4 tj4Var) {
        ItemLandingCardBinding itemLandingCardBinding = (ItemLandingCardBinding) viewBinding;
        itemLandingCardBinding.getClass();
        a.d(itemLandingCardBinding.getRoot().getContext()).f(Integer.valueOf(R.drawable.pro_banner)).L(itemLandingCardBinding.ivPro);
        a.d(itemLandingCardBinding.getRoot().getContext()).f(Integer.valueOf(R.drawable.pro_plus_banner)).L(itemLandingCardBinding.ivPlus);
    }
}
