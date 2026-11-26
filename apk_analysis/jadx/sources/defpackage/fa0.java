package defpackage;

import androidx.viewbinding.ViewBinding;
import com.bumptech.glide.a;
import com.warefly.checkscan.bankLanding.databinding.ItemRvBankBenefitBinding;
import com.warefly.checkscan.databinding.ItemRvOfferBenefitsBlockBinding;

/* JADX INFO: loaded from: classes.dex */
public final class fa0 extends vd9 {
    public final /* synthetic */ int b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ fa0(dm3 dm3Var, int i) {
        super(dm3Var);
        this.b = i;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        int i = this.b;
        obj.getClass();
        switch (i) {
            case 0:
                return obj instanceof ga0;
            default:
                return obj instanceof xs5;
        }
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, Object obj) {
        switch (this.b) {
            case 0:
                ItemRvBankBenefitBinding itemRvBankBenefitBinding = (ItemRvBankBenefitBinding) viewBinding;
                ga0 ga0Var = (ga0) obj;
                itemRvBankBenefitBinding.getClass();
                itemRvBankBenefitBinding.tvTitle.setText(ga0Var.a);
                itemRvBankBenefitBinding.tvSubtitle.setText(ga0Var.b);
                a.e(itemRvBankBenefitBinding.getRoot()).h(ga0Var.c).L(itemRvBankBenefitBinding.ivBenefit);
                break;
            default:
                ItemRvOfferBenefitsBlockBinding itemRvOfferBenefitsBlockBinding = (ItemRvOfferBenefitsBlockBinding) viewBinding;
                xs5 xs5Var = (xs5) obj;
                itemRvOfferBenefitsBlockBinding.getClass();
                a.e(itemRvOfferBenefitsBlockBinding.ivBonus).h(xs5Var.a).L(itemRvOfferBenefitsBlockBinding.ivBonus);
                itemRvOfferBenefitsBlockBinding.tvTitle.setText(xs5Var.b);
                itemRvOfferBenefitsBlockBinding.tvDescription.setText(xs5Var.c);
                break;
        }
    }
}
