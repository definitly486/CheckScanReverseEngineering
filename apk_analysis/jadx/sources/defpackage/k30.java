package defpackage;

import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.Group;
import androidx.viewbinding.ViewBinding;
import com.bumptech.glide.a;
import com.warefly.checkscan.databinding.ItemRvBalanceHeaderBinding;
import com.warefly.checkscan.presentation.balance.main.presenter.BalancePresenter;

/* JADX INFO: loaded from: classes5.dex */
public final class k30 extends vd9<l30, ItemRvBalanceHeaderBinding> {
    public final BalancePresenter b;

    public k30(BalancePresenter balancePresenter) {
        super(h30.c);
        this.b = balancePresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof l30;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, l30 l30Var) {
        ItemRvBalanceHeaderBinding itemRvBalanceHeaderBinding = (ItemRvBalanceHeaderBinding) viewBinding;
        l30 l30Var2 = l30Var;
        itemRvBalanceHeaderBinding.getClass();
        itemRvBalanceHeaderBinding.tvTitle.setText(l30Var2.a);
        itemRvBalanceHeaderBinding.tvBalance.setText(l30Var2.b);
        AppCompatTextView appCompatTextView = itemRvBalanceHeaderBinding.btnWithdrawCard;
        String str = l30Var2.e;
        appCompatTextView.setText(str);
        AppCompatTextView appCompatTextView2 = itemRvBalanceHeaderBinding.tvPendingSum;
        String str2 = l30Var2.c;
        appCompatTextView2.setText(str2);
        Group group = itemRvBalanceHeaderBinding.groupWaysWithdraw;
        group.getClass();
        l30.a aVar = l30Var2.d;
        group.setVisibility(aVar != null ? 0 : 8);
        Group group2 = itemRvBalanceHeaderBinding.groupPending;
        group2.getClass();
        group2.setVisibility(!ta8.M(str2) ? 0 : 8);
        AppCompatTextView appCompatTextView3 = itemRvBalanceHeaderBinding.btnWithdrawCard;
        appCompatTextView3.getClass();
        appCompatTextView3.setVisibility(ta8.M(str) ? 8 : 0);
        if (aVar != null) {
            itemRvBalanceHeaderBinding.tvWaysWithdraw.setText(aVar.b);
            itemRvBalanceHeaderBinding.tvWaysWithdraw.setTextColor(aVar.c);
            a.e(itemRvBalanceHeaderBinding.ivWayWithdraw).h(aVar.a).L(itemRvBalanceHeaderBinding.ivWayWithdraw);
            try {
                ds2.a(itemRvBalanceHeaderBinding.viewWays.getBackground(), aVar.d);
                j59 j59Var = j59.a;
            } catch (Throwable unused) {
            }
        }
    }

    @Override // defpackage.vd9
    public final void j(ViewBinding viewBinding) {
        ItemRvBalanceHeaderBinding itemRvBalanceHeaderBinding = (ItemRvBalanceHeaderBinding) viewBinding;
        itemRvBalanceHeaderBinding.getClass();
        View view = itemRvBalanceHeaderBinding.viewWays;
        view.getClass();
        view.setOnClickListener(new lb7(new i30(this, 0)));
        AppCompatTextView appCompatTextView = itemRvBalanceHeaderBinding.btnWithdrawCard;
        appCompatTextView.getClass();
        appCompatTextView.setOnClickListener(new lb7(new j30(this, 0)));
    }
}
