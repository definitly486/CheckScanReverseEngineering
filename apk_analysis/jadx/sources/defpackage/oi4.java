package defpackage;

import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.databinding.ItemRvLandingCountChequesBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class oi4 extends vd9<mi4, ItemRvLandingCountChequesBinding> {
    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof mi4;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, mi4 mi4Var) {
        ItemRvLandingCountChequesBinding itemRvLandingCountChequesBinding = (ItemRvLandingCountChequesBinding) viewBinding;
        itemRvLandingCountChequesBinding.getClass();
        itemRvLandingCountChequesBinding.tvReward.setText((CharSequence) null);
        itemRvLandingCountChequesBinding.tvFrom.setText((CharSequence) null);
        itemRvLandingCountChequesBinding.tvTo.setText((CharSequence) null);
        itemRvLandingCountChequesBinding.pbProgress.setProgress(0);
        itemRvLandingCountChequesBinding.tvProgress.setText((CharSequence) null);
        itemRvLandingCountChequesBinding.tvProgress.setTextColor(oz1.a(itemRvLandingCountChequesBinding, 0));
        itemRvLandingCountChequesBinding.pbProgress.setIndicatorColor(oz1.a(itemRvLandingCountChequesBinding, 0));
    }
}
