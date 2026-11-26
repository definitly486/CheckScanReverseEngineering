package defpackage;

import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.viewbinding.ViewBinding;
import com.bumptech.glide.a;
import com.warefly.checkscan.bonuses.databinding.ItemRvCategoryBinding;
import com.warefly.checkscan.presentation.bonuses.main.presenter.BonusesMainNewPresenter;

/* JADX INFO: loaded from: classes.dex */
public final class b81 extends vd9<l81, ItemRvCategoryBinding> {
    public final BonusesMainNewPresenter b;

    public b81(BonusesMainNewPresenter bonusesMainNewPresenter) {
        super(a81.c);
        this.b = bonusesMainNewPresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof l81;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, l81 l81Var) {
        ItemRvCategoryBinding itemRvCategoryBinding = (ItemRvCategoryBinding) viewBinding;
        l81 l81Var2 = l81Var;
        itemRvCategoryBinding.getClass();
        itemRvCategoryBinding.getRoot().setTag(Integer.valueOf(l81Var2.a));
        AppCompatTextView appCompatTextView = itemRvCategoryBinding.tvTitle;
        String str = l81Var2.b;
        appCompatTextView.setTag(str);
        itemRvCategoryBinding.tvTitle.setText(str);
        a.e(itemRvCategoryBinding.ivPlaceholder).h(l81Var2.c).P(qs2.h()).i().L(itemRvCategoryBinding.ivPlaceholder);
    }

    @Override // defpackage.vd9
    public final void j(ViewBinding viewBinding) {
        final ItemRvCategoryBinding itemRvCategoryBinding = (ItemRvCategoryBinding) viewBinding;
        itemRvCategoryBinding.getClass();
        itemRvCategoryBinding.getRoot().setOnClickListener(new View.OnClickListener() { // from class: z71
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BonusesMainNewPresenter bonusesMainNewPresenter = this.b.b;
                ItemRvCategoryBinding itemRvCategoryBinding2 = itemRvCategoryBinding;
                String string = itemRvCategoryBinding2.tvTitle.getTag().toString();
                Object tag = itemRvCategoryBinding2.getRoot().getTag();
                tag.getClass();
                bonusesMainNewPresenter.onCategoryClick(string, ((Integer) tag).intValue());
            }
        });
    }
}
