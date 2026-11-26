package defpackage;

import androidx.viewbinding.ViewBinding;
import com.bumptech.glide.a;
import com.warefly.checkscan.databinding.ItemRvBalanceOperationBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class a60 extends vd9<b60, ItemRvBalanceOperationBinding> {
    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof b60;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, b60 b60Var) {
        ItemRvBalanceOperationBinding itemRvBalanceOperationBinding = (ItemRvBalanceOperationBinding) viewBinding;
        b60 b60Var2 = b60Var;
        itemRvBalanceOperationBinding.getClass();
        a.e(itemRvBalanceOperationBinding.ivPlaceholder).h(b60Var2.f).L(itemRvBalanceOperationBinding.ivPlaceholder);
        itemRvBalanceOperationBinding.tvTitle.setText(b60Var2.b);
        itemRvBalanceOperationBinding.tvDescription.setText(b60Var2.c);
        itemRvBalanceOperationBinding.tvSum.setText(b60Var2.d);
        itemRvBalanceOperationBinding.tvStatus.setText(b60Var2.e);
        itemRvBalanceOperationBinding.tvStatus.setTextColor(b60Var2.g);
    }
}
