package defpackage;

import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import com.bumptech.glide.a;
import com.warefly.checkscan.R;
import com.warefly.checkscan.bonuses.databinding.ItemRvShopsFavoritePreviewBinding;
import com.warefly.checkscan.presentation.bonuses.main.presenter.BonusesMainNewPresenter;

/* JADX INFO: loaded from: classes.dex */
public final class nv7 extends vd9<sv7.a, ItemRvShopsFavoritePreviewBinding> {
    public final BonusesMainNewPresenter b;

    public nv7(BonusesMainNewPresenter bonusesMainNewPresenter) {
        super(mv7.c);
        this.b = bonusesMainNewPresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof sv7.a;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, sv7.a aVar) {
        ItemRvShopsFavoritePreviewBinding itemRvShopsFavoritePreviewBinding = (ItemRvShopsFavoritePreviewBinding) viewBinding;
        sv7.a aVar2 = aVar;
        itemRvShopsFavoritePreviewBinding.getClass();
        ConstraintLayout root = itemRvShopsFavoritePreviewBinding.getRoot();
        root.getClass();
        le9.c(8, root);
        itemRvShopsFavoritePreviewBinding.getRoot().setTag(Integer.valueOf(aVar2.c));
        itemRvShopsFavoritePreviewBinding.ivTopMarket.setScaleType(aVar2.g);
        a.e(itemRvShopsFavoritePreviewBinding.ivTopMarket).h(aVar2.e).L(itemRvShopsFavoritePreviewBinding.ivTopMarket);
        itemRvShopsFavoritePreviewBinding.btnFavorite.setImageDrawable(oz1.b(itemRvShopsFavoritePreviewBinding, aVar2.f ? R.drawable.ic_favorite_selected : R.drawable.ic_favorite_unselected));
        itemRvShopsFavoritePreviewBinding.tvTitle.setText(aVar2.d);
    }

    @Override // defpackage.vd9
    public final void j(ViewBinding viewBinding) {
        final ItemRvShopsFavoritePreviewBinding itemRvShopsFavoritePreviewBinding = (ItemRvShopsFavoritePreviewBinding) viewBinding;
        itemRvShopsFavoritePreviewBinding.getClass();
        itemRvShopsFavoritePreviewBinding.getRoot().setOnClickListener(new View.OnClickListener() { // from class: kv7
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BonusesMainNewPresenter bonusesMainNewPresenter = this.b.b;
                Object tag = itemRvShopsFavoritePreviewBinding.getRoot().getTag();
                tag.getClass();
                bonusesMainNewPresenter.onPreviewShopClick(((Integer) tag).intValue());
            }
        });
        itemRvShopsFavoritePreviewBinding.btnFavorite.setOnClickListener(new View.OnClickListener() { // from class: lv7
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BonusesMainNewPresenter bonusesMainNewPresenter = this.b.b;
                Object tag = itemRvShopsFavoritePreviewBinding.getRoot().getTag();
                tag.getClass();
                bonusesMainNewPresenter.onPreviewFavoriteClick(((Integer) tag).intValue());
            }
        });
    }
}
