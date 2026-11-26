package defpackage;

import androidx.viewbinding.ViewBinding;
import com.google.android.material.card.MaterialCardView;
import com.warefly.checkscan.products.databinding.ItemMoreProductsButtonBinding;
import com.warefly.checkscan.products.presentation.selections.presenter.SelectionsPresenter;

/* JADX INFO: loaded from: classes5.dex */
public final class rd5 extends vd9<pd5, ItemMoreProductsButtonBinding> {
    public final SelectionsPresenter b;

    public rd5(SelectionsPresenter selectionsPresenter) {
        super(qd5.c);
        this.b = selectionsPresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof pd5;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, pd5 pd5Var) {
        ItemMoreProductsButtonBinding itemMoreProductsButtonBinding = (ItemMoreProductsButtonBinding) viewBinding;
        itemMoreProductsButtonBinding.getClass();
        MaterialCardView root = itemMoreProductsButtonBinding.getRoot();
        root.getClass();
        root.setOnClickListener(new lb7(new i60(this, pd5Var, 2)));
    }
}
