package defpackage;

import android.view.View;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.bonuses.databinding.ItemRvTitleWithYellowButtonBinding;
import com.warefly.checkscan.presentation.bonuses.main.presenter.BonusesMainNewPresenter;

/* JADX INFO: loaded from: classes.dex */
public final class vw8 extends vd9<ww8, ItemRvTitleWithYellowButtonBinding> {
    public final BonusesMainNewPresenter b;

    public vw8(BonusesMainNewPresenter bonusesMainNewPresenter) {
        super(uw8.c);
        this.b = bonusesMainNewPresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof ww8;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, ww8 ww8Var) {
        ItemRvTitleWithYellowButtonBinding itemRvTitleWithYellowButtonBinding = (ItemRvTitleWithYellowButtonBinding) viewBinding;
        ww8 ww8Var2 = ww8Var;
        itemRvTitleWithYellowButtonBinding.getClass();
        itemRvTitleWithYellowButtonBinding.getRoot().setTag(ww8Var2.d);
        itemRvTitleWithYellowButtonBinding.tvSubButton.setTag(Integer.valueOf(ww8Var2.a));
        itemRvTitleWithYellowButtonBinding.tvTitle.setText(ww8Var2.b);
        itemRvTitleWithYellowButtonBinding.tvHelpButton.setText("Как получать кэшбэк?");
        itemRvTitleWithYellowButtonBinding.tvSubButton.setText(ww8Var2.c);
    }

    @Override // defpackage.vd9
    public final void j(ViewBinding viewBinding) {
        final ItemRvTitleWithYellowButtonBinding itemRvTitleWithYellowButtonBinding = (ItemRvTitleWithYellowButtonBinding) viewBinding;
        itemRvTitleWithYellowButtonBinding.getClass();
        itemRvTitleWithYellowButtonBinding.tvHelpButton.setOnClickListener(new View.OnClickListener() { // from class: sw8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BonusesMainNewPresenter bonusesMainNewPresenter = this.b.b;
                Object tag = itemRvTitleWithYellowButtonBinding.getRoot().getTag();
                tag.getClass();
                bonusesMainNewPresenter.onHelperTitleWithYellowButtonClick((sq0) tag);
            }
        });
        itemRvTitleWithYellowButtonBinding.tvSubButton.setOnClickListener(new View.OnClickListener() { // from class: tw8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BonusesMainNewPresenter bonusesMainNewPresenter = this.b.b;
                ItemRvTitleWithYellowButtonBinding itemRvTitleWithYellowButtonBinding2 = itemRvTitleWithYellowButtonBinding;
                Object tag = itemRvTitleWithYellowButtonBinding2.getRoot().getTag();
                tag.getClass();
                Object tag2 = itemRvTitleWithYellowButtonBinding2.tvSubButton.getTag();
                tag2.getClass();
                bonusesMainNewPresenter.onSubTitleWithYellowButtonClick((sq0) tag, ((Integer) tag2).intValue(), itemRvTitleWithYellowButtonBinding2.tvTitle.getText().toString());
            }
        });
    }
}
