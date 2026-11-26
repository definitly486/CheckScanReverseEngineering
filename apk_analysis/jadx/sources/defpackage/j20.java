package defpackage;

import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import com.bumptech.glide.a;
import com.warefly.checkscan.databinding.ItemRvBalanceCompactBannerBinding;
import com.warefly.checkscan.presentation.balance.main.presenter.BalancePresenter;

/* JADX INFO: loaded from: classes5.dex */
public final class j20 extends vd9<k20, ItemRvBalanceCompactBannerBinding> {
    public final BalancePresenter b;

    public j20(BalancePresenter balancePresenter) {
        super(h20.c);
        this.b = balancePresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof k20;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, k20 k20Var) {
        ItemRvBalanceCompactBannerBinding itemRvBalanceCompactBannerBinding = (ItemRvBalanceCompactBannerBinding) viewBinding;
        k20 k20Var2 = k20Var;
        itemRvBalanceCompactBannerBinding.getClass();
        itemRvBalanceCompactBannerBinding.getRoot().setTag(k20Var2.d);
        itemRvBalanceCompactBannerBinding.tvTitle.setText(k20Var2.b);
        itemRvBalanceCompactBannerBinding.tvDescription.setText(k20Var2.c);
        a.e(itemRvBalanceCompactBannerBinding.getRoot()).h(k20Var2.a).L(itemRvBalanceCompactBannerBinding.ivPlaceholder);
    }

    @Override // defpackage.vd9
    public final void j(ViewBinding viewBinding) {
        ItemRvBalanceCompactBannerBinding itemRvBalanceCompactBannerBinding = (ItemRvBalanceCompactBannerBinding) viewBinding;
        itemRvBalanceCompactBannerBinding.getClass();
        ConstraintLayout root = itemRvBalanceCompactBannerBinding.getRoot();
        root.getClass();
        root.setOnClickListener(new lb7(new i20(0, this, itemRvBalanceCompactBannerBinding)));
    }
}
