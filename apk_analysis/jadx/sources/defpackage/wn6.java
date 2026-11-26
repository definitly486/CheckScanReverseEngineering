package defpackage;

import androidx.recyclerview.widget.RecyclerView;
import com.my.target.nativeads.views.PromoCardRecyclerView;

/* JADX INFO: loaded from: classes4.dex */
public final class wn6 extends RecyclerView.OnScrollListener {
    public final /* synthetic */ PromoCardRecyclerView h;

    public wn6(PromoCardRecyclerView promoCardRecyclerView) {
        this.h = promoCardRecyclerView;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
    public final void onScrollStateChanged(RecyclerView recyclerView, int i) {
        super.onScrollStateChanged(recyclerView, i);
        PromoCardRecyclerView promoCardRecyclerView = this.h;
        promoCardRecyclerView.n = !promoCardRecyclerView.canScrollHorizontally(1);
        promoCardRecyclerView.m = true ^ promoCardRecyclerView.canScrollHorizontally(-1);
    }
}
