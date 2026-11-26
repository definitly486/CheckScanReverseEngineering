package defpackage;

import android.view.View;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.bonuses.databinding.ItemRvSeeAllButtonBinding;
import com.warefly.checkscan.presentation.bonuses.main.presenter.BonusesMainNewPresenter;

/* JADX INFO: loaded from: classes.dex */
public final class dw0 extends vd9<ew0, ItemRvSeeAllButtonBinding> {
    public final BonusesMainNewPresenter b;

    public interface a {
        void onButtonSeeAllClick(int i);
    }

    public dw0(BonusesMainNewPresenter bonusesMainNewPresenter) {
        super(cw0.c);
        this.b = bonusesMainNewPresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof ew0;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, ew0 ew0Var) {
        ItemRvSeeAllButtonBinding itemRvSeeAllButtonBinding = (ItemRvSeeAllButtonBinding) viewBinding;
        itemRvSeeAllButtonBinding.getClass();
        itemRvSeeAllButtonBinding.getRoot().setTag(0);
        itemRvSeeAllButtonBinding.tvTitle.setText((CharSequence) null);
    }

    @Override // defpackage.vd9
    public final void j(ViewBinding viewBinding) {
        final ItemRvSeeAllButtonBinding itemRvSeeAllButtonBinding = (ItemRvSeeAllButtonBinding) viewBinding;
        itemRvSeeAllButtonBinding.getClass();
        itemRvSeeAllButtonBinding.getRoot().setOnClickListener(new View.OnClickListener() { // from class: bw0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BonusesMainNewPresenter bonusesMainNewPresenter = this.b.b;
                Object tag = itemRvSeeAllButtonBinding.getRoot().getTag();
                tag.getClass();
                bonusesMainNewPresenter.onButtonSeeAllClick(((Integer) tag).intValue());
            }
        });
    }
}
