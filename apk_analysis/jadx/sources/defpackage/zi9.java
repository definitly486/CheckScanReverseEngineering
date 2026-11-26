package defpackage;

import android.view.ViewGroup;
import android.widget.TextView;
import com.warefly.checkscan.databinding.ItemWithdrawalBalanceBlockBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class zi9 implements Runnable {
    public final /* synthetic */ float b;
    public final /* synthetic */ ItemWithdrawalBalanceBlockBinding c;

    public zi9(TextView textView, float f, ItemWithdrawalBalanceBlockBinding itemWithdrawalBalanceBlockBinding) {
        this.b = f;
        this.c = itemWithdrawalBalanceBlockBinding;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ItemWithdrawalBalanceBlockBinding itemWithdrawalBalanceBlockBinding = this.c;
        float height = itemWithdrawalBalanceBlockBinding.tvBalance.getHeight() - (this.b - itemWithdrawalBalanceBlockBinding.tvBalance.getTextSize());
        TextView textView = itemWithdrawalBalanceBlockBinding.tvBalance;
        textView.getClass();
        ViewGroup.LayoutParams layoutParams = textView.getLayoutParams();
        if (layoutParams == null) {
            o2.d("null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
        } else {
            layoutParams.height = (int) height;
            textView.setLayoutParams(layoutParams);
        }
    }
}
