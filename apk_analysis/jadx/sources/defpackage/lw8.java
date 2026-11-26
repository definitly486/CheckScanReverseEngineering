package defpackage;

import android.view.View;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.bonuses.databinding.ItemRvTitleWithBlueButtonBinding;
import com.warefly.checkscan.presentation.bonuses.main.presenter.BonusesMainNewPresenter;

/* JADX INFO: loaded from: classes.dex */
public final class lw8 extends vd9<mw8, ItemRvTitleWithBlueButtonBinding> {
    public final BonusesMainNewPresenter b;

    public lw8(BonusesMainNewPresenter bonusesMainNewPresenter) {
        super(kw8.c);
        this.b = bonusesMainNewPresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof mw8;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, mw8 mw8Var) {
        ItemRvTitleWithBlueButtonBinding itemRvTitleWithBlueButtonBinding = (ItemRvTitleWithBlueButtonBinding) viewBinding;
        itemRvTitleWithBlueButtonBinding.getClass();
        itemRvTitleWithBlueButtonBinding.getRoot().setTag(null);
        itemRvTitleWithBlueButtonBinding.tvSubButton.setTag(0);
        itemRvTitleWithBlueButtonBinding.tvTitle.setText((CharSequence) null);
        itemRvTitleWithBlueButtonBinding.tvHelpButton.setText((CharSequence) null);
        itemRvTitleWithBlueButtonBinding.tvSubButton.setText((CharSequence) null);
    }

    @Override // defpackage.vd9
    public final void j(ViewBinding viewBinding) {
        final ItemRvTitleWithBlueButtonBinding itemRvTitleWithBlueButtonBinding = (ItemRvTitleWithBlueButtonBinding) viewBinding;
        itemRvTitleWithBlueButtonBinding.getClass();
        itemRvTitleWithBlueButtonBinding.tvHelpButton.setOnClickListener(new View.OnClickListener() { // from class: iw8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BonusesMainNewPresenter bonusesMainNewPresenter = this.b.b;
                Object tag = itemRvTitleWithBlueButtonBinding.getRoot().getTag();
                tag.getClass();
                bonusesMainNewPresenter.onHelperTitleWithYellowButtonClick((sq0) tag);
            }
        });
        itemRvTitleWithBlueButtonBinding.tvSubButton.setOnClickListener(new View.OnClickListener() { // from class: jw8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BonusesMainNewPresenter bonusesMainNewPresenter = this.b.b;
                ItemRvTitleWithBlueButtonBinding itemRvTitleWithBlueButtonBinding2 = itemRvTitleWithBlueButtonBinding;
                Object tag = itemRvTitleWithBlueButtonBinding2.getRoot().getTag();
                tag.getClass();
                Object tag2 = itemRvTitleWithBlueButtonBinding2.tvSubButton.getTag();
                tag2.getClass();
                bonusesMainNewPresenter.onSubTitleWithYellowButtonClick((sq0) tag, ((Integer) tag2).intValue(), itemRvTitleWithBlueButtonBinding2.tvTitle.getText().toString());
            }
        });
    }
}
