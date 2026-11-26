package defpackage;

import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.bonuses.databinding.ItemRvLoaderTopMarketsBinding;
import com.warefly.checkscan.databinding.ItemRvLandingTitleWithBackgroundBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class qk4 extends vd9 {
    public final /* synthetic */ int b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ qk4(dm3 dm3Var, int i) {
        super(dm3Var);
        this.b = i;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        int i = this.b;
        obj.getClass();
        switch (i) {
            case 0:
                return obj instanceof rk4;
            default:
                return obj instanceof wf6;
        }
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, Object obj) {
        switch (this.b) {
            case 0:
                ItemRvLandingTitleWithBackgroundBinding itemRvLandingTitleWithBackgroundBinding = (ItemRvLandingTitleWithBackgroundBinding) viewBinding;
                itemRvLandingTitleWithBackgroundBinding.getClass();
                itemRvLandingTitleWithBackgroundBinding.tvTitle.setText(((rk4) obj).a);
                break;
            default:
                ((ItemRvLoaderTopMarketsBinding) viewBinding).getClass();
                break;
        }
    }
}
