package defpackage;

import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.bonuses.databinding.ItemRvButtonBinding;
import com.warefly.checkscan.presentation.bonuses.main.presenter.BonusesMainNewPresenter;

/* JADX INFO: loaded from: classes.dex */
public final class ov0 extends vd9<pv0, ItemRvButtonBinding> {
    public final BonusesMainNewPresenter b;

    /* JADX INFO: loaded from: classes4.dex */
    public interface a {
        void onButtonChipItemClick(String str);
    }

    public ov0(BonusesMainNewPresenter bonusesMainNewPresenter) {
        super(nv0.c);
        this.b = bonusesMainNewPresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof pv0;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, pv0 pv0Var) {
        ItemRvButtonBinding itemRvButtonBinding = (ItemRvButtonBinding) viewBinding;
        pv0 pv0Var2 = pv0Var;
        itemRvButtonBinding.getClass();
        h37 h37VarP = com.bumptech.glide.a.e(itemRvButtonBinding.ivLogo).h(pv0Var2.a).P(qs2.h());
        h37VarP.getClass();
        ((h37) h37VarP.u(uq2.b, new t81(), true)).L(itemRvButtonBinding.ivLogo);
        itemRvButtonBinding.tvTitle.setText(pv0Var2.b);
        itemRvButtonBinding.getRoot().setOnClickListener(new mv0(0, this, pv0Var2));
    }
}
