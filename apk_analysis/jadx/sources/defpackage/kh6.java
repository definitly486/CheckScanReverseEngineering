package defpackage;

import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.R;
import com.warefly.checkscan.databinding.ItemRvPromoSelectCardConditionBinding;
import com.warefly.checkscan.products.databinding.ItemProductOfferConditionBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class kh6 extends vd9 {
    public final /* synthetic */ int b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ kh6(dm3 dm3Var, int i) {
        super(dm3Var);
        this.b = i;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        int i = this.b;
        obj.getClass();
        switch (i) {
            case 0:
                return obj instanceof ai6;
            default:
                return obj instanceof ko6;
        }
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, Object obj) {
        switch (this.b) {
            case 0:
                ItemProductOfferConditionBinding itemProductOfferConditionBinding = (ItemProductOfferConditionBinding) viewBinding;
                itemProductOfferConditionBinding.getClass();
                itemProductOfferConditionBinding.tvCondition.setText(itemProductOfferConditionBinding.getRoot().getContext().getString(R.string.products_bullet_point_condition, ((ai6) obj).a));
                break;
            default:
                ItemRvPromoSelectCardConditionBinding itemRvPromoSelectCardConditionBinding = (ItemRvPromoSelectCardConditionBinding) viewBinding;
                ko6 ko6Var = (ko6) obj;
                itemRvPromoSelectCardConditionBinding.getClass();
                itemRvPromoSelectCardConditionBinding.tvTitle.setText(ko6Var.a);
                itemRvPromoSelectCardConditionBinding.tvDescription.setText(ko6Var.b);
                itemRvPromoSelectCardConditionBinding.tvValueTitle.setText(ko6Var.c);
                itemRvPromoSelectCardConditionBinding.tvValueDescription.setText(ko6Var.d);
                break;
        }
    }
}
