package defpackage;

import android.widget.TextView;
import androidx.core.view.OneShotPreDrawListener;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.databinding.ItemWithdrawalBalanceBlockBinding;
import com.warefly.checkscan.presentation.balance.main.presenter.BalancePresenter;

/* JADX INFO: loaded from: classes5.dex */
public final class yi9 extends vd9<aj9, ItemWithdrawalBalanceBlockBinding> {
    public final BalancePresenter b;

    public interface a {
        void onWithdrawalTransferButtonClicked();
    }

    public yi9(BalancePresenter balancePresenter) {
        super(xi9.c);
        this.b = balancePresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof aj9;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, aj9 aj9Var) {
        ItemWithdrawalBalanceBlockBinding itemWithdrawalBalanceBlockBinding = (ItemWithdrawalBalanceBlockBinding) viewBinding;
        aj9 aj9Var2 = aj9Var;
        itemWithdrawalBalanceBlockBinding.getClass();
        itemWithdrawalBalanceBlockBinding.tvBalance.setText(aj9Var2.a);
        float textSize = itemWithdrawalBalanceBlockBinding.tvBalance.getTextSize();
        TextView textView = itemWithdrawalBalanceBlockBinding.tvBalance;
        textView.getClass();
        OneShotPreDrawListener.add(textView, new zi9(textView, textSize, itemWithdrawalBalanceBlockBinding));
        String str = aj9Var2.b;
        if (str != null) {
            itemWithdrawalBalanceBlockBinding.tvPendingSum.setText(str);
            TextView textView2 = itemWithdrawalBalanceBlockBinding.tvPendingSum;
            textView2.getClass();
            textView2.setVisibility(0);
        }
        String str2 = aj9Var2.c;
        if (str2 != null) {
            itemWithdrawalBalanceBlockBinding.btnTransferCard.setText(str2);
            TextView textView3 = itemWithdrawalBalanceBlockBinding.btnTransferCard;
            textView3.getClass();
            textView3.setVisibility(0);
        }
    }

    @Override // defpackage.vd9
    public final void j(ViewBinding viewBinding) {
        ItemWithdrawalBalanceBlockBinding itemWithdrawalBalanceBlockBinding = (ItemWithdrawalBalanceBlockBinding) viewBinding;
        itemWithdrawalBalanceBlockBinding.getClass();
        TextView textView = itemWithdrawalBalanceBlockBinding.btnTransferCard;
        textView.getClass();
        textView.setOnClickListener(new lb7(new qh6(this, 2)));
    }
}
