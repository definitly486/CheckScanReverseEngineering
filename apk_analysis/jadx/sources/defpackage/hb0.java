package defpackage;

import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.bankLanding.databinding.ItemRvBankTextBinding;
import com.warefly.checkscan.databinding.ItemRvOfferLegalBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class hb0 extends vd9 {
    public final /* synthetic */ int b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ hb0(dm3 dm3Var, int i) {
        super(dm3Var);
        this.b = i;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        int i = this.b;
        obj.getClass();
        switch (i) {
            case 0:
                return obj instanceof ib0;
            default:
                return obj instanceof mt5;
        }
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, Object obj) {
        switch (this.b) {
            case 0:
                ItemRvBankTextBinding itemRvBankTextBinding = (ItemRvBankTextBinding) viewBinding;
                ib0 ib0Var = (ib0) obj;
                itemRvBankTextBinding.getClass();
                itemRvBankTextBinding.tvTitle.setText(ib0Var.a);
                TextView textView = itemRvBankTextBinding.tvHtml;
                int i = sx3.a;
                textView.setText(sx3.a(ib0Var.b));
                itemRvBankTextBinding.tvHtml.setMovementMethod(x61.a);
                break;
            default:
                ItemRvOfferLegalBinding itemRvOfferLegalBinding = (ItemRvOfferLegalBinding) viewBinding;
                itemRvOfferLegalBinding.getClass();
                itemRvOfferLegalBinding.tvLegal.setText(((mt5) obj).a);
                break;
        }
    }
}
