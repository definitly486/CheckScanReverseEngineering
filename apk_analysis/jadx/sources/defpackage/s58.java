package defpackage;

import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.core.ui.infinityScrolling.HorizontalCarouselRecyclerViewNew;
import com.warefly.checkscan.databinding.ItemRvShopsSpecialsBinding;
import com.warefly.checkscan.presentation.bonuses.onlineShops.presenter.NewOnlineShopPresenter;

/* JADX INFO: loaded from: classes5.dex */
public final class s58 extends vd9<xv7, ItemRvShopsSpecialsBinding> {
    public final RecyclerView.OnScrollListener b;
    public final NewOnlineShopPresenter c;
    public final RecyclerView.OnItemTouchListener d;
    public final bk1 e;
    public final NewOnlineShopPresenter f;
    public final int g;
    public HorizontalCarouselRecyclerViewNew h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s58(RecyclerView.OnScrollListener onScrollListener, NewOnlineShopPresenter newOnlineShopPresenter, RecyclerView.OnItemTouchListener onItemTouchListener, bk1 bk1Var, NewOnlineShopPresenter newOnlineShopPresenter2, int i) {
        super(q58.c);
        onScrollListener.getClass();
        onItemTouchListener.getClass();
        this.b = onScrollListener;
        this.c = newOnlineShopPresenter;
        this.d = onItemTouchListener;
        this.e = bk1Var;
        this.f = newOnlineShopPresenter2;
        this.g = i;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof xv7;
    }

    @Override // defpackage.vd9
    public final void h(ViewBinding viewBinding) {
        ((ItemRvShopsSpecialsBinding) viewBinding).getClass();
        this.f.enableScroll(true);
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, xv7 xv7Var) {
        ItemRvShopsSpecialsBinding itemRvShopsSpecialsBinding = (ItemRvShopsSpecialsBinding) viewBinding;
        xv7 xv7Var2 = xv7Var;
        itemRvShopsSpecialsBinding.getClass();
        RecyclerView.Adapter adapter = itemRvShopsSpecialsBinding.rvSpecials.getAdapter();
        t44 t44Var = adapter instanceof t44 ? (t44) adapter : null;
        if (t44Var != null) {
            t44Var.submitList(xv7Var2.a);
        }
        this.h = itemRvShopsSpecialsBinding.rvSpecials;
    }

    @Override // defpackage.vd9
    public final void j(ViewBinding viewBinding) {
        ItemRvShopsSpecialsBinding itemRvShopsSpecialsBinding = (ItemRvShopsSpecialsBinding) viewBinding;
        itemRvShopsSpecialsBinding.getClass();
        HorizontalCarouselRecyclerViewNew horizontalCarouselRecyclerViewNew = itemRvShopsSpecialsBinding.rvSpecials;
        horizontalCarouselRecyclerViewNew.setAdapter(new t44(this.c));
        horizontalCarouselRecyclerViewNew.addOnScrollListener(this.b);
        horizontalCarouselRecyclerViewNew.addOnItemTouchListener(this.d);
        horizontalCarouselRecyclerViewNew.addItemDecoration(this.e, 0);
        horizontalCarouselRecyclerViewNew.addItemDecoration(new rw3(16, 16, 0), 1);
        horizontalCarouselRecyclerViewNew.setItemViewCacheSize(3);
        horizontalCarouselRecyclerViewNew.scrollToPosition(this.g);
    }

    @Override // defpackage.vd9
    public final void k(ViewBinding viewBinding) {
        ((ItemRvShopsSpecialsBinding) viewBinding).getClass();
        this.f.enableScroll(false);
    }
}
