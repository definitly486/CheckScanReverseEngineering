package defpackage;

import android.view.View;
import androidx.viewbinding.ViewBinding;
import com.bumptech.glide.a;
import com.warefly.checkscan.bonuses.databinding.ItemRvNoLoaderBinding;
import com.warefly.checkscan.databinding.ItemInstructionBinding;
import com.warefly.checkscan.databinding.ItemRvBalanceFooterBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class s20 extends vd9 {
    public final /* synthetic */ int b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ s20(dm3 dm3Var, int i) {
        super(dm3Var);
        this.b = i;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        int i = this.b;
        obj.getClass();
        switch (i) {
            case 0:
                return obj instanceof t20;
            case 1:
                return obj instanceof t64;
            default:
                return obj instanceof tn5;
        }
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, Object obj) {
        switch (this.b) {
            case 0:
                ((ItemRvBalanceFooterBinding) viewBinding).getClass();
                break;
            case 1:
                ItemInstructionBinding itemInstructionBinding = (ItemInstructionBinding) viewBinding;
                t64 t64Var = (t64) obj;
                itemInstructionBinding.getClass();
                s64 s64Var = t64Var.a;
                itemInstructionBinding.tvTitle.setText(s64Var.a);
                itemInstructionBinding.tvDescription.setText(s64Var.c);
                a.e(itemInstructionBinding.ivIcon).f(Integer.valueOf(s64Var.b)).L(itemInstructionBinding.ivIcon);
                View view = itemInstructionBinding.viewDivider;
                view.getClass();
                view.setVisibility(t64Var.b ? 4 : 0);
                break;
            default:
                ((ItemRvNoLoaderBinding) viewBinding).getClass();
                break;
        }
    }
}
