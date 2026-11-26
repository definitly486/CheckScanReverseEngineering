package defpackage;

import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.databinding.ItemWithdrawalMoreMethodsButtonBinding;
import com.warefly.checkscan.presentation.balance.main.presenter.BalancePresenter;

/* JADX INFO: loaded from: classes5.dex */
public final class xj9 extends vd9<yj9, ItemWithdrawalMoreMethodsButtonBinding> {
    public final BalancePresenter b;

    public interface a {
        void onWithdrawalMoreMethodsClicked();
    }

    public xj9(BalancePresenter balancePresenter) {
        super(wj9.c);
        this.b = balancePresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof yj9;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, yj9 yj9Var) {
        ItemWithdrawalMoreMethodsButtonBinding itemWithdrawalMoreMethodsButtonBinding = (ItemWithdrawalMoreMethodsButtonBinding) viewBinding;
        itemWithdrawalMoreMethodsButtonBinding.getClass();
        itemWithdrawalMoreMethodsButtonBinding.btnMoreMethods.setText(yj9Var.a);
    }

    @Override // defpackage.vd9
    public final void j(ViewBinding viewBinding) {
        ItemWithdrawalMoreMethodsButtonBinding itemWithdrawalMoreMethodsButtonBinding = (ItemWithdrawalMoreMethodsButtonBinding) viewBinding;
        itemWithdrawalMoreMethodsButtonBinding.getClass();
        TextView textView = itemWithdrawalMoreMethodsButtonBinding.btnMoreMethods;
        textView.getClass();
        textView.setOnClickListener(new lb7(new mu4(this, 2)));
    }
}
