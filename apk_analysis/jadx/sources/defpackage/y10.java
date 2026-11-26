package defpackage;

import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.bonuses.databinding.ItemRvLoaderCategoriesBinding;
import com.warefly.checkscan.databinding.ItemRvBalanceCardTextBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class y10 extends vd9 {
    public final /* synthetic */ int b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ y10(dm3 dm3Var, int i) {
        super(dm3Var);
        this.b = i;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        int i = this.b;
        obj.getClass();
        switch (i) {
            case 0:
                return obj instanceof z10;
            default:
                return obj instanceof i71;
        }
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, Object obj) {
        switch (this.b) {
            case 0:
                ItemRvBalanceCardTextBinding itemRvBalanceCardTextBinding = (ItemRvBalanceCardTextBinding) viewBinding;
                z10 z10Var = (z10) obj;
                itemRvBalanceCardTextBinding.getClass();
                itemRvBalanceCardTextBinding.tvTitle.setText(z10Var.a);
                itemRvBalanceCardTextBinding.tvDescription.setText(z10Var.b);
                break;
            default:
                ((ItemRvLoaderCategoriesBinding) viewBinding).getClass();
                break;
        }
    }

    @Override // defpackage.vd9
    public void j(ViewBinding viewBinding) {
        switch (this.b) {
            case 0:
                ItemRvBalanceCardTextBinding itemRvBalanceCardTextBinding = (ItemRvBalanceCardTextBinding) viewBinding;
                itemRvBalanceCardTextBinding.getClass();
                ConstraintLayout root = itemRvBalanceCardTextBinding.getRoot();
                root.getClass();
                le9.c(16, root);
                break;
            default:
                super.j(viewBinding);
                break;
        }
    }
}
