package defpackage;

import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.viewbinding.ViewBinding;
import com.bumptech.glide.a;
import com.warefly.checkscan.databinding.ItemRvBalanceIncreaseCashbackBinding;
import com.warefly.checkscan.presentation.balance.main.presenter.BalancePresenter;

/* JADX INFO: loaded from: classes5.dex */
public final class y30 extends vd9<z30, ItemRvBalanceIncreaseCashbackBinding> {
    public final BalancePresenter b;

    public y30(BalancePresenter balancePresenter) {
        super(w30.c);
        this.b = balancePresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof z30;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, z30 z30Var) {
        ItemRvBalanceIncreaseCashbackBinding itemRvBalanceIncreaseCashbackBinding = (ItemRvBalanceIncreaseCashbackBinding) viewBinding;
        z30 z30Var2 = z30Var;
        itemRvBalanceIncreaseCashbackBinding.getClass();
        itemRvBalanceIncreaseCashbackBinding.getRoot().setTag(z30Var2.id());
        itemRvBalanceIncreaseCashbackBinding.tvTitle.setText(z30Var2.b);
        AppCompatTextView appCompatTextView = itemRvBalanceIncreaseCashbackBinding.tvDescription;
        appCompatTextView.getClass();
        String str = z30Var2.c;
        appCompatTextView.setVisibility(!ta8.M(str) ? 0 : 8);
        appCompatTextView.setText(str);
        a.e(itemRvBalanceIncreaseCashbackBinding.ivIconPlaceholder).h(z30Var2.a).L(itemRvBalanceIncreaseCashbackBinding.ivIconPlaceholder);
    }

    @Override // defpackage.vd9
    public final void j(ViewBinding viewBinding) {
        ItemRvBalanceIncreaseCashbackBinding itemRvBalanceIncreaseCashbackBinding = (ItemRvBalanceIncreaseCashbackBinding) viewBinding;
        itemRvBalanceIncreaseCashbackBinding.getClass();
        LinearLayout root = itemRvBalanceIncreaseCashbackBinding.getRoot();
        root.getClass();
        root.setOnClickListener(new lb7(new x30(0, this, itemRvBalanceIncreaseCashbackBinding)));
    }
}
