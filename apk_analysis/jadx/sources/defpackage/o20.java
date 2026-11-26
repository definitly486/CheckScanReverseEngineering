package defpackage;

import android.widget.FrameLayout;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.databinding.ItemRvBalanceExpandButtonBinding;
import com.warefly.checkscan.presentation.balance.main.presenter.BalancePresenter;

/* JADX INFO: loaded from: classes5.dex */
public final class o20 extends vd9<p20, ItemRvBalanceExpandButtonBinding> {
    public final BalancePresenter b;

    public o20(BalancePresenter balancePresenter) {
        super(m20.c);
        this.b = balancePresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof p20;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, p20 p20Var) {
        ItemRvBalanceExpandButtonBinding itemRvBalanceExpandButtonBinding = (ItemRvBalanceExpandButtonBinding) viewBinding;
        p20 p20Var2 = p20Var;
        itemRvBalanceExpandButtonBinding.getClass();
        itemRvBalanceExpandButtonBinding.btnExpand.setText(p20Var2.a);
        itemRvBalanceExpandButtonBinding.btnExpand.setCompoundDrawablesWithIntrinsicBounds(0, 0, p20Var2.c, 0);
    }

    @Override // defpackage.vd9
    public final void j(ViewBinding viewBinding) {
        ItemRvBalanceExpandButtonBinding itemRvBalanceExpandButtonBinding = (ItemRvBalanceExpandButtonBinding) viewBinding;
        itemRvBalanceExpandButtonBinding.getClass();
        FrameLayout root = itemRvBalanceExpandButtonBinding.getRoot();
        root.getClass();
        root.setOnClickListener(new lb7(new n20(this)));
    }
}
