package com.my.target.core.ui.views.promo.style2.cards;

import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.GravityCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import defpackage.l3a;
import defpackage.r0a;

/* JADX INFO: loaded from: classes4.dex */
public class CardsLayoutManagerS2 extends LinearLayoutManager {
    public b e;

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void measureChildWithMargins(View view, int i, int i2) {
        int iD = l3a.d(10, view.getContext());
        if (getPosition(view) > 0) {
            ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) view.getLayoutParams())).leftMargin = iD;
            ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) view.getLayoutParams())).rightMargin = 0;
        }
        view.measure(View.MeasureSpec.makeMeasureSpec(((int) (getWidth() * 0.7f)) - iD, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(getHeight(), Integer.MIN_VALUE));
        int measuredHeight = view.getMeasuredHeight();
        if (measuredHeight > getHeight()) {
            view.measure(View.MeasureSpec.makeMeasureSpec(((int) (getWidth() * (((getHeight() - (iD * 2)) * 0.7f) / measuredHeight))) - iD, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(getHeight(), Integer.MIN_VALUE));
        }
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onLayoutCompleted(RecyclerView.State state) {
        super.onLayoutCompleted(state);
        b bVar = this.e;
        if (bVar != null) {
            r0a r0aVar = bVar.d;
            CardsLayoutManagerS2 cardsLayoutManagerS2 = bVar.c;
            int iFindFirstCompletelyVisibleItemPosition = cardsLayoutManagerS2.findFirstCompletelyVisibleItemPosition();
            View viewFindViewByPosition = iFindFirstCompletelyVisibleItemPosition >= 0 ? cardsLayoutManagerS2.findViewByPosition(iFindFirstCompletelyVisibleItemPosition) : null;
            if (bVar.b.getChildCount() == 0 || viewFindViewByPosition == null || bVar.getWidth() > ((double) viewFindViewByPosition.getWidth()) * 1.7d) {
                r0aVar.c(GravityCompat.START);
            } else {
                r0aVar.c(17);
            }
            bVar.a();
        }
    }
}
