package defpackage;

import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.ContextCompat;
import androidx.core.text.HtmlCompat;
import androidx.viewbinding.ViewBinding;
import com.google.android.material.card.MaterialCardView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.presentation.bonuses.main.presenter.BonusesMainNewPresenter;
import com.warefly.checkscan.subscription.databinding.ItemActivatedSubscriptionBannerBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class b7 extends vd9<d7, ItemActivatedSubscriptionBannerBinding> {
    public final BonusesMainNewPresenter b;

    public interface a {
        void onActiveSubscriptionBannerClicked(String str);
    }

    public b7(BonusesMainNewPresenter bonusesMainNewPresenter) {
        super(a7.c);
        this.b = bonusesMainNewPresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof d7;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, d7 d7Var) {
        ItemActivatedSubscriptionBannerBinding itemActivatedSubscriptionBannerBinding = (ItemActivatedSubscriptionBannerBinding) viewBinding;
        d7 d7Var2 = d7Var;
        itemActivatedSubscriptionBannerBinding.getClass();
        d7.a aVar = d7Var2.f;
        itemActivatedSubscriptionBannerBinding.getRoot().setTag(d7Var2.d);
        itemActivatedSubscriptionBannerBinding.tvTitle.setText(d7Var2.a);
        itemActivatedSubscriptionBannerBinding.tvDescription.setText(d7Var2.b);
        String str = d7Var2.c;
        if (str != null) {
            AppCompatTextView appCompatTextView = itemActivatedSubscriptionBannerBinding.tvChequesCount;
            appCompatTextView.getClass();
            appCompatTextView.setVisibility(0);
            itemActivatedSubscriptionBannerBinding.tvChequesCount.setText(HtmlCompat.fromHtml(str, 0));
        }
        if (aVar != null) {
            ConstraintLayout constraintLayout = itemActivatedSubscriptionBannerBinding.layoutOfferExpired;
            constraintLayout.getClass();
            constraintLayout.setVisibility(0);
            itemActivatedSubscriptionBannerBinding.tvExpired.setText(aVar.a);
            itemActivatedSubscriptionBannerBinding.btnExpired.setText(aVar.b);
        }
        ((h37) com.bumptech.glide.a.d(itemActivatedSubscriptionBannerBinding.getRoot().getContext()).h(d7Var2.e).r(is7.a(ContextCompat.getColor(itemActivatedSubscriptionBannerBinding.getRoot().getContext(), R.color.almostThereMoon)))).L(itemActivatedSubscriptionBannerBinding.ivBonus);
    }

    @Override // defpackage.vd9
    public final void j(ViewBinding viewBinding) {
        ItemActivatedSubscriptionBannerBinding itemActivatedSubscriptionBannerBinding = (ItemActivatedSubscriptionBannerBinding) viewBinding;
        itemActivatedSubscriptionBannerBinding.getClass();
        MaterialCardView root = itemActivatedSubscriptionBannerBinding.getRoot();
        root.getClass();
        root.setOnClickListener(new lb7(new c7(this, itemActivatedSubscriptionBannerBinding, 0)));
    }
}
