package defpackage;

import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.bonuses.databinding.ItemRvSearchButtonBinding;
import com.warefly.checkscan.scannerml.databinding.ItemRvChequeBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class ph1 extends vd9 {
    public final /* synthetic */ int b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ph1(dm3 dm3Var, int i) {
        super(dm3Var);
        this.b = i;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        int i = this.b;
        obj.getClass();
        switch (i) {
            case 0:
                return obj instanceof kh1;
            default:
                return obj instanceof ik7;
        }
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, Object obj) {
        switch (this.b) {
            case 0:
                ItemRvChequeBinding itemRvChequeBinding = (ItemRvChequeBinding) viewBinding;
                itemRvChequeBinding.getClass();
                itemRvChequeBinding.tvTitle.setText(((kh1) obj).a);
                break;
            default:
                ((ItemRvSearchButtonBinding) viewBinding).getClass();
                break;
        }
    }
}
