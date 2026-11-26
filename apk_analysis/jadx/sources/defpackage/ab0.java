package defpackage;

import androidx.viewbinding.ViewBinding;
import com.bumptech.glide.a;
import com.warefly.checkscan.bankLanding.databinding.ItemRvBankStepBinding;
import com.warefly.checkscan.databinding.ItemRvOfferInstructionsBinding;

/* JADX INFO: loaded from: classes.dex */
public final class ab0 extends vd9 {
    public final /* synthetic */ int b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ab0(dm3 dm3Var, int i) {
        super(dm3Var);
        this.b = i;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        int i = this.b;
        obj.getClass();
        switch (i) {
            case 0:
                return obj instanceof bb0;
            default:
                return obj instanceof kt5;
        }
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, Object obj) {
        switch (this.b) {
            case 0:
                ItemRvBankStepBinding itemRvBankStepBinding = (ItemRvBankStepBinding) viewBinding;
                bb0 bb0Var = (bb0) obj;
                itemRvBankStepBinding.getClass();
                itemRvBankStepBinding.tvTitle.setText(bb0Var.a);
                itemRvBankStepBinding.tvSubtitle.setText(bb0Var.b);
                a.d(itemRvBankStepBinding.getRoot().getContext()).h(bb0Var.c).L(itemRvBankStepBinding.ivStep);
                break;
            default:
                ItemRvOfferInstructionsBinding itemRvOfferInstructionsBinding = (ItemRvOfferInstructionsBinding) viewBinding;
                kt5 kt5Var = (kt5) obj;
                itemRvOfferInstructionsBinding.getClass();
                a.e(itemRvOfferInstructionsBinding.ivNumber).h(kt5Var.a).L(itemRvOfferInstructionsBinding.ivNumber);
                itemRvOfferInstructionsBinding.tvTitle.setText(kt5Var.b);
                break;
        }
    }
}
