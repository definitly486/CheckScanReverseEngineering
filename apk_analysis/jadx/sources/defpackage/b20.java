package defpackage;

import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import com.bumptech.glide.a;
import com.warefly.checkscan.databinding.ItemRvBalanceCardTextWithHintBinding;
import com.warefly.checkscan.databinding.ItemRvLoanPromoBenefitBinding;
import com.warefly.checkscan.offerLanding.databinding.ItemRvOfferLandingStepsBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class b20 extends vd9 {
    public final /* synthetic */ int b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ b20(dm3 dm3Var, int i) {
        super(dm3Var);
        this.b = i;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        int i = this.b;
        obj.getClass();
        switch (i) {
            case 0:
                return obj instanceof f20;
            case 1:
                return obj instanceof ns4;
            default:
                return obj instanceof ku5;
        }
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, Object obj) {
        switch (this.b) {
            case 0:
                ItemRvBalanceCardTextWithHintBinding itemRvBalanceCardTextWithHintBinding = (ItemRvBalanceCardTextWithHintBinding) viewBinding;
                f20 f20Var = (f20) obj;
                itemRvBalanceCardTextWithHintBinding.getClass();
                itemRvBalanceCardTextWithHintBinding.tvTitle.setText(f20Var.a);
                itemRvBalanceCardTextWithHintBinding.tvHint.setText(f20Var.b);
                break;
            case 1:
                ItemRvLoanPromoBenefitBinding itemRvLoanPromoBenefitBinding = (ItemRvLoanPromoBenefitBinding) viewBinding;
                ns4 ns4Var = (ns4) obj;
                itemRvLoanPromoBenefitBinding.getClass();
                a.d(itemRvLoanPromoBenefitBinding.getRoot().getContext()).h(ns4Var.a).L(itemRvLoanPromoBenefitBinding.ivLogo);
                TextView textView = itemRvLoanPromoBenefitBinding.tvTitle;
                String str = ns4Var.b;
                textView.setText(str);
                TextView textView2 = itemRvLoanPromoBenefitBinding.tvTitle;
                textView2.getClass();
                textView2.setVisibility(str != null ? 0 : 8);
                itemRvLoanPromoBenefitBinding.tvDescription.setText(ns4Var.c);
                break;
            default:
                ItemRvOfferLandingStepsBinding itemRvOfferLandingStepsBinding = (ItemRvOfferLandingStepsBinding) viewBinding;
                ku5 ku5Var = (ku5) obj;
                itemRvOfferLandingStepsBinding.getClass();
                a.e(itemRvOfferLandingStepsBinding.ivNumber).h(ku5Var.a).L(itemRvOfferLandingStepsBinding.ivNumber);
                itemRvOfferLandingStepsBinding.tvTitle.setText(ku5Var.b);
                break;
        }
    }

    @Override // defpackage.vd9
    public void j(ViewBinding viewBinding) {
        switch (this.b) {
            case 0:
                ItemRvBalanceCardTextWithHintBinding itemRvBalanceCardTextWithHintBinding = (ItemRvBalanceCardTextWithHintBinding) viewBinding;
                itemRvBalanceCardTextWithHintBinding.getClass();
                ConstraintLayout root = itemRvBalanceCardTextWithHintBinding.getRoot();
                root.getClass();
                le9.c(16, root);
                break;
            default:
                super.j(viewBinding);
                break;
        }
    }
}
