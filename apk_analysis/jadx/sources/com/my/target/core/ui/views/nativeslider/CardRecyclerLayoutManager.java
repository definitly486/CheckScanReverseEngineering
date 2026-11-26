package com.my.target.core.ui.views.nativeslider;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.my.target.nativeads.views.PromoCardRecyclerView;
import defpackage.k4;
import defpackage.y14;

/* JADX INFO: loaded from: classes4.dex */
public class CardRecyclerLayoutManager extends LinearLayoutManager {
    public final float e;
    public k4 f;

    public CardRecyclerLayoutManager(Context context) {
        super(context, 0, false);
        this.e = y14.a(-1.0f, -1.0f) == 0 ? 0.75f : -1.0f;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void measureChildWithMargins(View view, int i, int i2) {
        ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) view.getLayoutParams())).width = (int) (getWidth() * this.e);
        super.measureChildWithMargins(view, i, i2);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onLayoutCompleted(RecyclerView.State state) {
        super.onLayoutCompleted(state);
        k4 k4Var = this.f;
        if (k4Var != null) {
            PromoCardRecyclerView promoCardRecyclerView = (PromoCardRecyclerView) k4Var.c;
            int i = PromoCardRecyclerView.q;
            int iFindFirstCompletelyVisibleItemPosition = promoCardRecyclerView.l.findFirstCompletelyVisibleItemPosition();
            if (iFindFirstCompletelyVisibleItemPosition >= 0 && promoCardRecyclerView.p != iFindFirstCompletelyVisibleItemPosition) {
                promoCardRecyclerView.p = iFindFirstCompletelyVisibleItemPosition;
            }
        }
    }
}
