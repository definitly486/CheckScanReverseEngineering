package defpackage;

import android.widget.LinearLayout;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.databinding.ItemRvBalanceTitleWithButtonBinding;
import com.warefly.checkscan.presentation.balance.main.presenter.BalancePresenter;

/* JADX INFO: loaded from: classes5.dex */
public final class i70 extends vd9<j70, ItemRvBalanceTitleWithButtonBinding> {
    public final BalancePresenter b;

    public i70(BalancePresenter balancePresenter) {
        super(g70.c);
        this.b = balancePresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof j70;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, j70 j70Var) {
        ItemRvBalanceTitleWithButtonBinding itemRvBalanceTitleWithButtonBinding = (ItemRvBalanceTitleWithButtonBinding) viewBinding;
        j70 j70Var2 = j70Var;
        itemRvBalanceTitleWithButtonBinding.getClass();
        itemRvBalanceTitleWithButtonBinding.tvTitle.setText(j70Var2.a);
        itemRvBalanceTitleWithButtonBinding.btnAction.setText(j70Var2.b);
    }

    @Override // defpackage.vd9
    public final void j(ViewBinding viewBinding) {
        ItemRvBalanceTitleWithButtonBinding itemRvBalanceTitleWithButtonBinding = (ItemRvBalanceTitleWithButtonBinding) viewBinding;
        itemRvBalanceTitleWithButtonBinding.getClass();
        LinearLayout root = itemRvBalanceTitleWithButtonBinding.getRoot();
        root.getClass();
        root.setOnClickListener(new lb7(new h70(this)));
    }
}
