package defpackage;

import androidx.viewbinding.ViewBinding;
import com.bumptech.glide.a;
import com.warefly.checkscan.databinding.ItemRvSbpTransferLimitsBinding;
import com.warefly.checkscan.subscriptionLanding.databinding.ItemLandingTitleBinding;
import com.warefly.checkscan.tasks.databinding.ItemRvMultiTaskHeaderBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class kk4 extends vd9 {
    public final /* synthetic */ int b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ kk4(dm3 dm3Var, int i) {
        super(dm3Var);
        this.b = i;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        int i = this.b;
        obj.getClass();
        switch (i) {
            case 0:
                return obj instanceof ok4;
            case 1:
                return obj instanceof wf5;
            default:
                return obj instanceof c19;
        }
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, Object obj) {
        switch (this.b) {
            case 0:
                ItemLandingTitleBinding itemLandingTitleBinding = (ItemLandingTitleBinding) viewBinding;
                itemLandingTitleBinding.getClass();
                itemLandingTitleBinding.tvTitle.setText("Станьте\nPROфессиональным\nЧекСканером:");
                break;
            case 1:
                ItemRvMultiTaskHeaderBinding itemRvMultiTaskHeaderBinding = (ItemRvMultiTaskHeaderBinding) viewBinding;
                wf5 wf5Var = (wf5) obj;
                itemRvMultiTaskHeaderBinding.getClass();
                a.d(itemRvMultiTaskHeaderBinding.getRoot().getContext()).h(wf5Var.b).L(itemRvMultiTaskHeaderBinding.ivLogo);
                itemRvMultiTaskHeaderBinding.tvTitle.setText(wf5Var.a);
                break;
            default:
                ItemRvSbpTransferLimitsBinding itemRvSbpTransferLimitsBinding = (ItemRvSbpTransferLimitsBinding) viewBinding;
                c19 c19Var = (c19) obj;
                itemRvSbpTransferLimitsBinding.getClass();
                itemRvSbpTransferLimitsBinding.tvAmountWithdrawn.setText(c19Var.a);
                itemRvSbpTransferLimitsBinding.tvMinAmount.setText(c19Var.b);
                break;
        }
    }
}
