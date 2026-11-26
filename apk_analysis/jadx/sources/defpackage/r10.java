package defpackage;

import androidx.viewbinding.ViewBinding;
import com.bumptech.glide.a;
import com.warefly.checkscan.databinding.ItemRvBalanceCardLoadingBinding;
import com.warefly.checkscan.databinding.ItemRvShimmerLoadingBinding;
import com.warefly.checkscan.offerLanding.databinding.ItemRvOfferShimmerLoadingBinding;
import com.warefly.checkscan.products.databinding.ItemShopHeaderBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class r10 extends vd9 {
    public final /* synthetic */ int b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ r10(dm3 dm3Var, int i) {
        super(dm3Var);
        this.b = i;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        int i = this.b;
        obj.getClass();
        switch (i) {
            case 0:
                return obj instanceof z00;
            case 1:
                return obj instanceof ot5;
            case 2:
                return obj instanceof iu5;
            default:
                return obj instanceof ru7;
        }
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, Object obj) {
        switch (this.b) {
            case 0:
                ((ItemRvBalanceCardLoadingBinding) viewBinding).getClass();
                break;
            case 1:
                ((ItemRvShimmerLoadingBinding) viewBinding).getClass();
                break;
            case 2:
                ((ItemRvOfferShimmerLoadingBinding) viewBinding).getClass();
                break;
            default:
                ItemShopHeaderBinding itemShopHeaderBinding = (ItemShopHeaderBinding) viewBinding;
                ru7 ru7Var = (ru7) obj;
                itemShopHeaderBinding.getClass();
                itemShopHeaderBinding.tvTitle.setText(ru7Var.a);
                a.e(itemShopHeaderBinding.getRoot()).h(ru7Var.b).L(itemShopHeaderBinding.ivIcon);
                break;
        }
    }
}
