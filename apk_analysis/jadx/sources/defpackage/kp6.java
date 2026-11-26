package defpackage;

import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.databinding.ItemRvPromoSelectCardTitleBinding;
import com.warefly.checkscan.databinding.ItemWithdrawalTitleMoreMethodsBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class kp6 extends vd9 {
    public final /* synthetic */ int b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ kp6(dm3 dm3Var, int i) {
        super(dm3Var);
        this.b = i;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        int i = this.b;
        obj.getClass();
        switch (i) {
            case 0:
                return obj instanceof qp6;
            default:
                return obj instanceof dj9;
        }
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, Object obj) {
        switch (this.b) {
            case 0:
                ItemRvPromoSelectCardTitleBinding itemRvPromoSelectCardTitleBinding = (ItemRvPromoSelectCardTitleBinding) viewBinding;
                itemRvPromoSelectCardTitleBinding.getClass();
                itemRvPromoSelectCardTitleBinding.tvTitle.setText(((qp6) obj).a);
                break;
            default:
                ItemWithdrawalTitleMoreMethodsBinding itemWithdrawalTitleMoreMethodsBinding = (ItemWithdrawalTitleMoreMethodsBinding) viewBinding;
                itemWithdrawalTitleMoreMethodsBinding.getClass();
                itemWithdrawalTitleMoreMethodsBinding.tvTitle.setText(((dj9) obj).a);
                break;
        }
    }
}
