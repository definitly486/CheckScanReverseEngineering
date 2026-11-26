package defpackage;

import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.R;
import com.warefly.checkscan.profile.databinding.ItemRvProfileBadgeBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class ok6 extends vd9<wk6, ItemRvProfileBadgeBinding> {
    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof wk6;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, wk6 wk6Var) {
        ItemRvProfileBadgeBinding itemRvProfileBadgeBinding = (ItemRvProfileBadgeBinding) viewBinding;
        itemRvProfileBadgeBinding.getClass();
        itemRvProfileBadgeBinding.tvText.setText(itemRvProfileBadgeBinding.getRoot().getContext().getString(R.string.profile_promocode_currency_format, wk6Var.a.a));
    }
}
