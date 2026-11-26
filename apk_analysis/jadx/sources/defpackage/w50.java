package defpackage;

import android.widget.ImageView;
import androidx.viewbinding.ViewBinding;
import com.bumptech.glide.a;
import com.warefly.checkscan.databinding.ItemRvBalanceNestedImageBinding;
import com.warefly.checkscan.presentation.balance.main.presenter.BalancePresenter;

/* JADX INFO: loaded from: classes5.dex */
public final class w50 extends vd9<x50, ItemRvBalanceNestedImageBinding> {
    public final BalancePresenter b;

    public w50(BalancePresenter balancePresenter) {
        super(u50.c);
        this.b = balancePresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof x50;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, x50 x50Var) {
        ItemRvBalanceNestedImageBinding itemRvBalanceNestedImageBinding = (ItemRvBalanceNestedImageBinding) viewBinding;
        x50 x50Var2 = x50Var;
        itemRvBalanceNestedImageBinding.getClass();
        itemRvBalanceNestedImageBinding.getRoot().setTag(x50Var2.b);
        a.e(itemRvBalanceNestedImageBinding.ivPlaceholder).h(x50Var2.a).L(itemRvBalanceNestedImageBinding.ivPlaceholder);
    }

    @Override // defpackage.vd9
    public final void j(ViewBinding viewBinding) {
        ItemRvBalanceNestedImageBinding itemRvBalanceNestedImageBinding = (ItemRvBalanceNestedImageBinding) viewBinding;
        itemRvBalanceNestedImageBinding.getClass();
        ImageView root = itemRvBalanceNestedImageBinding.getRoot();
        root.getClass();
        root.setOnClickListener(new lb7(new v50(this, itemRvBalanceNestedImageBinding, 0)));
    }
}
