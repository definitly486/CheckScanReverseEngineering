package defpackage;

import android.content.Context;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.bonuses.databinding.ItemRvSpecialsBinding;
import com.warefly.checkscan.bonuses.presentation.layoutManager.ProminentLayoutManager;
import com.warefly.checkscan.core.ui.infinityScrolling.HorizontalCarouselRecyclerViewNew;
import com.warefly.checkscan.presentation.bonuses.main.presenter.BonusesMainNewPresenter;

/* JADX INFO: loaded from: classes5.dex */
public final class t58 extends vd9<v58, ItemRvSpecialsBinding> {
    public final BonusesMainNewPresenter b;
    public final RecyclerView.OnScrollListener c;
    public final RecyclerView.OnItemTouchListener d;
    public final bk1 e;
    public final BonusesMainNewPresenter f;
    public final int g;
    public final xq0 h;
    public HorizontalCarouselRecyclerViewNew i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t58(BonusesMainNewPresenter bonusesMainNewPresenter, RecyclerView.OnScrollListener onScrollListener, RecyclerView.OnItemTouchListener onItemTouchListener, bk1 bk1Var, BonusesMainNewPresenter bonusesMainNewPresenter2, int i, xq0 xq0Var) {
        super(r58.c);
        onScrollListener.getClass();
        onItemTouchListener.getClass();
        this.b = bonusesMainNewPresenter;
        this.c = onScrollListener;
        this.d = onItemTouchListener;
        this.e = bk1Var;
        this.f = bonusesMainNewPresenter2;
        this.g = i;
        this.h = xq0Var;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof v58;
    }

    @Override // defpackage.vd9
    public final void h(ViewBinding viewBinding) {
        ((ItemRvSpecialsBinding) viewBinding).getClass();
        this.f.enableScroll(true);
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, v58 v58Var) {
        ItemRvSpecialsBinding itemRvSpecialsBinding = (ItemRvSpecialsBinding) viewBinding;
        v58 v58Var2 = v58Var;
        itemRvSpecialsBinding.getClass();
        RecyclerView.Adapter adapter = itemRvSpecialsBinding.rvSpecials.getAdapter();
        l58 l58Var = adapter instanceof l58 ? (l58) adapter : null;
        if (l58Var != null) {
            l58Var.submitList(v58Var2.a);
        }
        this.i = itemRvSpecialsBinding.rvSpecials;
    }

    @Override // defpackage.vd9
    public final void j(ViewBinding viewBinding) {
        ItemRvSpecialsBinding itemRvSpecialsBinding = (ItemRvSpecialsBinding) viewBinding;
        itemRvSpecialsBinding.getClass();
        HorizontalCarouselRecyclerViewNew horizontalCarouselRecyclerViewNew = itemRvSpecialsBinding.rvSpecials;
        horizontalCarouselRecyclerViewNew.setAdapter(new l58(this.b));
        Context context = horizontalCarouselRecyclerViewNew.getContext();
        context.getClass();
        horizontalCarouselRecyclerViewNew.setLayoutManager(new ProminentLayoutManager(context));
        horizontalCarouselRecyclerViewNew.addOnScrollListener(this.c);
        horizontalCarouselRecyclerViewNew.addOnItemTouchListener(this.d);
        horizontalCarouselRecyclerViewNew.addItemDecoration(this.e, 0);
        horizontalCarouselRecyclerViewNew.addItemDecoration(new rw3(8, 8, 0), 1);
        horizontalCarouselRecyclerViewNew.setItemViewCacheSize(3);
        horizontalCarouselRecyclerViewNew.scrollToPosition(this.g);
        this.h.invoke(horizontalCarouselRecyclerViewNew);
    }

    @Override // defpackage.vd9
    public final void k(ViewBinding viewBinding) {
        ((ItemRvSpecialsBinding) viewBinding).getClass();
        this.f.enableScroll(false);
    }
}
