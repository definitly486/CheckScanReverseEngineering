package defpackage;

import android.widget.FrameLayout;
import androidx.viewbinding.ViewBinding;
import com.bumptech.glide.a;
import com.warefly.checkscan.databinding.ItemRvBalanceWithdrawAnonBinding;
import com.warefly.checkscan.presentation.balance.main.presenter.BalancePresenter;

/* JADX INFO: loaded from: classes5.dex */
public final class n70 extends vd9<o70, ItemRvBalanceWithdrawAnonBinding> {
    public final BalancePresenter b;

    public n70(BalancePresenter balancePresenter) {
        super(l70.c);
        this.b = balancePresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof o70;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, o70 o70Var) {
        ItemRvBalanceWithdrawAnonBinding itemRvBalanceWithdrawAnonBinding = (ItemRvBalanceWithdrawAnonBinding) viewBinding;
        o70 o70Var2 = o70Var;
        itemRvBalanceWithdrawAnonBinding.getClass();
        itemRvBalanceWithdrawAnonBinding.getRoot().setTag(o70Var2.b);
        itemRvBalanceWithdrawAnonBinding.tvTitle.setText(o70Var2.a);
        a.e(itemRvBalanceWithdrawAnonBinding.ivIcon).h(o70Var2.c).L(itemRvBalanceWithdrawAnonBinding.ivIcon);
    }

    @Override // defpackage.vd9
    public final void j(ViewBinding viewBinding) {
        ItemRvBalanceWithdrawAnonBinding itemRvBalanceWithdrawAnonBinding = (ItemRvBalanceWithdrawAnonBinding) viewBinding;
        itemRvBalanceWithdrawAnonBinding.getClass();
        FrameLayout root = itemRvBalanceWithdrawAnonBinding.getRoot();
        root.getClass();
        root.setOnClickListener(new lb7(new m70(0, this, itemRvBalanceWithdrawAnonBinding)));
    }
}
