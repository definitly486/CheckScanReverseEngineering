package defpackage;

import androidx.viewbinding.ViewBinding;
import com.bumptech.glide.a;
import com.warefly.checkscan.databinding.ItemPromoSelectCardWarningBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class np6 extends vd9<op6, ItemPromoSelectCardWarningBinding> {
    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof op6;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, op6 op6Var) {
        ItemPromoSelectCardWarningBinding itemPromoSelectCardWarningBinding = (ItemPromoSelectCardWarningBinding) viewBinding;
        op6 op6Var2 = op6Var;
        itemPromoSelectCardWarningBinding.getClass();
        itemPromoSelectCardWarningBinding.tvTitle.setText(op6Var2.a);
        itemPromoSelectCardWarningBinding.tvDescription.setText(op6Var2.b);
        a.d(itemPromoSelectCardWarningBinding.getRoot().getContext()).h(op6Var2.c).L(itemPromoSelectCardWarningBinding.ivIcon);
    }
}
