package defpackage;

import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import com.bumptech.glide.a;
import com.warefly.checkscan.R;
import com.warefly.checkscan.bonuses.databinding.ItemRvShopsFavoritePreviewHotBinding;
import com.warefly.checkscan.presentation.bonuses.main.presenter.BonusesMainNewPresenter;

/* JADX INFO: loaded from: classes.dex */
public final class rv7 extends vd9<sv7.b, ItemRvShopsFavoritePreviewHotBinding> {
    public final BonusesMainNewPresenter b;

    public rv7(BonusesMainNewPresenter bonusesMainNewPresenter) {
        super(qv7.c);
        this.b = bonusesMainNewPresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof sv7.b;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, sv7.b bVar) {
        ItemRvShopsFavoritePreviewHotBinding itemRvShopsFavoritePreviewHotBinding = (ItemRvShopsFavoritePreviewHotBinding) viewBinding;
        sv7.b bVar2 = bVar;
        itemRvShopsFavoritePreviewHotBinding.getClass();
        ConstraintLayout root = itemRvShopsFavoritePreviewHotBinding.getRoot();
        root.getClass();
        le9.c(8, root);
        itemRvShopsFavoritePreviewHotBinding.getRoot().setTag(Integer.valueOf(bVar2.c));
        itemRvShopsFavoritePreviewHotBinding.ivTopMarket.setScaleType(bVar2.h);
        a.e(itemRvShopsFavoritePreviewHotBinding.ivTopMarket).h(bVar2.e).L(itemRvShopsFavoritePreviewHotBinding.ivTopMarket);
        itemRvShopsFavoritePreviewHotBinding.btnFavorite.setImageDrawable(oz1.b(itemRvShopsFavoritePreviewHotBinding, bVar2.f ? R.drawable.ic_favorite_selected : R.drawable.ic_favorite_unselected));
        itemRvShopsFavoritePreviewHotBinding.tvTitle.setText(bVar2.d);
    }

    @Override // defpackage.vd9
    public final void j(ViewBinding viewBinding) {
        final ItemRvShopsFavoritePreviewHotBinding itemRvShopsFavoritePreviewHotBinding = (ItemRvShopsFavoritePreviewHotBinding) viewBinding;
        itemRvShopsFavoritePreviewHotBinding.getClass();
        itemRvShopsFavoritePreviewHotBinding.getRoot().setOnClickListener(new View.OnClickListener() { // from class: ov7
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BonusesMainNewPresenter bonusesMainNewPresenter = this.b.b;
                Object tag = itemRvShopsFavoritePreviewHotBinding.getRoot().getTag();
                tag.getClass();
                bonusesMainNewPresenter.onPreviewShopClick(((Integer) tag).intValue());
            }
        });
        itemRvShopsFavoritePreviewHotBinding.btnFavorite.setOnClickListener(new pv7(0, this, itemRvShopsFavoritePreviewHotBinding));
    }
}
