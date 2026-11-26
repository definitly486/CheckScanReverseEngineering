package defpackage;

import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.databinding.ItemRvLoanPromoConditionBinding;
import com.warefly.checkscan.offerLanding.databinding.ItemRvOfferLandingTitleBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class ps4 extends vd9 {
    public final /* synthetic */ int b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ps4(dm3 dm3Var, int i) {
        super(dm3Var);
        this.b = i;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        int i = this.b;
        obj.getClass();
        switch (i) {
            case 0:
                return obj instanceof qs4;
            default:
                return obj instanceof mu5;
        }
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, Object obj) {
        switch (this.b) {
            case 0:
                ItemRvLoanPromoConditionBinding itemRvLoanPromoConditionBinding = (ItemRvLoanPromoConditionBinding) viewBinding;
                qs4 qs4Var = (qs4) obj;
                itemRvLoanPromoConditionBinding.getClass();
                itemRvLoanPromoConditionBinding.tvTitle.setText(qs4Var.a);
                itemRvLoanPromoConditionBinding.tvDescription.setText(qs4Var.b);
                break;
            default:
                ItemRvOfferLandingTitleBinding itemRvOfferLandingTitleBinding = (ItemRvOfferLandingTitleBinding) viewBinding;
                itemRvOfferLandingTitleBinding.getClass();
                itemRvOfferLandingTitleBinding.tvTitle.setText(((mu5) obj).a);
                break;
        }
    }
}
