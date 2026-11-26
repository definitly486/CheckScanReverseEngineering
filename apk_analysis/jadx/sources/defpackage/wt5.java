package defpackage;

import androidx.viewbinding.ViewBinding;
import com.bumptech.glide.a;
import com.warefly.checkscan.offerLanding.databinding.ItemRvOfferLandingBenefitsBlockBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class wt5 extends vd9<ut5, ItemRvOfferLandingBenefitsBlockBinding> {
    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof ut5;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, ut5 ut5Var) {
        ItemRvOfferLandingBenefitsBlockBinding itemRvOfferLandingBenefitsBlockBinding = (ItemRvOfferLandingBenefitsBlockBinding) viewBinding;
        ut5 ut5Var2 = ut5Var;
        itemRvOfferLandingBenefitsBlockBinding.getClass();
        a.e(itemRvOfferLandingBenefitsBlockBinding.ivBonus).h(ut5Var2.a).L(itemRvOfferLandingBenefitsBlockBinding.ivBonus);
        itemRvOfferLandingBenefitsBlockBinding.tvTitle.setText(ut5Var2.b);
        itemRvOfferLandingBenefitsBlockBinding.tvDescription.setText(ut5Var2.c);
    }
}
