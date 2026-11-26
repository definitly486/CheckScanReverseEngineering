package defpackage;

import android.widget.Space;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.viewbinding.ViewBinding;
import com.bumptech.glide.a;
import com.warefly.checkscan.R;
import com.warefly.checkscan.databinding.ItemPromoSelectTransferBannerBinding;
import com.warefly.checkscan.presentation.balance.promoSelectCard.presenter.PromoSelectCardPresenter;

/* JADX INFO: loaded from: classes5.dex */
public final class zo6 extends vd9<vj9, ItemPromoSelectTransferBannerBinding> {
    public final PromoSelectCardPresenter b;

    public zo6(PromoSelectCardPresenter promoSelectCardPresenter) {
        super(wo6.c);
        this.b = promoSelectCardPresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof vj9;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, vj9 vj9Var) {
        ItemPromoSelectTransferBannerBinding itemPromoSelectTransferBannerBinding = (ItemPromoSelectTransferBannerBinding) viewBinding;
        vj9 vj9Var2 = vj9Var;
        itemPromoSelectTransferBannerBinding.getClass();
        vj9.a aVar = vj9Var2.e;
        itemPromoSelectTransferBannerBinding.tvTitle.setText(vj9Var2.b);
        itemPromoSelectTransferBannerBinding.tvDescription.setText(vj9Var2.c);
        Space space = itemPromoSelectTransferBannerBinding.spaceButtons;
        space.getClass();
        vj9.a aVar2 = vj9Var2.d;
        space.setVisibility((aVar2 == null || aVar == null) ? 8 : 0);
        TextView textView = itemPromoSelectTransferBannerBinding.btnAction;
        textView.getClass();
        textView.setVisibility(aVar2 != null ? 0 : 8);
        TextView textView2 = itemPromoSelectTransferBannerBinding.btnSecondary;
        textView2.getClass();
        textView2.setVisibility(aVar != null ? 0 : 8);
        if (aVar2 != null) {
            TextView textView3 = itemPromoSelectTransferBannerBinding.btnAction;
            textView3.setText(aVar2.a);
            textView3.setOnClickListener(new lb7(new xo6(this, aVar2, vj9Var2)));
        }
        if (aVar != null) {
            TextView textView4 = itemPromoSelectTransferBannerBinding.btnSecondary;
            textView4.setText(aVar.a);
            textView4.setOnClickListener(new lb7(new yo6(this, aVar, vj9Var2)));
        }
        ((h37) a.e(itemPromoSelectTransferBannerBinding.getRoot()).h(vj9Var2.a).r(is7.b(pl2.d(4.0f), ContextCompat.getColor(itemPromoSelectTransferBannerBinding.getRoot().getContext(), R.color.almostThereMoon)))).b(new s37().D(new s81(), new e87(pl2.e(4)))).L(itemPromoSelectTransferBannerBinding.ivLogo);
    }
}
