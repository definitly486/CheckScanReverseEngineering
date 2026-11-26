package defpackage;

import android.widget.ImageView;
import androidx.core.content.ContextCompat;
import androidx.viewbinding.ViewBinding;
import com.google.android.material.card.MaterialCardView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.databinding.ItemRvBalanceHidableBannerBinding;
import com.warefly.checkscan.presentation.balance.main.presenter.BalancePresenter;

/* JADX INFO: loaded from: classes5.dex */
public final class n30 extends vd9<r30, ItemRvBalanceHidableBannerBinding> {
    public final BalancePresenter b;

    public interface a {
        void onHidableBannerClicked(String str);

        void onHideHidableBanner(int i);
    }

    public n30(BalancePresenter balancePresenter) {
        super(m30.c);
        this.b = balancePresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof r30;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, r30 r30Var) {
        ItemRvBalanceHidableBannerBinding itemRvBalanceHidableBannerBinding = (ItemRvBalanceHidableBannerBinding) viewBinding;
        r30 r30Var2 = r30Var;
        itemRvBalanceHidableBannerBinding.getClass();
        MaterialCardView root = itemRvBalanceHidableBannerBinding.getRoot();
        root.getClass();
        root.setOnClickListener(new lb7(new o30(r30Var2, this)));
        ImageView imageView = itemRvBalanceHidableBannerBinding.btnHide;
        imageView.getClass();
        imageView.setOnClickListener(new lb7(new p30(this, r30Var2, 0)));
        ((h37) com.bumptech.glide.a.d(itemRvBalanceHidableBannerBinding.getRoot().getContext()).h(r30Var2.b).r(is7.b(pl2.d(16.0f), ContextCompat.getColor(itemRvBalanceHidableBannerBinding.getRoot().getContext(), R.color.almostThereMoon)))).L(itemRvBalanceHidableBannerBinding.ivBanner);
    }
}
