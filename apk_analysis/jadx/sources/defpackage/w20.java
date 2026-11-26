package defpackage;

import android.widget.Space;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.databinding.ItemRvBalanceGetCashButtonBinding;
import com.warefly.checkscan.products.databinding.ItemProductCashbackValueBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class w20 extends vd9 {
    public final /* synthetic */ int b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ w20(dm3 dm3Var, int i) {
        super(dm3Var);
        this.b = i;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        int i = this.b;
        obj.getClass();
        switch (i) {
            case 0:
                return obj instanceof x20;
            default:
                return obj instanceof eh6;
        }
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, Object obj) {
        switch (this.b) {
            case 0:
                ItemRvBalanceGetCashButtonBinding itemRvBalanceGetCashButtonBinding = (ItemRvBalanceGetCashButtonBinding) viewBinding;
                itemRvBalanceGetCashButtonBinding.getClass();
                itemRvBalanceGetCashButtonBinding.tvTitle.setText((CharSequence) null);
                break;
            default:
                ItemProductCashbackValueBinding itemProductCashbackValueBinding = (ItemProductCashbackValueBinding) viewBinding;
                eh6 eh6Var = (eh6) obj;
                itemProductCashbackValueBinding.getClass();
                String str = eh6Var.c;
                itemProductCashbackValueBinding.tvTitle.setText(eh6Var.a);
                itemProductCashbackValueBinding.tvValue.setText(eh6Var.b);
                TextView textView = itemProductCashbackValueBinding.tvPrefix;
                String str2 = eh6Var.d;
                textView.setText(str2);
                Space space = itemProductCashbackValueBinding.spacePrefix;
                space.getClass();
                space.setVisibility(str2 != null ? 0 : 8);
                itemProductCashbackValueBinding.tvSuffix.setText(str);
                Space space2 = itemProductCashbackValueBinding.spaceSuffix;
                space2.getClass();
                space2.setVisibility(str != null ? 0 : 8);
                break;
        }
    }
}
