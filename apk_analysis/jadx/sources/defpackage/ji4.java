package defpackage;

import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.core.ui.progressBar.HorizontalStepProgressbar;
import com.warefly.checkscan.databinding.ItemRvLandingChequeCounterBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class ji4 extends vd9<ki4, ItemRvLandingChequeCounterBinding> {
    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof ki4;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, ki4 ki4Var) {
        ItemRvLandingChequeCounterBinding itemRvLandingChequeCounterBinding = (ItemRvLandingChequeCounterBinding) viewBinding;
        itemRvLandingChequeCounterBinding.getClass();
        itemRvLandingChequeCounterBinding.tvTitle.setText((CharSequence) null);
        HorizontalStepProgressbar horizontalStepProgressbar = itemRvLandingChequeCounterBinding.pbCounter;
        horizontalStepProgressbar.setCurrentProgress(0);
        horizontalStepProgressbar.setProgressColor(0);
        horizontalStepProgressbar.setTitles(null);
        horizontalStepProgressbar.invalidate();
        itemRvLandingChequeCounterBinding.tvHint.setText((CharSequence) null);
        itemRvLandingChequeCounterBinding.tvNextLevel.setText((CharSequence) null);
        itemRvLandingChequeCounterBinding.tvNextLevel.setTextColor(0);
    }
}
