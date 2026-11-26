package defpackage;

import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.viewbinding.ViewBinding;
import com.bumptech.glide.a;
import com.warefly.checkscan.databinding.ItemRvBalanceWithdrawMethodBinding;
import com.warefly.checkscan.presentation.balance.main.presenter.BalancePresenter;

/* JADX INFO: loaded from: classes5.dex */
public final class t70 extends vd9<u70, ItemRvBalanceWithdrawMethodBinding> {
    public final BalancePresenter b;

    public t70(BalancePresenter balancePresenter) {
        super(r70.c);
        this.b = balancePresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof u70;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, u70 u70Var) {
        ItemRvBalanceWithdrawMethodBinding itemRvBalanceWithdrawMethodBinding = (ItemRvBalanceWithdrawMethodBinding) viewBinding;
        u70 u70Var2 = u70Var;
        itemRvBalanceWithdrawMethodBinding.getClass();
        itemRvBalanceWithdrawMethodBinding.getRoot().setTag(u70Var2.d);
        itemRvBalanceWithdrawMethodBinding.tvTitle.setText(u70Var2.a);
        AppCompatTextView appCompatTextView = itemRvBalanceWithdrawMethodBinding.tvDescription;
        String str = u70Var2.b;
        appCompatTextView.setText(str);
        AppCompatTextView appCompatTextView2 = itemRvBalanceWithdrawMethodBinding.tvDescription;
        appCompatTextView2.getClass();
        appCompatTextView2.setVisibility(!ta8.M(str) ? 0 : 8);
        a.e(itemRvBalanceWithdrawMethodBinding.ivIcon).h(u70Var2.c).L(itemRvBalanceWithdrawMethodBinding.ivIcon);
    }

    @Override // defpackage.vd9
    public final void j(ViewBinding viewBinding) {
        ItemRvBalanceWithdrawMethodBinding itemRvBalanceWithdrawMethodBinding = (ItemRvBalanceWithdrawMethodBinding) viewBinding;
        itemRvBalanceWithdrawMethodBinding.getClass();
        LinearLayout root = itemRvBalanceWithdrawMethodBinding.getRoot();
        root.getClass();
        root.setOnClickListener(new lb7(new s70(this, itemRvBalanceWithdrawMethodBinding)));
    }
}
