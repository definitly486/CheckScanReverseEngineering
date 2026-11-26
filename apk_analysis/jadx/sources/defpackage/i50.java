package defpackage;

import androidx.appcompat.widget.AppCompatTextView;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.databinding.ItemRvBalanceLoadingHistoriesBinding;
import com.warefly.checkscan.databinding.ItemRvHowGetCashbackBinding;
import com.warefly.checkscan.tasks.databinding.ItemPromocodeStepBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class i50 extends vd9 {
    public final /* synthetic */ int b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ i50(dm3 dm3Var, int i) {
        super(dm3Var);
        this.b = i;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        int i = this.b;
        obj.getClass();
        switch (i) {
            case 0:
                return obj instanceof j50;
            case 1:
                return obj instanceof hx3;
            default:
                return obj instanceof lq6;
        }
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, Object obj) {
        switch (this.b) {
            case 0:
                ((ItemRvBalanceLoadingHistoriesBinding) viewBinding).getClass();
                break;
            case 1:
                ItemRvHowGetCashbackBinding itemRvHowGetCashbackBinding = (ItemRvHowGetCashbackBinding) viewBinding;
                hx3 hx3Var = (hx3) obj;
                itemRvHowGetCashbackBinding.getClass();
                itemRvHowGetCashbackBinding.ivPlaceholder.setImageDrawable(hx3Var.c);
                itemRvHowGetCashbackBinding.tvTitle.setText(hx3Var.a);
                AppCompatTextView appCompatTextView = itemRvHowGetCashbackBinding.tvDescription;
                String str = hx3Var.b;
                appCompatTextView.setText(str);
                AppCompatTextView appCompatTextView2 = itemRvHowGetCashbackBinding.tvDescription;
                appCompatTextView2.getClass();
                appCompatTextView2.setVisibility(!ta8.M(str) ? 0 : 8);
                break;
            default:
                ItemPromocodeStepBinding itemPromocodeStepBinding = (ItemPromocodeStepBinding) viewBinding;
                itemPromocodeStepBinding.getClass();
                itemPromocodeStepBinding.tvStep.setText(((lq6) obj).a);
                break;
        }
    }
}
