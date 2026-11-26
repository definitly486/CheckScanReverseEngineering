package defpackage;

import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.databinding.ItemRvBonusesSubscriptionBannerBinding;
import com.warefly.checkscan.presentation.balance.main.presenter.BalancePresenter;

/* JADX INFO: loaded from: classes5.dex */
public final class z60 extends vd9<ec8, ItemRvBonusesSubscriptionBannerBinding> {
    public final BalancePresenter b;

    public interface a {
        void onSubscriptionBannerClicked(String str);
    }

    public z60(BalancePresenter balancePresenter) {
        super(y60.c);
        this.b = balancePresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof ec8;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, ec8 ec8Var) {
        ItemRvBonusesSubscriptionBannerBinding itemRvBonusesSubscriptionBannerBinding = (ItemRvBonusesSubscriptionBannerBinding) viewBinding;
        ec8 ec8Var2 = ec8Var;
        itemRvBonusesSubscriptionBannerBinding.getClass();
        itemRvBonusesSubscriptionBannerBinding.tvTitle.setText(ec8Var2.b);
        itemRvBonusesSubscriptionBannerBinding.tvSubtitle.setText(ec8Var2.c);
        com.bumptech.glide.a.e(itemRvBonusesSubscriptionBannerBinding.getRoot()).h(ec8Var2.d).L(itemRvBonusesSubscriptionBannerBinding.ivLogo);
        TextView textView = itemRvBonusesSubscriptionBannerBinding.btnAction;
        textView.setText(ec8Var2.e);
        textView.setOnClickListener(new lb7(new a70(this, ec8Var2, 0)));
    }
}
