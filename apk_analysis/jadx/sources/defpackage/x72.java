package defpackage;

import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.databinding.LayoutNoDiscountsBinding;
import com.warefly.checkscan.tasks.databinding.ItemRvDailyTaskDescriptionBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class x72 extends vd9 {
    public final /* synthetic */ int b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ x72(dm3 dm3Var, int i) {
        super(dm3Var);
        this.b = i;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        int i = this.b;
        obj.getClass();
        switch (i) {
            case 0:
                return obj instanceof b82;
            default:
                return obj instanceof fv7;
        }
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, Object obj) {
        switch (this.b) {
            case 0:
                ItemRvDailyTaskDescriptionBinding itemRvDailyTaskDescriptionBinding = (ItemRvDailyTaskDescriptionBinding) viewBinding;
                itemRvDailyTaskDescriptionBinding.getClass();
                TextView textView = itemRvDailyTaskDescriptionBinding.tvDescription;
                int i = sx3.a;
                textView.setText(sx3.a(((b82) obj).a));
                textView.setMovementMethod(x61.a);
                break;
            default:
                LayoutNoDiscountsBinding layoutNoDiscountsBinding = (LayoutNoDiscountsBinding) viewBinding;
                layoutNoDiscountsBinding.getClass();
                layoutNoDiscountsBinding.getRoot().setBackgroundColor(0);
                break;
        }
    }
}
