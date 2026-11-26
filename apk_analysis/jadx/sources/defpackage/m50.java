package defpackage;

import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.databinding.ItemRvBalanceManagementCardBinding;
import com.warefly.checkscan.presentation.balance.main.presenter.BalancePresenter;

/* JADX INFO: loaded from: classes5.dex */
public final class m50 extends vd9<t10, ItemRvBalanceManagementCardBinding> {
    public final BalancePresenter b;

    public m50(BalancePresenter balancePresenter) {
        super(k50.c);
        this.b = balancePresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof t10;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, t10 t10Var) {
        ItemRvBalanceManagementCardBinding itemRvBalanceManagementCardBinding = (ItemRvBalanceManagementCardBinding) viewBinding;
        t10 t10Var2 = t10Var;
        itemRvBalanceManagementCardBinding.getClass();
        itemRvBalanceManagementCardBinding.tvTitle.setText(t10Var2.b);
        itemRvBalanceManagementCardBinding.tvDescription.setText(t10Var2.c);
    }

    @Override // defpackage.vd9
    public final void j(ViewBinding viewBinding) {
        ItemRvBalanceManagementCardBinding itemRvBalanceManagementCardBinding = (ItemRvBalanceManagementCardBinding) viewBinding;
        itemRvBalanceManagementCardBinding.getClass();
        ConstraintLayout root = itemRvBalanceManagementCardBinding.getRoot();
        root.getClass();
        le9.c(16, root);
        ConstraintLayout root2 = itemRvBalanceManagementCardBinding.getRoot();
        root2.getClass();
        root2.setOnClickListener(new lb7(new l50(this)));
    }
}
