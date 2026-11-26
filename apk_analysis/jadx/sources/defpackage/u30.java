package defpackage;

import android.widget.ImageView;
import androidx.viewbinding.ViewBinding;
import com.bumptech.glide.a;
import com.warefly.checkscan.databinding.ItemRvBalanceImageBinding;
import com.warefly.checkscan.presentation.balance.main.presenter.BalancePresenter;

/* JADX INFO: loaded from: classes5.dex */
public final class u30 extends vd9<v30, ItemRvBalanceImageBinding> {
    public final BalancePresenter b;

    public u30(BalancePresenter balancePresenter) {
        super(s30.c);
        this.b = balancePresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof v30;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, v30 v30Var) {
        ItemRvBalanceImageBinding itemRvBalanceImageBinding = (ItemRvBalanceImageBinding) viewBinding;
        v30 v30Var2 = v30Var;
        itemRvBalanceImageBinding.getClass();
        itemRvBalanceImageBinding.getRoot().setTag(v30Var2.b);
        a.e(itemRvBalanceImageBinding.ivPlaceholder).h(v30Var2.a).L(itemRvBalanceImageBinding.ivPlaceholder);
    }

    @Override // defpackage.vd9
    public final void j(ViewBinding viewBinding) {
        ItemRvBalanceImageBinding itemRvBalanceImageBinding = (ItemRvBalanceImageBinding) viewBinding;
        itemRvBalanceImageBinding.getClass();
        ImageView root = itemRvBalanceImageBinding.getRoot();
        root.getClass();
        root.setOnClickListener(new lb7(new t30(this, itemRvBalanceImageBinding, 0)));
    }
}
