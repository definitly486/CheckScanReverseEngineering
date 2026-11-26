package defpackage;

import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.databinding.ItemRvBalanceCardPendingBinding;
import com.warefly.checkscan.databinding.ItemRvLoaderShopItemBinding;
import com.warefly.checkscan.tasks.databinding.ItemRvTaskTitleBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class v10 extends vd9 {
    public final /* synthetic */ int b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ v10(dm3 dm3Var, int i) {
        super(dm3Var);
        this.b = i;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        int i = this.b;
        obj.getClass();
        switch (i) {
            case 0:
                return obj instanceof w10;
            case 1:
                return obj instanceof tu7;
            default:
                return obj instanceof ro8;
        }
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, Object obj) {
        switch (this.b) {
            case 0:
                ItemRvBalanceCardPendingBinding itemRvBalanceCardPendingBinding = (ItemRvBalanceCardPendingBinding) viewBinding;
                itemRvBalanceCardPendingBinding.getClass();
                itemRvBalanceCardPendingBinding.btnAboutCash.setText((CharSequence) null);
                break;
            case 1:
                ((ItemRvLoaderShopItemBinding) viewBinding).getClass();
                break;
            default:
                ItemRvTaskTitleBinding itemRvTaskTitleBinding = (ItemRvTaskTitleBinding) viewBinding;
                itemRvTaskTitleBinding.getClass();
                itemRvTaskTitleBinding.tvTitle.setText(((ro8) obj).a);
                break;
        }
    }

    @Override // defpackage.vd9
    public void j(ViewBinding viewBinding) {
        switch (this.b) {
            case 0:
                ItemRvBalanceCardPendingBinding itemRvBalanceCardPendingBinding = (ItemRvBalanceCardPendingBinding) viewBinding;
                itemRvBalanceCardPendingBinding.getClass();
                itemRvBalanceCardPendingBinding.getRoot().setClipToOutline(true);
                break;
            default:
                super.j(viewBinding);
                break;
        }
    }
}
