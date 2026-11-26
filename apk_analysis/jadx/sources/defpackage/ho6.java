package defpackage;

import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.databinding.ItemRvPromoSelectCardButtonBinding;
import com.warefly.checkscan.presentation.balance.promoSelectCard.presenter.PromoSelectCardPresenter;

/* JADX INFO: loaded from: classes5.dex */
public final class ho6 extends vd9<io6, ItemRvPromoSelectCardButtonBinding> {
    public final PromoSelectCardPresenter b;

    public interface a {
        void onSelectCardClicked(int i, String str);
    }

    public ho6(PromoSelectCardPresenter promoSelectCardPresenter) {
        super(go6.c);
        this.b = promoSelectCardPresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof io6;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, io6 io6Var) {
        ItemRvPromoSelectCardButtonBinding itemRvPromoSelectCardButtonBinding = (ItemRvPromoSelectCardButtonBinding) viewBinding;
        io6 io6Var2 = io6Var;
        itemRvPromoSelectCardButtonBinding.getClass();
        itemRvPromoSelectCardButtonBinding.getRoot().setTag(io6Var2.c);
        itemRvPromoSelectCardButtonBinding.btnAction.setText(io6Var2.b);
        TextView textView = itemRvPromoSelectCardButtonBinding.btnAction;
        textView.getClass();
        textView.setOnClickListener(new lb7(new pb(this, io6Var2, 2)));
    }
}
